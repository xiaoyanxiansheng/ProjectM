--[[critcore/skill/buff/BuffManager.lua]]
-- Buff管理器模块 - Phase 4 移植版

require("critcore.skill.buff.Buff")
require("critcore.skill.buff.buffEvent.BuffEvent")
require("critcore.skill.buff.buffEvent.BuffEventStubs")

BuffDesignType = {
    None = 0,
    Control = 1
}

---@class BuffManager : Classnew
BuffManager = Classnew("BuffManager", nil)

function BuffManager:ctor()
    self._entitieBuffs = {}
    self._buffSourceInfo = {}
    self._delayedBuffList = {}
    self._delayedResetBuffList = {}
    self._attrData = {}
    self._attrCacheList = {}

    -- Buff事件处理器
    self._buffEventToScript = {
        [BuffEvent.State] = BuffEventState.New(),
        [BuffEvent.CantMagic] = BuffEventCantMagic.New(),
        [BuffEvent.Displacement] = BuffEventDisplacement.New(),
        [BuffEvent.CantDisplacement] = BuffEventCantDisplacement.New(),
        [BuffEvent.ContinueSkill] = BuffEventContinueSkill.New(),
        [BuffEvent.CantDamage] = BuffEventCantDamage.New(),
        [BuffEvent.CantSelect] = BuffEventCantSelect.New(),
        [BuffEvent.Attr] = BuffEventAttr.New(),
        [BuffEvent.CantNormalAttack] = BuffEventCantNormalAttack.New(),
        [BuffEvent.HealthDamage] = BuffEventHealthDamage.New(),
        [BuffEvent.DoSkill] = BuffEventDoSkill.New(),
        [BuffEvent.ReduceSkillCD] = BuffEventReduceSkillCD.New(),
        [BuffEvent.HitCountDamange] = BuffEventHitCountDamange.New(),
        [BuffEvent.BreakSkill] = BuffEventBreakSkill.New(),
        [BuffEvent.DeBuffCountDamage] = BuffEventDeBuffCountDamage.New(),
        [BuffEvent.Fear] = BuffEventFear.New(),
        [BuffEvent.EffectShare] = BuffEventEffectShare.New(),
        [BuffEvent.HealthLock] = BuffEventHealthLock.New(),
        [BuffEvent.NoDraw] = BuffEventNoDraw.New(),
        [BuffEvent.MsgTranslateBuff] = BuffEventMsgTranslateBuff.New(),
        [BuffEvent.CantCantMagic] = BuffEventCantCantMagic.New(),
        [BuffEvent.CantCantNormalAttack] = BuffEventCantCantNormalAttack.New(),
        [BuffEvent.CantCantDisplacement] = BuffEventCantCantDisplacement.New(),
        [BuffEvent.Shield] = BuffEventShield.New(),
        [BuffEvent.NearEntity] = BuffEventNearEntity.New(),
        [BuffEvent.DamageHPMP] = BuffEventDamageHPMP.New(),
        [BuffEvent.Ignore] = BuffEventIgnore.New(),
        [BuffEvent.CantRecover] = BuffEventCantRecover.New(),
        [BuffEvent.Revive] = BuffEventRevive.New(),
        [BuffEvent.DamageRebound] = BuffEventDamageRebound.New(),
        [BuffEvent.SkillDamageRebound] = BuffEventSkillDamageRebound.New(),
        [BuffEvent.AttackDamageTimes] = BuffEventAttackDamageTimes.New(),
        [BuffEvent.InRange] = BuffEventInRange.New(),
    }

    RegisterMessage(MsgConst.ENTITY_PRIMEVALATTR_UPDATE, self.MSG_ENTITY_PRIMEVALATTR_UPDATE, self)
    RegisterMessage(MsgConst.ENTITY_DEATH_2, self.MSG_ENTITY_DEATH, self)
end

-- 添加Buff
function BuffManager:AddBuff(doBuffData, modifyBuffCall)
    if self:AddBuffOptimized(doBuffData, modifyBuffCall) then
        return
    end
    self:AddBuffCore(doBuffData, modifyBuffCall)
end

function BuffManager:AddBuffOptimized(doBuffData, modifyBuffCall)
    if doBuffData.IsOptimized then
        local delay = math.random(0, 100) / 500.0
        table.insert(self._delayedBuffList, {doBuffData, modifyBuffCall, delay})
        return true
    end
    return false
end

function BuffManager:AddBuffCore(doBuffData, modifyBuffCall)
    local buffId = doBuffData.BuffId
    if not buffId or buffId == 0 then return end

    local entityId = doBuffData.EntityId
    local entity = GetEntityByInsId(entityId)
    if not entity then return end

    local buffTableLine = clone(GetBuffLine(doBuffData.BuffId))
    if not buffTableLine then
        print("[BuffManager] Buff配置不存在, Id:", doBuffData.BuffId)
        return
    end

    if self:IsIgnoreBuff(entityId, buffId) then
        DebugSKillLog(DebugSKillLogLayer.All, "BuffManager:AddBuff Buff被忽略", buffId)
        return
    end

    if not self._entitieBuffs[entityId] then
        self._entitieBuffs[entityId] = {}
    end

    local buff = self._entitieBuffs[entityId][buffId]
    
    -- 处理叠加类型
    if buff and buffTableLine.OverlayType == BuffOverlayType.Ignore then
        buff:SetDoBuffData(doBuffData, buffTableLine)
        self:CheckPassiveSkill(buff)
        return
    end

    if buff and buffTableLine.OverlayType == BuffOverlayType.Stack then
        buff:SetDoBuffData(doBuffData, buffTableLine)
        self:CheckPassiveSkill(buff)
        buff:Reset(doBuffData.AddStackCount)
        return
    end

    -- 创建新Buff
    buff = NewBuff.New(self, self.OnBuffStart, self.OnBuffReset, self.OnBuffEnd, modifyBuffCall)
    buff:SetDoBuffData(doBuffData, buffTableLine)
    self:CheckPassiveSkill(buff)
    self._entitieBuffs[entityId][buffId] = buff
    buff:Apply()

    -- 发送消息
    local msg = BeginMessage(MsgConst.BUFF_ADD)
    msg.params = {insid = entityId, buffid = buffId, bufflevel = doBuffData.BuffLevel}
    SendMessage(msg)

    DebugSKillLog(DebugSKillLogLayer.All, "BuffManager:AddBuff", entityId, buffId)
end

function BuffManager:CheckPassiveSkill(buff)
    -- Phase 5: 实现被动技能检查
end

-- Buff开始回调
function BuffManager:OnBuffStart(buff)
    local doBuffData = buff:GetDoBuffData()
    local entityId = doBuffData.EntityId
    local buffId = doBuffData.BuffId

    -- 注册Buff事件
    for _, event in ipairs(buff.BuffEvent or {}) do
        local eventScript = self._buffEventToScript[event]
        if eventScript then
            eventScript:Add(buff)
        end
    end
end

-- Buff重置回调
function BuffManager:OnBuffReset(buff)
    for _, event in ipairs(buff.BuffEvent or {}) do
        local eventScript = self._buffEventToScript[event]
        if eventScript then
            eventScript:Reset(buff)
        end
    end

    -- 更新叠加层数消息
    local doBuffData = buff:GetDoBuffData()
    local msg = BeginMessage(MsgConst.BUFF_OVERLAY_UPDATE)
    msg.params = {
        insid = doBuffData.EntityId,
        buffid = doBuffData.BuffId,
        stack = buff:GetStackCount()
    }
    SendMessage(msg)
end

-- Buff结束回调
function BuffManager:OnBuffEnd(buff)
    local doBuffData = buff:GetDoBuffData()
    local entityId = doBuffData.EntityId
    local buffId = doBuffData.BuffId

    -- 移除Buff事件
    for _, event in ipairs(buff.BuffEvent or {}) do
        local eventScript = self._buffEventToScript[event]
        if eventScript then
            eventScript:Remove(buff)
        end
    end

    -- 从实体移除Buff
    if self._entitieBuffs[entityId] then
        self._entitieBuffs[entityId][buffId] = nil
    end

    -- 发送消息
    local msg = BeginMessage(MsgConst.BUFF_REMOVE)
    msg.params = {insid = entityId, buffid = buffId}
    SendMessage(msg)
end

-- 移除Buff
function BuffManager:RemoveBuff(entityId, buffId)
    if not self._entitieBuffs[entityId] then return end
    local buff = self._entitieBuffs[entityId][buffId]
    if buff then
        buff:ForceEnd()
    end
end

-- 移除实体所有Buff
function BuffManager:RemoveAllBuff(entityId)
    if not self._entitieBuffs[entityId] then return end
    for buffId, buff in pairs(self._entitieBuffs[entityId]) do
        if buff then buff:ForceEnd() end
    end
    self._entitieBuffs[entityId] = {}
end

-- 更新
function BuffManager:Update(delta)
    -- 更新所有Buff
    for entityId, buffs in pairs(self._entitieBuffs) do
        for buffId, buff in pairs(buffs) do
            if buff and buff:IsActive() then
                buff:Update(delta)
            end
        end
    end

    -- 更新Buff事件
    for _, eventScript in pairs(self._buffEventToScript) do
        eventScript:Update(delta)
    end

    -- 处理延迟添加的Buff
    for i = #self._delayedBuffList, 1, -1 do
        local data = self._delayedBuffList[i]
        data[3] = data[3] - delta
        if data[3] <= 0 then
            self:AddBuffCore(data[1], data[2])
            table.remove(self._delayedBuffList, i)
        end
    end
end

-- 状态查询
function BuffManager:InEventState(entityId, event)
    local eventScript = self._buffEventToScript[event]
    if eventScript then
        return eventScript:InEventState(entityId)
    end
    return false
end

function BuffManager:GetEntityBuff(entityId, buffId)
    if not self._entitieBuffs[entityId] then return nil end
    return self._entitieBuffs[entityId][buffId]
end

function BuffManager:GetEntityBuffs(entityId)
    return self._entitieBuffs[entityId]
end

function BuffManager:IsIgnoreBuff(entityId, buffId)
    local ignoreScript = self._buffEventToScript[BuffEvent.Ignore]
    if ignoreScript and ignoreScript.InEventState then
        return ignoreScript:InEventState(entityId)
    end
    return false
end

-- 属性相关
function BuffManager:GetAttr(entityId, attrId)
    local attrScript = self._buffEventToScript[BuffEvent.Attr]
    if attrScript and attrScript.GetAttr then
        return attrScript:GetAttr(entityId)
    end
    return {value = 0, ratio = 0, convert = {}, set = nil}
end

-- 护盾相关
function BuffManager:GetTotalShieldValue(entityId)
    local shieldScript = self._buffEventToScript[BuffEvent.Shield]
    if shieldScript and shieldScript.GetTotalShield then
        return shieldScript:GetTotalShield(entityId)
    end
    return 0
end

function BuffManager:ClearEntityShield(entityId)
    -- Phase 5: 实现清除护盾
end

-- 连续技能相关
function BuffManager:IsContinueSkill(entityId, skillId)
    local script = self._buffEventToScript[BuffEvent.ContinueSkill]
    if script and script.IsContinueSkill then
        return script:IsContinueSkill(entityId, skillId)
    end
    return false
end

function BuffManager:GetContinueSkillEffect(entityId, default)
    local script = self._buffEventToScript[BuffEvent.ContinueSkill]
    if script and script.GetContinueEffect then
        return script:GetContinueEffect(entityId, default)
    end
    return default
end

function BuffManager:GetHitCountDamageTimes(entityId, default)
    local script = self._buffEventToScript[BuffEvent.HitCountDamange]
    if script and script.GetHitCountDamageTimes then
        return script:GetHitCountDamageTimes(entityId, default)
    end
    return default
end

function BuffManager:GetHitDebuffCountTimes(entityId)
    local script = self._buffEventToScript[BuffEvent.DeBuffCountDamage]
    if script and script.GetDebuffCountDamageTimes then
        return script:GetDebuffCountDamageTimes(entityId)
    end
    return 1
end

function BuffManager:GetAttackDamageTimes(entityId)
    local script = self._buffEventToScript[BuffEvent.AttackDamageTimes]
    if script and script.GetAttackDamageTimes then
        return script:GetAttackDamageTimes(entityId)
    end
    return 1
end

function BuffManager:GetDamageHPMP(entityId)
    local script = self._buffEventToScript[BuffEvent.DamageHPMP]
    if script and script.GetDamageHPMP then
        return script:GetDamageHPMP(entityId)
    end
    return 0
end

function BuffManager:GetCantRecoverAttrList(entityId)
    local script = self._buffEventToScript[BuffEvent.CantRecover]
    if script and script.GetCantRecoverAttrList then
        return script:GetCantRecoverAttrList(entityId)
    end
    return {}
end

function BuffManager:GetEffectShareInsIds(entityId)
    local script = self._buffEventToScript[BuffEvent.EffectShare]
    if script and script.GetEffectShareInsIds then
        return script:GetEffectShareInsIds(entityId)
    end
    return {}
end

function BuffManager:GetState(entityId)
    local script = self._buffEventToScript[BuffEvent.State]
    if script and script.GetState then
        return script:GetState(entityId)
    end
    return nil
end

-- 消息处理
function BuffManager:MSG_ENTITY_PRIMEVALATTR_UPDATE(msg)
    -- Phase 5: 处理属性更新
end

function BuffManager:MSG_ENTITY_DEATH(msg)
    local insId = msg.params and msg.params.insId
    if insId then
        self:RemoveAllBuff(insId)
    end
end

-- 清空
function BuffManager:Clear()
    for entityId, _ in pairs(self._entitieBuffs) do
        self:RemoveAllBuff(entityId)
    end
    self._entitieBuffs = {}
    self._delayedBuffList = {}
    self._attrData = {}
    self._attrCacheList = {}
end

print("[Phase 4] BuffManager.lua 加载完成")
