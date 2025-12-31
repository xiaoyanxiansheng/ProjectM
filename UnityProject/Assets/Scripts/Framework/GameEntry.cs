using UnityEngine;

namespace CritFramework
{
    /// <summary>
    /// 游戏入口
    /// 负责初始化 Lua 环境并启动游戏循环
    /// </summary>
    public class GameEntry : MonoBehaviour
    {
        [Header("启动配置")]
        [Tooltip("启动时自动执行的 Lua 脚本")]
        public string startupScript = "test/test_bridge";

        [Tooltip("是否在启动时自动执行脚本")]
        public bool autoStart = true;

        private void Awake()
        {
            Debug.Log("[GameEntry] 游戏启动...");

            // 初始化 LuaManager
            LuaManager.Instance.Init();

            // 注册桥接 API
            DotaApiBridge.Register(LuaManager.Instance.LuaEnv);

            Debug.Log("[GameEntry] Lua 环境准备就绪");
        }

        private void Start()
        {
            if (autoStart && !string.IsNullOrEmpty(startupScript))
            {
                Debug.Log($"[GameEntry] 执行启动脚本: {startupScript}");
                LuaManager.Instance.DoFile(startupScript);
            }
        }

        private void Update()
        {
            // 驱动 Lua Update 循环
            LuaManager.Instance.Tick(Time.deltaTime);
        }

        private void OnDestroy()
        {
            Debug.Log("[GameEntry] 游戏关闭，清理 Lua 环境...");
            LuaManager.Instance.Dispose();
        }

        /// <summary>
        /// 手动执行 Lua 文件
        /// </summary>
        public void ExecuteLuaFile(string filename)
        {
            LuaManager.Instance.DoFile(filename);
        }

        /// <summary>
        /// 手动执行 Lua 代码
        /// </summary>
        public void ExecuteLuaCode(string code)
        {
            LuaManager.Instance.DoString(code);
        }
    }
}
