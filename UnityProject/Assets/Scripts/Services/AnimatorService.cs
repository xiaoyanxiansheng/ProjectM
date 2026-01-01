using UnityEngine;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// 动画服务 - 管理所有单位动画
    /// </summary>
    public class AnimatorService : MonoBehaviour
    {
        private static AnimatorService _instance;
        public static AnimatorService Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[AnimatorService]");
                    _instance = go.AddComponent<AnimatorService>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

        // 缓存实体的 Animator
        private Dictionary<int, Animator> _entityAnimators = new Dictionary<int, Animator>();

        // 动画名称映射（Dota2 Activity -> Unity Animation）
        private Dictionary<string, string> _animationMapping = new Dictionary<string, string>
        {
            { "ACT_DOTA_IDLE", "Idle" },
            { "ACT_DOTA_RUN", "Run" },
            { "ACT_DOTA_ATTACK", "Attack" },
            { "ACT_DOTA_ATTACK2", "Attack2" },
            { "ACT_DOTA_CAST_ABILITY_1", "Skill1" },
            { "ACT_DOTA_CAST_ABILITY_2", "Skill2" },
            { "ACT_DOTA_CAST_ABILITY_3", "Skill3" },
            { "ACT_DOTA_CAST_ABILITY_4", "Skill4" },
            { "ACT_DOTA_DIE", "Death" },
            { "ACT_DOTA_DISABLED", "Stun" },
            { "ACT_DOTA_FLAIL", "Knockback" },
            { "ACT_DOTA_SPAWN", "Spawn" },
            { "ACT_DOTA_VICTORY", "Victory" },
            { "ACT_DOTA_CHANNEL_ABILITY_1", "Channel1" },
            { "ACT_DOTA_CHANNEL_END_ABILITY_1", "ChannelEnd1" },
        };

        void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
                return;
            }
            _instance = this;
        }

        /// <summary>
        /// 播放动画
        /// </summary>
        /// <param name="entityId">实体ID</param>
        /// <param name="animName">动画名称（支持 Dota2 Activity 名称）</param>
        /// <param name="rate">播放速率</param>
        public void PlayAnimation(int entityId, string animName, float rate)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null)
            {
                Debug.LogWarning($"[AnimatorService] 实体没有 Animator: {entityId}");
                return;
            }

            // 映射动画名称
            string mappedName = MapAnimationName(animName);

            animator.speed = rate > 0 ? rate : 1f;

            // 尝试播放
            if (HasState(animator, mappedName))
            {
                animator.Play(mappedName, 0, 0f);
                Debug.Log($"[AnimatorService] 播放动画: EntityId={entityId}, Anim={mappedName}, Rate={rate}");
            }
            else
            {
                Debug.LogWarning($"[AnimatorService] 动画不存在: {mappedName} (原名: {animName})");
            }
        }

        /// <summary>
        /// 淡入播放动画
        /// </summary>
        public void CrossFadeAnimation(int entityId, string animName, float fadeTime)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            string mappedName = MapAnimationName(animName);

            if (HasState(animator, mappedName))
            {
                animator.CrossFade(mappedName, fadeTime);
            }
        }

        /// <summary>
        /// 停止动画（过渡到 Idle）
        /// </summary>
        public void StopAnimation(int entityId, string animName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            // 过渡到 Idle
            if (HasState(animator, "Idle"))
            {
                animator.CrossFade("Idle", 0.1f);
            }
        }

        /// <summary>
        /// 设置动画速度
        /// </summary>
        public void SetAnimationSpeed(int entityId, float speed)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            animator.speed = speed;
        }

        /// <summary>
        /// 播放手势动画（叠加层）
        /// </summary>
        public void PlayGesture(int entityId, string gestureName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            string mappedName = MapAnimationName(gestureName);

            // 在叠加层播放（假设层1是手势层）
            if (animator.layerCount > 1)
            {
                if (HasState(animator, mappedName, 1))
                {
                    animator.Play(mappedName, 1, 0f);
                }
            }
            else
            {
                // 没有叠加层，在主层播放
                if (HasState(animator, mappedName))
                {
                    animator.Play(mappedName, 0, 0f);
                }
            }
        }

        /// <summary>
        /// 淡出手势动画
        /// </summary>
        public void FadeGesture(int entityId, string gestureName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            if (animator.layerCount > 1)
            {
                animator.SetLayerWeight(1, 0f);
            }
        }

        /// <summary>
        /// 设置动画参数（Float）
        /// </summary>
        public void SetFloat(int entityId, string paramName, float value)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            animator.SetFloat(paramName, value);
        }

        /// <summary>
        /// 设置动画参数（Bool）
        /// </summary>
        public void SetBool(int entityId, string paramName, bool value)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            animator.SetBool(paramName, value);
        }

        /// <summary>
        /// 设置动画参数（Trigger）
        /// </summary>
        public void SetTrigger(int entityId, string paramName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            animator.SetTrigger(paramName);
        }

        /// <summary>
        /// 获取当前动画状态信息
        /// </summary>
        public AnimatorStateInfo GetCurrentState(int entityId, int layer = 0)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return default;

            return animator.GetCurrentAnimatorStateInfo(layer);
        }

        /// <summary>
        /// 检查是否在播放指定动画
        /// </summary>
        public bool IsPlayingAnimation(int entityId, string animName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return false;

            string mappedName = MapAnimationName(animName);
            var stateInfo = animator.GetCurrentAnimatorStateInfo(0);
            return stateInfo.IsName(mappedName);
        }

        /// <summary>
        /// 注册实体的 Animator
        /// </summary>
        public void RegisterAnimator(int entityId, Animator animator)
        {
            if (animator != null)
            {
                _entityAnimators[entityId] = animator;
            }
        }

        /// <summary>
        /// 清理实体动画缓存
        /// </summary>
        public void RemoveEntity(int entityId)
        {
            _entityAnimators.Remove(entityId);
        }

        /// <summary>
        /// 清除所有缓存
        /// </summary>
        public void Clear()
        {
            _entityAnimators.Clear();
            Debug.Log("[AnimatorService] 清除所有动画缓存");
        }

        /// <summary>
        /// 添加动画映射
        /// </summary>
        public void AddAnimationMapping(string dotaName, string unityName)
        {
            _animationMapping[dotaName] = unityName;
        }

        private Animator GetAnimator(int entityId)
        {
            if (_entityAnimators.TryGetValue(entityId, out var cached) && cached != null)
                return cached;

            var entityData = EntityService.Instance.GetEntityData(entityId);
            if (entityData == null)
            {
                return null;
            }

            if (entityData.GameObject == null)
            {
                return null;
            }

            var animator = entityData.GameObject.GetComponentInChildren<Animator>();
            if (animator != null)
            {
                _entityAnimators[entityId] = animator;
            }

            return animator;
        }

        private string MapAnimationName(string animName)
        {
            if (_animationMapping.TryGetValue(animName, out var mapped))
            {
                return mapped;
            }
            // 没有映射则使用原名
            return animName;
        }

        private bool HasState(Animator animator, string stateName, int layer = 0)
        {
            // 简化实现：假设状态存在
            // 完整实现需要遍历 AnimatorController 的状态
            return true;
        }
    }
}
