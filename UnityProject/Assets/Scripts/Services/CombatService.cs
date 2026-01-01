using System.Collections.Generic;
using UnityEngine;

namespace CritFramework
{
    /// <summary>
    /// 战斗查找服务
    /// 提供 FindUnitsInRadius、ApplyDamage 等战斗 API
    /// </summary>
    public class CombatService : MonoBehaviour
    {
        private static CombatService _instance;
        public static CombatService Instance
        {
            get
            {
                if (_instance == null)
                {
                    var go = new GameObject("[CombatService]");
                    _instance = go.AddComponent<CombatService>();
                    DontDestroyOnLoad(go);
                }
                return _instance;
            }
        }

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
        /// 范围内查找单位
        /// </summary>
        /// <param name="teamNumber">发起方队伍</param>
        /// <param name="position">中心位置</param>
        /// <param name="radius">搜索半径</param>
        /// <param name="targetTeam">目标队伍类型</param>
        /// <param name="targetType">目标单位类型</param>
        /// <param name="targetFlags">目标标志</param>
        /// <param name="order">排序方式</param>
        /// <param name="canGrowCache">是否可缓存增长</param>
        /// <returns>找到的单位 InsId 列表</returns>
        public List<int> FindUnitsInRadius(
            int teamNumber,
            Vector3 position,
            float radius,
            int targetTeam,
            int targetType,
            int targetFlags,
            int order,
            bool canGrowCache)
        {
            StubConfig.LogStubApiCall("FindUnitsInRadius", 
                $"pos=({position.x:F1},{position.y:F1},{position.z:F1}), r={radius}");

            var results = new List<int>();

            // Stub 模式：返回空列表
            if (StubConfig.DebugMode && StubConfig.StubCombat)
            {
                return results;
            }

            // 真实模式：使用 Unity Physics
            var colliders = Physics.OverlapSphere(position, radius);
            foreach (var col in colliders)
            {
                var entityData = GetEntityFromCollider(col);
                if (entityData != null)
                {
                    // TODO: 根据 targetTeam, targetType, targetFlags 过滤
                    results.Add(entityData.EntityId);
                }
            }

            // TODO: 根据 order 排序

            return results;
        }

        /// <summary>
        /// 线性查找单位
        /// </summary>
        public List<int> FindUnitsInLine(
            int teamNumber,
            Vector3 startPos,
            Vector3 endPos,
            float width,
            int targetTeam,
            int targetType,
            int targetFlags)
        {
            StubConfig.LogStubApiCall("FindUnitsInLine",
                $"start=({startPos.x:F1},{startPos.y:F1}), end=({endPos.x:F1},{endPos.y:F1}), w={width}");

            var results = new List<int>();

            if (StubConfig.DebugMode && StubConfig.StubCombat)
            {
                return results;
            }

            // 真实模式：BoxCast 或 CapsuleCast
            Vector3 direction = (endPos - startPos).normalized;
            float distance = Vector3.Distance(startPos, endPos);
            
            var hits = Physics.BoxCastAll(
                startPos,
                new Vector3(width / 2, 1f, width / 2),
                direction,
                Quaternion.LookRotation(direction),
                distance
            );

            foreach (var hit in hits)
            {
                var entityData = GetEntityFromCollider(hit.collider);
                if (entityData != null)
                {
                    results.Add(entityData.EntityId);
                }
            }

            return results;
        }

        /// <summary>
        /// 扇形查找单位
        /// </summary>
        public List<int> FindUnitsInCone(
            int teamNumber,
            Vector3 position,
            Vector3 direction,
            float radius,
            float angle,
            int targetTeam,
            int targetType,
            int targetFlags)
        {
            StubConfig.LogStubApiCall("FindUnitsInCone",
                $"pos=({position.x:F1},{position.y:F1}), r={radius}, angle={angle}");

            var results = new List<int>();

            if (StubConfig.DebugMode && StubConfig.StubCombat)
            {
                return results;
            }

            // 真实模式：先用球形查找，再过滤角度
            var colliders = Physics.OverlapSphere(position, radius);
            foreach (var col in colliders)
            {
                var entityData = GetEntityFromCollider(col);
                if (entityData == null) continue;

                // 检查是否在扇形内
                Vector3 toTarget = (entityData.Position - position).normalized;
                float dotAngle = Vector3.Angle(direction, toTarget);
                if (dotAngle <= angle / 2)
                {
                    results.Add(entityData.EntityId);
                }
            }

            return results;
        }

        /// <summary>
        /// 造成伤害
        /// </summary>
        public void ApplyDamage(
            int attackerInsId,
            int victimInsId,
            float damage,
            int damageType,
            int damageFlags,
            int abilityId)
        {
            StubConfig.LogStubApiCall("ApplyDamage",
                $"atk={attackerInsId}, vic={victimInsId}, dmg={damage}, type={damageType}");

            if (StubConfig.DebugMode && StubConfig.StubCombat)
            {
                // Stub 模式：只打印，不处理
                return;
            }

            // 真实模式：调用 Lua Fight:ApplyDamage
            // TODO: 通过 LuaManager 调用 Lua 层伤害处理
        }

        /// <summary>
        /// 治疗单位
        /// </summary>
        public void Heal(
            int healerInsId,
            int targetInsId,
            float amount,
            int abilityId)
        {
            StubConfig.LogStubApiCall("Heal",
                $"healer={healerInsId}, target={targetInsId}, amount={amount}");

            if (StubConfig.DebugMode && StubConfig.StubCombat)
            {
                return;
            }

            // TODO: 调用 Lua 层治疗处理
        }

        /// <summary>
        /// 从 Collider 获取实体数据
        /// </summary>
        private EntityData GetEntityFromCollider(Collider col)
        {
            // 尝试从 GameObject 获取实体 ID
            // 这需要 GameEntity 组件或其他方式关联
            var gameEntity = col.GetComponent<GameEntity>();
            if (gameEntity != null)
            {
                return EntityService.Instance.GetEntityData(gameEntity.EntityId);
            }
            return null;
        }
    }

    /// <summary>
    /// GameEntity 组件 - 关联 Unity GameObject 和实体 ID
    /// </summary>
    public class GameEntity : MonoBehaviour
    {
        public int EntityId { get; set; }
    }
}
