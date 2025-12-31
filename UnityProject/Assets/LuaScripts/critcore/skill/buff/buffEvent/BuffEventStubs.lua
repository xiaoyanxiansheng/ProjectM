--[[critcore/skill/buff/buffEvent/BuffEventStubs.lua]]
-- BuffEvent 占位实现 - Phase 4

require("critcore.skill.buff.buffEvent.BuffEvent")

-- 创建占位 BuffEvent 的辅助函数
local function CreateStubBuffEvent(name, eventId)
    local cls = Classnew(name, NewBuffEvent)
    function cls:ctor()
        NewBuffEvent.ctor(self, eventId)
    end
    _G[name] = cls
    return cls
end

-- 基础状态类事件（返回布尔状态）
BuffEventCantMagic = CreateStubBuffEvent("BuffEventCantMagic", BuffEvent.CantMagic)
BuffEventCantCantMagic = CreateStubBuffEvent("BuffEventCantCantMagic", BuffEvent.CantCantMagic)
BuffEventCantNormalAttack = CreateStubBuffEvent("BuffEventCantNormalAttack", BuffEvent.CantNormalAttack)
BuffEventCantCantNormalAttack = CreateStubBuffEvent("BuffEventCantCantNormalAttack", BuffEvent.CantCantNormalAttack)
BuffEventCantDisplacement = CreateStubBuffEvent("BuffEventCantDisplacement", BuffEvent.CantDisplacement)
BuffEventCantCantDisplacement = CreateStubBuffEvent("BuffEventCantCantDisplacement", BuffEvent.CantCantDisplacement)
BuffEventCantSelect = CreateStubBuffEvent("BuffEventCantSelect", BuffEvent.CantSelect)
BuffEventCantDamage = CreateStubBuffEvent("BuffEventCantDamage", BuffEvent.CantDamage)
BuffEventDisplacement = CreateStubBuffEvent("BuffEventDisplacement", BuffEvent.Displacement)
BuffEventFear = CreateStubBuffEvent("BuffEventFear", BuffEvent.Fear)
BuffEventHealthLock = CreateStubBuffEvent("BuffEventHealthLock", BuffEvent.HealthLock)
BuffEventRevive = CreateStubBuffEvent("BuffEventRevive", BuffEvent.Revive)
BuffEventNoDraw = CreateStubBuffEvent("BuffEventNoDraw", BuffEvent.NoDraw)
BuffEventIgnore = CreateStubBuffEvent("BuffEventIgnore", BuffEvent.Ignore)
BuffEventCantRecover = CreateStubBuffEvent("BuffEventCantRecover", BuffEvent.CantRecover)
BuffEventCantSlowSpeed = CreateStubBuffEvent("BuffEventCantSlowSpeed", BuffEvent.CantSlowSpeed)
BuffEventCantSlowAttackSpeed = CreateStubBuffEvent("BuffEventCantSlowAttackSpeed", BuffEvent.CantSlowAttackSpeed)
BuffEventDamageRebound = CreateStubBuffEvent("BuffEventDamageRebound", BuffEvent.DamageRebound)
BuffEventSkillDamageRebound = CreateStubBuffEvent("BuffEventSkillDamageRebound", BuffEvent.SkillDamageRebound)

-- 数值类事件
BuffEventAttr = CreateStubBuffEvent("BuffEventAttr", BuffEvent.Attr)
BuffEventSlowSpeed = CreateStubBuffEvent("BuffEventSlowSpeed", BuffEvent.SlowSpeed)
BuffEventSlowAttckSpeed = CreateStubBuffEvent("BuffEventSlowAttckSpeed", BuffEvent.SlowAttckSpeed)
BuffEventShield = CreateStubBuffEvent("BuffEventShield", BuffEvent.Shield)
BuffEventHpAdd = CreateStubBuffEvent("BuffEventHpAdd", BuffEvent.HpAdd)
BuffEventDamage = CreateStubBuffEvent("BuffEventDamage", BuffEvent.Damage)
BuffEventHealthDamage = CreateStubBuffEvent("BuffEventHealthDamage", BuffEvent.HealthDamage)
BuffEventDoSkill = CreateStubBuffEvent("BuffEventDoSkill", BuffEvent.DoSkill)
BuffEventBreakSkill = CreateStubBuffEvent("BuffEventBreakSkill", BuffEvent.BreakSkill)
BuffEventState = CreateStubBuffEvent("BuffEventState", BuffEvent.State)
BuffEventContinueSkill = CreateStubBuffEvent("BuffEventContinueSkill", BuffEvent.ContinueSkill)
BuffEventHitCountDamange = CreateStubBuffEvent("BuffEventHitCountDamange", BuffEvent.HitCountDamange)
BuffEventDeBuffCountDamage = CreateStubBuffEvent("BuffEventDeBuffCountDamage", BuffEvent.DeBuffCountDamage)
BuffEventInRange = CreateStubBuffEvent("BuffEventInRange", BuffEvent.InRange)
BuffEventNearEntity = CreateStubBuffEvent("BuffEventNearEntity", BuffEvent.NearEntity)
BuffEventReduceSkillCD = CreateStubBuffEvent("BuffEventReduceSkillCD", BuffEvent.ReduceSkillCD)
BuffEventDamageHPMP = CreateStubBuffEvent("BuffEventDamageHPMP", BuffEvent.DamageHPMP)
BuffEventMsgTranslateBuff = CreateStubBuffEvent("BuffEventMsgTranslateBuff", BuffEvent.MsgTranslateBuff)
BuffEventEffectShare = CreateStubBuffEvent("BuffEventEffectShare", BuffEvent.EffectShare)
BuffEventAttackDamageTimes = CreateStubBuffEvent("BuffEventAttackDamageTimes", BuffEvent.AttackDamageTimes)

-- BuffEventAttr 特殊实现
function BuffEventAttr:GetAttr(entityId)
    local result = {value = 0, ratio = 0, convert = {}, set = nil}
    if not self._buffs[entityId] then return result end
    
    for buffId, buff in pairs(self._buffs[entityId]) do
        local params = self:GetEffectParams(entityId, buffId)
        -- 简化的属性计算
        if params and params[1] then
            result.value = result.value + (tonumber(params[2]) or 0)
            result.ratio = result.ratio + (tonumber(params[3]) or 0)
        end
    end
    return result
end

-- BuffEventShield 护盾实现
BuffEventShield._shieldValues = {}

function BuffEventShield:OnAdd(buff)
    local entityId = buff:GetDoBuffData().EntityId
    local buffId = buff:GetDoBuffData().BuffId
    local params = self:GetEffectParams(entityId, buffId)
    local shieldValue = tonumber(params[1]) or 0
    
    if not self._shieldValues[entityId] then
        self._shieldValues[entityId] = {}
    end
    self._shieldValues[entityId][buffId] = shieldValue
end

function BuffEventShield:OnRemove(buff)
    local entityId = buff:GetDoBuffData().EntityId
    local buffId = buff:GetDoBuffData().BuffId
    if self._shieldValues[entityId] then
        self._shieldValues[entityId][buffId] = nil
    end
end

function BuffEventShield:GetTotalShield(entityId)
    local total = 0
    if self._shieldValues[entityId] then
        for _, value in pairs(self._shieldValues[entityId]) do
            total = total + (value or 0)
        end
    end
    return total
end

function BuffEventShield:AbsorbDamage(entityId, damage)
    if not self._shieldValues[entityId] then return damage end
    
    for buffId, value in pairs(self._shieldValues[entityId]) do
        if value > 0 then
            if damage <= value then
                self._shieldValues[entityId][buffId] = value - damage
                return 0
            else
                damage = damage - value
                self._shieldValues[entityId][buffId] = 0
            end
        end
    end
    return damage
end

-- BuffEventContinueSkill 连续技能实现
BuffEventContinueSkill._skillData = {}

function BuffEventContinueSkill:IsContinueSkill(entityId, skillId)
    if not self._buffs[entityId] then return false end
    return self._skillData[entityId] and self._skillData[entityId][skillId] or false
end

function BuffEventContinueSkill:GetContinueEffect(entityId, default)
    return default or 1
end

-- BuffEventHitCountDamange 命中次数伤害
function BuffEventHitCountDamange:GetHitCountDamageTimes(entityId, default)
    return default or 1
end

-- BuffEventDeBuffCountDamage debuff数量伤害
function BuffEventDeBuffCountDamage:GetDebuffCountDamageTimes(entityId)
    return 1
end

-- BuffEventAttackDamageTimes 攻击伤害倍率
function BuffEventAttackDamageTimes:GetAttackDamageTimes(entityId)
    return 1
end

-- BuffEventDamageHPMP 血魔转换
function BuffEventDamageHPMP:GetDamageHPMP(entityId)
    return 0
end

-- BuffEventCantRecover 禁止恢复
function BuffEventCantRecover:GetCantRecoverAttrList(entityId)
    return {}
end

-- BuffEventEffectShare 效果共享
function BuffEventEffectShare:GetEffectShareInsIds(entityId)
    return {}
end

print("[Phase 4] BuffEventStubs.lua 加载完成")
