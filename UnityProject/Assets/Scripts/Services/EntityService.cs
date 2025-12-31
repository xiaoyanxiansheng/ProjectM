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
        public GameObject GameObject; // Phase 5 关联实际 GameObject
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
                IsAlive = true
            };
            
            entities[entityId] = data;
            
            Debug.Log($"[EntityService] 创建实体: EntityId={entityId}, UnitId={unitId}, Position={position}");
            
            return entityId;
        }

        /// <summary>
        /// 销毁实体
        /// </summary>
        public void DestroyEntity(int entityId)
        {
            if (entities.TryGetValue(entityId, out var data))
            {
                data.IsAlive = false;
                
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
    }
}
