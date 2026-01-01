using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 音效 API 桥接层
    /// 提供 Dota2 Arcade 音效 API 的 Unity 实现
    /// </summary>
    public static class AudioBridge
    {
        /// <summary>
        /// 注册所有音效相关的 Lua API
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            // 确保 AudioService 存在
            var _ = AudioService.Instance;

            // 注册音效 API
            RegisterSoundApi(luaEnv);

            Debug.Log("[AudioBridge] 音效 API 桥接已注册");
        }

        /// <summary>
        /// 注册音效 API
        /// </summary>
        private static void RegisterSoundApi(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- EmitSoundOn(soundName, entity) - 在实体上播放音效
                function EmitSoundOn(soundName, entity)
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
                    return CS.CritFramework.AudioService.Instance:PlaySound(soundName, entityId)
                end

                -- EmitSoundOnClient(soundName, entity) - 客户端播放音效（单机等同于 EmitSoundOn）
                function EmitSoundOnClient(soundName, entity)
                    return EmitSoundOn(soundName, entity)
                end

                -- EmitSoundOnEntityForPlayer(soundName, entity, playerId) - 为玩家播放音效
                function EmitSoundOnEntityForPlayer(soundName, entity, playerId)
                    -- 单机版忽略 playerId
                    return EmitSoundOn(soundName, entity)
                end

                -- EmitSoundOnLocationWithCaster(position, soundName, caster) - 在位置播放音效
                function EmitSoundOnLocationWithCaster(position, soundName, caster)
                    local pos = CS.UnityEngine.Vector3(position.x, position.y, position.z)
                    return CS.CritFramework.AudioService.Instance:PlaySoundAtPosition(soundName, pos, 0)
                end

                -- EmitSoundOnLocationForAllies(position, soundName, caster) - 在位置为友方播放音效
                function EmitSoundOnLocationForAllies(position, soundName, caster)
                    return EmitSoundOnLocationWithCaster(position, soundName, caster)
                end

                -- StopSoundOn(soundName, entity) - 停止音效
                function StopSoundOn(soundName, entity)
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
                    CS.CritFramework.AudioService.Instance:StopSound(soundName, entityId)
                end

                -- StartSoundEvent(soundName, entity) - 开始音效事件
                function StartSoundEvent(soundName, entity)
                    return EmitSoundOn(soundName, entity)
                end

                -- StartSoundEventFromPosition(soundName, position) - 从位置开始音效
                function StartSoundEventFromPosition(soundName, position)
                    local pos = CS.UnityEngine.Vector3(position.x, position.y, position.z)
                    return CS.CritFramework.AudioService.Instance:PlaySoundAtPosition(soundName, pos, 0)
                end

                -- StopSoundEvent(soundName, entity) - 停止音效事件
                function StopSoundEvent(soundName, entity)
                    StopSoundOn(soundName, entity)
                end

                -- EmitGlobalSound(soundName) - 播放全局音效
                function EmitGlobalSound(soundName)
                    local pos = CS.UnityEngine.Vector3.zero
                    return CS.CritFramework.AudioService.Instance:PlaySoundAtPosition(soundName, pos, 0)
                end

                -- PreloadSound(soundName) - 预加载音效
                function PreloadSound(soundName)
                    CS.CritFramework.AudioService.Instance:PreloadSound(soundName)
                end
            ");
        }
    }
}
