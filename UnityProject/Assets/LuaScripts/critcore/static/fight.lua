--[[critcore/static/fight.lua]]
--[=[
    战斗类 - Phase 3 精简版
    保留核心伤害/治疗计算，移除 Dota2 特有功能
]=]
---@class Fight
Fight = {
    -- Buff类型ID
    BuffTypeAttrId = {}
}


-- 生命上限ID
CONST_HP_MAX_ATTR_ID = 0
-- 移动速度ID
CONST_SPEED_ATTR_ID = 0
-- 攻击速度ID
CONST_ATTACK_TIME_ATTR_ID = 0
-- 攻击范围ID
CONST_ATTACK_RANGE_ATTR_ID = 0
-- 白天视野ID
CONST_DAY_VIEW_ATTR_ID = 0
-- 夜晚视野ID
CONST_NIGHT_VIEW_ATTR_ID = 0
-- 视野ID
CONST_VIEW_ATTR_ID = 0
-- 重生时长ID
CONST_RESPAWN_TIME_MINUS_ATTR_ID = 0
-- CD减少ID
CONST_SKILL_CD_TIME_MINUS_ATTR_ID = 0
-- 技能等级ID
CONST_SKILL_LEVEL_ADD_ATTR_ID = 0
-- 技能施法距离ID
CONST_SKILL_RANGE_ADD_ATTR_ID = 0


---@enum EnumAttrType 属性类型
EnumAttrType = {
    Normal = 1,             -- 常规属性
    DropOdds = 11,          -- 掉率
    DropOdds_ItemID = 12,   -- 道具ID掉率(道具ID)
    DropOdds_ItemType = 13, -- 道具类型掉率(道具类型)
    DropOdds_ItemTypeAdd = 14, -- 道具类型掉率(道具类型)
    DropOdds_ItemIdCountAdd = 18, -- 道具类型掉率(道具ID)
    DungeonGive = 19,       -- 开局直接给道具(道具ID)
    Buff_OddsAdd = 21,      -- Buff几率提高(Buff类型)
    Buff_OddsMinus = 22,    -- Buff几率降低(Buff类型)
    Buff_TimeAdd = 23,      -- Buff时长提高(Buff类型)
    Buff_TimeMinus = 24,    -- Buff时长降低(Buff类型)
    Tick_AddAttr = 31,      -- 每秒增加属性(属性ID)
    Tick_AddItem = 32,      -- 每秒增加道具(道具ID)
    KillAddAttr = 33,       -- 每击杀1只怪增加属性(属性ID)
    SummonsAddAttr = 34,    -- 召唤物增加属性(属性ID)
    Level_AddAttr = 35,     -- 每级增加属性(属性ID)
    Room_AddAttr = 36,      -- 每房间增加属性(属性ID)
    Respawn_AddAttr = 37,   -- 复活增加属性(属性ID)
}


---@enum EnumFightDamageParamsType 战斗伤害参数
EnumFightDamageParamsType = {
    AtkDef          = 1,    -- 按攻防公式计算伤害
    AttrTo          = 2,    -- 直接按某属性转化伤害
    MaxHpTo         = 3,    -- 根据敌人最高生命转化伤害
    ExtraDamage     = 11,   -- 额外百分比伤害
    FixedDamage     = 12,   -- 额外固定伤害
    AttrAdd         = 21,   -- 增加已方的某项属性
    AttrIgnore      = 22,   -- 忽略敌方的某项属性
    AttrConvert     = 23,   -- 属性相互转化
    IgnoreDodge     = 31,   -- 不可闪避
    MustCrit        = 32,   -- 必定暴击
    IgnoreShield    = 33,   -- 无视护盾
}


---@enum EnumFightDamageType 伤害类型
EnumFightDamageType = {
    --- 无敌
    Invulnerable = -2,
    --- 治疗
    Heal = -1,
    --- 闪避
    Dodge = 0,
    --- 正常
    Normal = 1,
    --- 暴击
    Critical = 2
}


---@enum EnumFightHealParamsType 治疗类型
EnumFightHealParamsType = {
    BaseHeal = 1,   -- 基础治疗量
    AttrHeal = 2,   -- 属性转化
    MaxHpHeal = 3,  -- 百分比血量转化
}


--[================[初始化]================]
function Fight:__Init()
    -- 属性ID枚举（从配置读取）
    local function getConfig(key)
        local success, result = pcall(function()
            return ConfData:GetGameConfig(key)
        end)
        return success and result or 0
    end
    
    CONST_HP_MAX_ATTR_ID = getConfig('AttrMaxHpId')
    CONST_SPEED_ATTR_ID = getConfig('AttrSpeedId')
    CONST_ATTACK_TIME_ATTR_ID = getConfig('AttrAttackTimeId')
    CONST_ATTACK_RANGE_ATTR_ID = getConfig('AttrAttackRangeId')
    CONST_DAY_VIEW_ATTR_ID = getConfig('AttrDayViewId')
    CONST_NIGHT_VIEW_ATTR_ID = getConfig('AttrNightViewId')
    CONST_VIEW_ATTR_ID = getConfig('AttrViewId')
    CONST_RESPAWN_TIME_MINUS_ATTR_ID = getConfig('AttrRespawnTimeId')
    CONST_SKILL_CD_TIME_MINUS_ATTR_ID = getConfig('AttrCDTimeId')
    CONST_SKILL_LEVEL_ADD_ATTR_ID = getConfig('AttrSkillLevelId')
    CONST_SKILL_RANGE_ADD_ATTR_ID = getConfig('AttrSkillRangeAddId')

    -- 属性ID转换
    local success, attrTable = pcall(function()
        return ConfData:GetTable("Attr")
    end)
    if success and attrTable then
        for id, msg in pairs(attrTable) do
            local to = msg.ToID or 'default'
            Fight.BuffTypeAttrId[msg.Type] = Fight.BuffTypeAttrId[msg.Type] or {
                source_to = {},
                to_source = {},
            }
            Fight.BuffTypeAttrId[msg.Type].source_to[id] = to
            Fight.BuffTypeAttrId[msg.Type].to_source[to] = id
        end
    end

    print("[Fight] 战斗系统初始化完成")
    print("  CONST_HP_MAX_ATTR_ID = " .. CONST_HP_MAX_ATTR_ID)
    print("  CONST_SPEED_ATTR_ID = " .. CONST_SPEED_ATTR_ID)
end


--[================[根据配置参数造成伤害 - 简化版]================]
---@param attacker CUnitBase 攻击者
---@param targeter CUnitBase 目标
---@param skill_id integer 技能，非技能传0
---@param skill_level integer|nil 技能等级，缺省为1
---@param times number|nil 伤害倍数，缺省为1
---@param params table|nil 技能伤害参数
---@param ignore table|nil 忽略列表
function Fight:ApplyDamage(attacker, targeter, skill_id, skill_level, times, params, ignore)
    -- 实体不存在
    if not (attacker and targeter) then
        return
    end

    -- 实体已失效
    if not (attacker:IsValid() and targeter:IsValid()) then
        return
    end

    -- 判断是不是无敌
    if targeter:IsInvulnerable() then
        print("[Fight] 目标无敌，伤害无效")
        return
    end

    -- 简化版：直接计算基础伤害
    local damage = 0
    skill_level = skill_level or 1
    
    if params then
        for _, param in pairs(params) do
            if param[1] == EnumFightDamageParamsType.AtkDef then
                -- 攻防对抗
                local ratio = self:__GetUnitSkillLevelValue(attacker, skill_id, skill_level, param, 3)
                local atk = attacker:GetAttr(1) or 10  -- 假设属性1是攻击
                damage = damage + atk * ratio
            elseif param[1] == EnumFightDamageParamsType.FixedDamage then
                -- 固定伤害
                damage = damage + self:__GetUnitSkillLevelValue(attacker, skill_id, skill_level, param, 3)
            elseif param[1] == EnumFightDamageParamsType.MaxHpTo then
                -- 百分比生命伤害
                local ratio = self:__GetUnitSkillLevelValue(attacker, skill_id, skill_level, param, 3)
                damage = damage + targeter:GetAttr_MaxHP() * ratio
            end
        end
    end

    damage = damage * (times or 1)
    
    -- 产生伤害
    self:ApplyDirectlyDamage(attacker, targeter, damage, skill_id, ignore)
end


--[================[产生直接伤害]================]
---@param attacker CUnitBase
---@param targeter CUnitBase
---@param damage number
---@param skill_id integer
---@param ignore table|nil 忽略列表
function Fight:ApplyDirectlyDamage(attacker, targeter, damage, skill_id, ignore)
    -- 实体不存在
    if not (attacker and targeter) then
        return
    end

    -- 实体已失效
    if not (attacker:IsValid() and targeter:IsValid()) then
        return
    end

    -- 判断是不是无敌
    if targeter:IsInvulnerable() then
        return
    end

    -- 确保伤害为正数
    damage = math.max(0, math.floor(damage))
    
    -- 扣血
    targeter:Damage(damage, 0, attacker, skill_id)
    
    print(string.format("[Fight] %d 对 %d 造成 %d 伤害", 
        attacker:GetInsid(), targeter:GetInsid(), damage))
end


--[================[治疗 - 简化版]================]
---@param attacker CUnitBase 攻击者
---@param targeter CUnitBase 目标
---@param skill_id integer 技能，非技能传0
---@param skill_level integer|nil 技能等级，缺省为1
---@param times number|nil 治疗倍数，缺省为1
---@param params table|nil 技能治疗参数
function Fight:ApplyHeal(attacker, targeter, skill_id, skill_level, times, params)
    -- 实体不存在
    if not (attacker and targeter) then
        return
    end

    -- 实体已失效
    if not (attacker:IsValid() and targeter:IsValid()) then
        return
    end

    local heal = 0
    skill_level = skill_level or 1
    
    if params then
        for _, param in pairs(params) do
            if param[1] == EnumFightHealParamsType.BaseHeal then
                heal = heal + self:__GetUnitSkillLevelValue(attacker, skill_id, skill_level, param, 3)
            elseif param[1] == EnumFightHealParamsType.MaxHpHeal then
                local ratio = self:__GetUnitSkillLevelValue(attacker, skill_id, skill_level, param, 3)
                heal = heal + targeter:GetAttr_MaxHP() * ratio
            end
        end
    end

    heal = heal * (times or 1)
    
    self:ApplyDirectlyHeal(attacker, targeter, skill_id, heal)
end


--[================[直接治疗]================]
---@param attacker CUnitBase 攻击者
---@param targeter CUnitBase 目标
---@param skill_id integer 技能，非技能传0
---@param heal integer 治疗量
function Fight:ApplyDirectlyHeal(attacker, targeter, skill_id, heal)
    -- 实体不存在
    if not (attacker and targeter) then
        return
    end

    -- 实体已失效
    if not (attacker:IsValid() and targeter:IsValid()) then
        return
    end

    heal = math.max(0, math.floor(heal))
    
    targeter:Heal(heal, attacker, skill_id)
    
    print(string.format("[Fight] %d 对 %d 治疗 %d", 
        attacker:GetInsid(), targeter:GetInsid(), heal))
end


--[================[返回单位技能等级的参数值]================]
---@param unit CUnitBase
---@param skill_id integer
---@param level integer
---@param params table
---@param first integer
---@return number
function Fight:__GetUnitSkillLevelValue(unit, skill_id, level, params, first)
    if not params[first] then
        return 0
    end
    local lv = level
    if params[2] and params[2] ~= 0 then
        lv = unit:GetSkillLevel(params[2])
        if lv == 0 then
            return 0
        end
    end
    local index = math.min(first + lv - 1, #params)
    return params[index] or 0
end


print("[Phase 3] fight.lua 加载完成")
