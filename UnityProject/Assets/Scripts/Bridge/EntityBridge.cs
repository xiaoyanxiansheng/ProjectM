using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 实体 API 桥接层
    /// 提供 Dota2 Arcade 实体相关 API 的 Unity 实现
    /// </summary>
    public static class EntityBridge
    {
        /// <summary>
        /// 注册所有实体相关的 Lua API
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            // 确保 EntityService 存在
            var _ = EntityService.Instance;

            // 注册核心实体 API
            RegisterCoreApi(luaEnv);
            
            // 注册辅助 API
            RegisterHelperApi(luaEnv);
            
            // 注册 Entities 全局对象
            RegisterEntities(luaEnv);
            
            // 注册 GridNav 全局对象
            RegisterGridNav(luaEnv);

            Debug.Log("[EntityBridge] 实体 API 桥接已注册");
        }

        /// <summary>
        /// 注册核心实体 API
        /// </summary>
        private static void RegisterCoreApi(LuaEnv luaEnv)
        {
            // CreateEntity(unitId, position) -> entityId
            luaEnv.DoString(@"
                function CreateEntity(unitId, position)
                    local pos = CS.UnityEngine.Vector3(position.x, position.y, position.z)
                    return CS.CritFramework.EntityService.Instance:CreateEntity(unitId, pos)
                end
            ");

            // DestroyEntity(entityId)
            luaEnv.DoString(@"
                function DestroyEntity(entityId)
                    CS.CritFramework.EntityService.Instance:DestroyEntity(entityId)
                end
            ");

            // IsValidEntity(obj) - 检查实体/对象是否有效
            luaEnv.DoString(@"
                function IsValidEntity(obj)
                    if obj == nil then
                        return false
                    end
                    -- 如果是数字（entityId），检查实体服务
                    if type(obj) == 'number' then
                        return CS.CritFramework.EntityService.Instance:IsValid(obj)
                    end
                    -- 如果是表，检查是否有 entityId 字段
                    if type(obj) == 'table' and obj.entityId then
                        return CS.CritFramework.EntityService.Instance:IsValid(obj.entityId)
                    end
                    -- 其他情况返回 true（兼容性）
                    return true
                end
            ");

            // GetEntityPosition(entityId) -> Vector
            // 注意：这个函数在 Define.lua 中已有占位，这里提供真实实现
            luaEnv.DoString(@"
                function _GetEntityPositionFromService(entityId)
                    if type(entityId) ~= 'number' then
                        return Vector(0, 0, 0)
                    end
                    local pos = CS.CritFramework.EntityService.Instance:GetPosition(entityId)
                    return Vector(pos.x, pos.y, pos.z)
                end
            ");

            // SetEntityPosition(entityId, pos)
            luaEnv.DoString(@"
                function SetEntityPosition(entityId, pos)
                    local position = CS.UnityEngine.Vector3(pos.x, pos.y, pos.z)
                    CS.CritFramework.EntityService.Instance:SetPosition(entityId, position)
                end
            ");

            // GetEntityForward(entityId) -> Vector
            luaEnv.DoString(@"
                function GetEntityForward(entityId)
                    local forward = CS.CritFramework.EntityService.Instance:GetForward(entityId)
                    return Vector(forward.x, forward.y, forward.z)
                end
            ");

            // SetEntityForward(entityId, forward)
            luaEnv.DoString(@"
                function SetEntityForward(entityId, forward)
                    local fwd = CS.UnityEngine.Vector3(forward.x, forward.y, forward.z)
                    CS.CritFramework.EntityService.Instance:SetForward(entityId, fwd)
                end
            ");
        }

        /// <summary>
        /// 注册辅助 API
        /// </summary>
        private static void RegisterHelperApi(LuaEnv luaEnv)
        {
            // EntIndexToHScript(entityId) - 返回简单对象（兼容性）
            luaEnv.DoString(@"
                function EntIndexToHScript(entityId)
                    if not entityId or entityId == 0 then
                        return nil
                    end
                    -- 返回一个简单的代理对象
                    return {
                        entityId = entityId,
                        entindex = function() return entityId end,
                        GetOrigin = function()
                            return _GetEntityPositionFromService(entityId)
                        end,
                        GetAbsOrigin = function()
                            return _GetEntityPositionFromService(entityId)
                        end,
                        GetForwardVector = function()
                            return GetEntityForward(entityId)
                        end,
                        IsAlive = function()
                            return IsValidEntity(entityId)
                        end,
                    }
                end
            ");

            // GetGroundPosition(pos, _) - 获取地面位置（简化实现）
            luaEnv.DoString(@"
                function GetGroundPosition(pos, ent)
                    -- 简化实现：直接返回原位置，z 设为 0
                    -- Phase 5 可以使用 Physics.Raycast 实现真实地面检测
                    return Vector(pos.x, pos.y, 0)
                end
            ");

            // GetGroundHeight(pos, _) - 获取地面高度
            luaEnv.DoString(@"
                function GetGroundHeight(pos, ent)
                    -- 简化实现：返回 0
                    return 0
                end
            ");

            // FindClearSpaceForUnit(ent, pos, flag) - 寻找空位
            luaEnv.DoString(@"
                function FindClearSpaceForUnit(ent, pos, flag)
                    -- 简化实现：直接返回原位置
                    return pos
                end
            ");
        }

        /// <summary>
        /// 注册 Entities 全局对象
        /// </summary>
        private static void RegisterEntities(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                Entities = {}

                -- FindByName(_, name) - 查找场景实体（占位）
                function Entities:FindByName(startFrom, name)
                    -- Phase 5 实现：通过 Unity 场景查找
                    -- print('[Warning] Entities:FindByName 尚未完全实现')
                    return nil
                end

                -- FindAllByName(_, name) - 查找所有同名实体（占位）
                function Entities:FindAllByName(startFrom, name)
                    return {}
                end

                -- GetAllEntities() - 获取所有实体（占位）
                function Entities:GetAllEntities()
                    return {}
                end
            ");
        }

        /// <summary>
        /// 注册 GridNav 全局对象
        /// </summary>
        private static void RegisterGridNav(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                GridNav = {}

                -- IsTraversable(pos) - 可通行检测（占位）
                function GridNav:IsTraversable(pos)
                    -- Phase 5 实现：使用 Unity NavMesh
                    return true
                end

                -- IsBlocked(pos) - 阻挡检测（占位）
                function GridNav:IsBlocked(pos)
                    return false
                end

                -- GetAllTreesAroundPoint(pos, radius, flag) - 获取周围树木（占位）
                function GridNav:GetAllTreesAroundPoint(pos, radius, flag)
                    return {}
                end
            ");
        }
    }
}
