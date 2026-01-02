using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections;

namespace CritFramework
{
    /// <summary>
    /// 加载界面控制器
    /// 支持两种模式：初始加载（进入大厅）和副本加载（进入副本）
    /// </summary>
    public class LoadingUI : MonoBehaviour
    {
        [Header("UI 引用")]
        public TextMeshProUGUI titleText;
        public Slider progressSlider;
        public TextMeshProUGUI progressText;
        public TextMeshProUGUI tipText;

        [Header("加载配置")]
        [Tooltip("模拟加载时长（秒）")]
        public float loadingDuration = 2.5f;
        
        [Tooltip("副本加载时长（秒）")]
        public float dungeonLoadingDuration = 1.5f;
        
        [Tooltip("游戏标题")]
        public string gameTitle = "Project M";

        public enum LoadingMode
        {
            Initial,    // 初始加载（进入大厅）
            Dungeon     // 副本加载
        }

        private float _currentProgress = 0f;
        private bool _isLoading = false;
        private bool _isInitialLoad = true;  // 是否是首次加载
        private LoadingMode _currentMode = LoadingMode.Initial;
        private System.Action _onLoadingComplete;

        private void OnEnable()
        {
            // 根据当前游戏状态判断加载模式
            DetermineLoadingMode();
            StartLoading();
        }

        private void DetermineLoadingMode()
        {
            // 如果是首次加载，使用 Initial 模式
            if (_isInitialLoad)
            {
                _currentMode = LoadingMode.Initial;
                return;
            }

            // 检查 Lua 状态判断是否是副本加载
            try
            {
                var result = LuaManager.Instance?.DoString(@"
                    if Flow then
                        local state = Flow:GetState()
                        return state == GameState.LOADING
                    end
                    return false
                ", "CheckLoadingMode");

                if (result != null && result.Length > 0 && System.Convert.ToBoolean(result[0]))
                {
                    _currentMode = LoadingMode.Dungeon;
                }
                else
                {
                    _currentMode = LoadingMode.Initial;
                }
            }
            catch
            {
                _currentMode = LoadingMode.Initial;
            }
        }

        /// <summary>
        /// 开始加载流程
        /// </summary>
        public void StartLoading(System.Action onComplete = null)
        {
            _onLoadingComplete = onComplete;
            _currentProgress = 0f;
            _isLoading = true;
            
            // 根据模式设置 UI
            if (_currentMode == LoadingMode.Dungeon)
            {
                if (titleText != null) titleText.text = "进入副本";
                if (tipText != null) tipText.text = "正在准备战斗...";
            }
            else
            {
                if (titleText != null) titleText.text = gameTitle;
                if (tipText != null) tipText.text = "Loading...";
            }
            
            if (progressSlider != null) progressSlider.value = 0f;
            if (progressText != null) progressText.text = "0%";
            
            string modeStr = _currentMode == LoadingMode.Dungeon ? "副本" : "初始";
            Debug.Log($"[LoadingUI] 开始{modeStr}加载...");
            StartCoroutine(SimulateLoading());
        }

        private IEnumerator SimulateLoading()
        {
            float duration = _currentMode == LoadingMode.Dungeon 
                ? dungeonLoadingDuration 
                : loadingDuration;
            
            float elapsed = 0f;
            
            while (elapsed < duration)
            {
                elapsed += Time.deltaTime;
                _currentProgress = Mathf.Clamp01(elapsed / duration);
                
                // 更新 UI
                UpdateProgressUI(_currentProgress);
                
                yield return null;
            }
            
            // 确保达到 100%
            _currentProgress = 1f;
            UpdateProgressUI(1f);
            
            Debug.Log("[LoadingUI] 加载完成!");
            
            // 短暂延迟后完成
            yield return new WaitForSeconds(0.2f);
            
            _isLoading = false;
            OnLoadingComplete();
        }

        private void UpdateProgressUI(float progress)
        {
            if (progressSlider != null)
            {
                progressSlider.value = progress;
            }
            
            if (progressText != null)
            {
                progressText.text = $"{Mathf.RoundToInt(progress * 100)}%";
            }
            
            // 根据模式更新提示文字
            if (tipText != null)
            {
                if (_currentMode == LoadingMode.Dungeon)
                {
                    // 副本加载提示
                    if (progress < 0.3f)
                        tipText.text = "生成地图...";
                    else if (progress < 0.6f)
                        tipText.text = "召唤怪物...";
                    else if (progress < 0.9f)
                        tipText.text = "准备英雄...";
                    else
                        tipText.text = "即将开始战斗!";
                }
                else
                {
                    // 初始加载提示
                    if (progress < 0.3f)
                        tipText.text = "Initializing...";
                    else if (progress < 0.6f)
                        tipText.text = "Loading configs...";
                    else if (progress < 0.9f)
                        tipText.text = "Preparing resources...";
                    else
                        tipText.text = "即将完成...";
                }
            }
        }

        private void OnLoadingComplete()
        {
            // 调用回调
            _onLoadingComplete?.Invoke();
            
            if (_currentMode == LoadingMode.Dungeon)
            {
                // 副本加载完成 - 通知 Lua Flow 进入副本
                Debug.Log("[LoadingUI] 副本加载完成，通知 Lua 进入副本");
                NotifyDungeonLoadComplete();
            }
            else
            {
                // 初始加载完成 - 初始化游戏流程
                _isInitialLoad = false;  // 标记首次加载已完成
                InitializeGameFlow();
            }
        }

        private void NotifyDungeonLoadComplete()
        {
            try
            {
                LuaManager.Instance.DoString(@"
                    if Flow then
                        Flow:OnDungeonLoadComplete()
                    end
                ");
                Debug.Log("[LoadingUI] 已通知 Lua 副本加载完成");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[LoadingUI] 通知 Lua 失败: {e.Message}");
                // 备用方案：直接显示战斗 HUD
                if (UIManager.Instance != null)
                {
                    UIManager.Instance.ShowPanel("BattleHUD");
                }
            }
        }

        private void InitializeGameFlow()
        {
            // 加载 Flow 模块并初始化
            try
            {
                // 检查是否已经初始化
                var checkResult = LuaManager.Instance.DoString(@"
                    return Flow ~= nil and Flow.__CurrentState ~= nil and Flow.__CurrentState ~= GameState.NONE
                ", "CheckFlowInit");
                
                bool alreadyInitialized = checkResult != null && checkResult.Length > 0 && 
                                          System.Convert.ToBoolean(checkResult[0]);
                
                if (alreadyInitialized)
                {
                    Debug.Log("[LoadingUI] Flow 已初始化，跳过");
                    return;
                }
                
                // 加载 Flow 模块
                LuaManager.Instance.DoFile("critcore/static/flow");
                
                // 初始化 GameFlowBridge（缓存 Lua 函数）
                GameFlowBridge.Initialize();
                
                // 调用 Flow:Init()（内部会自动调用 EnterLobby）
                LuaManager.Instance.DoString(@"
                    if Flow then
                        Flow:Init()
                    end
                ", "FlowInit");
                
                Debug.Log("[LoadingUI] 游戏流程初始化完成，进入大厅");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[LoadingUI] 初始化游戏流程失败: {e.Message}");
                // 即使失败也尝试显示大厅
                if (UIManager.Instance != null)
                {
                    UIManager.Instance.ShowPanel("Lobby");
                }
            }
        }

        /// <summary>
        /// 设置加载模式
        /// </summary>
        public void SetMode(LoadingMode mode)
        {
            _currentMode = mode;
        }

        /// <summary>
        /// 获取当前加载进度
        /// </summary>
        public float GetProgress()
        {
            return _currentProgress;
        }

        /// <summary>
        /// 是否正在加载
        /// </summary>
        public bool IsLoading()
        {
            return _isLoading;
        }
    }
}
