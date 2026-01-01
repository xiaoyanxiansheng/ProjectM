using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// 音效服务 - 管理所有音效播放
    /// </summary>
    public class AudioService : MonoBehaviour
    {
        private static AudioService _instance;
        public static AudioService Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[AudioService]");
                    _instance = go.AddComponent<AudioService>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

        // 音效缓存
        private Dictionary<string, AudioClip> _clipCache = new Dictionary<string, AudioClip>();

        // 实体上的活跃音效
        private Dictionary<int, Dictionary<string, AudioSource>> _entitySounds = new Dictionary<int, Dictionary<string, AudioSource>>();

        // 全局音效池
        private Queue<AudioSource> _audioSourcePool = new Queue<AudioSource>();
        private Transform _poolRoot;

        // 音效ID管理
        private Dictionary<int, AudioSource> _soundInstances = new Dictionary<int, AudioSource>();
        private int _nextSoundId = 1;

        // 全局音量
        public float MasterVolume { get; set; } = 1f;
        public float SFXVolume { get; set; } = 1f;

        void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
                return;
            }
            _instance = this;

            _poolRoot = new GameObject("Audio_Pool").transform;
            _poolRoot.SetParent(transform);
        }

        /// <summary>
        /// 在实体上播放音效
        /// </summary>
        /// <returns>音效实例ID</returns>
        public int PlaySound(string soundName, int entityId)
        {
            Vector3 position = Vector3.zero;
            
            var entityData = EntityService.Instance.GetEntityData(entityId);
            if (entityData != null)
            {
                position = entityData.Position;
                if (entityData.GameObject != null)
                {
                    position = entityData.GameObject.transform.position;
                }
            }

            return PlaySoundAtPosition(soundName, position, entityId);
        }

        /// <summary>
        /// 在位置播放音效
        /// </summary>
        /// <returns>音效实例ID</returns>
        public int PlaySoundAtPosition(string soundName, Vector3 position, int entityId = 0)
        {
            AudioClip clip = LoadClip(soundName);
            if (clip == null)
            {
                Debug.LogWarning($"[AudioService] 音效不存在: {soundName}");
                return -1;
            }

            int soundId = _nextSoundId++;

            // 获取或创建 AudioSource
            AudioSource source;
            if (entityId > 0)
            {
                source = GetOrCreateSourceForEntity(entityId, soundName);
            }
            else
            {
                source = GetPooledSource();
            }

            source.transform.position = position;
            source.clip = clip;
            source.volume = MasterVolume * SFXVolume;
            source.Play();

            _soundInstances[soundId] = source;

            // 播放完毕后清理
            if (entityId <= 0)
            {
                StartCoroutine(ReturnToPoolAfterPlay(source, soundId, clip.length + 0.1f));
            }

            Debug.Log($"[AudioService] 播放音效: {soundName}, Position={position}");

            return soundId;
        }

        /// <summary>
        /// 停止音效
        /// </summary>
        public void StopSound(string soundName, int entityId)
        {
            if (!_entitySounds.TryGetValue(entityId, out var sounds))
                return;

            if (sounds.TryGetValue(soundName, out var source))
            {
                source.Stop();
                Debug.Log($"[AudioService] 停止音效: {soundName}, EntityId={entityId}");
            }
        }

        /// <summary>
        /// 停止音效（通过ID）
        /// </summary>
        public void StopSoundById(int soundId)
        {
            if (_soundInstances.TryGetValue(soundId, out var source))
            {
                source.Stop();
                _soundInstances.Remove(soundId);
            }
        }

        /// <summary>
        /// 停止实体上的所有音效
        /// </summary>
        public void StopAllSoundsOnEntity(int entityId)
        {
            if (!_entitySounds.TryGetValue(entityId, out var sounds))
                return;

            foreach (var kvp in sounds)
            {
                kvp.Value.Stop();
            }
        }

        /// <summary>
        /// 预加载音效
        /// </summary>
        public void PreloadSound(string soundName)
        {
            LoadClip(soundName);
        }

        /// <summary>
        /// 清理实体音效缓存
        /// </summary>
        public void RemoveEntity(int entityId)
        {
            if (_entitySounds.TryGetValue(entityId, out var sounds))
            {
                foreach (var kvp in sounds)
                {
                    if (kvp.Value != null)
                    {
                        Destroy(kvp.Value);
                    }
                }
                _entitySounds.Remove(entityId);
            }
        }

        /// <summary>
        /// 清除所有音效
        /// </summary>
        public void Clear()
        {
            // 停止所有音效
            foreach (var kvp in _entitySounds)
            {
                foreach (var sound in kvp.Value)
                {
                    if (sound.Value != null)
                    {
                        sound.Value.Stop();
                    }
                }
            }
            _entitySounds.Clear();

            // 清理池
            while (_audioSourcePool.Count > 0)
            {
                var source = _audioSourcePool.Dequeue();
                if (source != null)
                {
                    Destroy(source.gameObject);
                }
            }

            _soundInstances.Clear();

            Debug.Log("[AudioService] 清除所有音效");
        }

        private AudioClip LoadClip(string soundName)
        {
            if (_clipCache.TryGetValue(soundName, out var cached))
                return cached;

            // 通过 ResourceService 加载
            AudioClip clip = ResourceService.Instance.LoadSound(soundName);

            if (clip != null)
            {
                _clipCache[soundName] = clip;
            }

            return clip;
        }

        private AudioSource GetOrCreateSourceForEntity(int entityId, string soundName)
        {
            if (!_entitySounds.ContainsKey(entityId))
            {
                _entitySounds[entityId] = new Dictionary<string, AudioSource>();
            }

            var sounds = _entitySounds[entityId];

            if (!sounds.TryGetValue(soundName, out var source) || source == null)
            {
                var entityData = EntityService.Instance.GetEntityData(entityId);
                if (entityData != null && entityData.GameObject != null)
                {
                    source = entityData.GameObject.AddComponent<AudioSource>();
                }
                else
                {
                    var go = new GameObject($"Audio_{entityId}_{soundName}");
                    go.transform.SetParent(_poolRoot);
                    source = go.AddComponent<AudioSource>();
                }

                source.spatialBlend = 1f; // 3D 音效
                source.rolloffMode = AudioRolloffMode.Linear;
                source.maxDistance = 50f;
                sounds[soundName] = source;
            }

            return source;
        }

        private AudioSource GetPooledSource()
        {
            if (_audioSourcePool.Count > 0)
            {
                var source = _audioSourcePool.Dequeue();
                if (source != null)
                {
                    source.gameObject.SetActive(true);
                    return source;
                }
            }

            var go = new GameObject("PooledAudioSource");
            go.transform.SetParent(_poolRoot);
            var newSource = go.AddComponent<AudioSource>();
            newSource.spatialBlend = 1f;
            newSource.rolloffMode = AudioRolloffMode.Linear;
            newSource.maxDistance = 50f;
            return newSource;
        }

        private IEnumerator ReturnToPoolAfterPlay(AudioSource source, int soundId, float delay)
        {
            yield return new WaitForSeconds(delay);

            _soundInstances.Remove(soundId);

            if (source != null)
            {
                source.gameObject.SetActive(false);
                _audioSourcePool.Enqueue(source);
            }
        }
    }
}
