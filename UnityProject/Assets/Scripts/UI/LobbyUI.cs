using UnityEngine;
using UnityEngine.UI;
using TMPro;

namespace CritFramework
{
    /// <summary>
    /// 大厅界面控制器
    /// </summary>
    public class LobbyUI : MonoBehaviour
    {
        [Header("UI 引用")]
        public TextMeshProUGUI playerNameText;
        public TextMeshProUGUI currencyText;
        public TextMeshProUGUI titleText;
        public Button startGameButton;
        public Button settingsButton;

        [Header("玩家数据")]
        public string playerName = "TestPlayer";
        public int currency = 1000;

        private void OnEnable()
        {
            // 每次显示时刷新数据
            RefreshUI();
            Debug.Log("[LobbyUI] 大厅界面已显示");
        }

        private void Start()
        {
            // 绑定按钮事件
            if (startGameButton != null)
            {
                startGameButton.onClick.AddListener(OnStartGameClicked);
            }

            if (settingsButton != null)
            {
                settingsButton.onClick.AddListener(OnSettingsClicked);
            }

            // 尝试从存档加载玩家数据
            LoadPlayerData();
        }

        /// <summary>
        /// 刷新 UI 显示
        /// </summary>
        public void RefreshUI()
        {
            if (playerNameText != null)
            {
                playerNameText.text = $"Player: {playerName}";
            }

            if (currencyText != null)
            {
                currencyText.text = $"Gold: {currency}";
            }

            if (titleText != null)
            {
                titleText.text = "LOBBY";
            }
        }

        /// <summary>
        /// 从存档加载玩家数据
        /// </summary>
        private void LoadPlayerData()
        {
            // 尝试从 Lua SaveData 模块加载
            try
            {
                var result = LuaManager.Instance.DoString(@"
                    if SaveData then
                        local data = SaveData:Load('player_info')
                        if data then
                            return data.name or 'TestPlayer', data.currency or 1000
                        end
                    end
                    return 'TestPlayer', 1000
                ", "LoadPlayerData");

                // 如果成功获取数据，更新显示
                // 这里简化处理，实际需要解析返回值
            }
            catch (System.Exception e)
            {
                Debug.LogWarning($"[LobbyUI] 加载玩家数据失败: {e.Message}");
            }

            RefreshUI();
        }

        /// <summary>
        /// 点击"开始游戏"按钮
        /// </summary>
        private void OnStartGameClicked()
        {
            Debug.Log("[LobbyUI] 点击开始游戏，进入选角界面");

            // 调用 Lua Flow:SelectHero()
            try
            {
                LuaManager.Instance.DoString(@"
                    if Flow and Flow.SelectHero then
                        Flow:SelectHero()
                    else
                        print('[Flow] SelectHero 方法不存在')
                    end
                ", "SelectHero");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[LobbyUI] 进入选角失败: {e.Message}");
                
                // 备用方案：直接触发状态切换
                if (UIManager.Instance != null)
                {
                    UIManager.Instance.ShowPanel("SelectHero");
                }
            }
        }

        /// <summary>
        /// 点击"设置"按钮
        /// </summary>
        private void OnSettingsClicked()
        {
            Debug.Log("[LobbyUI] 点击设置（功能预留）");
            // 设置功能预留
        }

        /// <summary>
        /// 设置玩家数据
        /// </summary>
        public void SetPlayerData(string name, int gold)
        {
            playerName = name;
            currency = gold;
            RefreshUI();
        }
    }
}
