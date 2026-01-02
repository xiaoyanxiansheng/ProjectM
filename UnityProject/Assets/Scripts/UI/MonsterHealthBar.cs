using UnityEngine;
using UnityEngine.UI;

namespace CritFramework
{
    /// <summary>
    /// 怪物头顶血条
    /// World Space UI，跟随怪物位置
    /// </summary>
    public class MonsterHealthBar : MonoBehaviour
    {
        [Header("组件引用")]
        public Slider healthSlider;
        public Image fillImage;
        public CanvasGroup canvasGroup;

        [Header("配置")]
        public Vector3 offset = new Vector3(0, 2.5f, 0);
        public float hideDelay = 2f;
        public Color healthyColor = new Color(0.2f, 0.8f, 0.2f);
        public Color damagedColor = new Color(0.8f, 0.2f, 0.2f);

        private Transform _targetTransform;
        private Camera _mainCamera;
        private float _lastDamageTime;
        private bool _isDead = false;

        private void Awake()
        {
            _mainCamera = Camera.main;
            
            if (canvasGroup == null)
            {
                canvasGroup = GetComponent<CanvasGroup>();
            }
        }

        private void LateUpdate()
        {
            if (_targetTransform == null || _isDead)
            {
                return;
            }

            // 跟随目标位置
            transform.position = _targetTransform.position + offset;

            // 面向摄像机（Billboard 效果）
            if (_mainCamera != null)
            {
                transform.LookAt(transform.position + _mainCamera.transform.forward);
            }

            // 延迟隐藏（受伤后显示一段时间）
            if (canvasGroup != null && Time.time - _lastDamageTime > hideDelay)
            {
                canvasGroup.alpha = Mathf.Lerp(canvasGroup.alpha, 0.3f, Time.deltaTime * 2f);
            }
        }

        /// <summary>
        /// 初始化血条
        /// </summary>
        public void Initialize(Transform target, float maxHealth)
        {
            _targetTransform = target;
            _lastDamageTime = Time.time;
            _isDead = false;

            if (healthSlider != null)
            {
                healthSlider.maxValue = maxHealth;
                healthSlider.value = maxHealth;
            }

            UpdateColor(1f);
            
            if (canvasGroup != null)
            {
                canvasGroup.alpha = 1f;
            }
        }

        /// <summary>
        /// 更新血量显示
        /// </summary>
        public void UpdateHealth(float currentHealth, float maxHealth)
        {
            if (_isDead) return;

            float ratio = maxHealth > 0 ? currentHealth / maxHealth : 0;

            if (healthSlider != null)
            {
                healthSlider.maxValue = maxHealth;
                healthSlider.value = currentHealth;
            }

            UpdateColor(ratio);

            // 受伤时显示血条
            if (canvasGroup != null)
            {
                canvasGroup.alpha = 1f;
            }
            _lastDamageTime = Time.time;

            // 死亡检测
            if (currentHealth <= 0)
            {
                OnDeath();
            }
        }

        /// <summary>
        /// 根据血量比例更新颜色
        /// </summary>
        private void UpdateColor(float ratio)
        {
            if (fillImage != null)
            {
                fillImage.color = Color.Lerp(damagedColor, healthyColor, ratio);
            }
        }

        /// <summary>
        /// 死亡处理
        /// </summary>
        private void OnDeath()
        {
            _isDead = true;
            
            if (canvasGroup != null)
            {
                canvasGroup.alpha = 0f;
            }

            // 延迟销毁
            Destroy(gameObject, 0.5f);
        }

        /// <summary>
        /// 创建血条预制体（运行时动态创建）
        /// </summary>
        public static MonsterHealthBar CreateHealthBar(Transform parent)
        {
            // 创建 Canvas (World Space)
            var canvasGO = new GameObject("HealthBarCanvas");
            canvasGO.transform.SetParent(parent, false);
            
            var canvas = canvasGO.AddComponent<Canvas>();
            canvas.renderMode = RenderMode.WorldSpace;
            canvas.sortingOrder = 100;

            var canvasScaler = canvasGO.AddComponent<CanvasScaler>();
            canvasScaler.dynamicPixelsPerUnit = 100;

            var rectTransform = canvasGO.GetComponent<RectTransform>();
            rectTransform.sizeDelta = new Vector2(1f, 0.15f);
            rectTransform.localScale = Vector3.one;

            // 创建背景
            var bgGO = new GameObject("Background");
            bgGO.transform.SetParent(canvasGO.transform, false);
            var bgImage = bgGO.AddComponent<Image>();
            bgImage.color = new Color(0.1f, 0.1f, 0.1f, 0.8f);
            var bgRect = bgGO.GetComponent<RectTransform>();
            bgRect.anchorMin = Vector2.zero;
            bgRect.anchorMax = Vector2.one;
            bgRect.offsetMin = Vector2.zero;
            bgRect.offsetMax = Vector2.zero;

            // 创建 Slider
            var sliderGO = new GameObject("Slider");
            sliderGO.transform.SetParent(canvasGO.transform, false);
            var slider = sliderGO.AddComponent<Slider>();
            slider.direction = Slider.Direction.LeftToRight;
            slider.minValue = 0;
            slider.maxValue = 100;
            slider.value = 100;

            var sliderRect = sliderGO.GetComponent<RectTransform>();
            sliderRect.anchorMin = Vector2.zero;
            sliderRect.anchorMax = Vector2.one;
            sliderRect.offsetMin = new Vector2(2, 2);
            sliderRect.offsetMax = new Vector2(-2, -2);

            // 创建填充区域
            var fillAreaGO = new GameObject("Fill Area");
            fillAreaGO.transform.SetParent(sliderGO.transform, false);
            var fillAreaRect = fillAreaGO.AddComponent<RectTransform>();
            fillAreaRect.anchorMin = Vector2.zero;
            fillAreaRect.anchorMax = Vector2.one;
            fillAreaRect.offsetMin = Vector2.zero;
            fillAreaRect.offsetMax = Vector2.zero;

            var fillGO = new GameObject("Fill");
            fillGO.transform.SetParent(fillAreaGO.transform, false);
            var fillImage = fillGO.AddComponent<Image>();
            fillImage.color = new Color(0.2f, 0.8f, 0.2f);
            var fillRect = fillGO.GetComponent<RectTransform>();
            fillRect.anchorMin = Vector2.zero;
            fillRect.anchorMax = Vector2.one;
            fillRect.offsetMin = Vector2.zero;
            fillRect.offsetMax = Vector2.zero;

            slider.fillRect = fillRect;

            // 添加 CanvasGroup
            var canvasGroup = canvasGO.AddComponent<CanvasGroup>();

            // 添加 MonsterHealthBar 组件
            var healthBar = canvasGO.AddComponent<MonsterHealthBar>();
            healthBar.healthSlider = slider;
            healthBar.fillImage = fillImage;
            healthBar.canvasGroup = canvasGroup;

            return healthBar;
        }
    }
}
