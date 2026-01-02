using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections.Generic;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 选角界面控制器 - 从配置表读取英雄数据
    /// </summary>
    public class SelectHeroUI : MonoBehaviour
    {
        [Header("UI 引用")]
        public TextMeshProUGUI titleText;
        public Transform heroListContent;
        public TextMeshProUGUI selectedHeroText;
        public Button confirmButton;
        public Button backButton;

        [Header("预制体")]
        public GameObject heroItemPrefab;

        [Header("运行时数据")]
        private int _selectedHeroId = 0;
        private string _selectedHeroName = "";
        private List<GameObject> _heroItems = new List<GameObject>();
        private bool _initialized = false;
        private TMP_FontAsset _cachedDefaultFont;

        private void OnEnable()
        {
            Debug.Log("[SelectHeroUI] 选角界面已显示");
            // 延迟加载，等待 Lua 环境初始化
            if (_initialized)
            {
                LoadHeroList();
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
                LoadHeroList();
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
        /// 从 Lua 配置表加载英雄列表
        /// </summary>
        private void LoadHeroList()
        {
            // 清除旧的英雄项
            ClearHeroItems();

            try
            {
                // 加载 HeroHelper 模块
                LuaManager.Instance.DoFile("critcore/static/hero_helper");

                // 获取英雄列表
                var result = LuaManager.Instance.DoString(@"
                    local heroes = HeroHelper:GetHeroList()
                    local jsonStr = '['
                    for i, hero in ipairs(heroes) do
                        if i > 1 then jsonStr = jsonStr .. ',' end
                        jsonStr = jsonStr .. string.format(
                            '{""id"":%d,""name"":""%s"",""quality"":%d,""star"":%d}',
                            hero.id, hero.name, hero.quality, hero.star
                        )
                    end
                    jsonStr = jsonStr .. ']'
                    return jsonStr
                ", "GetHeroList");

                if (result != null && result.Length > 0)
                {
                    string jsonStr = result[0].ToString();
                    Debug.Log($"[SelectHeroUI] 英雄列表 JSON: {jsonStr}");
                    
                    // 简单解析 JSON（不依赖外部库）
                    ParseAndCreateHeroItems(jsonStr);
                }
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SelectHeroUI] 加载英雄列表失败: {e.Message}");
                // 创建测试数据
                CreateTestHeroItems();
            }

            UpdateSelectedDisplay();
        }

        /// <summary>
        /// 解析 JSON 并创建英雄项
        /// </summary>
        private void ParseAndCreateHeroItems(string json)
        {
            // 简单的 JSON 解析（处理 [{...}, {...}] 格式）
            if (string.IsNullOrEmpty(json) || json == "[]")
            {
                Debug.Log("[SelectHeroUI] 英雄列表为空，使用测试数据");
                CreateTestHeroItems();
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
                
                // 解析字段
                int id = ExtractInt(cleanItem, "id");
                string name = ExtractString(cleanItem, "name");
                int quality = ExtractInt(cleanItem, "quality");
                int star = ExtractInt(cleanItem, "star");

                if (id > 0)
                {
                    CreateHeroItem(id, name, quality, star);
                    count++;
                }

                // 限制显示数量
                if (count >= 8) break;
            }

            Debug.Log($"[SelectHeroUI] 创建了 {count} 个英雄选项");
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

        /// <summary>
        /// 创建测试英雄数据（配置表加载失败时使用）
        /// </summary>
        private void CreateTestHeroItems()
        {
            CreateHeroItem(12101, "艾丽斯", 2, 1);
            CreateHeroItem(12201, "罗伯特", 2, 1);
            CreateHeroItem(12301, "当明", 3, 1);
            CreateHeroItem(12401, "沃瑞", 3, 2);
        }

        /// <summary>
        /// 创建单个英雄选项
        /// </summary>
        private void CreateHeroItem(int heroId, string heroName, int quality, int star)
        {
            if (heroListContent == null) return;

            TMP_FontAsset defaultFont = GetDefaultFontAsset();

            // 创建按钮
            GameObject itemGO = new GameObject($"HeroItem_{heroId}");
            itemGO.transform.SetParent(heroListContent, false);

            // 添加 RectTransform
            var rect = itemGO.AddComponent<RectTransform>();
            rect.sizeDelta = new Vector2(120, 140);

            // 添加背景 Image
            var bgImage = itemGO.AddComponent<Image>();
            bgImage.color = GetQualityColor(quality);

            // 添加 Button
            var button = itemGO.AddComponent<Button>();
            int capturedId = heroId;
            string capturedName = heroName;
            button.onClick.AddListener(() => OnHeroSelected(capturedId, capturedName));

            // 添加英雄名称文字
            var nameGO = new GameObject("Name");
            nameGO.transform.SetParent(itemGO.transform, false);
            var nameRect = nameGO.AddComponent<RectTransform>();
            nameRect.anchorMin = new Vector2(0, 0.5f);
            nameRect.anchorMax = new Vector2(1, 0.8f);
            nameRect.offsetMin = Vector2.zero;
            nameRect.offsetMax = Vector2.zero;
            var nameText = nameGO.AddComponent<TextMeshProUGUI>();
            nameText.text = heroName;
            nameText.fontSize = 16;
            nameText.alignment = TextAlignmentOptions.Center;
            nameText.color = Color.white;
            if (defaultFont != null)
            {
                nameText.font = defaultFont;
            }

            // 添加星级文字
            var starGO = new GameObject("Star");
            starGO.transform.SetParent(itemGO.transform, false);
            var starRect = starGO.AddComponent<RectTransform>();
            starRect.anchorMin = new Vector2(0, 0.2f);
            starRect.anchorMax = new Vector2(1, 0.5f);
            starRect.offsetMin = Vector2.zero;
            starRect.offsetMax = Vector2.zero;
            var starText = starGO.AddComponent<TextMeshProUGUI>();
            starText.text = new string('★', star);
            starText.fontSize = 18;
            starText.alignment = TextAlignmentOptions.Center;
            starText.color = new Color(1f, 0.84f, 0f); // 金色
            if (defaultFont != null)
            {
                starText.font = defaultFont;
            }

            _heroItems.Add(itemGO);
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
                Debug.LogWarning("[SelectHeroUI] 未找到 TMP 默认字体（LiberationSans SDF），动态创建的文本可能无法显示。");
            }

            return _cachedDefaultFont;
        }

        /// <summary>
        /// 获取品质颜色
        /// </summary>
        private Color GetQualityColor(int quality)
        {
            switch (quality)
            {
                case 1: return new Color(0.6f, 0.6f, 0.6f, 1f);  // 灰色
                case 2: return new Color(0.2f, 0.6f, 0.2f, 1f);  // 绿色
                case 3: return new Color(0.2f, 0.4f, 0.8f, 1f);  // 蓝色
                case 4: return new Color(0.5f, 0.2f, 0.7f, 1f);  // 紫色
                case 5: return new Color(0.8f, 0.6f, 0.1f, 1f);  // 金色
                case 6: return new Color(0.9f, 0.3f, 0.1f, 1f);  // 橙色
                default: return new Color(0.3f, 0.3f, 0.35f, 1f);
            }
        }

        /// <summary>
        /// 清除所有英雄项
        /// </summary>
        private void ClearHeroItems()
        {
            foreach (var item in _heroItems)
            {
                if (item != null)
                    Destroy(item);
            }
            _heroItems.Clear();
        }

        /// <summary>
        /// 选择英雄
        /// </summary>
        private void OnHeroSelected(int heroId, string heroName)
        {
            _selectedHeroId = heroId;
            _selectedHeroName = heroName;
            Debug.Log($"[SelectHeroUI] 选择英雄: {heroName} (ID: {heroId})");
            UpdateSelectedDisplay();
        }

        /// <summary>
        /// 更新已选显示
        /// </summary>
        private void UpdateSelectedDisplay()
        {
            if (selectedHeroText != null)
            {
                if (_selectedHeroId > 0)
                {
                    selectedHeroText.text = $"Selected: {_selectedHeroName}";
                }
                else
                {
                    selectedHeroText.text = "Select a Hero";
                }
            }
        }

        /// <summary>
        /// 点击确认按钮
        /// </summary>
        private void OnConfirmClicked()
        {
            if (_selectedHeroId <= 0)
            {
                Debug.Log("[SelectHeroUI] 请先选择一个英雄");
                return;
            }

            Debug.Log($"[SelectHeroUI] 确认选择英雄: {_selectedHeroName}, 进入选副本");

            // 调用 Lua Flow:SelectHero(heroId) 然后进入选副本
            try
            {
                LuaManager.Instance.DoString($@"
                    if Flow then
                        Flow:SelectHero({_selectedHeroId})
                        Flow:SelectDungeon()  -- 不传参数，进入选副本界面
                    end
                ", "ConfirmHero");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SelectHeroUI] 选择英雄失败: {e.Message}");
                // 备用方案
                UIManager.Instance?.ShowPanel("SelectDungeon");
            }
        }

        /// <summary>
        /// 点击返回按钮
        /// </summary>
        private void OnBackClicked()
        {
            Debug.Log("[SelectHeroUI] 返回大厅");

            try
            {
                LuaManager.Instance.DoString(@"
                    if Flow then
                        Flow:EnterLobby()
                    end
                ", "BackToLobby");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[SelectHeroUI] 返回大厅失败: {e.Message}");
                UIManager.Instance?.ShowPanel("Lobby");
            }
        }

        private void OnDestroy()
        {
            ClearHeroItems();
        }
    }
}
