using System;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// Lua 虚拟机管理器
    /// 负责 Lua 环境的生命周期管理、脚本加载和执行
    /// </summary>
    public class LuaManager : MonoBehaviour
    {
        private static LuaManager _instance;
        public static LuaManager Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[LuaManager]");
                    _instance = go.AddComponent<LuaManager>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

        private LuaEnv _luaEnv;
        public LuaEnv LuaEnv => _luaEnv;

        // SetThink 注册的更新函数
        private Dictionary<string, ThinkEntry> _thinkFunctions = new Dictionary<string, ThinkEntry>();
        
        private class ThinkEntry
        {
            public LuaFunction Function;
            public LuaTable Context;
            public float NextCallTime;
        }

        private bool _isInitialized = false;

        /// <summary>
        /// 初始化 Lua 环境
        /// </summary>
        public void Init()
        {
            if (_isInitialized) return;

            _luaEnv = new LuaEnv();
            
            // 添加自定义 Loader
            _luaEnv.AddLoader(CustomLoader);
            
            _isInitialized = true;
            Debug.Log("[LuaManager] Lua 环境初始化完成");
        }

        /// <summary>
        /// 自定义 Lua 文件加载器
        /// </summary>
        private byte[] CustomLoader(ref string filepath)
        {
            // 支持多种路径格式
            string[] searchPaths = new string[]
            {
                Path.Combine(Application.dataPath, "LuaScripts", filepath + ".lua"),
                Path.Combine(Application.dataPath, "LuaScripts", filepath + ".lua.txt"),
                Path.Combine(Application.dataPath, "LuaScripts", filepath.Replace('.', '/') + ".lua"),
                Path.Combine(Application.dataPath, "LuaScripts", filepath.Replace('.', '/') + ".lua.txt"),
            };

            foreach (var path in searchPaths)
            {
                if (File.Exists(path))
                {
                    Debug.Log($"[LuaManager] 加载 Lua 文件: {path}");
                    return File.ReadAllBytes(path);
                }
            }

            return null;
        }

        /// <summary>
        /// 执行 Lua 文件
        /// </summary>
        public object[] DoFile(string filename)
        {
            if (!_isInitialized)
            {
                Debug.LogError("[LuaManager] Lua 环境未初始化");
                return null;
            }

            try
            {
                return _luaEnv.DoString($"require('{filename}')");
            }
            catch (Exception e)
            {
                Debug.LogError($"[LuaManager] 执行 Lua 文件失败: {filename}\n{e}");
                return null;
            }
        }

        /// <summary>
        /// 执行 Lua 字符串
        /// </summary>
        public object[] DoString(string luaCode, string chunkName = "chunk")
        {
            if (!_isInitialized)
            {
                Debug.LogError("[LuaManager] Lua 环境未初始化");
                return null;
            }

            try
            {
                return _luaEnv.DoString(luaCode, chunkName);
            }
            catch (Exception e)
            {
                Debug.LogError($"[LuaManager] 执行 Lua 代码失败:\n{e}");
                return null;
            }
        }

        /// <summary>
        /// 获取全局变量
        /// </summary>
        public T GetGlobal<T>(string name)
        {
            if (!_isInitialized) return default;
            return _luaEnv.Global.Get<T>(name);
        }

        /// <summary>
        /// 设置全局变量
        /// </summary>
        public void SetGlobal<T>(string name, T value)
        {
            if (!_isInitialized) return;
            _luaEnv.Global.Set(name, value);
        }

        /// <summary>
        /// 注册 SetThink 函数（模拟游廊的 SetThink）
        /// </summary>
        public void RegisterThink(string name, LuaTable context)
        {
            if (context == null) return;

            var func = context.Get<LuaFunction>(name);
            if (func == null)
            {
                Debug.LogWarning($"[LuaManager] SetThink: 函数 {name} 不存在于 context 中");
                return;
            }

            _thinkFunctions[name] = new ThinkEntry
            {
                Function = func,
                Context = context,
                NextCallTime = 0
            };

            Debug.Log($"[LuaManager] 注册 Think 函数: {name}");
        }

        /// <summary>
        /// 移除 SetThink 函数
        /// </summary>
        public void UnregisterThink(string name)
        {
            if (_thinkFunctions.ContainsKey(name))
            {
                _thinkFunctions.Remove(name);
            }
        }

        /// <summary>
        /// 每帧调用，驱动 Lua Update
        /// </summary>
        public void Tick(float deltaTime)
        {
            if (!_isInitialized) return;

            float currentTime = Time.time;

            // 调用所有注册的 Think 函数
            foreach (var kvp in _thinkFunctions)
            {
                var entry = kvp.Value;
                if (currentTime >= entry.NextCallTime)
                {
                    try
                    {
                        var results = entry.Function.Call();
                        // 返回值是下次调用的间隔时间
                        if (results != null && results.Length > 0 && results[0] is double interval)
                        {
                            entry.NextCallTime = currentTime + (float)interval;
                        }
                        else
                        {
                            // 默认每帧调用
                            entry.NextCallTime = currentTime;
                        }
                    }
                    catch (Exception e)
                    {
                        Debug.LogError($"[LuaManager] Think 函数 {kvp.Key} 执行失败:\n{e}");
                    }
                }
            }

            // 定期 GC
            if (Time.frameCount % 100 == 0)
            {
                _luaEnv.Tick();
            }
        }

        /// <summary>
        /// 销毁 Lua 环境
        /// </summary>
        public void Dispose()
        {
            if (!_isInitialized) return;

            _thinkFunctions.Clear();

            if (_luaEnv != null)
            {
                _luaEnv.Dispose();
                _luaEnv = null;
            }

            _isInitialized = false;
            Debug.Log("[LuaManager] Lua 环境已销毁");
        }

        private void OnDestroy()
        {
            Dispose();
            _instance = null;
        }
    }
}
