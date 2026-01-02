using UnityEngine;
using UnityEngine.UI;
using TMPro;

namespace CritFramework
{
    /// <summary>
    /// 结算界面控制器
    /// 显示副本结果、奖励、返回大厅按钮
    /// </summary>
    public class SettlementUI : MonoBehaviour
    {
        [Header("结果显示")]
        public TextMeshProUGUI titleText;
        public TextMeshProUGUI resultText;
        public TextMeshProUGUI timeText;

        [Header("奖励显示")]
        public TextMeshProUGUI goldRewardText;
        public TextMeshProUGUI expRewardText;
        public Transform itemRewardContainer;

        [Header("操作按钮")]
        public Button returnButton;
        public Button retryButton;

        [Header("运行时数据")]
        private bool _isVictory = true;
        private int _goldReward = 0;
        private int _expReward = 0;
        private float _clearTime = 0f;

        private void OnEnable()
        {
            Debug.Log("[SettlementUI] 结算界面已显示");
            SetupButtons();
            LoadSettlementData();
        }

        private void SetupButtons()
        {
            if (returnButton != null)
            {
                returnButton.onClick.RemoveAllListeners();
                returnButton.onClick.AddListener(OnReturnClicked);
            }

            if (retryButton != null)
            {
                retryButton.onClick.RemoveAllListeners();
                retryButton.onClick.AddListener(OnRetryClicked);
            }
        }

        private void LoadSettlementData()
        {
            // 从 Lua 获取结算数据
            try
            {
                var result = LuaManager.Instance.DoString(@"
                    if Flow and Flow:GetDungeon() then
                        local dungeon = Flow:GetDungeon()
                        local state = dungeon:GetState()
                        local isVictory = (state == DungeonState.VICTORY)
                        local time = dungeon:GetTime() or 0
                        -- 简化奖励
                        local gold = isVictory and 100 or 0
                        local exp = isVictory and 50 or 0
                        return isVictory, time, gold, exp
                    end
                    return true, 60, 100, 50
                ", "GetSettlementData");

                if (result != null && result.Length >= 4)
                {
                    _isVictory = System.Convert.ToBoolean(result[0]);
                    _clearTime = System.Convert.ToSingle(result[1]);
                    _goldReward = System.Convert.ToInt32(result[2]);
                    _expReward = System.Convert.ToInt32(result[3]);
                }
            }
            catch (System.Exception e)
            {
                Debug.LogWarning($"[SettlementUI] 获取结算数据失败: {e.Message}");
                // 使用默认值
                _isVictory = true;
                _clearTime = 60f;
                _goldReward = 100;
                _expReward = 50;
            }

            UpdateUI();
        }

        private void UpdateUI()
        {
            // 标题
            if (titleText != null)
            {
                titleText.text = _isVictory ? "副本通关!" : "副本失败";
                titleText.color = _isVictory ? new Color(1f, 0.84f, 0f) : new Color(0.8f, 0.2f, 0.2f);
            }

            // 结果描述
            if (resultText != null)
            {
                resultText.text = _isVictory 
                    ? "恭喜你成功通关副本！" 
                    : "很遗憾，挑战失败了...";
            }

            // 通关时间
            if (timeText != null)
            {
                int minutes = Mathf.FloorToInt(_clearTime / 60f);
                int seconds = Mathf.FloorToInt(_clearTime % 60f);
                timeText.text = $"用时: {minutes:00}:{seconds:00}";
            }

            // 奖励
            if (goldRewardText != null)
            {
                goldRewardText.text = $"金币: +{_goldReward}";
            }

            if (expRewardText != null)
            {
                expRewardText.text = $"经验: +{_expReward}";
            }

            // 重试按钮只在失败时显示
            if (retryButton != null)
            {
                retryButton.gameObject.SetActive(!_isVictory);
            }
        }

        private void OnReturnClicked()
        {
            Debug.Log("[SettlementUI] 返回大厅");

            try
            {
                LuaManager.Instance.DoString(@"
                    if Flow then
                        Flow:ReturnToLobby()
                    end
                ", "ReturnToLobby");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SettlementUI] 返回大厅失败: {e.Message}");
                // 备用方案
                UIManager.Instance?.ShowPanel("Lobby");
            }
        }

        private void OnRetryClicked()
        {
            Debug.Log("[SettlementUI] 重新挑战");

            try
            {
                // 重新开始同一副本
                LuaManager.Instance.DoString(@"
                    if Flow then
                        -- 回到选副本状态，保留之前的选择
                        Flow.__CurrentState = GameState.SELECT_DUNGEON
                        Flow:StartDungeon()
                    end
                ", "RetryDungeon");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SettlementUI] 重新挑战失败: {e.Message}");
            }
        }

        /// <summary>
        /// 设置结算数据（供外部调用）
        /// </summary>
        public void SetSettlementData(bool isVictory, float clearTime, int gold, int exp)
        {
            _isVictory = isVictory;
            _clearTime = clearTime;
            _goldReward = gold;
            _expReward = exp;
            UpdateUI();
        }
    }
}
