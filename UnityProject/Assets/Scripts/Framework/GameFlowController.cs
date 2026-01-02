using UnityEngine;
#if ENABLE_INPUT_SYSTEM
using UnityEngine.InputSystem;
#endif

namespace CritFramework
{
    /// <summary>
    /// 游戏流程控制器 - 处理按键输入控制流程
    /// </summary>
    /// <remarks>
    /// 快捷键：
    /// F1 - 进入大厅
    /// F2 - 选择英雄 (ID: 1001)
    /// F3 - 选择副本 (ID: 1)
    /// F4 - 开始副本
    /// F5 - 返回大厅
    /// F6 - 杀死所有怪物（测试用）
    /// 1-4 - 释放技能槽位 1-4
    /// P - 打印当前状态
    /// </remarks>
    public class GameFlowController : MonoBehaviour
    {
        #region Serialized Fields
        
        [SerializeField] private bool _enableKeyboardControl = true;
        [SerializeField] private int _defaultHeroId = 1001;
        [SerializeField] private int _defaultDungeonId = 1;
        
        #endregion
        
        #region Fields
        
        private LuaManager _luaManager;
        private bool _isInitialized;
        
        #endregion
        
        #region Unity Lifecycle
        
        private void Start()
        {
            _luaManager = LuaManager.Instance;
            
            // 订阅状态变更事件
            GameFlowBridge.OnGameStateChanged += OnGameStateChanged;
            
            Debug.Log("[GameFlowController] 初始化完成");
            Debug.Log("[GameFlowController] 快捷键说明:");
            Debug.Log("  F1 - 进入大厅");
            Debug.Log("  F2 - 选择英雄");
            Debug.Log("  F3 - 选择副本");
            Debug.Log("  F4 - 开始副本");
            Debug.Log("  F5 - 返回大厅");
            Debug.Log("  F6 - 杀死所有怪物");
            Debug.Log("  1-4 - 释放技能");
            Debug.Log("  P - 打印状态");
        }
        
        private void Update()
        {
            if (!_enableKeyboardControl) return;
            
            // 更新流程
            GameFlowBridge.Tick(Time.deltaTime);
            
            // 处理按键输入
            HandleKeyboardInput();
        }
        
        private void OnDestroy()
        {
            GameFlowBridge.OnGameStateChanged -= OnGameStateChanged;
        }
        
        #endregion
        
        #region Private Methods
        
        private void HandleKeyboardInput()
        {
#if ENABLE_INPUT_SYSTEM
            // 新 Input System
            var keyboard = Keyboard.current;
            if (keyboard == null) return;
            
            if (keyboard.f1Key.wasPressedThisFrame)
            {
                OnPressF1();
            }
            else if (keyboard.f2Key.wasPressedThisFrame)
            {
                OnPressF2();
            }
            else if (keyboard.f3Key.wasPressedThisFrame)
            {
                OnPressF3();
            }
            else if (keyboard.f4Key.wasPressedThisFrame)
            {
                OnPressF4();
            }
            else if (keyboard.f5Key.wasPressedThisFrame)
            {
                OnPressF5();
            }
            else if (keyboard.f6Key.wasPressedThisFrame)
            {
                OnPressF6();
            }
            else if (keyboard.digit1Key.wasPressedThisFrame)
            {
                OnPressCastSkill(1);
            }
            else if (keyboard.digit2Key.wasPressedThisFrame)
            {
                OnPressCastSkill(2);
            }
            else if (keyboard.digit3Key.wasPressedThisFrame)
            {
                OnPressCastSkill(3);
            }
            else if (keyboard.digit4Key.wasPressedThisFrame)
            {
                OnPressCastSkill(4);
            }
            else if (keyboard.pKey.wasPressedThisFrame)
            {
                OnPressPrintStatus();
            }
#else
            // 旧 Input System（仅作为回退）
            Debug.LogWarning("[GameFlowController] 请使用新 Input System");
#endif
        }
        
        private void OnPressF1()
        {
            Debug.Log("<color=lime>[Key] F1 - 进入大厅</color>");
            
            // 如果还没初始化流程，先初始化
            if (!_isInitialized)
            {
                InitializeFlow();
            }
            else
            {
                GameFlowBridge.EnterLobby();
            }
        }
        
        private void OnPressF2()
        {
            Debug.Log($"<color=lime>[Key] F2 - 选择英雄 {_defaultHeroId}</color>");
            GameFlowBridge.SelectHero(_defaultHeroId);
        }
        
        private void OnPressF3()
        {
            Debug.Log($"<color=lime>[Key] F3 - 选择副本 {_defaultDungeonId}</color>");
            GameFlowBridge.SelectDungeon(_defaultDungeonId);
        }
        
        private void OnPressF4()
        {
            Debug.Log("<color=lime>[Key] F4 - 开始副本</color>");
            GameFlowBridge.StartDungeon();
        }
        
        private void OnPressF5()
        {
            Debug.Log("<color=lime>[Key] F5 - 返回大厅</color>");
            GameFlowBridge.ReturnToLobby();
        }
        
        private void OnPressF6()
        {
            Debug.Log("<color=lime>[Key] F6 - 杀死所有怪物</color>");
            KillAllMonsters();
        }
        
        private void OnPressCastSkill(int slot)
        {
            Debug.Log($"<color=lime>[Key] {slot} - 释放技能槽位 {slot}</color>");
            GameFlowBridge.CastSkill(slot);
        }
        
        private void OnPressPrintStatus()
        {
            Debug.Log("<color=lime>[Key] P - 打印当前状态</color>");
            PrintCurrentStatus();
        }
        
        private void InitializeFlow()
        {
            if (_luaManager == null || _luaManager.LuaEnv == null)
            {
                Debug.LogError("[GameFlowController] LuaManager 未初始化");
                return;
            }
            
            // 加载 flow.lua
            _luaManager.DoFile("critcore/static/flow");
            
            // 注册桥接
            GameFlowBridge.Register(_luaManager.LuaEnv);
            
            // 初始化流程
            GameFlowBridge.Initialize();
            
            _isInitialized = true;
        }
        
        private void KillAllMonsters()
        {
            if (_luaManager == null) return;
            
            // 调用 Lua 杀死所有怪物
            _luaManager.LuaEnv.DoString(@"
                if Flow and Flow:GetDungeon() then
                    local dungeon = Flow:GetDungeon()
                    if dungeon and dungeon.KillAllMonsters then
                        dungeon:KillAllMonsters()
                    end
                else
                    print('[警告] 不在副本中')
                end
            ");
        }
        
        private void PrintCurrentStatus()
        {
            if (_luaManager == null) return;
            
            _luaManager.LuaEnv.DoString(@"
                print('========== 当前状态 ==========')
                if Flow then
                    print('游戏状态: ' .. Flow:GetStateName())
                    
                    local player = Flow:GetPlayer()
                    if player then
                        print('玩家: ' .. (player.GetName and player:GetName() or 'N/A'))
                    end
                    
                    local hero = Flow:GetHero()
                    if hero then
                        print('英雄ID: ' .. (hero.GetHeroId and hero:GetHeroId() or 'N/A'))
                    end
                    
                    local dungeon = Flow:GetDungeon()
                    if dungeon then
                        print('副本ID: ' .. (dungeon.GetDungeonId and dungeon:GetDungeonId() or 'N/A'))
                        print('副本时间: ' .. string.format('%.2f', dungeon:GetTime()) .. '秒')
                        if dungeon.GetAliveMonsterCount then
                            print('存活怪物: ' .. dungeon:GetAliveMonsterCount())
                        end
                    end
                else
                    print('Flow 模块未初始化')
                end
                print('================================')
            ");
        }
        
        private void OnGameStateChanged(GameFlowBridge.GameState oldState, GameFlowBridge.GameState newState)
        {
            // 状态变更时的额外处理
            switch (newState)
            {
                case GameFlowBridge.GameState.Lobby:
                    Debug.Log("<color=cyan>[提示] 在大厅中，按 F2 选择英雄</color>");
                    break;
                case GameFlowBridge.GameState.SelectHero:
                    Debug.Log("<color=cyan>[提示] 已选择英雄，按 F3 选择副本</color>");
                    break;
                case GameFlowBridge.GameState.SelectDungeon:
                    Debug.Log("<color=cyan>[提示] 已选择副本，按 F4 开始副本</color>");
                    break;
                case GameFlowBridge.GameState.InDungeon:
                    Debug.Log("<color=cyan>[提示] 在副本中，按 1-4 释放技能，F6 杀死怪物</color>");
                    break;
                case GameFlowBridge.GameState.Settlement:
                    Debug.Log("<color=cyan>[提示] 结算完成，按 F5 返回大厅</color>");
                    break;
            }
        }
        
        #endregion
    }
}
