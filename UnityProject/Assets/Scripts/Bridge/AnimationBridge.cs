using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 动画 API 桥接层
    /// 提供 Dota2 Arcade 动画 API 的 Unity 实现
    /// </summary>
    public static class AnimationBridge
    {
        /// <summary>
        /// 注册所有动画相关的 Lua API
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            // 确保 AnimatorService 存在
            var _ = AnimatorService.Instance;

            // 注册动画 API
            RegisterAnimationApi(luaEnv);

            // 注册 Activity 常量
            RegisterActivityConstants(luaEnv);

            Debug.Log("[AnimationBridge] 动画 API 桥接已注册");
        }

        /// <summary>
        /// 注册动画 API
        /// </summary>
        private static void RegisterAnimationApi(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- PlayAnimation(entity, animName, rate) - 播放动画
                function PlayAnimation(entity, animName, rate)
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
                    CS.CritFramework.AnimatorService.Instance:PlayAnimation(entityId, animName or 'Idle', rate or 1.0)
                end

                -- StopAnimation(entity, animName) - 停止动画
                function StopAnimation(entity, animName)
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
                    CS.CritFramework.AnimatorService.Instance:StopAnimation(entityId, animName or '')
                end

                -- SetAnimationSpeed(entity, speed) - 设置动画速度
                function SetAnimationSpeed(entity, speed)
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
                    CS.CritFramework.AnimatorService.Instance:SetAnimationSpeed(entityId, speed or 1.0)
                end

                -- StartGesture(entity, gestureName) - 播放手势动画
                function StartGesture(entity, gestureName)
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
                    CS.CritFramework.AnimatorService.Instance:PlayGesture(entityId, gestureName or 'Idle')
                end

                -- FadeGesture(entity, gestureName) - 淡出手势动画
                function FadeGesture(entity, gestureName)
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
                    CS.CritFramework.AnimatorService.Instance:FadeGesture(entityId, gestureName or '')
                end

                -- SetSequence(entity, sequence) - 设置序列（兼容性）
                function SetSequence(entity, sequence)
                    PlayAnimation(entity, sequence, 1.0)
                end

                -- IsPlayingAnimation(entity, animName) - 检查是否在播放动画
                function IsPlayingAnimation(entity, animName)
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
                    return CS.CritFramework.AnimatorService.Instance:IsPlayingAnimation(entityId, animName or '')
                end
            ");
        }

        /// <summary>
        /// 注册 Activity 常量（Dota2 动画 Activity）
        /// </summary>
        private static void RegisterActivityConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- Dota2 Activity 常量
                ACT_DOTA_IDLE = 'ACT_DOTA_IDLE'
                ACT_DOTA_RUN = 'ACT_DOTA_RUN'
                ACT_DOTA_ATTACK = 'ACT_DOTA_ATTACK'
                ACT_DOTA_ATTACK2 = 'ACT_DOTA_ATTACK2'
                ACT_DOTA_CAST_ABILITY_1 = 'ACT_DOTA_CAST_ABILITY_1'
                ACT_DOTA_CAST_ABILITY_2 = 'ACT_DOTA_CAST_ABILITY_2'
                ACT_DOTA_CAST_ABILITY_3 = 'ACT_DOTA_CAST_ABILITY_3'
                ACT_DOTA_CAST_ABILITY_4 = 'ACT_DOTA_CAST_ABILITY_4'
                ACT_DOTA_CAST_ABILITY_5 = 'ACT_DOTA_CAST_ABILITY_5'
                ACT_DOTA_CAST_ABILITY_6 = 'ACT_DOTA_CAST_ABILITY_6'
                ACT_DOTA_DIE = 'ACT_DOTA_DIE'
                ACT_DOTA_DISABLED = 'ACT_DOTA_DISABLED'
                ACT_DOTA_FLAIL = 'ACT_DOTA_FLAIL'
                ACT_DOTA_SPAWN = 'ACT_DOTA_SPAWN'
                ACT_DOTA_VICTORY = 'ACT_DOTA_VICTORY'
                ACT_DOTA_CHANNEL_ABILITY_1 = 'ACT_DOTA_CHANNEL_ABILITY_1'
                ACT_DOTA_CHANNEL_ABILITY_2 = 'ACT_DOTA_CHANNEL_ABILITY_2'
                ACT_DOTA_CHANNEL_ABILITY_3 = 'ACT_DOTA_CHANNEL_ABILITY_3'
                ACT_DOTA_CHANNEL_ABILITY_4 = 'ACT_DOTA_CHANNEL_ABILITY_4'
                ACT_DOTA_CHANNEL_END_ABILITY_1 = 'ACT_DOTA_CHANNEL_END_ABILITY_1'
                ACT_DOTA_CHANNEL_END_ABILITY_2 = 'ACT_DOTA_CHANNEL_END_ABILITY_2'
                ACT_DOTA_CHANNEL_END_ABILITY_3 = 'ACT_DOTA_CHANNEL_END_ABILITY_3'
                ACT_DOTA_CHANNEL_END_ABILITY_4 = 'ACT_DOTA_CHANNEL_END_ABILITY_4'
                ACT_DOTA_TELEPORT = 'ACT_DOTA_TELEPORT'
                ACT_DOTA_TELEPORT_END = 'ACT_DOTA_TELEPORT_END'
            ");
        }
    }
}
