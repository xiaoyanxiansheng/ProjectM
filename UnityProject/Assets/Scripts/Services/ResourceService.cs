using UnityEngine;

namespace CritFramework
{
    /// <summary>
    /// 统一资源加载服务
    /// 根据 StubConfig 决定是否加载真实资源
    /// </summary>
    public class ResourceService : MonoBehaviour
    {
        private static ResourceService _instance;
        public static ResourceService Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[ResourceService]");
                    _instance = go.AddComponent<ResourceService>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

        void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
                return;
            }
            _instance = this;
        }

        /// <summary>
        /// 加载资源
        /// </summary>
        /// <typeparam name="T">资源类型</typeparam>
        /// <param name="path">资源路径</param>
        /// <param name="category">资源类别（用于日志）</param>
        /// <returns>资源对象，Stub模式返回null</returns>
        public T Load<T>(string path, string category) where T : UnityEngine.Object
        {
            // 记录请求
            StubConfig.LogMissingResource(category, path);

            // 调试模式 + 资源 Stub 开启：不加载真实资源
            if (StubConfig.DebugMode && StubConfig.StubResources)
            {
                return null;
            }

            // 正式模式：尝试加载
            T resource = Resources.Load<T>(path);
            
            if (resource == null)
            {
                // 加载失败，记录
                Debug.LogWarning($"[ResourceService] 资源加载失败: {path}");
            }
            
            return resource;
        }

        /// <summary>
        /// 加载特效资源
        /// </summary>
        public GameObject LoadEffect(string effectPath)
        {
            // 尝试多个路径
            GameObject prefab = Load<GameObject>($"Effects/{effectPath}", "Effect");
            if (prefab == null && !StubConfig.DebugMode)
            {
                prefab = Load<GameObject>(effectPath, "Effect");
            }
            return prefab;
        }

        /// <summary>
        /// 加载音效资源
        /// </summary>
        public AudioClip LoadSound(string soundPath)
        {
            // 尝试多个路径
            AudioClip clip = Load<AudioClip>($"Audio/{soundPath}", "Sound");
            if (clip == null && !StubConfig.DebugMode)
            {
                clip = Load<AudioClip>(soundPath, "Sound");
                if (clip == null)
                {
                    clip = Load<AudioClip>($"Sounds/{soundPath}", "Sound");
                }
            }
            return clip;
        }

        /// <summary>
        /// 检查资源是否存在（不真正加载）
        /// </summary>
        public bool Exists(string path)
        {
            if (StubConfig.DebugMode && StubConfig.StubResources)
            {
                return false;
            }
            return Resources.Load(path) != null;
        }

        /// <summary>
        /// 预加载资源（异步，用于加载画面）
        /// </summary>
        public ResourceRequest LoadAsync<T>(string path, string category) where T : UnityEngine.Object
        {
            StubConfig.LogMissingResource(category, path);

            if (StubConfig.DebugMode && StubConfig.StubResources)
            {
                return null;
            }

            return Resources.LoadAsync<T>(path);
        }
    }
}
