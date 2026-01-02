using System.Collections.Generic;
using UnityEngine;

namespace CritFramework
{
    /// <summary>
    /// 实体数据
    /// </summary>
    public class EntityData
    {
        public int EntityId;
        public int UnitId;
        public Vector3 Position;
        public Vector3 Forward = Vector3.forward;
        public bool IsAlive = true;
        public float MaxHealth = 100f;
        public float CurrentHealth = 100f;
        public int Camp = 0; // 0: 中立, 1: 玩家, 2: 怪物
        public GameObject GameObject;
        public Animator Animator;
        public CharacterController CharacterController;
        public MonsterHealthBar HealthBar; // 怪物血条
    }

    /// <summary>
    /// Unity 侧的实体管理服务
    /// 提供实体的创建、销毁、位置管理等功能
    /// </summary>
    public class EntityService : MonoBehaviour
    {
        private static EntityService _instance;
        public static EntityService Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[EntityService]");
                    _instance = go.AddComponent<EntityService>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

        // 实体数据存储
        private Dictionary<int, EntityData> entities = new Dictionary<int, EntityData>();
        
        // 下一个实体 ID
        private int nextEntityId = 1;

        void Awake()
        {
            if (_instance != null && _instance != this)
            {
                Destroy(gameObject);
                return;
            }
            _instance = this;
        }

        [Header("实体配置")]
        [Tooltip("是否自动创建可视化 GameObject")]
        public bool createVisuals = true;
        
        [Tooltip("实体父节点")]
        public Transform entityRoot;
        
        [Tooltip("玩家阵营颜色")]
        public Color playerColor = new Color(0.2f, 0.6f, 1f);
        
        [Tooltip("怪物阵营颜色")]
        public Color monsterColor = new Color(1f, 0.3f, 0.2f);

        /// <summary>
        /// 创建实体
        /// </summary>
        /// <param name="unitId">单位配置 ID</param>
        /// <param name="position">初始位置</param>
        /// <returns>实体 ID</returns>
        public int CreateEntity(int unitId, Vector3 position)
        {
            int entityId = nextEntityId++;
            
            var data = new EntityData
            {
                EntityId = entityId,
                UnitId = unitId,
                Position = position,
                Forward = Vector3.forward,
                IsAlive = true,
                MaxHealth = 100f,
                CurrentHealth = 100f,
                Camp = DetermineCamp(unitId)
            };
            
            entities[entityId] = data;
            
            // 创建可视化 GameObject
            if (createVisuals)
            {
                CreateEntityVisual(data);
            }
            
            Debug.Log($"[EntityService] 创建实体: EntityId={entityId}, UnitId={unitId}, Position={position}, Camp={data.Camp}");
            
            return entityId;
        }
        
        /// <summary>
        /// 根据 UnitId 确定阵营
        /// </summary>
        private int DetermineCamp(int unitId)
        {
            // 简单规则：1000-1999 是玩家英雄，2000+ 是怪物
            if (unitId >= 1000 && unitId < 2000) return 1; // 玩家
            if (unitId >= 2000) return 2; // 怪物
            return 0; // 中立
        }
        
        /// <summary>
        /// 创建实体的可视化 GameObject
        /// </summary>
        private void CreateEntityVisual(EntityData data)
        {
            // 确保有父节点
            if (entityRoot == null)
            {
                var rootGo = GameObject.Find("[Entities]");
                if (rootGo == null)
                {
                    rootGo = new GameObject("[Entities]");
                }
                entityRoot = rootGo.transform;
            }
            
            // 创建基础 GameObject（使用 Capsule 作为占位符）
            GameObject go = GameObject.CreatePrimitive(PrimitiveType.Capsule);
            go.name = $"Entity_{data.EntityId}_Unit_{data.UnitId}";
            go.transform.SetParent(entityRoot);
            go.transform.position = data.Position;
            go.transform.forward = data.Forward;
            
            // 设置阵营颜色
            var renderer = go.GetComponent<Renderer>();
            if (renderer != null)
            {
                var mat = new Material(Shader.Find("Universal Render Pipeline/Lit"));
                mat.color = data.Camp switch
                {
                    1 => playerColor,
                    2 => monsterColor,
                    _ => Color.gray
                };
                renderer.material = mat;
            }
            
            // 移除默认碰撞体，添加 CharacterController
            var collider = go.GetComponent<Collider>();
            if (collider != null) Destroy(collider);
            
            var cc = go.AddComponent<CharacterController>();
            cc.height = 2f;
            cc.radius = 0.5f;
            data.CharacterController = cc;
            
            // 关联
            data.GameObject = go;

            // 为怪物创建血条
            if (data.Camp == 2) // 怪物阵营
            {
                CreateHealthBar(data);
            }
        }

        /// <summary>
        /// 为实体创建血条
        /// </summary>
        private void CreateHealthBar(EntityData data)
        {
            if (data.GameObject == null) return;

            var healthBar = MonsterHealthBar.CreateHealthBar(null);
            healthBar.Initialize(data.GameObject.transform, data.MaxHealth);
            data.HealthBar = healthBar;
            
            Debug.Log($"[EntityService] 为实体 {data.EntityId} 创建血条");
        }

        /// <summary>
        /// 销毁实体
        /// </summary>
        public void DestroyEntity(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.IsAlive = false;
                
                // 销毁血条
                if (data.HealthBar != null)
                {
                    Destroy(data.HealthBar.gameObject);
                    data.HealthBar = null;
                }
                
                // 如果有关联的 GameObject，销毁它
                if (data.GameObject != null)
                {
                    Destroy(data.GameObject);
                    data.GameObject = null;
                }
                
                entities.Remove(entityId);
                Debug.Log($"[EntityService] 销毁实体: EntityId={entityId}");
            }
        }

        /// <summary>
        /// 检查实体是否有效
        /// </summary>
        public bool IsValid(int entityId)
        {
            return entities.TryGetValue(entityId, out var data) && data.IsAlive;
        }

        /// <summary>
        /// 获取实体位置
        /// </summary>
        public Vector3 GetPosition(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                // 如果有 GameObject，返回实际位置
                if (data.GameObject != null)
                {
                    return data.GameObject.transform.position;
                }
                return data.Position;
            }
            return Vector3.zero;
        }

        /// <summary>
        /// 设置实体位置
        /// </summary>
        public void SetPosition(int entityId, Vector3 position)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.Position = position;
                
                // 如果有 GameObject，同步位置
                if (data.GameObject != null)
                {
                    data.GameObject.transform.position = position;
                }
            }
        }

        /// <summary>
        /// 获取实体朝向
        /// </summary>
        public Vector3 GetForward(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                if (data.GameObject != null)
                {
                    return data.GameObject.transform.forward;
                }
                return data.Forward;
            }
            return Vector3.forward;
        }

        /// <summary>
        /// 设置实体朝向
        /// </summary>
        public void SetForward(int entityId, Vector3 forward)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.Forward = forward;
                
                if (data.GameObject != null)
                {
                    data.GameObject.transform.forward = forward;
                }
            }
        }

        /// <summary>
        /// 获取实体数据
        /// </summary>
        public EntityData GetEntityData(int entityId)
        {
            entities.TryGetValue(entityId, out var data);
            return data;
        }

        /// <summary>
        /// 关联 GameObject 到实体
        /// </summary>
        public void SetGameObject(int entityId, GameObject go)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.GameObject = go;
                if (go != null)
                {
                    go.transform.position = data.Position;
                    go.transform.forward = data.Forward;
                }
            }
        }

        /// <summary>
        /// 获取所有实体数量
        /// </summary>
        public int GetEntityCount()
        {
            return entities.Count;
        }

        /// <summary>
        /// 清除所有实体
        /// </summary>
        public void Clear()
        {
            foreach (var kvp in entities)
            {
                if (kvp.Value.GameObject != null)
                {
                    Destroy(kvp.Value.GameObject);
                }
            }
            entities.Clear();
            Debug.Log("[EntityService] 清除所有实体");
        }

        #region 战斗相关扩展

        /// <summary>
        /// 设置实体生命值
        /// </summary>
        public void SetHealth(int entityId, float current, float max)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.MaxHealth = max;
                data.CurrentHealth = Mathf.Clamp(current, 0, max);
            }
        }

        /// <summary>
        /// 对实体造成伤害
        /// </summary>
        /// <returns>是否死亡</returns>
        public bool ApplyDamage(int entityId, float damage, bool isCrit = false)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.CurrentHealth -= damage;
                Debug.Log($"[EntityService] 实体 {entityId} 受到 {damage} 伤害，剩余血量: {data.CurrentHealth}/{data.MaxHealth}");
                
                // 更新血条
                if (data.HealthBar != null)
                {
                    data.HealthBar.UpdateHealth(data.CurrentHealth, data.MaxHealth);
                }
                
                // 显示伤害数字
                if (data.GameObject != null)
                {
                    Vector3 damagePos = data.GameObject.transform.position + Vector3.up * 2f;
                    DamageNumberManager.Instance.ShowDamage(damagePos, (int)damage, isCrit);
                }
                
                if (data.CurrentHealth <= 0)
                {
                    data.CurrentHealth = 0;
                    data.IsAlive = false;
                    OnEntityDeath(entityId);
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// 治疗实体
        /// </summary>
        public void ApplyHeal(int entityId, float amount)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.CurrentHealth = Mathf.Min(data.CurrentHealth + amount, data.MaxHealth);
                Debug.Log($"[EntityService] 实体 {entityId} 恢复 {amount} 生命，当前血量: {data.CurrentHealth}/{data.MaxHealth}");
            }
        }

        /// <summary>
        /// 获取实体当前生命值
        /// </summary>
        public float GetHealth(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                return data.CurrentHealth;
            }
            return 0;
        }

        /// <summary>
        /// 获取实体最大生命值
        /// </summary>
        public float GetMaxHealth(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                return data.MaxHealth;
            }
            return 0;
        }

        /// <summary>
        /// 获取实体阵营
        /// </summary>
        public int GetCamp(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                return data.Camp;
            }
            return 0;
        }

        /// <summary>
        /// 设置实体阵营
        /// </summary>
        public void SetCamp(int entityId, int camp)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.Camp = camp;
                
                // 更新可视化颜色
                if (data.GameObject != null)
                {
                    var renderer = data.GameObject.GetComponent<Renderer>();
                    if (renderer != null)
                    {
                        renderer.material.color = camp switch
                        {
                            1 => playerColor,
                            2 => monsterColor,
                            _ => Color.gray
                        };
                    }
                }
            }
        }

        /// <summary>
        /// 移动实体到目标位置
        /// </summary>
        public void MoveTowards(int entityId, Vector3 targetPosition, float speed)
        {
            if (entities.TryGetValue(entityId, out var data) && data.IsAlive)
            {
                Vector3 direction = (targetPosition - data.Position).normalized;
                Vector3 movement = direction * speed * Time.deltaTime;
                
                data.Position += movement;
                data.Forward = direction;
                
                if (data.GameObject != null)
                {
                    data.GameObject.transform.position = data.Position;
                    if (direction != Vector3.zero)
                    {
                        data.GameObject.transform.forward = direction;
                    }
                }
            }
        }

        /// <summary>
        /// 获取指定范围内的实体
        /// </summary>
        public List<int> GetEntitiesInRange(Vector3 center, float radius, int? campFilter = null)
        {
            var result = new List<int>();
            float radiusSqr = radius * radius;
            
            foreach (var kvp in entities)
            {
                if (!kvp.Value.IsAlive) continue;
                if (campFilter.HasValue && kvp.Value.Camp != campFilter.Value) continue;
                
                float distSqr = (kvp.Value.Position - center).sqrMagnitude;
                if (distSqr <= radiusSqr)
                {
                    result.Add(kvp.Key);
                }
            }
            
            return result;
        }

        /// <summary>
        /// 获取距离最近的敌对实体
        /// </summary>
        public int GetNearestEnemy(int entityId, float maxRange = float.MaxValue)
        {
            if (!entities.TryGetValue(entityId, out var selfData)) return -1;
            
            int nearestId = -1;
            float nearestDistSqr = maxRange * maxRange;
            
            foreach (var kvp in entities)
            {
                if (kvp.Key == entityId) continue;
                if (!kvp.Value.IsAlive) continue;
                
                // 敌对检查
                bool isEnemy = (selfData.Camp == 1 && kvp.Value.Camp == 2) ||
                               (selfData.Camp == 2 && kvp.Value.Camp == 1);
                if (!isEnemy) continue;
                
                float distSqr = (kvp.Value.Position - selfData.Position).sqrMagnitude;
                if (distSqr < nearestDistSqr)
                {
                    nearestDistSqr = distSqr;
                    nearestId = kvp.Key;
                }
            }
            
            return nearestId;
        }

        /// <summary>
        /// 实体死亡处理
        /// </summary>
        private void OnEntityDeath(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                Debug.Log($"[EntityService] 实体死亡: EntityId={entityId}");
                
                // 禁用 GameObject（不立即销毁，留给外部决定）
                if (data.GameObject != null)
                {
                    // 可以在这里播放死亡动画或变色
                    var renderer = data.GameObject.GetComponent<Renderer>();
                    if (renderer != null)
                    {
                        renderer.material.color = Color.black;
                    }
                }
            }
        }

        /// <summary>
        /// 播放动画
        /// </summary>
        public void PlayAnimation(int entityId, string animationName, bool loop = false)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                if (data.Animator != null)
                {
                    data.Animator.Play(animationName);
                }
            }
        }

        /// <summary>
        /// 获取所有存活实体 ID
        /// </summary>
        public List<int> GetAllAliveEntities()
        {
            var result = new List<int>();
            foreach (var kvp in entities)
            {
                if (kvp.Value.IsAlive)
                {
                    result.Add(kvp.Key);
                }
            }
            return result;
        }

        #endregion
    }
}
