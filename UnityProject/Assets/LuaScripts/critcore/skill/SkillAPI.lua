--[[critcore/skill/SkillAPI.lua]]
---@diagnostic disable: undefined-field, undefined-global, undefined-doc-class, undefined-doc-name
--[[ 
技能API模块 - Phase 4 移植版
提供技能系统的对外接口和数据结构定义
]]

---@class SkillAPI
SkillAPI = {}

---触发技能事件
---@param message_type MsgConst
---@param params any
function SkillAPI.DoEvent(message_type, params)
    local msg = BeginMessage(message_type)
    msg.params = params
    SendMessage(msg)
end

--------------------------------------- 技能数据结构 ----------------------------------------------
DoSkillDataPosition = Classnew("DoSkillDataPosition", nil)
---@class DoSkillDataPosition
---@field public CasterInsId integer 施法者
---@field public TargetInsId integer 被施法者
---@field public StartPosition Vector 施法位置
---@field public EndPosition Vector|nil 结束位置
function DoSkillDataPosition:ctor()
    self.CasterInsId = nil
    self.TargetInsId = nil
    self.StartPosition = nil
    self.EndPosition = nil
end

function DoSkillDataPosition:Init(casterInsId, targetInsId, startPosition, endPosition)
    self.CasterInsId = casterInsId
    self.TargetInsId = targetInsId
    self.StartPosition = startPosition
    self.EndPosition = endPosition
    if self.StartPosition == nil then
        self.StartPosition = GetEntityPosition(self.CasterInsId)
    end
    if self.EndPosition == nil then
        self.EndPosition = GetEntityPosition(self.TargetInsId)
    end
end

function DoSkillDataPosition:SetTargetInsId(targetInsId)
    self.TargetInsId = targetInsId
    self.EndPosition = GetEntityPosition(self.TargetInsId)
end

---@class DoSkillData : Classnew
---@field public CasterInsId integer
---@field public TargetInsId integer
---@field public SkillId integer
---@field public SkillLevel integer
---@field public Position Vector
---@field public StartPosition Vector
---@field public ParentSkill SkillLogic | nil
---@field public HitedEntityList table
DoSkillData = Classnew("DoSkillData", nil)
function DoSkillData:ctor()
    -- 外部使用
    self.CasterInsId = 0
    self.TargetInsId = 0
    self.SkillId = 1
    self.SkillLevel = 1
    self.Position = nil

    -- 内部使用
    self.ParentSkill = nil
    self.StartPosition = nil
    self.StartAgentId = nil
    self.AgentInsId = nil
    self.AgentInsSpeed = 0
    self.HitedEntityList = nil
    self.FinishLoopCount = -1
    self.NewFinishLoopCount = -1
    self.DefaultNewFinishLoopCount = -1
    self.EffectTimes = 1
    self.GP = nil
    self.IsOptimized = false

    self.PositionNew = DoSkillDataPosition.New()
    self.IsManual = false

    self.CasterCamp = 0
    self.TargetCamp = 0
end

function DoSkillData:Copy(doSkillData)
    self.CasterInsId = doSkillData.CasterInsId
    self.TargetInsId = doSkillData.TargetInsId
    self.SkillId = doSkillData.SkillId
    self.SkillLevel = doSkillData.SkillLevel
    self.Position = doSkillData.Position
    self.ParentSkill = doSkillData.ParentSkill
    self.StartPosition = doSkillData.StartPosition
    self.StartAgentId = doSkillData.StartAgentId
    self.AgentInsId = doSkillData.AgentInsId
    self.AgentInsSpeed = doSkillData.AgentInsSpeed
    self.HitedEntityList = doSkillData.HitedEntityList
    self.FinishLoopCount = doSkillData.FinishLoopCount
    self.NewFinishLoopCount = doSkillData.NewFinishLoopCount
    self.DefaultNewFinishLoopCount = doSkillData.DefaultNewFinishLoopCount
    self.EffectTimes = doSkillData.EffectTimes
    self.GP = doSkillData.GP
    self.PositionNew = DoSkillDataPosition.New()
    self.IsManual = doSkillData.IsManual or false
    self.CasterCamp = doSkillData.CasterCamp
    self.TargetCamp = doSkillData.TargetCamp
end

function DoSkillData:InitNewPosition()
    self.PositionNew:Init(self.CasterInsId, self.TargetInsId, self.StartPosition, self.Position)
end

function DoSkillData:GetSkillId()
    local skill = self
    while true do
        if skill.ParentSkill then
            skill = skill.ParentSkill:GetDoSkillData()
        else
            break
        end
    end
    return skill and skill.SkillId or -1
end

--------------------------------------- 技能 API ----------------------------------------------

-- 释放技能
---@param doSkillData DoSkillData
---@return SkillLogic|nil
function SkillAPI.DoSkill(doSkillData)
    doSkillData.IsManual = true
    DebugSKillLog_DoSkillData(DebugSKillLogLayer.All, "SkillAPI.DoSkill", doSkillData)
    if SkillManagerInstance then
        return SkillManagerInstance:DoSkill(doSkillData)
    end
    return nil
end

-- 打断技能
---@param insId integer
---@param forceBreak boolean | nil
function SkillAPI.BreakSkill(insId, forceBreak)
    if not SkillManagerInstance then return end
    if forceBreak then
        SkillManagerInstance:BreakSkill(insId)
    else
        SkillManagerInstance:CanBreakSkill(insId)
    end
end

-- 是否在释放技能阶段
---@param casterInsId integer
function SkillAPI.CheckEntityInSKill(casterInsId)
    if not SkillManagerInstance then return false end
    return SkillManagerInstance:InSkill(casterInsId)
end

-- 获取普通攻击的伤害提升倍数
---@return number
function SkillAPI.GetAttackContinueDamage(insId, targetInsId)
    if not BuffManagerInstance then return 1 end
    local continueSkillTimes = BuffManagerInstance:GetContinueSkillEffect(insId, 1)
    local hitCountDamageTimes = BuffManagerInstance:GetHitCountDamageTimes(insId, 1)
    local debuffCountDamageTimes = BuffManagerInstance:GetHitDebuffCountTimes(targetInsId)
    local attackDamageTimes = BuffManagerInstance:GetAttackDamageTimes(insId)
    return continueSkillTimes * hitCountDamageTimes * debuffCountDamageTimes * attackDamageTimes
end

--------------------------------------- 被动技能 API ----------------------------------------------

function SkillAPI.AddPassiveSkill(insId, passiveSkillId, passiveSkillLevel)
    if PassiveSkillManagerInstance then
        PassiveSkillManagerInstance:Add(insId, passiveSkillId, passiveSkillLevel)
    end
end

function SkillAPI.RemovePassiveSkill(insId, passiveSkillId)
    if PassiveSkillManagerInstance then
        PassiveSkillManagerInstance:Remove(insId, passiveSkillId)
    end
end

function SkillAPI.RemovePassiveSkillAll(insId)
    if PassiveSkillManagerInstance then
        PassiveSkillManagerInstance:RemoveAll(insId)
    end
end

function SkillAPI.IsLearnedPassiveSkill(insId, passiveSkillId)
    if not PassiveSkillManagerInstance then return false end
    return PassiveSkillManagerInstance:IsLearnedPassiveSkill(insId, passiveSkillId)
end

function SkillAPI.GetLearnedPassiveSkillIds(insId)
    if not PassiveSkillManagerInstance then return {} end
    return PassiveSkillManagerInstance:GetLearnedPassiveSkillIds(insId)
end

function SkillAPI.GetDoSkillData(insId, skillId)
    if not SkillManagerInstance then return nil end
    return SkillManagerInstance:GetDoSkillData(insId, skillId)
end

--------------------------------------- Buff API ----------------------------------------------

---@param insId integer
---@param buffId integer
---@param buffLevel integer
---@param initStackCount integer|nil
---@param modifyBuffCall function|nil
function SkillAPI.AddEntityBuff(insId, buffId, buffLevel, initStackCount, modifyBuffCall)
    if not BuffManagerInstance then return end
    local doBuffData = DoBuffData.New()
    doBuffData.EntityId = insId
    doBuffData.BuffId = buffId
    doBuffData.BuffLevel = buffLevel
    doBuffData.InitStackCount = initStackCount or 1
    BuffManagerInstance:AddBuff(doBuffData, modifyBuffCall)
end

---@param insId integer
---@param buffId integer
function SkillAPI.RemoveEntityBuff(insId, buffId)
    if BuffManagerInstance then
        BuffManagerInstance:RemoveBuff(insId, buffId)
    end
end

function SkillAPI.GetEntityBuffs(insId, gainorde)
    local buffs = {}
    if not BuffManagerInstance then return buffs end
    local buffClasss = BuffManagerInstance:GetEntityBuffs(insId)
    if buffClasss then
        for _, buffClass in pairs(buffClasss) do
            if buffClass then
                local buffId = buffClass:GetDoBuffData().BuffId
                local config = GetBuffLine(buffId)
                if config and (gainorde == 0 or gainorde == config.GainOrDeBuff) then
                    local buffLevel = buffClass:GetDoBuffData().BuffLevel
                    local stack = buffClass:GetStackCount()
                    table.insert(buffs, {insid=insId, buffid=buffId, bufflevel=buffLevel, stack=stack})
                end
            end
        end
    end
    return buffs
end

function SkillAPI.GetEntityBuff(insId, buffId)
    if not BuffManagerInstance then return nil end
    return BuffManagerInstance:GetEntityBuff(insId, buffId)
end

function SkillAPI.CheckEntityMove(insId)
    if not BuffManagerInstance then return true end
    local displacement = BuffManagerInstance:InEventState(insId, BuffEvent.Displacement)
    local cantDisplacement = BuffManagerInstance:InEventState(insId, BuffEvent.CantDisplacement)
    local cantCantDisplacement = BuffManagerInstance:InEventState(insId, BuffEvent.CantCantDisplacement)
    local fear = BuffManagerInstance:InEventState(insId, BuffEvent.Fear)
    return (not fear) and (not displacement) and ((not cantDisplacement) or (cantDisplacement and cantCantDisplacement))
end

function SkillAPI.CheckEntityDoSKill(casterInsId, skillId)
    if not BuffManagerInstance then return true end
    if skillId and skillId ~= 0 then
        local skillTable = GetSkillLine(skillId)
        if skillTable and skillTable.DoIgnoreBuffs and skillTable.DoIgnoreBuffs == 1 then
            return true
        end
    end
    local cantMagic = BuffManagerInstance:InEventState(casterInsId, BuffEvent.CantMagic)
    local cantCantMagic = BuffManagerInstance:InEventState(casterInsId, BuffEvent.CantCantMagic)
    local fear = BuffManagerInstance:InEventState(casterInsId, BuffEvent.Fear)
    return ((not cantMagic) or (cantMagic and cantCantMagic)) and (not fear)
end

function SkillAPI.CheckEntityCantSelect(insId)
    if not BuffManagerInstance then return false end
    return BuffManagerInstance:InEventState(insId, BuffEvent.CantSelect)
end

function SkillAPI.CheckEntityCanNormalAttack(insId)
    if not BuffManagerInstance then return true end
    local cantNormalAttack = BuffManagerInstance:InEventState(insId, BuffEvent.CantNormalAttack)
    local cantCantNormalAttack = BuffManagerInstance:InEventState(insId, BuffEvent.CantCantNormalAttack)
    local fear = BuffManagerInstance:InEventState(insId, BuffEvent.Fear)
    return ((not cantNormalAttack) or (cantNormalAttack and cantCantNormalAttack)) and (not fear)
end

function SkillAPI.CheckEntityHealthLock(insId)
    if not BuffManagerInstance then return false end
    return BuffManagerInstance:InEventState(insId, BuffEvent.HealthLock)
end

function SkillAPI.GetEntityBuffAttr(insId, attrId)
    if not BuffManagerInstance then return nil end
    return BuffManagerInstance:GetAttr(insId, attrId)
end

function SkillAPI.GetTotalShieldValue(insId)
    if not BuffManagerInstance then return 0 end
    return BuffManagerInstance:GetTotalShieldValue(insId)
end

function SkillAPI.ClearEntityShield(insId)
    if BuffManagerInstance then
        BuffManagerInstance:ClearEntityShield(insId)
    end
end

function SkillAPI.GetEntityCustomBuffState(insId)
    if not BuffManagerInstance then return nil end
    return BuffManagerInstance:GetState(insId)
end

function SkillAPI.GetAttackDamageTimes(entityId)
    if not BuffManagerInstance then return 1 end
    return BuffManagerInstance:GetAttackDamageTimes(entityId)
end

function SkillAPI.Clear()
    SkillModule.Clear()
end

print("[Phase 4] SkillAPI.lua 加载完成")
