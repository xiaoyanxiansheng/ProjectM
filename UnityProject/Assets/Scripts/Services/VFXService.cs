using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// VFX 服务 - 管理所有粒子特效
    /// </summary>
    public class VFXService : MonoBehaviour
    {
        private static VFXService _instance;
        public static VFXService Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[VFXService]");
                    _instance = go.AddComponent<VFXService>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

        // 粒子实例管理
        private Dictionary<int, ParticleInstance> _activeParticles = new Dictionary<int, ParticleInstance>();
        private int _nextParticleId = 1;

        // 对象池
        private Dictionary<string, Queue<GameObject>> _particlePools = new Dictionary<string, Queue<GameObject>>();
        private Transform _poolRoot;

        // 附着类型常量（与 Dota2 PATTACH_* 对应）
        public const int PATTACH_ABSORIGIN = 0;
        public const int PATTACH_ABSORIGIN_FOLLOW = 1;
        public const int PATTACH_CUSTOMORIGIN = 2;
        public const int PATTACH_POINT_FOLLOW = 3;
        public const int PATTACH_WORLDORIGIN = 4;
        public const int PATTACH_OVERHEAD_FOLLOW = 5;

        void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
                return;
            }
            _instance = this;

            _poolRoot = new GameObject("VFX_Pool").transform;
            _poolRoot.SetParent(transform);
        }

        /// <summary>
        /// 创建粒子特效
        /// </summary>
        /// <param name="effectPath">特效资源路径</param>
        /// <param name="attachType">附着类型</param>
        /// <param name="entityId">实体ID（可选，0表示无）</param>
        /// <returns>粒子实例ID，失败返回-1</returns>
        public int CreateParticle(string effectPath, int attachType, int entityId)
        {
            int particleId = _nextParticleId++;

            // 从池中获取或加载
            GameObject vfxObj = GetFromPool(effectPath);
            if (vfxObj == null)
            {
                // 从 Resources 加载
                GameObject prefab = Resources.Load<GameObject>($"Effects/{effectPath}");
                if (prefab == null)
                {
                    // 尝试不加前缀
                    prefab = Resources.Load<GameObject>(effectPath);
                }

                if (prefab == null)
                {
                    Debug.LogWarning($"[VFXService] 特效不存在: {effectPath}，创建占位粒子");
                    // 创建一个占位的空对象
                    vfxObj = new GameObject($"VFX_Placeholder_{effectPath}");
                }
                else
                {
                    vfxObj = Instantiate(prefab);
                }
            }

            vfxObj.name = $"VFX_{particleId}_{effectPath}";
            vfxObj.SetActive(true);

            // 创建实例记录
            var instance = new ParticleInstance
            {
                Id = particleId,
                GameObject = vfxObj,
                EffectPath = effectPath,
                AttachType = attachType,
                EntityId = entityId,
                ParticleSystem = vfxObj.GetComponent<ParticleSystem>(),
                ControlPoints = new Dictionary<int, Vector3>()
            };

            // 根据附着类型处理
            ApplyAttachment(instance);

            _activeParticles[particleId] = instance;

            // 播放粒子
            if (instance.ParticleSystem != null)
            {
                instance.ParticleSystem.Play();
            }

            Debug.Log($"[VFXService] 创建粒子: Id={particleId}, Path={effectPath}, AttachType={attachType}");

            return particleId;
        }

        /// <summary>
        /// 设置控制点位置
        /// </summary>
        public void SetParticleControl(int particleId, int controlPoint, Vector3 position)
        {
            if (!_activeParticles.TryGetValue(particleId, out var instance))
            {
                Debug.LogWarning($"[VFXService] 粒子不存在: {particleId}");
                return;
            }

            // 控制点0通常是位置
            if (controlPoint == 0)
            {
                instance.GameObject.transform.position = position;
            }

            // 存储控制点供后续使用
            instance.ControlPoints[controlPoint] = position;
        }

        /// <summary>
        /// 设置控制点绑定实体
        /// </summary>
        public void SetParticleControlEnt(int particleId, int controlPoint, int entityId,
            int attachType, Vector3 offset)
        {
            if (!_activeParticles.TryGetValue(particleId, out var instance))
            {
                Debug.LogWarning($"[VFXService] 粒子不存在: {particleId}");
                return;
            }

            var entityData = EntityService.Instance.GetEntityData(entityId);
            if (entityData == null)
            {
                Debug.LogWarning($"[VFXService] 实体不存在: {entityId}");
                return;
            }

            Vector3 targetPos = entityData.Position + offset;
            instance.ControlPoints[controlPoint] = targetPos;

            if (controlPoint == 0)
            {
                instance.GameObject.transform.position = targetPos;
            }
        }

        /// <summary>
        /// 销毁粒子
        /// </summary>
        /// <param name="particleId">粒子ID</param>
        /// <param name="immediate">是否立即销毁</param>
        public void DestroyParticle(int particleId, bool immediate)
        {
            if (!_activeParticles.TryGetValue(particleId, out var instance))
            {
                return;
            }

            if (immediate)
            {
                if (instance.ParticleSystem != null)
                {
                    instance.ParticleSystem.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
                }
                ReleaseParticle(particleId);
            }
            else
            {
                if (instance.ParticleSystem != null)
                {
                    instance.ParticleSystem.Stop(true, ParticleSystemStopBehavior.StopEmitting);
                }
                // 延迟回收
                StartCoroutine(DelayRelease(particleId, 2f));
            }

            Debug.Log($"[VFXService] 销毁粒子: Id={particleId}, Immediate={immediate}");
        }

        /// <summary>
        /// 释放粒子回池
        /// </summary>
        public void ReleaseParticle(int particleId)
        {
            if (!_activeParticles.TryGetValue(particleId, out var instance))
            {
                return;
            }

            _activeParticles.Remove(particleId);
            ReturnToPool(instance.EffectPath, instance.GameObject);
        }

        /// <summary>
        /// 获取活跃粒子数量
        /// </summary>
        public int GetActiveParticleCount()
        {
            return _activeParticles.Count;
        }

        /// <summary>
        /// 清除所有粒子
        /// </summary>
        public void Clear()
        {
            foreach (var kvp in _activeParticles)
            {
                if (kvp.Value.GameObject != null)
                {
                    Destroy(kvp.Value.GameObject);
                }
            }
            _activeParticles.Clear();

            // 清除池
            foreach (var pool in _particlePools.Values)
            {
                while (pool.Count > 0)
                {
                    var obj = pool.Dequeue();
                    if (obj != null)
                    {
                        Destroy(obj);
                    }
                }
            }
            _particlePools.Clear();

            Debug.Log("[VFXService] 清除所有粒子");
        }

        private void ApplyAttachment(ParticleInstance instance)
        {
            if (instance.EntityId <= 0) return;

            var entityData = EntityService.Instance.GetEntityData(instance.EntityId);
            if (entityData == null) return;

            switch (instance.AttachType)
            {
                case PATTACH_ABSORIGIN:
                    // 设置到实体位置，但不跟随
                    instance.GameObject.transform.position = entityData.Position;
                    break;

                case PATTACH_ABSORIGIN_FOLLOW:
                    // 跟随实体
                    if (entityData.GameObject != null)
                    {
                        instance.GameObject.transform.SetParent(entityData.GameObject.transform);
                        instance.GameObject.transform.localPosition = Vector3.zero;
                    }
                    else
                    {
                        instance.GameObject.transform.position = entityData.Position;
                    }
                    break;

                case PATTACH_OVERHEAD_FOLLOW:
                    // 跟随实体头顶
                    if (entityData.GameObject != null)
                    {
                        instance.GameObject.transform.SetParent(entityData.GameObject.transform);
                        instance.GameObject.transform.localPosition = new Vector3(0, 2f, 0);
                    }
                    break;

                case PATTACH_WORLDORIGIN:
                    // 世界原点
                    instance.GameObject.transform.position = Vector3.zero;
                    break;

                case PATTACH_CUSTOMORIGIN:
                    // 自定义位置，稍后通过 SetParticleControl 设置
                    break;

                case PATTACH_POINT_FOLLOW:
                    // 跟随挂点（简化实现）
                    if (entityData.GameObject != null)
                    {
                        instance.GameObject.transform.SetParent(entityData.GameObject.transform);
                        instance.GameObject.transform.localPosition = Vector3.zero;
                    }
                    break;
            }
        }

        private GameObject GetFromPool(string path)
        {
            if (_particlePools.TryGetValue(path, out var pool) && pool.Count > 0)
            {
                var obj = pool.Dequeue();
                if (obj != null)
                {
                    obj.transform.SetParent(null);
                    return obj;
                }
            }
            return null;
        }

        private void ReturnToPool(string path, GameObject obj)
        {
            if (obj == null) return;

            obj.SetActive(false);
            obj.transform.SetParent(_poolRoot);

            if (!_particlePools.ContainsKey(path))
            {
                _particlePools[path] = new Queue<GameObject>();
            }

            _particlePools[path].Enqueue(obj);
        }

        private IEnumerator DelayRelease(int particleId, float delay)
        {
            yield return new WaitForSeconds(delay);
            ReleaseParticle(particleId);
        }

        /// <summary>
        /// 粒子实例数据
        /// </summary>
        private class ParticleInstance
        {
            public int Id;
            public GameObject GameObject;
            public string EffectPath;
            public int AttachType;
            public int EntityId;
            public ParticleSystem ParticleSystem;
            public Dictionary<int, Vector3> ControlPoints;
        }
    }
}
