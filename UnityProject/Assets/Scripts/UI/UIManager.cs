using UnityEngine;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// UI 面板管理器
    /// 负责管理所有 UI 面板的显示和隐藏
    /// </summary>
    public class UIManager : MonoBehaviour
    {
        public static UIManager Instance { get; private set; }

        [Header("UI Panels")]
        public GameObject LoadingPanel;
        public GameObject LobbyPanel;
        public GameObject SelectHeroPanel;
        public GameObject SelectDungeonPanel;
        public GameObject DungeonPanel;
        public GameObject BattleHUD;
        public GameObject SettlementPanel;

        private Dictionary<string, GameObject> _panelDict;
        private string _currentPanel;

        private void Awake()
        {
            if (Instance != null && Instance != this)
            {
                Destroy(gameObject);
                return;
            }
            Instance = this;

            // 自动查找 Panel（如果未手动配置）
            AutoFindPanels();
            InitPanelDict();
            
            // 初始隐藏所有面板
            HideAll();
            
            // 调试：输出找到的面板
            Debug.Log($"[UIManager] 面板状态: Loading={LoadingPanel != null}, Lobby={LobbyPanel != null}, " +
                      $"SelectHero={SelectHeroPanel != null}, SelectDungeon={SelectDungeonPanel != null}, " +
                      $"Battle={BattleHUD != null}, Settlement={SettlementPanel != null}");
        }

        private void Start()
        {
            // 再次尝试查找面板（以防 Awake 时其他对象还未初始化）
            if (LoadingPanel == null || LobbyPanel == null)
            {
                Debug.Log("[UIManager] Start 中重新查找面板...");
                AutoFindPanels();
                InitPanelDict();
            }
            
            // 注册游戏状态变更事件
            GameFlowBridge.OnGameStateChanged += OnGameStateChanged;
            Debug.Log("[UIManager] 初始化完成，已注册状态变更事件");
            
            // 调试：输出最终面板状态
            Debug.Log($"[UIManager] 最终面板状态: Loading={LoadingPanel != null}, Lobby={LobbyPanel != null}, " +
                      $"SelectHero={SelectHeroPanel != null}, SelectDungeon={SelectDungeonPanel != null}, " +
                      $"Battle={BattleHUD != null}, Settlement={SettlementPanel != null}");
        }

        private void OnDestroy()
        {
            GameFlowBridge.OnGameStateChanged -= OnGameStateChanged;
        }

        private void AutoFindPanels()
        {
            // 尝试多种方式查找 Canvas
            var canvas = FindFirstObjectByType<Canvas>();
            if (canvas == null)
            {
                Debug.LogWarning("[UIManager] 未找到 Canvas，尝试通过名称查找");
                var canvasGO = GameObject.Find("UI/Canvas");
                if (canvasGO != null)
                {
                    canvas = canvasGO.GetComponent<Canvas>();
                }
            }
            
            if (canvas == null)
            {
                Debug.LogError("[UIManager] 无法找到 Canvas！");
                return;
            }
            
            Debug.Log($"[UIManager] 找到 Canvas: {canvas.name}，子对象数量: {canvas.transform.childCount}");

            if (LoadingPanel == null) LoadingPanel = FindPanel(canvas.transform, "LoadingPanel");
            if (LobbyPanel == null) LobbyPanel = FindPanel(canvas.transform, "LobbyPanel");
            if (SelectHeroPanel == null) SelectHeroPanel = FindPanel(canvas.transform, "SelectHeroPanel");
            if (SelectDungeonPanel == null) SelectDungeonPanel = FindPanel(canvas.transform, "SelectDungeonPanel");
            if (DungeonPanel == null) DungeonPanel = FindPanel(canvas.transform, "DungeonPanel");
            if (BattleHUD == null) BattleHUD = FindPanel(canvas.transform, "BattleHUD");
            if (SettlementPanel == null) SettlementPanel = FindPanel(canvas.transform, "SettlementPanel");
        }

        private GameObject FindPanel(Transform parent, string name)
        {
            var found = parent.Find(name);
            return found != null ? found.gameObject : null;
        }

        private void InitPanelDict()
        {
            _panelDict = new Dictionary<string, GameObject>
            {
                { "Loading", LoadingPanel },
                { "Lobby", LobbyPanel },
                { "SelectHero", SelectHeroPanel },
                { "SelectDungeon", SelectDungeonPanel },
                { "Dungeon", DungeonPanel },
                { "Battle", BattleHUD },
                { "Settlement", SettlementPanel }
            };
        }

        /// <summary>
        /// 显示指定面板，隐藏其他面板
        /// </summary>
        public void ShowPanel(string panelName)
        {
            foreach (var kvp in _panelDict)
            {
                if (kvp.Value != null)
                {
                    kvp.Value.SetActive(kvp.Key == panelName);
                }
            }
            _currentPanel = panelName;
            Debug.Log($"[UIManager] 显示面板: {panelName}");
        }

        /// <summary>
        /// 隐藏所有面板
        /// </summary>
        public void HideAll()
        {
            foreach (var kvp in _panelDict)
            {
                if (kvp.Value != null)
                {
                    kvp.Value.SetActive(false);
                }
            }
            _currentPanel = null;
            Debug.Log("[UIManager] 隐藏所有面板");
        }

        /// <summary>
        /// 获取当前显示的面板名称
        /// </summary>
        public string GetCurrentPanel()
        {
            return _currentPanel;
        }

        /// <summary>
        /// 检查指定面板是否显示
        /// </summary>
        public bool IsPanelVisible(string panelName)
        {
            if (_panelDict.TryGetValue(panelName, out var panel))
            {
                return panel != null && panel.activeSelf;
            }
            return false;
        }

        /// <summary>
        /// 根据游戏状态自动切换面板
        /// </summary>
        public void OnGameStateChanged(GameFlowBridge.GameState oldState, GameFlowBridge.GameState newState)
        {
            switch (newState)
            {
                case GameFlowBridge.GameState.Init:
                    ShowPanel("Loading");
                    break;
                case GameFlowBridge.GameState.Lobby:
                    ShowPanel("Lobby");
                    break;
                case GameFlowBridge.GameState.SelectHero:
                    ShowPanel("SelectHero");
                    break;
                case GameFlowBridge.GameState.SelectDungeon:
                    ShowPanel("SelectDungeon");
                    break;
                case GameFlowBridge.GameState.Loading:
                    ShowPanel("Loading");
                    break;
                case GameFlowBridge.GameState.InDungeon:
                    ShowPanel("Battle");
                    break;
                case GameFlowBridge.GameState.Settlement:
                    ShowPanel("Settlement");
                    break;
                default:
                    HideAll();
                    break;
            }
        }
    }
}
