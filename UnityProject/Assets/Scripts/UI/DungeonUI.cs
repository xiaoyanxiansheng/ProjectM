using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;

namespace CritFramework
{
    /// <summary>
    /// 副本战斗 HUD 控制器
    /// 显示血量、时间、房间进度、技能按钮等
    /// </summary>
    public class DungeonUI : MonoBehaviour
    {
        [Header("顶部信息栏")]
        public TextMeshProUGUI dungeonNameText;
        public TextMeshProUGUI roomInfoText;
        public TextMeshProUGUI timerText;

        [Header("玩家状态")]
        public Slider hpSlider;
        public TextMeshProUGUI hpText;
        public TextMeshProUGUI levelText;

        [Header("怪物信息")]
        public TextMeshProUGUI monsterCountText;

        [Header("技能栏")]
        public Button[] skillButtons;
        public TextMeshProUGUI[] skillCooldownTexts;
        public Image[] skillCooldownMasks;  // CD 遮罩 Image

        [Header("操作按钮")]
        public Button pauseButton;
        public Button killAllButton;  // 测试用：击杀所有怪物

        [Header("运行时数据")]
        private float _dungeonTime = 0f;
        private bool _isRunning = false;
        private int _currentRoom = 0;
        private int _totalRooms = 3;

        private void OnEnable()
        {
            Debug.Log("[DungeonUI] 副本 HUD 已显示");
            _isRunning = true;
            _dungeonTime = 0f;
            
            // 初始化 UI
            UpdateDungeonInfo();
            SetupButtons();
        }

        private void OnDisable()
        {
            _isRunning = false;
        }

        private void Update()
        {
            if (_isRunning)
            {
                _dungeonTime += Time.deltaTime;
                UpdateTimer();
                UpdateFromLua();
            }
        }

        private void SetupButtons()
        {
            // 暂停按钮
            if (pauseButton != null)
            {
                pauseButton.onClick.RemoveAllListeners();
                pauseButton.onClick.AddListener(OnPauseClicked);
            }

            // 测试用：击杀所有怪物
            if (killAllButton != null)
            {
                killAllButton.onClick.RemoveAllListeners();
                killAllButton.onClick.AddListener(OnKillAllClicked);
            }

            // 技能按钮
            if (skillButtons != null)
            {
                for (int i = 0; i < skillButtons.Length; i++)
                {
                    if (skillButtons[i] != null)
                    {
                        int slotIndex = i + 1;  // 技能槽位 1-4
                        skillButtons[i].onClick.RemoveAllListeners();
                        skillButtons[i].onClick.AddListener(() => OnSkillClicked(slotIndex));
                    }
                }
            }
        }

        private void UpdateDungeonInfo()
        {
            // 从 Lua 获取副本信息
            try
            {
                var result = LuaManager.Instance.DoString(@"
                    if Flow and Flow:GetDungeon() then
                        local dungeon = Flow:GetDungeon()
                        return dungeon:GetDungeonId() or 'Unknown', 
                               dungeon.__CurrentRoomIndex or 1, 
                               #dungeon.__Rooms or 3
                    end
                    return 'Test Dungeon', 1, 3
                ", "GetDungeonInfo");

                if (result != null && result.Length >= 3)
                {
                    string dungeonId = result[0]?.ToString() ?? "副本";
                    _currentRoom = System.Convert.ToInt32(result[1]);
                    _totalRooms = System.Convert.ToInt32(result[2]);

                    if (dungeonNameText != null)
                    {
                        dungeonNameText.text = dungeonId;
                    }
                }
            }
            catch (System.Exception e)
            {
                Debug.LogWarning($"[DungeonUI] 获取副本信息失败: {e.Message}");
            }

            UpdateRoomInfo();
        }

        private void UpdateRoomInfo()
        {
            if (roomInfoText != null)
            {
                roomInfoText.text = $"房间 {_currentRoom}/{_totalRooms}";
            }
        }

        private void UpdateTimer()
        {
            if (timerText != null)
            {
                int minutes = Mathf.FloorToInt(_dungeonTime / 60f);
                int seconds = Mathf.FloorToInt(_dungeonTime % 60f);
                timerText.text = $"{minutes:00}:{seconds:00}";
            }
        }

        private void UpdateFromLua()
        {
            // 每秒更新一次详细信息
            if (Time.frameCount % 30 != 0) return;

            try
            {
                var result = LuaManager.Instance.DoString(@"
                    if Flow and Flow:GetDungeon() then
                        local dungeon = Flow:GetDungeon()
                        local aliveCount = dungeon:GetAliveMonsterCount() or 0
                        local roomIndex = dungeon.__CurrentRoomIndex or 1
                        return aliveCount, roomIndex
                    end
                    return 0, 1
                ", "UpdateDungeonUI");

                if (result != null && result.Length >= 2)
                {
                    int aliveMonsters = System.Convert.ToInt32(result[0]);
                    int roomIndex = System.Convert.ToInt32(result[1]);

                    if (monsterCountText != null)
                    {
                        monsterCountText.text = $"敌人: {aliveMonsters}";
                    }

                    if (roomIndex != _currentRoom)
                    {
                        _currentRoom = roomIndex;
                        UpdateRoomInfo();
                    }
                }
            }
            catch { }

            // 更新玩家 HP
            UpdatePlayerHP();
            
            // 更新技能 CD
            UpdateSkillCooldowns();
        }

        /// <summary>
        /// 更新技能 CD 显示
        /// </summary>
        private void UpdateSkillCooldowns()
        {
            if (skillButtons == null || skillButtons.Length == 0) return;

            try
            {
                for (int i = 0; i < skillButtons.Length; i++)
                {
                    int slot = i + 1;
                    var result = LuaManager.Instance.DoString($@"
                        if BattleInit and SkillAPI then
                            local hero = BattleInit:GetPlayerHero()
                            if hero then
                                local insId = hero:GetInsid()
                                local skillId = hero:GetSkillBySlot({slot})
                                if skillId then
                                    local cdRemain = SkillAPI.GetSkillCdTime(insId, skillId) or 0
                                    local cdTotal = SkillAPI.GetSkillTotalCd(insId, skillId) or 1
                                    return cdRemain, cdTotal
                                end
                            end
                        end
                        return 0, 1
                    ", $"GetSkillCD{slot}");

                    if (result != null && result.Length >= 2)
                    {
                        float cdRemain = System.Convert.ToSingle(result[0]);
                        float cdTotal = System.Convert.ToSingle(result[1]);
                        
                        // 更新 CD 文本
                        if (skillCooldownTexts != null && i < skillCooldownTexts.Length && skillCooldownTexts[i] != null)
                        {
                            if (cdRemain > 0)
                            {
                                skillCooldownTexts[i].text = cdRemain.ToString("F1");
                                skillCooldownTexts[i].gameObject.SetActive(true);
                            }
                            else
                            {
                                skillCooldownTexts[i].text = "";
                                skillCooldownTexts[i].gameObject.SetActive(false);
                            }
                        }
                        
                        // 更新 CD 遮罩
                        if (skillCooldownMasks != null && i < skillCooldownMasks.Length && skillCooldownMasks[i] != null)
                        {
                            float ratio = cdTotal > 0 ? cdRemain / cdTotal : 0;
                            skillCooldownMasks[i].fillAmount = ratio;
                            skillCooldownMasks[i].gameObject.SetActive(cdRemain > 0);
                        }
                        
                        // 更新按钮可交互状态
                        if (skillButtons[i] != null)
                        {
                            skillButtons[i].interactable = cdRemain <= 0;
                        }
                    }
                }
            }
            catch { }
        }

        private void UpdatePlayerHP()
        {
            try
            {
                var result = LuaManager.Instance.DoString(@"
                    if BattleInit then
                        local hero = BattleInit:GetPlayerHero()
                        if hero then
                            local hp = hero:GetHP() or 0
                            local maxHp = hero:GetAttr_MaxHP() or 100
                            return hp, maxHp
                        end
                    end
                    return 100, 100
                ", "GetHeroHP");

                if (result != null && result.Length >= 2)
                {
                    float hp = System.Convert.ToSingle(result[0]);
                    float maxHp = System.Convert.ToSingle(result[1]);
                    
                    if (maxHp <= 0) maxHp = 100;
                    float ratio = Mathf.Clamp01(hp / maxHp);

                    if (hpSlider != null)
                    {
                        hpSlider.value = ratio;
                    }
                    if (hpText != null)
                    {
                        hpText.text = $"HP: {(int)hp}/{(int)maxHp}";
                    }
                }
            }
            catch
            {
                // 静默失败，保持上次的值
            }
        }

        private void OnPauseClicked()
        {
            Debug.Log("[DungeonUI] 暂停按钮点击（功能待实现）");
            // TODO: 实现暂停功能
        }

        private void OnKillAllClicked()
        {
            Debug.Log("[DungeonUI] 击杀所有怪物（测试）");
            try
            {
                LuaManager.Instance.DoString(@"
                    if Flow and Flow:GetDungeon() then
                        Flow:GetDungeon():KillAllMonsters()
                    end
                ", "KillAllMonsters");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[DungeonUI] 击杀怪物失败: {e.Message}");
            }
        }

        private void OnSkillClicked(int slotIndex)
        {
            Debug.Log($"[DungeonUI] 释放技能槽位: {slotIndex}");
            try
            {
                LuaManager.Instance.DoString($@"
                    if Flow then
                        Flow:CastSkill({slotIndex})
                    end
                ", "CastSkill");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[DungeonUI] 释放技能失败: {e.Message}");
            }
        }

        /// <summary>
        /// 显示房间通关提示
        /// </summary>
        public void ShowRoomClearedMessage()
        {
            Debug.Log($"[DungeonUI] 房间 {_currentRoom} 通关!");
            // TODO: 显示通关动画/提示
        }

        /// <summary>
        /// 获取副本时间
        /// </summary>
        public float GetDungeonTime()
        {
            return _dungeonTime;
        }
    }
}
