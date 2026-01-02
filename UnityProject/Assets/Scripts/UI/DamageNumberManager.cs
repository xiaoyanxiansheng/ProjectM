using UnityEngine;
using UnityEngine.UI;
using TMPro;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// 伤害数字管理器
    /// 对象池 + 飘字动画
    /// </summary>
    public class DamageNumberManager : MonoBehaviour
    {
        private static DamageNumberManager _instance;
        public static DamageNumberManager Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[DamageNumberManager]");
                    _instance = go.AddComponent<DamageNumberManager>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

        [Header("配置")]
        public int poolSize = 20;
        public float floatDuration = 1f;
        public float floatHeight = 1.5f;
        public float randomOffsetX = 0.5f;

        [Header("颜色配置")]
        public Color normalDamageColor = new Color(1f, 0.9f, 0.2f);
        public Color critDamageColor = new Color(1f, 0.2f, 0.2f);
        public Color healColor = new Color(0.2f, 1f, 0.2f);

        [Header("字体大小")]
        public float normalFontSize = 24f;
        public float critFontSize = 36f;

        private Queue<DamageNumber> _pool = new Queue<DamageNumber>();
        private List<DamageNumber> _activeNumbers = new List<DamageNumber>();
        private Canvas _worldCanvas;

        private void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
                return;
            }
            _instance = this;

            CreateWorldCanvas();
            InitPool();
        }

        private void CreateWorldCanvas()
        {
            var canvasGO = new GameObject("DamageNumberCanvas");
            canvasGO.transform.SetParent(transform);
            
            _worldCanvas = canvasGO.AddComponent<Canvas>();
            _worldCanvas.renderMode = RenderMode.WorldSpace;
            _worldCanvas.sortingOrder = 200;

            canvasGO.AddComponent<CanvasScaler>();
        }

        private void InitPool()
        {
            for (int i = 0; i < poolSize; i++)
            {
                var num = CreateDamageNumber();
                num.gameObject.SetActive(false);
                _pool.Enqueue(num);
            }
        }

        private DamageNumber CreateDamageNumber()
        {
            var go = new GameObject("DamageNumber");
            go.transform.SetParent(_worldCanvas.transform, false);

            var text = go.AddComponent<TextMeshProUGUI>();
            text.alignment = TextAlignmentOptions.Center;
            text.fontSize = normalFontSize;
            text.fontStyle = FontStyles.Bold;

            var rect = go.GetComponent<RectTransform>();
            rect.sizeDelta = new Vector2(200, 50);

            var num = go.AddComponent<DamageNumber>();
            num.text = text;
            num.manager = this;

            return num;
        }

        private void Update()
        {
            // 更新所有活动的伤害数字
            for (int i = _activeNumbers.Count - 1; i >= 0; i--)
            {
                var num = _activeNumbers[i];
                if (num.IsFinished)
                {
                    ReturnToPool(num);
                    _activeNumbers.RemoveAt(i);
                }
            }
        }

        /// <summary>
        /// 显示伤害数字
        /// </summary>
        public void ShowDamage(Vector3 worldPosition, int damage, bool isCrit = false)
        {
            var num = GetFromPool();
            if (num == null) return;

            // 随机偏移
            float offsetX = Random.Range(-randomOffsetX, randomOffsetX);
            worldPosition += new Vector3(offsetX, 0, 0);

            num.transform.position = worldPosition;
            num.Show(damage.ToString(), isCrit ? critDamageColor : normalDamageColor, 
                     isCrit ? critFontSize : normalFontSize, floatDuration, floatHeight);

            _activeNumbers.Add(num);
        }

        /// <summary>
        /// 显示治疗数字
        /// </summary>
        public void ShowHeal(Vector3 worldPosition, int amount)
        {
            var num = GetFromPool();
            if (num == null) return;

            float offsetX = Random.Range(-randomOffsetX, randomOffsetX);
            worldPosition += new Vector3(offsetX, 0, 0);

            num.transform.position = worldPosition;
            num.Show("+" + amount.ToString(), healColor, normalFontSize, floatDuration, floatHeight);

            _activeNumbers.Add(num);
        }

        private DamageNumber GetFromPool()
        {
            if (_pool.Count > 0)
            {
                var num = _pool.Dequeue();
                num.gameObject.SetActive(true);
                return num;
            }

            // 池空了，创建新的
            return CreateDamageNumber();
        }

        private void ReturnToPool(DamageNumber num)
        {
            num.gameObject.SetActive(false);
            _pool.Enqueue(num);
        }
    }

    /// <summary>
    /// 单个伤害数字
    /// </summary>
    public class DamageNumber : MonoBehaviour
    {
        public TextMeshProUGUI text;
        public DamageNumberManager manager;

        private float _duration;
        private float _elapsed;
        private float _floatHeight;
        private Vector3 _startPosition;
        private Color _startColor;
        private Camera _mainCamera;

        public bool IsFinished => _elapsed >= _duration;

        private void Awake()
        {
            _mainCamera = Camera.main;
        }

        public void Show(string content, Color color, float fontSize, float duration, float floatHeight)
        {
            text.text = content;
            text.color = color;
            text.fontSize = fontSize;
            _startColor = color;
            _duration = duration;
            _floatHeight = floatHeight;
            _elapsed = 0f;
            _startPosition = transform.position;
        }

        private void Update()
        {
            if (IsFinished) return;

            _elapsed += Time.deltaTime;
            float t = _elapsed / _duration;

            // 向上飘
            float height = Mathf.Sin(t * Mathf.PI * 0.5f) * _floatHeight;
            transform.position = _startPosition + Vector3.up * height;

            // 淡出
            var color = _startColor;
            color.a = 1f - t;
            text.color = color;

            // 缩放（暴击效果）
            float scale = 1f + (1f - t) * 0.3f;
            transform.localScale = Vector3.one * scale;

            // 面向摄像机
            if (_mainCamera != null)
            {
                transform.LookAt(transform.position + _mainCamera.transform.forward);
            }
        }
    }
}
