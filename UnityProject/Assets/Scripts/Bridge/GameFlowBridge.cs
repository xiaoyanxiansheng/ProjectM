using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 游戏流程桥接 - 连接 Lua Flow 模块与 Unity
    /// </summary>
    /// <remarks>
    /// 依赖: LuaManager
    /// </remarks>
    public static class GameFlowBridge
    {
        #region Constants
        
        /// <summary>
        /// 游戏状态枚举（与 Lua GameState 保持一致）
        /// </summary>
        public enum GameState
        {
            None = 0,
            Init = 1,
            Lobby = 2,
            SelectHero = 3,
            SelectDungeon = 4,
            Loading = 5,
            InDungeon = 6,
            Settlement = 7
        }
        
        #endregion
        
        #region Fields
        
        private static LuaEnv _luaEnv;
        private static LuaFunction _flowInit;
        private static LuaFunction _flowEnterLobby;
        private static LuaFunction _flowSelectHero;
        private static LuaFunction _flowSelectDungeon;
        private static LuaFunction _flowStartDungeon;
        private static LuaFunction _flowEndDungeon;
        private static LuaFunction _flowReturnToLobby;
        private static LuaFunction _flowCastSkill;
        private static LuaFunction _flowTick;
        private static LuaFunction _flowGetState;
        private static LuaTable _flowTable; // 缓存 Flow 表用于方法调用
        
        #endregion
        
        #region Events
        
        /// <summary>
        /// 状态变更事件
        /// </summary>
        public static System.Action<GameState, GameState> OnGameStateChanged;
        
        #endregion
        
        #region Public Methods
        
        /// <summary>
        /// 注册到 Lua 环境
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            _luaEnv = luaEnv;
            
            // 注册状态变更回调到 Lua 全局空间
            luaEnv.Global.Set("GameFlowBridge_OnStateChanged", 
                new System.Action<int, int>((oldState, newState) => {
                    OnStateChanged(oldState, newState);
                }));
            
            // 在 Lua 中创建便捷访问方式
            luaEnv.DoString(@"
                -- 创建 GameFlowBridge 全局表
                GameFlowBridge = GameFlowBridge or {}
                
                -- 状态变更通知函数
                function GameFlowBridge.NotifyStateChanged(oldState, newState)
                    if GameFlowBridge_OnStateChanged then
                        GameFlowBridge_OnStateChanged(oldState, newState)
                    end
                end
            ", "GameFlowBridgeInit");
            
            Debug.Log("[GameFlowBridge] 注册完成");
        }
        
        /// <summary>
        /// 初始化流程（加载 flow.lua 后调用）
        /// </summary>
        public static void Initialize()
        {
            Debug.Log($"[GameFlowBridge] Initialize 被调用, _luaEnv={((_luaEnv == null) ? "null" : "有效")}");
            
            if (_luaEnv == null)
            {
                Debug.LogError("[GameFlowBridge] LuaEnv 未初始化");
                return;
            }
            
            // 获取 Lua 函数引用
            CacheLuaFunctions();
            
            // Flow:Init() 在 LoadingUI 中手动调用，不再在这里调用
            // CallFlowInit();
        }
        
        /// <summary>
        /// 进入大厅
        /// </summary>
        public static bool EnterLobby()
        {
            if (_flowEnterLobby != null && _flowTable != null)
            {
                var results = _flowEnterLobby.Call(_flowTable);
                return results != null && results.Length > 0 && (bool)results[0];
            }
            return false;
        }
        
        /// <summary>
        /// 选择英雄
        /// </summary>
        public static bool SelectHero(int heroId)
        {
            if (_flowSelectHero != null && _flowTable != null)
            {
                var results = _flowSelectHero.Call(_flowTable, heroId);
                return results != null && results.Length > 0 && (bool)results[0];
            }
            return false;
        }
        
        /// <summary>
        /// 选择副本
        /// </summary>
        public static bool SelectDungeon(int dungeonId)
        {
            if (_flowSelectDungeon != null && _flowTable != null)
            {
                var results = _flowSelectDungeon.Call(_flowTable, dungeonId);
                return results != null && results.Length > 0 && (bool)results[0];
            }
            return false;
        }
        
        /// <summary>
        /// 开始副本
        /// </summary>
        public static bool StartDungeon()
        {
            if (_flowStartDungeon != null && _flowTable != null)
            {
                var results = _flowStartDungeon.Call(_flowTable);
                return results != null && results.Length > 0 && (bool)results[0];
            }
            return false;
        }
        
        /// <summary>
        /// 结束副本
        /// </summary>
        public static bool EndDungeon(bool isVictory)
        {
            if (_flowEndDungeon != null && _flowTable != null)
            {
                var results = _flowEndDungeon.Call(_flowTable, isVictory);
                return results != null && results.Length > 0 && (bool)results[0];
            }
            return false;
        }
        
        /// <summary>
        /// 返回大厅
        /// </summary>
        public static bool ReturnToLobby()
        {
            if (_flowReturnToLobby != null && _flowTable != null)
            {
                var results = _flowReturnToLobby.Call(_flowTable);
                return results != null && results.Length > 0 && (bool)results[0];
            }
            return false;
        }
        
        /// <summary>
        /// 释放技能
        /// </summary>
        public static bool CastSkill(int skillSlot)
        {
            if (_flowCastSkill != null && _flowTable != null)
            {
                // Lua 方法 Flow:CastSkill 需要 self 参数
                var results = _flowCastSkill.Call(_flowTable, skillSlot);
                return results != null && results.Length > 0 && (bool)results[0];
            }
            return false;
        }
        
        /// <summary>
        /// 每帧更新
        /// </summary>
        public static void Tick(float deltaTime)
        {
            if (_flowTick != null && _flowTable != null)
            {
                // Lua 方法需要传递 self 参数
                _flowTick.Call(_flowTable, deltaTime);
            }
        }
        
        /// <summary>
        /// 获取当前状态
        /// </summary>
        public static GameState GetState()
        {
            if (_flowGetState != null && _flowTable != null)
            {
                var results = _flowGetState.Call(_flowTable);
                if (results != null && results.Length > 0)
                {
                    return (GameState)(int)(long)results[0];
                }
            }
            return GameState.None;
        }
        
        /// <summary>
        /// 状态变更回调（由 Lua 调用）
        /// </summary>
        public static void OnStateChanged(int oldState, int newState)
        {
            var oldGameState = (GameState)oldState;
            var newGameState = (GameState)newState;
            
            Debug.Log($"[GameFlowBridge] 状态变更: {oldGameState} -> {newGameState}");
            
            OnGameStateChanged?.Invoke(oldGameState, newGameState);
        }
        
        #endregion
        
        #region Private Methods
        
        private static void CacheLuaFunctions()
        {
            _flowTable = _luaEnv.Global.Get<LuaTable>("Flow");
            if (_flowTable == null)
            {
                Debug.LogError("[GameFlowBridge] Flow 模块未找到");
                return;
            }
            
            _flowInit = _flowTable.Get<LuaFunction>("Init");
            _flowEnterLobby = _flowTable.Get<LuaFunction>("EnterLobby");
            _flowSelectHero = _flowTable.Get<LuaFunction>("SelectHero");
            _flowSelectDungeon = _flowTable.Get<LuaFunction>("SelectDungeon");
            _flowStartDungeon = _flowTable.Get<LuaFunction>("StartDungeon");
            _flowEndDungeon = _flowTable.Get<LuaFunction>("EndDungeon");
            _flowReturnToLobby = _flowTable.Get<LuaFunction>("ReturnToLobby");
            _flowCastSkill = _flowTable.Get<LuaFunction>("CastSkill");
            _flowTick = _flowTable.Get<LuaFunction>("Tick");
            _flowGetState = _flowTable.Get<LuaFunction>("GetState");
            
            Debug.Log("[GameFlowBridge] Lua 函数缓存完成");
        }
        
        private static void CallFlowInit()
        {
            if (_flowInit != null && _flowTable != null)
            {
                _flowInit.Call(_flowTable);
            }
        }
        
        #endregion
    }
}
