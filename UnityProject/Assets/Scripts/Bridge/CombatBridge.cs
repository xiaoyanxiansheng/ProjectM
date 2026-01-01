using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 战斗 API 桥接层
    /// 提供 FindUnitsInRadius、ApplyDamage 等 Dota2 战斗 API
    /// </summary>
    public static class CombatBridge
    {
        /// <summary>
        /// 注册所有战斗相关的 Lua API
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            // 确保 CombatService 存在
            var _ = CombatService.Instance;

            // 注册战斗查找 API
            RegisterFindApis(luaEnv);

            // 注册伤害/治疗 API
            RegisterDamageApis(luaEnv);

            Debug.Log("[CombatBridge] 战斗 API 桥接已注册");
        }

        /// <summary>
        /// 注册查找 API
        /// </summary>
        private static void RegisterFindApis(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- FindUnitsInRadius(teamNum, pos, radius, targetTeam, targetType, targetFlags, order, canGrowCache)
                -- 返回范围内的单位列表
                function FindUnitsInRadius(teamNum, pos, radius, targetTeam, targetType, targetFlags, order, canGrowCache)
                    local position = CS.UnityEngine.Vector3(pos.x or 0, pos.y or 0, pos.z or 0)
                    local result = CS.CritFramework.CombatService.Instance:FindUnitsInRadius(
                        teamNum or 0,
                        position,
                        radius or 0,
                        targetTeam or 0,
                        targetType or 0,
                        targetFlags or 0,
                        order or 0,
                        canGrowCache or false
                    )
                    
                    -- 转换为 Lua table，包含单位对象
                    local units = {}
                    if result then
                        for i = 0, result.Count - 1 do
                            local insId = result[i]
                            if Units then
                                local unit = Units:GetUnitByInsid(insId)
                                if unit then
                                    table.insert(units, unit)
                                end
                            end
                        end
                    end
                    return units
                end

                -- FindUnitsInLine(teamNum, startPos, endPos, width, targetTeam, targetType, targetFlags)
                function FindUnitsInLine(teamNum, startPos, endPos, width, targetTeam, targetType, targetFlags)
                    local start = CS.UnityEngine.Vector3(startPos.x or 0, startPos.y or 0, startPos.z or 0)
                    local endP = CS.UnityEngine.Vector3(endPos.x or 0, endPos.y or 0, endPos.z or 0)
                    local result = CS.CritFramework.CombatService.Instance:FindUnitsInLine(
                        teamNum or 0,
                        start,
                        endP,
                        width or 0,
                        targetTeam or 0,
                        targetType or 0,
                        targetFlags or 0
                    )
                    
                    local units = {}
                    if result then
                        for i = 0, result.Count - 1 do
                            local insId = result[i]
                            if Units then
                                local unit = Units:GetUnitByInsid(insId)
                                if unit then
                                    table.insert(units, unit)
                                end
                            end
                        end
                    end
                    return units
                end

                -- FindUnitsInCone(teamNum, pos, direction, radius, angle, targetTeam, targetType, targetFlags)
                function FindUnitsInCone(teamNum, pos, direction, radius, angle, targetTeam, targetType, targetFlags)
                    local position = CS.UnityEngine.Vector3(pos.x or 0, pos.y or 0, pos.z or 0)
                    local dir = CS.UnityEngine.Vector3(direction.x or 0, direction.y or 0, direction.z or 1)
                    local result = CS.CritFramework.CombatService.Instance:FindUnitsInCone(
                        teamNum or 0,
                        position,
                        dir,
                        radius or 0,
                        angle or 0,
                        targetTeam or 0,
                        targetType or 0,
                        targetFlags or 0
                    )
                    
                    local units = {}
                    if result then
                        for i = 0, result.Count - 1 do
                            local insId = result[i]
                            if Units then
                                local unit = Units:GetUnitByInsid(insId)
                                if unit then
                                    table.insert(units, unit)
                                end
                            end
                        end
                    end
                    return units
                end
            ");
        }

        /// <summary>
        /// 注册伤害/治疗 API
        /// </summary>
        private static void RegisterDamageApis(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- ApplyDamage(damageTable)
                -- damageTable = {
                --   attacker = unit,
                --   victim = unit,
                --   damage = number,
                --   damage_type = DAMAGE_TYPE_*,
                --   damage_flags = number,
                --   ability = ability
                -- }
                function ApplyDamage(damageTable)
                    if not damageTable then return end
                    
                    local attacker = damageTable.attacker
                    local victim = damageTable.victim
                    local damage = damageTable.damage or 0
                    local damageType = damageTable.damage_type or 0
                    local damageFlags = damageTable.damage_flags or 0
                    local ability = damageTable.ability
                    
                    local attackerId = 0
                    local victimId = 0
                    local abilityId = 0
                    
                    if attacker then
                        if type(attacker) == 'number' then
                            attackerId = attacker
                        elseif attacker.GetInsid then
                            attackerId = attacker:GetInsid()
                        end
                    end
                    
                    if victim then
                        if type(victim) == 'number' then
                            victimId = victim
                        elseif victim.GetInsid then
                            victimId = victim:GetInsid()
                        end
                    end
                    
                    if ability and ability.abilityId then
                        abilityId = ability.abilityId
                    end
                    
                    CS.CritFramework.CombatService.Instance:ApplyDamage(
                        attackerId, victimId, damage, damageType, damageFlags, abilityId
                    )
                end

                -- Heal(healTable)
                function Heal(healTable)
                    if not healTable then return end
                    
                    local healer = healTable.healer
                    local target = healTable.target or healTable.victim
                    local amount = healTable.amount or healTable.heal or 0
                    local ability = healTable.ability
                    
                    local healerId = 0
                    local targetId = 0
                    local abilityId = 0
                    
                    if healer and healer.GetInsid then
                        healerId = healer:GetInsid()
                    end
                    
                    if target and target.GetInsid then
                        targetId = target:GetInsid()
                    end
                    
                    if ability and ability.abilityId then
                        abilityId = ability.abilityId
                    end
                    
                    CS.CritFramework.CombatService.Instance:Heal(healerId, targetId, amount, abilityId)
                end
            ");
        }
    }
}
