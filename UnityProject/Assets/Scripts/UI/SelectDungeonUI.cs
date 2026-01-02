using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections.Generic;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 选副本界面控制器 - 从配置表读取副本数据
    /// </summary>
    public class SelectDungeonUI : MonoBehaviour
    {
        [Header("UI 引用")]
        public TextMeshProUGUI titleText;
        public Transform dungeonListContent;
        public Transform diffListContent;
        public TextMeshProUGUI selectedDungeonText;
        public Button confirmButton;
        public Button backButton;

        [Header("运行时数据")]
        private string _selectedDungeonName = "";
        private int _selectedDiffLevel = 0;
        private string _selectedDungeonTitle = "";
        private string _selectedDiffName = "";
        private List<GameObject> _dungeonItems = new List<GameObject>();
        private List<GameObject> _diffItems = new List<GameObject>();
        private bool _initialized = false;
        private TMP_FontAsset _cachedDefaultFont;

        private void OnEnable()
        {
            Debug.Log("[SelectDungeonUI] 选副本界面已显示");
            if (_initialized)
            {
                LoadDungeonList();
            }
            else
            {
                StartCoroutine(DelayedLoad());
            }
        }

        private System.Collections.IEnumerator DelayedLoad()
        {
            // 等待 Lua 环境初始化
            int waitFrames = 0;
            while (LuaManager.Instance == null && waitFrames < 60)
            {
                yield return null;
                waitFrames++;
            }
            
            // 额外等待几帧确保完全初始化
            yield return null;
            yield return null;
            
            if (gameObject.activeInHierarchy)
            {
                _initialized = true;
                LoadDungeonList();
            }
        }

        private void Start()
        {
            // 绑定按钮事件
            if (confirmButton != null)
            {
                confirmButton.onClick.AddListener(OnConfirmClicked);
            }

            if (backButton != null)
            {
                backButton.onClick.AddListener(OnBackClicked);
            }
        }

        /// <summary>
        /// 从 Lua 配置表加载副本列表
        /// </summary>
        private void LoadDungeonList()
        {
            // 清除旧的副本项
            ClearDungeonItems();
            ClearDiffItems();

            try
            {
                // 加载 DungeonHelper 模块
                LuaManager.Instance.DoFile("critcore/static/dungeon_helper");

                // 获取副本列表
                var result = LuaManager.Instance.DoString(@"
                    local dungeons = DungeonHelper:GetDungeonList()
                    local jsonStr = '['
                    for i, dungeon in ipairs(dungeons) do
                        if i > 1 then jsonStr = jsonStr .. ',' end
                        jsonStr = jsonStr .. string.format(
                            '{""name"":""%s"",""title"":""%s"",""maxLevel"":%d}',
                            dungeon.name, dungeon.title, dungeon.maxLevel
                        )
                    end
                    jsonStr = jsonStr .. ']'
                    return jsonStr
                ", "GetDungeonList");

                if (result != null && result.Length > 0)
                {
                    string jsonStr = result[0].ToString();
                    Debug.Log($"[SelectDungeonUI] 副本列表 JSON: {jsonStr}");
                    
                    ParseAndCreateDungeonItems(jsonStr);
                }
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SelectDungeonUI] 加载副本列表失败: {e.Message}");
                // 创建测试数据
                CreateTestDungeonItems();
            }

            UpdateSelectedDisplay();
        }

        /// <summary>
        /// 解析 JSON 并创建副本项
        /// </summary>
        private void ParseAndCreateDungeonItems(string json)
        {
            if (string.IsNullOrEmpty(json) || json == "[]")
            {
                Debug.Log("[SelectDungeonUI] 副本列表为空，使用测试数据");
                CreateTestDungeonItems();
                return;
            }

            // 移除方括号
            json = json.Trim('[', ']');
            
            // 按 },{ 分割
            string[] items = json.Split(new string[] { "},{" }, System.StringSplitOptions.RemoveEmptyEntries);
            
            int count = 0;
            foreach (var item in items)
            {
                string cleanItem = item.Trim('{', '}');
                
                string name = ExtractString(cleanItem, "name");
                string title = ExtractString(cleanItem, "title");
                int maxLevel = ExtractInt(cleanItem, "maxLevel");

                if (!string.IsNullOrEmpty(name))
                {
                    CreateDungeonItem(name, title, maxLevel);
                    count++;
                }

                // 限制显示数量
                if (count >= 8) break;
            }

            Debug.Log($"[SelectDungeonUI] 创建了 {count} 个副本选项");
        }

        /// <summary>
        /// 创建测试副本数据
        /// </summary>
        private void CreateTestDungeonItems()
        {
            CreateDungeonItem("main_rogue", "常规副本", 30);
            CreateDungeonItem("test", "测试副本", 1);
        }

        /// <summary>
        /// 创建单个副本选项
        /// </summary>
        private void CreateDungeonItem(string dungeonName, string title, int maxLevel)
        {
            if (dungeonListContent == null) return;

            TMP_FontAsset defaultFont = GetDefaultFontAsset();

            // 创建按钮
            GameObject itemGO = new GameObject($"DungeonItem_{dungeonName}");
            itemGO.transform.SetParent(dungeonListContent, false);

            // 添加 RectTransform
            var rect = itemGO.AddComponent<RectTransform>();
            rect.sizeDelta = new Vector2(200, 80);

            // 添加背景 Image
            var bgImage = itemGO.AddComponent<Image>();
            bgImage.color = new Color(0.25f, 0.35f, 0.25f, 1f);

            // 添加 Button
            var button = itemGO.AddComponent<Button>();
            string capturedName = dungeonName;
            string capturedTitle = title;
            button.onClick.AddListener(() => OnDungeonSelected(capturedName, capturedTitle));

            // 添加副本名称文字
            var nameGO = new GameObject("Title");
            nameGO.transform.SetParent(itemGO.transform, false);
            var nameRect = nameGO.AddComponent<RectTransform>();
            nameRect.anchorMin = new Vector2(0, 0.4f);
            nameRect.anchorMax = new Vector2(1, 0.9f);
            nameRect.offsetMin = Vector2.zero;
            nameRect.offsetMax = Vector2.zero;
            var nameText = nameGO.AddComponent<TextMeshProUGUI>();
            nameText.text = title;
            nameText.fontSize = 18;
            nameText.alignment = TextAlignmentOptions.Center;
            nameText.color = Color.white;
            if (defaultFont != null)
            {
                nameText.font = defaultFont;
            }

            // 添加难度数量文字
            var levelGO = new GameObject("LevelInfo");
            levelGO.transform.SetParent(itemGO.transform, false);
            var levelRect = levelGO.AddComponent<RectTransform>();
            levelRect.anchorMin = new Vector2(0, 0.1f);
            levelRect.anchorMax = new Vector2(1, 0.4f);
            levelRect.offsetMin = Vector2.zero;
            levelRect.offsetMax = Vector2.zero;
            var levelText = levelGO.AddComponent<TextMeshProUGUI>();
            levelText.text = $"共 {maxLevel} 关";
            levelText.fontSize = 14;
            levelText.alignment = TextAlignmentOptions.Center;
            levelText.color = new Color(0.7f, 0.7f, 0.7f, 1f);
            if (defaultFont != null)
            {
                levelText.font = defaultFont;
            }

            _dungeonItems.Add(itemGO);
        }

        /// <summary>
        /// 选择副本后加载难度列表
        /// </summary>
        private void OnDungeonSelected(string dungeonName, string title)
        {
            _selectedDungeonName = dungeonName;
            _selectedDungeonTitle = title;
            _selectedDiffLevel = 0;
            _selectedDiffName = "";
            
            Debug.Log($"[SelectDungeonUI] 选择副本: {title} ({dungeonName})");
            
            LoadDiffList(dungeonName);
            UpdateSelectedDisplay();
        }

        /// <summary>
        /// 加载难度列表
        /// </summary>
        private void LoadDiffList(string dungeonName)
        {
            ClearDiffItems();

            try
            {
                var result = LuaManager.Instance.DoString($@"
                    local diffs = DungeonHelper:GetDungeonDiffs('{dungeonName}')
                    local jsonStr = '['
                    for i, diff in ipairs(diffs) do
                        if i > 1 then jsonStr = jsonStr .. ',' end
                        local unlockedStr = diff.unlocked and 'true' or 'false'
                        jsonStr = jsonStr .. string.format(
                            '{{""level"":%d,""name"":""%s"",""unlocked"":%s}}',
                            diff.level, diff.name, unlockedStr
                        )
                    end
                    jsonStr = jsonStr .. ']'
                    return jsonStr
                ", "GetDungeonDiffs");

                if (result != null && result.Length > 0)
                {
                    string jsonStr = result[0].ToString();
                    Debug.Log($"[SelectDungeonUI] 难度列表 JSON: {jsonStr}");
                    
                    ParseAndCreateDiffItems(jsonStr);
                }
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SelectDungeonUI] 加载难度列表失败: {e.Message}");
                CreateTestDiffItems();
            }
        }

        /// <summary>
        /// 解析 JSON 并创建难度项
        /// </summary>
        private void ParseAndCreateDiffItems(string json)
        {
            if (string.IsNullOrEmpty(json) || json == "[]")
            {
                Debug.Log("[SelectDungeonUI] 难度列表为空，使用测试数据");
                CreateTestDiffItems();
                return;
            }

            json = json.Trim('[', ']');
            string[] items = json.Split(new string[] { "},{" }, System.StringSplitOptions.RemoveEmptyEntries);
            
            int count = 0;
            foreach (var item in items)
            {
                string cleanItem = item.Trim('{', '}');
                
                int level = ExtractInt(cleanItem, "level");
                string name = ExtractString(cleanItem, "name");
                bool unlocked = cleanItem.Contains("\"unlocked\":true");

                if (level > 0)
                {
                    CreateDiffItem(level, name, unlocked);
                    count++;
                }

                // 限制显示数量（只显示前 10 个难度）
                if (count >= 10) break;
            }

            Debug.Log($"[SelectDungeonUI] 创建了 {count} 个难度选项");
        }

        /// <summary>
        /// 创建测试难度数据
        /// </summary>
        private void CreateTestDiffItems()
        {
            for (int i = 1; i <= 5; i++)
            {
                CreateDiffItem(i, $"N{i}", i == 1);
            }
        }

        /// <summary>
        /// 创建单个难度选项
        /// </summary>
        private void CreateDiffItem(int level, string name, bool unlocked)
        {
            if (diffListContent == null) return;

            TMP_FontAsset defaultFont = GetDefaultFontAsset();

            GameObject itemGO = new GameObject($"DiffItem_{level}");
            itemGO.transform.SetParent(diffListContent, false);

            var rect = itemGO.AddComponent<RectTransform>();
            rect.sizeDelta = new Vector2(80, 60);

            var bgImage = itemGO.AddComponent<Image>();
            bgImage.color = unlocked 
                ? new Color(0.3f, 0.5f, 0.3f, 1f) 
                : new Color(0.3f, 0.3f, 0.3f, 0.5f);

            var button = itemGO.AddComponent<Button>();
            button.interactable = unlocked;
            
            int capturedLevel = level;
            string capturedName = name;
            button.onClick.AddListener(() => OnDiffSelected(capturedLevel, capturedName));

            // 难度名文字
            var nameGO = new GameObject("Name");
            nameGO.transform.SetParent(itemGO.transform, false);
            var nameRect = nameGO.AddComponent<RectTransform>();
            nameRect.anchorMin = Vector2.zero;
            nameRect.anchorMax = Vector2.one;
            nameRect.offsetMin = Vector2.zero;
            nameRect.offsetMax = Vector2.zero;
            var nameText = nameGO.AddComponent<TextMeshProUGUI>();
            nameText.text = name;
            nameText.fontSize = 18;
            nameText.alignment = TextAlignmentOptions.Center;
            nameText.color = unlocked ? Color.white : new Color(0.5f, 0.5f, 0.5f, 1f);
            if (defaultFont != null)
            {
                nameText.font = defaultFont;
            }

            _diffItems.Add(itemGO);
        }

        /// <summary>
        /// 选择难度
        /// </summary>
        private void OnDiffSelected(int level, string name)
        {
            _selectedDiffLevel = level;
            _selectedDiffName = name;
            Debug.Log($"[SelectDungeonUI] 选择难度: {name} (Level: {level})");
            UpdateSelectedDisplay();
        }

        /// <summary>
        /// 更新已选显示
        /// </summary>
        private void UpdateSelectedDisplay()
        {
            if (selectedDungeonText != null)
            {
                if (!string.IsNullOrEmpty(_selectedDungeonName) && _selectedDiffLevel > 0)
                {
                    selectedDungeonText.text = $"已选: {_selectedDungeonTitle} - {_selectedDiffName}";
                }
                else if (!string.IsNullOrEmpty(_selectedDungeonName))
                {
                    selectedDungeonText.text = $"已选副本: {_selectedDungeonTitle}，请选择难度";
                }
                else
                {
                    selectedDungeonText.text = "请选择副本";
                }
            }
        }

        /// <summary>
        /// 点击确认按钮
        /// </summary>
        private void OnConfirmClicked()
        {
            if (string.IsNullOrEmpty(_selectedDungeonName))
            {
                Debug.Log("[SelectDungeonUI] 请先选择一个副本");
                return;
            }

            if (_selectedDiffLevel <= 0)
            {
                Debug.Log("[SelectDungeonUI] 请先选择难度");
                return;
            }

            Debug.Log($"[SelectDungeonUI] 确认选择: {_selectedDungeonTitle} - {_selectedDiffName}");

            // 调用 Lua Flow:SelectDungeon 然后开始副本
            try
            {
                string dungeonId = $"{_selectedDungeonName}_{_selectedDiffLevel}";
                LuaManager.Instance.DoString($@"
                    if Flow then
                        Flow:SelectDungeon('{dungeonId}')
                        Flow:StartDungeon()
                    end
                ", "ConfirmDungeon");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SelectDungeonUI] 开始副本失败: {e.Message}");
                // 备用方案
                UIManager.Instance?.ShowPanel("Battle");
            }
        }

        /// <summary>
        /// 点击返回按钮
        /// </summary>
        private void OnBackClicked()
        {
            Debug.Log("[SelectDungeonUI] 返回选角界面");

            try
            {
                LuaManager.Instance.DoString(@"
                    if Flow then
                        -- 回到选角状态
                        Flow.__CurrentState = GameState.SELECT_HERO
                        if CS and CS.CritFramework and CS.CritFramework.GameFlowBridge then
                            CS.CritFramework.GameFlowBridge.OnStateChanged(4, 3)  -- SELECT_DUNGEON -> SELECT_HERO
                        end
                    end
                ", "BackToSelectHero");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SelectDungeonUI] 返回选角失败: {e.Message}");
                UIManager.Instance?.ShowPanel("SelectHero");
            }
        }

        private TMP_FontAsset GetDefaultFontAsset()
        {
            if (_cachedDefaultFont != null)
            {
                return _cachedDefaultFont;
            }

            _cachedDefaultFont = TMP_Settings.defaultFontAsset;

            if (_cachedDefaultFont == null)
            {
                _cachedDefaultFont = Resources.Load<TMP_FontAsset>("Fonts & Materials/LiberationSans SDF");
            }

            if (_cachedDefaultFont == null)
            {
                Debug.LogWarning("[SelectDungeonUI] 未找到 TMP 默认字体，动态创建的文本可能无法显示。");
            }

            return _cachedDefaultFont;
        }

        private void ClearDungeonItems()
        {
            foreach (var item in _dungeonItems)
            {
                if (item != null)
                    Destroy(item);
            }
            _dungeonItems.Clear();
        }

        private void ClearDiffItems()
        {
            foreach (var item in _diffItems)
            {
                if (item != null)
                    Destroy(item);
            }
            _diffItems.Clear();
        }

        private int ExtractInt(string json, string key)
        {
            string pattern = $"\"{key}\":";
            int start = json.IndexOf(pattern);
            if (start < 0) return 0;
            
            start += pattern.Length;
            int end = json.IndexOf(',', start);
            if (end < 0) end = json.IndexOf('}', start);
            if (end < 0) end = json.Length;
            
            string value = json.Substring(start, end - start).Trim();
            int.TryParse(value, out int result);
            return result;
        }

        private string ExtractString(string json, string key)
        {
            string pattern = $"\"{key}\":\"";
            int start = json.IndexOf(pattern);
            if (start < 0) return "";
            
            start += pattern.Length;
            int end = json.IndexOf('"', start);
            if (end < 0) return "";
            
            return json.Substring(start, end - start);
        }

        private void OnDestroy()
        {
            ClearDungeonItems();
            ClearDiffItems();
        }
    }
}
