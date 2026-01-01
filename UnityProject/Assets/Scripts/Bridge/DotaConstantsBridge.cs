using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// Dota2 常量桥接层
    /// 定义 DOTA_*, MODIFIER_*, DAMAGE_TYPE_* 等常量
    /// </summary>
    public static class DotaConstantsBridge
    {
        /// <summary>
        /// 注册所有 Dota2 常量
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            // 队伍常量
            RegisterTeamConstants(luaEnv);

            // 单位目标类型
            RegisterUnitTargetConstants(luaEnv);

            // 查找顺序
            RegisterFindOrderConstants(luaEnv);

            // 伤害类型
            RegisterDamageTypeConstants(luaEnv);

            // 修改器属性
            RegisterModifierConstants(luaEnv);

            // 其他常量
            RegisterMiscConstants(luaEnv);

            Debug.Log("[DotaConstantsBridge] Dota2 常量已注册");
        }

        /// <summary>
        /// 队伍常量
        /// </summary>
        private static void RegisterTeamConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- 队伍常量
                DOTA_TEAM_NOTEAM = 0
                DOTA_TEAM_SPECTATOR = 1
                DOTA_TEAM_GOODGUYS = 2
                DOTA_TEAM_BADGUYS = 3
                DOTA_TEAM_NEUTRALS = 4
                DOTA_TEAM_CUSTOM_1 = 6
                DOTA_TEAM_CUSTOM_2 = 7
                DOTA_TEAM_CUSTOM_3 = 8
                DOTA_TEAM_CUSTOM_4 = 9
                DOTA_TEAM_CUSTOM_5 = 10
                DOTA_TEAM_CUSTOM_6 = 11
                DOTA_TEAM_CUSTOM_7 = 12
                DOTA_TEAM_CUSTOM_8 = 13
            ");
        }

        /// <summary>
        /// 单位目标类型常量
        /// </summary>
        private static void RegisterUnitTargetConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- 目标队伍类型
                DOTA_UNIT_TARGET_TEAM_NONE = 0
                DOTA_UNIT_TARGET_TEAM_FRIENDLY = 1
                DOTA_UNIT_TARGET_TEAM_ENEMY = 2
                DOTA_UNIT_TARGET_TEAM_BOTH = 3
                DOTA_UNIT_TARGET_TEAM_CUSTOM = 4

                -- 目标单位类型
                DOTA_UNIT_TARGET_NONE = 0
                DOTA_UNIT_TARGET_HERO = 1
                DOTA_UNIT_TARGET_CREEP = 2
                DOTA_UNIT_TARGET_BUILDING = 4
                DOTA_UNIT_TARGET_COURIER = 16
                DOTA_UNIT_TARGET_OTHER = 32
                DOTA_UNIT_TARGET_TREE = 64
                DOTA_UNIT_TARGET_CUSTOM = 128
                DOTA_UNIT_TARGET_BASIC = 18  -- HERO + CREEP
                DOTA_UNIT_TARGET_ALL = 63

                -- 目标标志
                DOTA_UNIT_TARGET_FLAG_NONE = 0
                DOTA_UNIT_TARGET_FLAG_DEAD = 1
                DOTA_UNIT_TARGET_FLAG_MELEE_ONLY = 2
                DOTA_UNIT_TARGET_FLAG_RANGED_ONLY = 4
                DOTA_UNIT_TARGET_FLAG_MAGIC_IMMUNE_ENEMIES = 8
                DOTA_UNIT_TARGET_FLAG_NOT_MAGIC_IMMUNE_ALLIES = 16
                DOTA_UNIT_TARGET_FLAG_INVULNERABLE = 32
                DOTA_UNIT_TARGET_FLAG_NOT_ANCIENTS = 64
                DOTA_UNIT_TARGET_FLAG_PLAYER_CONTROLLED = 128
                DOTA_UNIT_TARGET_FLAG_NOT_DOMINATED = 256
                DOTA_UNIT_TARGET_FLAG_NOT_SUMMONED = 512
                DOTA_UNIT_TARGET_FLAG_NOT_ILLUSIONS = 1024
                DOTA_UNIT_TARGET_FLAG_NOT_NIGHTMARED = 2048
                DOTA_UNIT_TARGET_FLAG_CHECK_DISABLE_HELP = 4096
                DOTA_UNIT_TARGET_FLAG_NO_INVIS = 8192
                DOTA_UNIT_TARGET_FLAG_OUT_OF_WORLD = 16384
            ");
        }

        /// <summary>
        /// 查找顺序常量
        /// </summary>
        private static void RegisterFindOrderConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- 查找顺序
                FIND_ANY_ORDER = 0
                FIND_CLOSEST = 1
                FIND_FARTHEST = 2
                FIND_UNITS_EVERYWHERE = 3
            ");
        }

        /// <summary>
        /// 伤害类型常量
        /// </summary>
        private static void RegisterDamageTypeConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- 伤害类型
                DAMAGE_TYPE_NONE = 0
                DAMAGE_TYPE_PHYSICAL = 1
                DAMAGE_TYPE_MAGICAL = 2
                DAMAGE_TYPE_PURE = 4
                DAMAGE_TYPE_HP_REMOVAL = 8
                DAMAGE_TYPE_ALL = 7

                -- 伤害标志
                DOTA_DAMAGE_FLAG_NONE = 0
                DOTA_DAMAGE_FLAG_IGNORES_MAGIC_ARMOR = 1
                DOTA_DAMAGE_FLAG_IGNORES_PHYSICAL_ARMOR = 2
                DOTA_DAMAGE_FLAG_BYPASSES_INVULNERABILITY = 4
                DOTA_DAMAGE_FLAG_BYPASSES_BLOCK = 8
                DOTA_DAMAGE_FLAG_REFLECTION = 16
                DOTA_DAMAGE_FLAG_HPLOSS = 32
                DOTA_DAMAGE_FLAG_NO_DIRECTOR_EVENT = 64
                DOTA_DAMAGE_FLAG_NON_LETHAL = 128
                DOTA_DAMAGE_FLAG_NO_DAMAGE_MULTIPLIERS = 256
                DOTA_DAMAGE_FLAG_NO_SPELL_AMPLIFICATION = 512
                DOTA_DAMAGE_FLAG_NO_SPELL_LIFESTEAL = 1024
                DOTA_DAMAGE_FLAG_PROPERTY_FIRE = 2048
                DOTA_DAMAGE_FLAG_IGNORES_BASE_PHYSICAL_ARMOR = 4096
            ");
        }

        /// <summary>
        /// 修改器常量
        /// </summary>
        private static void RegisterModifierConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- 修改器属性
                MODIFIER_ATTRIBUTE_NONE = 0
                MODIFIER_ATTRIBUTE_PERMANENT = 1
                MODIFIER_ATTRIBUTE_MULTIPLE = 2
                MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE = 4
                MODIFIER_ATTRIBUTE_AURA_PRIORITY = 8

                -- 修改器状态
                MODIFIER_STATE_ROOTED = 'MODIFIER_STATE_ROOTED'
                MODIFIER_STATE_DISARMED = 'MODIFIER_STATE_DISARMED'
                MODIFIER_STATE_ATTACK_IMMUNE = 'MODIFIER_STATE_ATTACK_IMMUNE'
                MODIFIER_STATE_SILENCED = 'MODIFIER_STATE_SILENCED'
                MODIFIER_STATE_MUTED = 'MODIFIER_STATE_MUTED'
                MODIFIER_STATE_STUNNED = 'MODIFIER_STATE_STUNNED'
                MODIFIER_STATE_HEXED = 'MODIFIER_STATE_HEXED'
                MODIFIER_STATE_INVISIBLE = 'MODIFIER_STATE_INVISIBLE'
                MODIFIER_STATE_INVULNERABLE = 'MODIFIER_STATE_INVULNERABLE'
                MODIFIER_STATE_MAGIC_IMMUNE = 'MODIFIER_STATE_MAGIC_IMMUNE'
                MODIFIER_STATE_PROVIDES_VISION = 'MODIFIER_STATE_PROVIDES_VISION'
                MODIFIER_STATE_NIGHTMARED = 'MODIFIER_STATE_NIGHTMARED'
                MODIFIER_STATE_BLOCK_DISABLED = 'MODIFIER_STATE_BLOCK_DISABLED'
                MODIFIER_STATE_EVADE_DISABLED = 'MODIFIER_STATE_EVADE_DISABLED'
                MODIFIER_STATE_UNSELECTABLE = 'MODIFIER_STATE_UNSELECTABLE'
                MODIFIER_STATE_CANNOT_TARGET_ENEMIES = 'MODIFIER_STATE_CANNOT_TARGET_ENEMIES'
                MODIFIER_STATE_CANNOT_MISS = 'MODIFIER_STATE_CANNOT_MISS'
                MODIFIER_STATE_SPECIALLY_DENIABLE = 'MODIFIER_STATE_SPECIALLY_DENIABLE'
                MODIFIER_STATE_FROZEN = 'MODIFIER_STATE_FROZEN'
                MODIFIER_STATE_COMMAND_RESTRICTED = 'MODIFIER_STATE_COMMAND_RESTRICTED'
                MODIFIER_STATE_NOT_ON_MINIMAP = 'MODIFIER_STATE_NOT_ON_MINIMAP'
                MODIFIER_STATE_LOW_ATTACK_PRIORITY = 'MODIFIER_STATE_LOW_ATTACK_PRIORITY'
                MODIFIER_STATE_NO_HEALTH_BAR = 'MODIFIER_STATE_NO_HEALTH_BAR'
                MODIFIER_STATE_FLYING = 'MODIFIER_STATE_FLYING'
                MODIFIER_STATE_NO_UNIT_COLLISION = 'MODIFIER_STATE_NO_UNIT_COLLISION'
                MODIFIER_STATE_NO_TEAM_MOVE_TO = 'MODIFIER_STATE_NO_TEAM_MOVE_TO'
                MODIFIER_STATE_NO_TEAM_SELECT = 'MODIFIER_STATE_NO_TEAM_SELECT'
                MODIFIER_STATE_PASSIVES_DISABLED = 'MODIFIER_STATE_PASSIVES_DISABLED'
                MODIFIER_STATE_DOMINATED = 'MODIFIER_STATE_DOMINATED'
                MODIFIER_STATE_BLIND = 'MODIFIER_STATE_BLIND'
                MODIFIER_STATE_OUT_OF_GAME = 'MODIFIER_STATE_OUT_OF_GAME'
                MODIFIER_STATE_FAKE_ALLY = 'MODIFIER_STATE_FAKE_ALLY'
                MODIFIER_STATE_FLYING_FOR_PATHING_PURPOSES_ONLY = 'MODIFIER_STATE_FLYING_FOR_PATHING_PURPOSES_ONLY'
                MODIFIER_STATE_TRUESIGHT_IMMUNE = 'MODIFIER_STATE_TRUESIGHT_IMMUNE'
                MODIFIER_STATE_UNTARGETABLE = 'MODIFIER_STATE_UNTARGETABLE'
                MODIFIER_STATE_IGNORING_MOVE_AND_ATTACK_ORDERS = 'MODIFIER_STATE_IGNORING_MOVE_AND_ATTACK_ORDERS'
                MODIFIER_STATE_ALLOW_PATHING_THROUGH_TREES = 'MODIFIER_STATE_ALLOW_PATHING_THROUGH_TREES'
                MODIFIER_STATE_NOT_ON_MINIMAP_FOR_ENEMIES = 'MODIFIER_STATE_NOT_ON_MINIMAP_FOR_ENEMIES'
                MODIFIER_STATE_UNSLOWABLE = 'MODIFIER_STATE_UNSLOWABLE'
                MODIFIER_STATE_TETHERED = 'MODIFIER_STATE_TETHERED'
                MODIFIER_STATE_IGNORING_STOP_ORDERS = 'MODIFIER_STATE_IGNORING_STOP_ORDERS'
                MODIFIER_STATE_FEARED = 'MODIFIER_STATE_FEARED'
                MODIFIER_STATE_TAUNTED = 'MODIFIER_STATE_TAUNTED'
                MODIFIER_STATE_CANNOT_BE_MOTION_CONTROLLED = 'MODIFIER_STATE_CANNOT_BE_MOTION_CONTROLLED'

                -- 修改器事件
                MODIFIER_EVENT_ON_ATTACK_START = 'MODIFIER_EVENT_ON_ATTACK_START'
                MODIFIER_EVENT_ON_ATTACK = 'MODIFIER_EVENT_ON_ATTACK'
                MODIFIER_EVENT_ON_ATTACK_LANDED = 'MODIFIER_EVENT_ON_ATTACK_LANDED'
                MODIFIER_EVENT_ON_ATTACK_FAIL = 'MODIFIER_EVENT_ON_ATTACK_FAIL'
                MODIFIER_EVENT_ON_ATTACK_ALLIED = 'MODIFIER_EVENT_ON_ATTACK_ALLIED'
                MODIFIER_EVENT_ON_PROJECTILE_DODGE = 'MODIFIER_EVENT_ON_PROJECTILE_DODGE'
                MODIFIER_EVENT_ON_ORDER = 'MODIFIER_EVENT_ON_ORDER'
                MODIFIER_EVENT_ON_UNIT_MOVED = 'MODIFIER_EVENT_ON_UNIT_MOVED'
                MODIFIER_EVENT_ON_ABILITY_START = 'MODIFIER_EVENT_ON_ABILITY_START'
                MODIFIER_EVENT_ON_ABILITY_EXECUTED = 'MODIFIER_EVENT_ON_ABILITY_EXECUTED'
                MODIFIER_EVENT_ON_ABILITY_FULLY_CAST = 'MODIFIER_EVENT_ON_ABILITY_FULLY_CAST'
                MODIFIER_EVENT_ON_BREAK_INVISIBILITY = 'MODIFIER_EVENT_ON_BREAK_INVISIBILITY'
                MODIFIER_EVENT_ON_ABILITY_END_CHANNEL = 'MODIFIER_EVENT_ON_ABILITY_END_CHANNEL'
                MODIFIER_EVENT_ON_PROCESS_UPGRADE = 'MODIFIER_EVENT_ON_PROCESS_UPGRADE'
                MODIFIER_EVENT_ON_REFRESH = 'MODIFIER_EVENT_ON_REFRESH'
                MODIFIER_EVENT_ON_TAKEDAMAGE = 'MODIFIER_EVENT_ON_TAKEDAMAGE'
                MODIFIER_EVENT_ON_DEATH_COMPLETED = 'MODIFIER_EVENT_ON_DEATH_COMPLETED'
                MODIFIER_EVENT_ON_DEATH = 'MODIFIER_EVENT_ON_DEATH'
                MODIFIER_EVENT_ON_RESPAWN = 'MODIFIER_EVENT_ON_RESPAWN'
                MODIFIER_EVENT_ON_SPENT_MANA = 'MODIFIER_EVENT_ON_SPENT_MANA'
                MODIFIER_EVENT_ON_STATE_CHANGED = 'MODIFIER_EVENT_ON_STATE_CHANGED'
                MODIFIER_EVENT_ON_ORB_EFFECT = 'MODIFIER_EVENT_ON_ORB_EFFECT'
                MODIFIER_EVENT_ON_PROCESS_CLEAVE = 'MODIFIER_EVENT_ON_PROCESS_CLEAVE'
                MODIFIER_EVENT_ON_DAMAGE_CALCULATED = 'MODIFIER_EVENT_ON_DAMAGE_CALCULATED'
                MODIFIER_EVENT_ON_ATTACKED = 'MODIFIER_EVENT_ON_ATTACKED'
                MODIFIER_EVENT_ON_ATTACK_FINISHED = 'MODIFIER_EVENT_ON_ATTACK_FINISHED'
            ");
        }

        /// <summary>
        /// 其他常量
        /// </summary>
        private static void RegisterMiscConstants(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- 能力类型
                ABILITY_TYPE_BASIC = 0
                ABILITY_TYPE_ULTIMATE = 1
                ABILITY_TYPE_ATTRIBUTES = 2
                ABILITY_TYPE_HIDDEN = 3

                -- 能力行为
                DOTA_ABILITY_BEHAVIOR_NONE = 0
                DOTA_ABILITY_BEHAVIOR_HIDDEN = 1
                DOTA_ABILITY_BEHAVIOR_PASSIVE = 2
                DOTA_ABILITY_BEHAVIOR_NO_TARGET = 4
                DOTA_ABILITY_BEHAVIOR_UNIT_TARGET = 8
                DOTA_ABILITY_BEHAVIOR_POINT = 16
                DOTA_ABILITY_BEHAVIOR_AOE = 32
                DOTA_ABILITY_BEHAVIOR_NOT_LEARNABLE = 64
                DOTA_ABILITY_BEHAVIOR_CHANNELLED = 128
                DOTA_ABILITY_BEHAVIOR_ITEM = 256
                DOTA_ABILITY_BEHAVIOR_TOGGLE = 512
                DOTA_ABILITY_BEHAVIOR_DIRECTIONAL = 1024
                DOTA_ABILITY_BEHAVIOR_IMMEDIATE = 2048
                DOTA_ABILITY_BEHAVIOR_AUTOCAST = 4096
                DOTA_ABILITY_BEHAVIOR_OPTIONAL_UNIT_TARGET = 8192
                DOTA_ABILITY_BEHAVIOR_OPTIONAL_POINT = 16384
                DOTA_ABILITY_BEHAVIOR_OPTIONAL_NO_TARGET = 32768
                DOTA_ABILITY_BEHAVIOR_AURA = 65536
                DOTA_ABILITY_BEHAVIOR_ATTACK = 131072
                DOTA_ABILITY_BEHAVIOR_DONT_RESUME_MOVEMENT = 262144
                DOTA_ABILITY_BEHAVIOR_ROOT_DISABLES = 524288
                DOTA_ABILITY_BEHAVIOR_UNRESTRICTED = 1048576
                DOTA_ABILITY_BEHAVIOR_IGNORE_PSEUDO_QUEUE = 2097152
                DOTA_ABILITY_BEHAVIOR_IGNORE_CHANNEL = 4194304
                DOTA_ABILITY_BEHAVIOR_DONT_CANCEL_MOVEMENT = 8388608
                DOTA_ABILITY_BEHAVIOR_DONT_ALERT_TARGET = 16777216
                DOTA_ABILITY_BEHAVIOR_DONT_RESUME_ATTACK = 33554432
                DOTA_ABILITY_BEHAVIOR_NORMAL_WHEN_STOLEN = 67108864
                DOTA_ABILITY_BEHAVIOR_IGNORE_BACKSWING = 134217728
                DOTA_ABILITY_BEHAVIOR_RUNE_TARGET = 268435456
                DOTA_ABILITY_BEHAVIOR_DONT_CANCEL_CHANNEL = 536870912

                -- 寻路模式
                DOTA_MOTION_CONTROLLER_PRIORITY_LOWEST = 0
                DOTA_MOTION_CONTROLLER_PRIORITY_LOW = 1
                DOTA_MOTION_CONTROLLER_PRIORITY_MEDIUM = 2
                DOTA_MOTION_CONTROLLER_PRIORITY_HIGH = 3
                DOTA_MOTION_CONTROLLER_PRIORITY_HIGHEST = 4

                -- 游戏模式
                DOTA_GAMERULES_STATE_INIT = 0
                DOTA_GAMERULES_STATE_WAIT_FOR_PLAYERS_TO_LOAD = 1
                DOTA_GAMERULES_STATE_CUSTOM_GAME_SETUP = 2
                DOTA_GAMERULES_STATE_HERO_SELECTION = 3
                DOTA_GAMERULES_STATE_STRATEGY_TIME = 4
                DOTA_GAMERULES_STATE_PRE_GAME = 5
                DOTA_GAMERULES_STATE_GAME_IN_PROGRESS = 6
                DOTA_GAMERULES_STATE_POST_GAME = 7
                DOTA_GAMERULES_STATE_DISCONNECT = 8
            ");
        }
    }
}
