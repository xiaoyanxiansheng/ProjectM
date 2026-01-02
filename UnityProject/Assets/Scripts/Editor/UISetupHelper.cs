using UnityEngine;
using UnityEngine.UI;
using UnityEditor;
using TMPro;

namespace CritFramework.Editor
{
    /// <summary>
    /// UI 设置助手 - 一键配置所有 UI Panel
    /// </summary>
    public class UISetupHelper
    {
        [MenuItem("Tools/CritFramework/Remove Missing Scripts")]
        public static void RemoveMissingScripts()
        {
            var allObjects = Object.FindObjectsByType<GameObject>(FindObjectsSortMode.None);
            int count = 0;
            
            foreach (var go in allObjects)
            {
                int removed = GameObjectUtility.RemoveMonoBehavioursWithMissingScript(go);
                if (removed > 0)
                {
                    count += removed;
                    Debug.Log($"[UISetupHelper] 从 {go.name} 移除了 {removed} 个丢失脚本");
                }
            }
            
            if (count > 0)
            {
                Debug.Log($"[UISetupHelper] 共移除 {count} 个丢失脚本，请保存场景");
                UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(
                    UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene());
            }
            else
            {
                Debug.Log("[UISetupHelper] 没有发现丢失脚本");
            }
        }

        [MenuItem("Tools/CritFramework/Setup All UI Panels")]
        public static void SetupAllUIPanels()
        {
            var canvas = Object.FindFirstObjectByType<Canvas>();
            if (canvas == null)
            {
                Debug.LogError("找不到 Canvas!");
                return;
            }

            SetupLoadingPanel(canvas.transform);
            SetupLobbyPanel(canvas.transform);
            SetupSelectHeroPanel(canvas.transform);
            SetupSelectDungeonPanel(canvas.transform);
            SetupDungeonPanel(canvas.transform);
            SetupBattleHUD(canvas.transform);
            SetupSettlementPanel(canvas.transform);

            Debug.Log("[UISetupHelper] 所有 UI Panel 配置完成!");
            
            // 标记场景为已修改
            UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(
                UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene());
        }

        private static void SetupLoadingPanel(Transform canvas)
        {
            var panel = canvas.Find("LoadingPanel");
            if (panel == null) return;

            // 设置 Panel 铺满屏幕
            SetFullScreen(panel.GetComponent<RectTransform>());

            // 背景
            var bg = panel.Find("Background");
            if (bg != null)
            {
                SetFullScreen(bg.GetComponent<RectTransform>());
                var image = bg.GetComponent<Image>();
                if (image != null)
                {
                    image.color = new Color(0.1f, 0.1f, 0.15f, 1f);
                }
            }

            // 标题
            var title = panel.Find("TitleText");
            if (title != null)
            {
                var rect = title.GetComponent<RectTransform>();
                SetAnchoredPosition(rect, new Vector2(0.5f, 0.7f), new Vector2(400, 80));
                var tmp = title.GetComponent<TextMeshProUGUI>();
                if (tmp != null)
                {
                    tmp.text = "Project M";
                    tmp.fontSize = 48;
                    tmp.alignment = TextAlignmentOptions.Center;
                    tmp.color = Color.white;
                }
            }

            // 进度条
            var slider = panel.Find("ProgressSlider");
            if (slider != null)
            {
                var rect = slider.GetComponent<RectTransform>();
                SetAnchoredPosition(rect, new Vector2(0.5f, 0.4f), new Vector2(600, 30));
                
                // 创建进度条子元素
                SetupSlider(slider.gameObject);
            }

            // 进度文字
            var progressText = panel.Find("ProgressText");
            if (progressText != null)
            {
                var rect = progressText.GetComponent<RectTransform>();
                SetAnchoredPosition(rect, new Vector2(0.5f, 0.35f), new Vector2(200, 40));
                var tmp = progressText.GetComponent<TextMeshProUGUI>();
                if (tmp != null)
                {
                    tmp.text = "0%";
                    tmp.fontSize = 24;
                    tmp.alignment = TextAlignmentOptions.Center;
                    tmp.color = Color.white;
                }
            }

            // 提示文字
            var tipText = panel.Find("TipText");
            if (tipText != null)
            {
                var rect = tipText.GetComponent<RectTransform>();
                SetAnchoredPosition(rect, new Vector2(0.5f, 0.3f), new Vector2(400, 40));
                var tmp = tipText.GetComponent<TextMeshProUGUI>();
                if (tmp != null)
                {
                    tmp.text = "Loading...";
                    tmp.fontSize = 18;
                    tmp.alignment = TextAlignmentOptions.Center;
                    tmp.color = new Color(0.7f, 0.7f, 0.7f, 1f);
                }
            }

            // 配置 LoadingUI 组件引用
            var loadingUI = panel.GetComponent<LoadingUI>();
            if (loadingUI != null)
            {
                loadingUI.titleText = title?.GetComponent<TextMeshProUGUI>();
                loadingUI.progressSlider = slider?.GetComponent<Slider>();
                loadingUI.progressText = progressText?.GetComponent<TextMeshProUGUI>();
                loadingUI.tipText = tipText?.GetComponent<TextMeshProUGUI>();
            }

            Debug.Log("[UISetupHelper] LoadingPanel 配置完成");
        }

        private static void SetupSlider(GameObject sliderObj)
        {
            var slider = sliderObj.GetComponent<Slider>();
            if (slider == null) return;

            // 创建 Background
            var bgGO = new GameObject("Background", typeof(RectTransform), typeof(Image));
            bgGO.transform.SetParent(sliderObj.transform, false);
            var bgRect = bgGO.GetComponent<RectTransform>();
            SetFullScreen(bgRect);
            bgGO.GetComponent<Image>().color = new Color(0.2f, 0.2f, 0.25f, 1f);

            // 创建 Fill Area
            var fillAreaGO = new GameObject("Fill Area", typeof(RectTransform));
            fillAreaGO.transform.SetParent(sliderObj.transform, false);
            var fillAreaRect = fillAreaGO.GetComponent<RectTransform>();
            SetFullScreen(fillAreaRect);
            fillAreaRect.offsetMin = new Vector2(5, 5);
            fillAreaRect.offsetMax = new Vector2(-5, -5);

            // 创建 Fill
            var fillGO = new GameObject("Fill", typeof(RectTransform), typeof(Image));
            fillGO.transform.SetParent(fillAreaGO.transform, false);
            var fillRect = fillGO.GetComponent<RectTransform>();
            fillRect.anchorMin = Vector2.zero;
            fillRect.anchorMax = Vector2.one;
            fillRect.sizeDelta = Vector2.zero;
            fillRect.anchoredPosition = Vector2.zero;
            fillGO.GetComponent<Image>().color = new Color(0.3f, 0.7f, 1f, 1f);

            // 配置 Slider
            slider.fillRect = fillRect;
            slider.targetGraphic = bgGO.GetComponent<Image>();
            slider.minValue = 0;
            slider.maxValue = 1;
            slider.value = 0;
        }

        private static void SetupLobbyPanel(Transform canvas)
        {
            var panel = canvas.Find("LobbyPanel");
            if (panel == null) return;

            SetFullScreen(panel.GetComponent<RectTransform>());
            
            // 添加背景
            AddOrGetBackground(panel.gameObject, new Color(0.15f, 0.15f, 0.2f, 1f));
            
            // 顶部信息栏 (使用英文避免字体问题)
            var playerNameText = AddOrGetText(panel.gameObject, "PlayerNameText", "Player: TestPlayer", 
                new Vector2(0.15f, 0.95f), new Vector2(250, 40), 20);
            var currencyText = AddOrGetText(panel.gameObject, "CurrencyText", "Gold: 1000", 
                new Vector2(0.85f, 0.95f), new Vector2(200, 40), 20);
            
            // 添加标题
            var titleText = AddOrGetText(panel.gameObject, "Title", "LOBBY", 
                new Vector2(0.5f, 0.75f), new Vector2(300, 80), 48);
            
            // 添加开始游戏按钮
            var startBtn = AddOrGetButton(panel.gameObject, "StartButton", "START GAME",
                new Vector2(0.5f, 0.5f), new Vector2(250, 70));
            
            // 添加设置按钮
            var settingsBtn = AddOrGetButton(panel.gameObject, "SettingsButton", "SETTINGS",
                new Vector2(0.5f, 0.35f), new Vector2(250, 70));

            // 添加或获取 LobbyUI 组件
            var lobbyUI = panel.GetComponent<LobbyUI>();
            if (lobbyUI == null)
            {
                lobbyUI = panel.gameObject.AddComponent<LobbyUI>();
            }
            
            // 配置组件引用
            lobbyUI.playerNameText = playerNameText;
            lobbyUI.currencyText = currencyText;
            lobbyUI.titleText = titleText;
            lobbyUI.startGameButton = startBtn;
            lobbyUI.settingsButton = settingsBtn;

            Debug.Log("[UISetupHelper] LobbyPanel 配置完成");
        }

        private static void SetupSelectHeroPanel(Transform canvas)
        {
            var panel = canvas.Find("SelectHeroPanel");
            if (panel == null) return;

            SetFullScreen(panel.GetComponent<RectTransform>());
            AddOrGetBackground(panel.gameObject, new Color(0.12f, 0.12f, 0.18f, 1f));
            
            // 标题
            var titleText = AddOrGetText(panel.gameObject, "Title", "SELECT HERO", 
                new Vector2(0.5f, 0.92f), new Vector2(300, 60), 36);
            
            // 英雄列表容器
            var heroListGO = panel.Find("HeroListContent");
            if (heroListGO == null)
            {
                heroListGO = new GameObject("HeroListContent", typeof(RectTransform)).transform;
                heroListGO.SetParent(panel, false);
            }
            var heroListRect = heroListGO.GetComponent<RectTransform>();
            heroListRect.anchorMin = new Vector2(0.1f, 0.35f);
            heroListRect.anchorMax = new Vector2(0.9f, 0.8f);
            heroListRect.offsetMin = Vector2.zero;
            heroListRect.offsetMax = Vector2.zero;
            
            // 添加 HorizontalLayoutGroup
            var layout = heroListGO.GetComponent<UnityEngine.UI.HorizontalLayoutGroup>();
            if (layout == null)
            {
                layout = heroListGO.gameObject.AddComponent<UnityEngine.UI.HorizontalLayoutGroup>();
            }
            layout.spacing = 20;
            layout.childAlignment = TextAnchor.MiddleCenter;
            layout.childForceExpandWidth = false;
            layout.childForceExpandHeight = false;
            
            // 已选择显示
            var selectedText = AddOrGetText(panel.gameObject, "SelectedHeroText", "Select a Hero", 
                new Vector2(0.5f, 0.28f), new Vector2(400, 40), 24);
            
            // 确认按钮
            var confirmBtn = AddOrGetButton(panel.gameObject, "ConfirmButton", "CONFIRM",
                new Vector2(0.5f, 0.15f), new Vector2(200, 60));
            
            // 返回按钮
            var backBtn = AddOrGetButton(panel.gameObject, "BackButton", "BACK",
                new Vector2(0.1f, 0.92f), new Vector2(100, 50));

            // 添加或获取 SelectHeroUI 组件
            var selectHeroUI = panel.GetComponent<SelectHeroUI>();
            if (selectHeroUI == null)
            {
                selectHeroUI = panel.gameObject.AddComponent<SelectHeroUI>();
            }
            
            // 配置组件引用
            selectHeroUI.titleText = titleText;
            selectHeroUI.heroListContent = heroListGO;
            selectHeroUI.selectedHeroText = selectedText;
            selectHeroUI.confirmButton = confirmBtn;
            selectHeroUI.backButton = backBtn;

            Debug.Log("[UISetupHelper] SelectHeroPanel 配置完成");
        }

        private static void SetupSelectDungeonPanel(Transform canvas)
        {
            var panel = canvas.Find("SelectDungeonPanel");
            if (panel == null) return;

            SetFullScreen(panel.GetComponent<RectTransform>());
            AddOrGetBackground(panel.gameObject, new Color(0.12f, 0.15f, 0.12f, 1f));
            
            // 标题
            var titleText = AddOrGetText(panel.gameObject, "Title", "选择副本", 
                new Vector2(0.5f, 0.92f), new Vector2(300, 60), 36);

            // 副本列表容器
            var dungeonListGO = panel.Find("DungeonListContent");
            if (dungeonListGO == null)
            {
                dungeonListGO = new GameObject("DungeonListContent", typeof(RectTransform)).transform;
                dungeonListGO.SetParent(panel, false);
            }
            var dungeonListRect = dungeonListGO.GetComponent<RectTransform>();
            dungeonListRect.anchorMin = new Vector2(0.05f, 0.5f);
            dungeonListRect.anchorMax = new Vector2(0.45f, 0.85f);
            dungeonListRect.offsetMin = Vector2.zero;
            dungeonListRect.offsetMax = Vector2.zero;
            
            // 副本列表布局
            var dungeonLayout = dungeonListGO.GetComponent<UnityEngine.UI.VerticalLayoutGroup>();
            if (dungeonLayout == null)
            {
                dungeonLayout = dungeonListGO.gameObject.AddComponent<UnityEngine.UI.VerticalLayoutGroup>();
            }
            dungeonLayout.spacing = 10;
            dungeonLayout.childAlignment = TextAnchor.UpperCenter;
            dungeonLayout.childForceExpandWidth = true;
            dungeonLayout.childForceExpandHeight = false;

            // 副本列表标签
            AddOrGetText(panel.gameObject, "DungeonLabel", "副本列表", 
                new Vector2(0.25f, 0.88f), new Vector2(200, 40), 20);

            // 难度列表容器
            var diffListGO = panel.Find("DiffListContent");
            if (diffListGO == null)
            {
                diffListGO = new GameObject("DiffListContent", typeof(RectTransform)).transform;
                diffListGO.SetParent(panel, false);
            }
            var diffListRect = diffListGO.GetComponent<RectTransform>();
            diffListRect.anchorMin = new Vector2(0.55f, 0.5f);
            diffListRect.anchorMax = new Vector2(0.95f, 0.85f);
            diffListRect.offsetMin = Vector2.zero;
            diffListRect.offsetMax = Vector2.zero;
            
            // 难度列表布局 (横向网格)
            var diffLayout = diffListGO.GetComponent<UnityEngine.UI.GridLayoutGroup>();
            if (diffLayout == null)
            {
                diffLayout = diffListGO.gameObject.AddComponent<UnityEngine.UI.GridLayoutGroup>();
            }
            diffLayout.cellSize = new Vector2(80, 60);
            diffLayout.spacing = new Vector2(10, 10);
            diffLayout.startCorner = UnityEngine.UI.GridLayoutGroup.Corner.UpperLeft;
            diffLayout.startAxis = UnityEngine.UI.GridLayoutGroup.Axis.Horizontal;
            diffLayout.childAlignment = TextAnchor.UpperLeft;
            diffLayout.constraint = UnityEngine.UI.GridLayoutGroup.Constraint.FixedColumnCount;
            diffLayout.constraintCount = 5;

            // 难度列表标签
            AddOrGetText(panel.gameObject, "DiffLabel", "选择难度", 
                new Vector2(0.75f, 0.88f), new Vector2(200, 40), 20);

            // 已选择显示
            var selectedText = AddOrGetText(panel.gameObject, "SelectedDungeonText", "请选择副本", 
                new Vector2(0.5f, 0.4f), new Vector2(500, 50), 24);

            // 确认按钮
            var confirmBtn = AddOrGetButton(panel.gameObject, "ConfirmButton", "开始副本",
                new Vector2(0.5f, 0.2f), new Vector2(200, 60));

            // 返回按钮
            var backBtn = AddOrGetButton(panel.gameObject, "BackButton", "返回",
                new Vector2(0.1f, 0.92f), new Vector2(100, 50));

            // 添加或获取 SelectDungeonUI 组件
            var selectDungeonUI = panel.GetComponent<SelectDungeonUI>();
            if (selectDungeonUI == null)
            {
                selectDungeonUI = panel.gameObject.AddComponent<SelectDungeonUI>();
            }

            // 配置组件引用
            selectDungeonUI.titleText = titleText;
            selectDungeonUI.dungeonListContent = dungeonListGO;
            selectDungeonUI.diffListContent = diffListGO;
            selectDungeonUI.selectedDungeonText = selectedText;
            selectDungeonUI.confirmButton = confirmBtn;
            selectDungeonUI.backButton = backBtn;

            Debug.Log("[UISetupHelper] SelectDungeonPanel 配置完成");
        }

        private static void SetupDungeonPanel(Transform canvas)
        {
            var panel = canvas.Find("DungeonPanel");
            if (panel == null) return;

            SetFullScreen(panel.GetComponent<RectTransform>());
            AddOrGetBackground(panel.gameObject, new Color(0.1f, 0.1f, 0.1f, 0.8f));
            AddOrGetText(panel.gameObject, "Title", "IN DUNGEON", 
                new Vector2(0.5f, 0.95f), new Vector2(300, 40), 24);

            Debug.Log("[UISetupHelper] DungeonPanel 配置完成");
        }

        private static void SetupBattleHUD(Transform canvas)
        {
            var panel = canvas.Find("BattleHUD");
            if (panel == null) return;

            SetFullScreen(panel.GetComponent<RectTransform>());
            // BattleHUD 不需要全屏背景（透明）

            // 顶部信息栏
            var dungeonNameText = AddOrGetText(panel.gameObject, "DungeonNameText", "副本名称", 
                new Vector2(0.5f, 0.97f), new Vector2(300, 40), 24);
            var roomInfoText = AddOrGetText(panel.gameObject, "RoomInfoText", "房间 1/3", 
                new Vector2(0.5f, 0.93f), new Vector2(200, 30), 18);
            var timerText = AddOrGetText(panel.gameObject, "TimerText", "00:00", 
                new Vector2(0.9f, 0.97f), new Vector2(100, 40), 20);

            // 左上角：玩家状态
            var hpText = AddOrGetText(panel.gameObject, "HPText", "HP: 100%", 
                new Vector2(0.1f, 0.93f), new Vector2(150, 30), 18);

            // 左侧：怪物计数
            var monsterCountText = AddOrGetText(panel.gameObject, "MonsterCountText", "敌人: 0", 
                new Vector2(0.1f, 0.88f), new Vector2(150, 30), 18);

            // 底部：测试按钮 - 击杀所有怪物
            var killAllBtn = AddOrGetButton(panel.gameObject, "KillAllButton", "击杀全部(测试)",
                new Vector2(0.5f, 0.1f), new Vector2(180, 50));

            // 右上角：暂停按钮
            var pauseBtn = AddOrGetButton(panel.gameObject, "PauseButton", "暂停",
                new Vector2(0.95f, 0.9f), new Vector2(80, 40));

            // 添加或获取 DungeonUI 组件
            var dungeonUI = panel.GetComponent<DungeonUI>();
            if (dungeonUI == null)
            {
                dungeonUI = panel.gameObject.AddComponent<DungeonUI>();
            }

            // 配置组件引用
            dungeonUI.dungeonNameText = dungeonNameText;
            dungeonUI.roomInfoText = roomInfoText;
            dungeonUI.timerText = timerText;
            dungeonUI.hpText = hpText;
            dungeonUI.monsterCountText = monsterCountText;
            dungeonUI.killAllButton = killAllBtn;
            dungeonUI.pauseButton = pauseBtn;

            Debug.Log("[UISetupHelper] BattleHUD 配置完成");
        }

        private static void SetupSettlementPanel(Transform canvas)
        {
            var panel = canvas.Find("SettlementPanel");
            if (panel == null) return;

            SetFullScreen(panel.GetComponent<RectTransform>());
            AddOrGetBackground(panel.gameObject, new Color(0.1f, 0.1f, 0.15f, 0.95f));
            
            // 标题
            var titleText = AddOrGetText(panel.gameObject, "Title", "副本通关!", 
                new Vector2(0.5f, 0.85f), new Vector2(400, 80), 48);
            
            // 结果描述
            var resultText = AddOrGetText(panel.gameObject, "ResultText", "恭喜你成功通关副本！", 
                new Vector2(0.5f, 0.72f), new Vector2(500, 40), 24);
            
            // 用时
            var timeText = AddOrGetText(panel.gameObject, "TimeText", "用时: 00:00", 
                new Vector2(0.5f, 0.62f), new Vector2(200, 40), 20);
            
            // 奖励区域
            var goldRewardText = AddOrGetText(panel.gameObject, "GoldRewardText", "金币: +100", 
                new Vector2(0.4f, 0.5f), new Vector2(200, 40), 22);
            var expRewardText = AddOrGetText(panel.gameObject, "ExpRewardText", "经验: +50", 
                new Vector2(0.6f, 0.5f), new Vector2(200, 40), 22);
            
            // 返回大厅按钮
            var returnBtn = AddOrGetButton(panel.gameObject, "ReturnButton", "返回大厅",
                new Vector2(0.5f, 0.25f), new Vector2(200, 60));
            
            // 重试按钮（失败时显示）
            var retryBtn = AddOrGetButton(panel.gameObject, "RetryButton", "重新挑战",
                new Vector2(0.5f, 0.15f), new Vector2(200, 50));

            // 添加或获取 SettlementUI 组件
            var settlementUI = panel.GetComponent<SettlementUI>();
            if (settlementUI == null)
            {
                settlementUI = panel.gameObject.AddComponent<SettlementUI>();
            }

            // 配置组件引用
            settlementUI.titleText = titleText;
            settlementUI.resultText = resultText;
            settlementUI.timeText = timeText;
            settlementUI.goldRewardText = goldRewardText;
            settlementUI.expRewardText = expRewardText;
            settlementUI.returnButton = returnBtn;
            settlementUI.retryButton = retryBtn;

            Debug.Log("[UISetupHelper] SettlementPanel 配置完成");
        }

        #region Helper Methods

        private static void SetFullScreen(RectTransform rect)
        {
            if (rect == null) return;
            rect.anchorMin = Vector2.zero;
            rect.anchorMax = Vector2.one;
            rect.sizeDelta = Vector2.zero;
            rect.anchoredPosition = Vector2.zero;
        }

        private static void SetAnchoredPosition(RectTransform rect, Vector2 anchor, Vector2 size)
        {
            if (rect == null) return;
            rect.anchorMin = anchor;
            rect.anchorMax = anchor;
            rect.sizeDelta = size;
            rect.anchoredPosition = Vector2.zero;
        }

        private static void AddOrGetBackground(GameObject parent, Color color)
        {
            var existing = parent.transform.Find("Background");
            if (existing != null)
            {
                var img = existing.GetComponent<Image>();
                if (img != null) img.color = color;
                SetFullScreen(existing.GetComponent<RectTransform>());
                existing.SetAsFirstSibling();
                return;
            }

            var bgGO = new GameObject("Background", typeof(RectTransform), typeof(Image));
            bgGO.transform.SetParent(parent.transform, false);
            bgGO.transform.SetAsFirstSibling();
            SetFullScreen(bgGO.GetComponent<RectTransform>());
            bgGO.GetComponent<Image>().color = color;
        }

        private static TextMeshProUGUI AddOrGetText(GameObject parent, string name, string text, 
            Vector2 anchor, Vector2 size, int fontSize)
        {
            var existing = parent.transform.Find(name);
            TextMeshProUGUI tmp;
            RectTransform rect;

            if (existing != null)
            {
                tmp = existing.GetComponent<TextMeshProUGUI>();
                rect = existing.GetComponent<RectTransform>();
            }
            else
            {
                var go = new GameObject(name, typeof(RectTransform), typeof(TextMeshProUGUI));
                go.transform.SetParent(parent.transform, false);
                tmp = go.GetComponent<TextMeshProUGUI>();
                rect = go.GetComponent<RectTransform>();
            }

            SetAnchoredPosition(rect, anchor, size);
            if (tmp != null)
            {
                tmp.text = text;
                tmp.fontSize = fontSize;
                tmp.alignment = TextAlignmentOptions.Center;
                tmp.color = Color.white;
            }
            return tmp;
        }

        private static Button AddOrGetButton(GameObject parent, string name, string text,
            Vector2 anchor, Vector2 size)
        {
            var existing = parent.transform.Find(name);
            Button btn;
            RectTransform rect;
            TextMeshProUGUI labelTmp = null;

            if (existing != null)
            {
                btn = existing.GetComponent<Button>();
                rect = existing.GetComponent<RectTransform>();

                var label = existing.Find("Text");
                if (label != null)
                {
                    labelTmp = label.GetComponent<TextMeshProUGUI>();
                }
            }
            else
            {
                var go = new GameObject(name, typeof(RectTransform), typeof(Image), typeof(Button));
                go.transform.SetParent(parent.transform, false);
                btn = go.GetComponent<Button>();
                rect = go.GetComponent<RectTransform>();
                
                var img = go.GetComponent<Image>();
                img.color = new Color(0.3f, 0.5f, 0.8f, 1f);
                btn.targetGraphic = img;

                // 添加文字
                var textGO = new GameObject("Text", typeof(RectTransform), typeof(TextMeshProUGUI));
                textGO.transform.SetParent(go.transform, false);
                SetFullScreen(textGO.GetComponent<RectTransform>());
                labelTmp = textGO.GetComponent<TextMeshProUGUI>();
            }

            SetAnchoredPosition(rect, anchor, size);

            if (labelTmp != null)
            {
                labelTmp.text = text;
                labelTmp.fontSize = 24;
                labelTmp.alignment = TextAlignmentOptions.Center;
                labelTmp.color = Color.white;
            }
            return btn;
        }

        #endregion
    }
}
