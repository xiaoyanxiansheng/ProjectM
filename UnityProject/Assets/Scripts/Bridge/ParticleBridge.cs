using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 粒子 API 桥接层
    /// 提供 Dota2 Arcade ParticleManager API 的 Unity 实现
    /// </summary>
    public static class ParticleBridge
    {
        /// <summary>
        /// 注册所有粒子相关的 Lua API
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            // 确保 VFXService 存在
            var _ = VFXService.Instance;

            // 注册附着类型常量
            RegisterConstants(luaEnv);

            // 注册 ParticleManager 全局对象
            RegisterParticleManager(luaEnv);

            Debug.Log("[ParticleBridge] 粒子 API 桥接已注册");
        }

        /// <summary>
        /// 注册附着类型常量
        /// </summary>
        private static void RegisterConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- 粒子附着类型常量（与 Dota2 PATTACH_* 对应）
                PATTACH_ABSORIGIN = 0
                PATTACH_ABSORIGIN_FOLLOW = 1
                PATTACH_CUSTOMORIGIN = 2
                PATTACH_POINT_FOLLOW = 3
                PATTACH_WORLDORIGIN = 4
                PATTACH_OVERHEAD_FOLLOW = 5
                PATTACH_POINT = 6
                PATTACH_EYES_FOLLOW = 7
            ");
        }

        /// <summary>
        /// 注册 ParticleManager 全局对象
        /// </summary>
        private static void RegisterParticleManager(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- ParticleManager 全局对象（替代 Dota2 原生 API）
                ParticleManager = ParticleManager or {}

                -- CreateParticle(effectPath, attachType, entity) -> particleId
                function ParticleManager:CreateParticle(effectPath, attachType, entity)
                    local entityId = 0
                    if entity then
                        if type(entity) == 'number' then
                            entityId = entity
                        elseif type(entity) == 'table' and entity.GetInsid then
                            entityId = entity:GetInsid()
                        elseif type(entity) == 'table' and entity.entityId then
                            entityId = entity.entityId
                        end
                    end
                    return CS.CritFramework.VFXService.Instance:CreateParticle(effectPath, attachType, entityId)
                end

                -- CreateParticleForPlayer(effectPath, attachType, entity, playerId) -> particleId
                function ParticleManager:CreateParticleForPlayer(effectPath, attachType, entity, playerId)
                    -- 单机版忽略 playerId
                    return self:CreateParticle(effectPath, attachType, entity)
                end

                -- SetParticleControl(particleId, controlPoint, position)
                function ParticleManager:SetParticleControl(particleId, controlPoint, position)
                    if not particleId or particleId < 0 then return end
                    local pos = CS.UnityEngine.Vector3(position.x, position.y, position.z)
                    CS.CritFramework.VFXService.Instance:SetParticleControl(particleId, controlPoint, pos)
                end

                -- SetParticleControlEnt(particleId, controlPoint, entity, attachType, attachPoint, offset)
                function ParticleManager:SetParticleControlEnt(particleId, controlPoint, entity, attachType, attachPoint, offset)
                    if not particleId or particleId < 0 then return end
                    local entityId = 0
                    if entity then
                        if type(entity) == 'number' then
                            entityId = entity
                        elseif type(entity) == 'table' and entity.GetInsid then
                            entityId = entity:GetInsid()
                        elseif type(entity) == 'table' and entity.entityId then
                            entityId = entity.entityId
                        end
                    end
                    local off = offset or Vector(0, 0, 0)
                    local offsetVec = CS.UnityEngine.Vector3(off.x, off.y, off.z)
                    CS.CritFramework.VFXService.Instance:SetParticleControlEnt(particleId, controlPoint, entityId, attachType or 0, offsetVec)
                end

                -- SetParticleControlForward(particleId, controlPoint, forward)
                function ParticleManager:SetParticleControlForward(particleId, controlPoint, forward)
                    -- 简化实现：暂不支持朝向控制
                end

                -- DestroyParticle(particleId, immediate)
                function ParticleManager:DestroyParticle(particleId, immediate)
                    if not particleId or particleId < 0 then return end
                    CS.CritFramework.VFXService.Instance:DestroyParticle(particleId, immediate or false)
                end

                -- ReleaseParticleIndex(particleId)
                function ParticleManager:ReleaseParticleIndex(particleId)
                    if not particleId or particleId < 0 then return end
                    CS.CritFramework.VFXService.Instance:ReleaseParticle(particleId)
                end

                -- GetParticleReplacement(effectPath, hero) -> effectPath
                function ParticleManager:GetParticleReplacement(effectPath, hero)
                    -- 简化实现：直接返回原路径
                    return effectPath
                end
            ");
        }
    }
}
