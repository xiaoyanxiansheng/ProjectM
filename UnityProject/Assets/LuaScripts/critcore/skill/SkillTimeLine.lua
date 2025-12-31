--[[critcore/skill/SkillTimeLine.lua]]
--- 技能时间线模块 - Phase 4 移植版
--- 管理技能释放过程中的时间线事件序列

require("critcore.skill.lineEvent.SkillLineEvent")
require("critcore.skill.lineEvent.LineEventStubs")

---@class SkillTimeLine : Classnew
SkillTimeLine = Classnew("SkillTimeLine", nil)

--- 事件类型到事件处理类的映射表
---@type table<integer, SkillLineEvent>
LineEventToScritp = {
    [ESkillEventType.PreWarning] = LineEventPreWarning,
    [ESkillEventType.Animation] = LineEventAnimation,
    [ESkillEventType.Buff] = LineEventBuff,
    [ESkillEventType.Bullet] = LineEventBullet,
    [ESkillEventType.SettlementObject] = LineEventSettlementObject,
    [ESkillEventType.Sound] = LineEventSound,
    [ESkillEventType.Particle] = LineEventParticle,
    [ESkillEventType.CameraShake] = LineEventCameraShake,
    [ESkillEventType.Displacement] = LineEventDisplacement,
    [ESkillEventType.EnterCD] = LineEventEnterCD,
    [ESkillEventType.TurnToTarget] = LineEventTurnToTarget,
    [ESkillEventType.State] = LineEventTimeLineState,
    [ESkillEventType.CanBreakSkill] = LineEventCanBreakSkill,
    [ESkillEventType.Summon] = LineEventSummon,
    [ESkillEventType.BulletRange] = LineEventBulletRange,
    [ESkillEventType.TargetSelect] = LineEventTargetSelect,
    [ESkillEventType.DoSkill] = LineEventDoSkill,
    [ESkillEventType.TransferDebuff] = LineEventTransferbuff,
    [ESkillEventType.BuffTogether] = LineEventBuffTogether,
    [ESkillEventType.Passive] = LineEventPassive,
    [ESkillEventType.PositionNew] = LineEventNewPosition,
    [ESkillEventType.SettlementObjectNew] = LineEventSettlementObjectNew,
    [ESkillEventType.TargetSelectNew] = LineEventTargetSelectNew,
    [ESkillEventType.DisplacementNew] = LineEventDisplacementNew,
    [ESkillEventType.ParticleNew] = LineEventParticleNew,
    [ESkillEventType.BulletNew] = LineEventBulletNew,
    [ESkillEventType.BulletRangeNew] = LineEventBulletRangeNew,
    [ESkillEventType.BuffNew] = LineEventBuffNew,
    [ESkillEventType.TurnToSkill] = LineEventTurnToSkill,
    [ESkillEventType.SummonNew] = LineEventSummonNew,
}

function SkillTimeLine:ctor()
    self._lineEvents = {}
    self._passTime = 0.0
    self._skill = nil
    
    -- 新位置系统相关
    self._newPosition = nil
    self._newTargetPosition = nil
    self._newStartPosition = nil
    self._newMoveSpeed = 0
    self._newForward = nil
    self._newRangeParams = nil
    self._newDuration = 0
    self._newTargetPositionType = nil
    
    -- 代理相关
    self._agentInsId = nil
    self._agentSpeed = 0
end

--- 初始化时间线
function SkillTimeLine:Init(skill, timeLine)
    self._skill = skill
    if not timeLine then
        return
    end
    
    local doSkillData = self._skill:GetDoSkillData()
    local skillLevel = doSkillData.SkillLevel
    
    for index, c in ipairs(timeLine) do
        -- 检查技能等级是否符合事件触发条件
        local isLevel = skillLevel >= c.Level[1] and skillLevel <= c.Level[2]
        if isLevel and c.Active == 1 then
            local config = {c.Time, c.Type}
            table.InsertRange(config, c.Params)
            local eventType = tonumber(config[2])
            
            if LineEventToScritp[eventType] then
                -- 特殊处理结算对象事件
                if eventType == ESkillEventType.SettlementObject or eventType == ESkillEventType.SettlementObjectNew then
                    local settementId = tonumber(config[3])
                    local settlementTableLine = nil
                    if GetSettlementLine then
                        settlementTableLine = clone(GetSettlementLine(settementId))
                    end
                    local event = LineEventToScritp[eventType].New(self, eventType, config, index, settlementTableLine)
                    self:AddLineEvent(event)
                else
                    local event = LineEventToScritp[eventType].New(self, eventType, config, index)
                    self:AddLineEvent(event)
                end
            end
        end
    end
    
    -- 添加默认音效
    local defaultSound = ConfData:GetGameConfig("SkillDefaultSound")
    if defaultSound then
        self:AddLineEvent(LineEventSound.New(self, ESkillEventType.Sound, {0, ESkillEventType.Sound, defaultSound}))
    end
end

function SkillTimeLine:AddLineEvent(event)
    table.insert(self._lineEvents, event)
end

function SkillTimeLine:LineEventReset(event)
    event:Reset()
end

function SkillTimeLine:Start()
    self._passTime = 0
    for _, event in pairs(self._lineEvents) do
        self:LineEventReset(event)
    end
end

function SkillTimeLine:SKillFinish()
    for _, event in pairs(self._lineEvents) do
        event:SKillFinish()
    end
    self._lineEvents = {}
end

function SkillTimeLine:Update(delta)
    self._passTime = self._passTime + delta
    for _, event in pairs(self._lineEvents) do
        event:Update(self._passTime, delta)
    end
end

function SkillTimeLine:SettlementHitTarget(targetId)
    for _, event in pairs(self._lineEvents) do
        event:SettlementHitTarget(targetId)
    end
end

function SkillTimeLine:OnSetTarget(targetInsId)
    for _, event in pairs(self._lineEvents) do
        event:OnSetTarget(targetInsId)
    end
end

function SkillTimeLine:GetSettlementTableLine(timeLineIndex)
    local settlementObject = self:GetSettlementObject(timeLineIndex)
    if settlementObject then
        return settlementObject:GetSettlementTableLine()
    end
    return nil
end

function SkillTimeLine:GetSettlementObject(timeLineIndex)
    for _, event in pairs(self._lineEvents) do
        if event:IsTimeLine(timeLineIndex) then
            return event
        end
    end
    return nil
end

function SkillTimeLine:CanBreakSkill()
    for i = #self._lineEvents, 1, -1 do
        local event = self._lineEvents[i]
        if event and event:IsEvent(ESkillEventType.CanBreakSkill) and event:IsInvoke() then
            if event.CanBreakSkill and event:CanBreakSkill() then
                return true
            end
        end
    end
    return false
end

function SkillTimeLine:SetAgent(agentInsId, speed)
    self._agentInsId = agentInsId
    self._agentSpeed = speed
    local doSkillData = self._skill:GetDoSkillData()
    doSkillData.AgentInsId = agentInsId
    doSkillData.AgentInsSpeed = speed
end

function SkillTimeLine:GetAgentSpeed()
    return self._agentSpeed
end

function SkillTimeLine:GetSkill()
    return self._skill
end

-- 新位置系统相关方法
function SkillTimeLine:SetNewPosition(position)
    self._newPosition = position
end

function SkillTimeLine:GetNewPosition()
    return self._newPosition
end

function SkillTimeLine:SetNewTargetPosition(position)
    self._newTargetPosition = position
end

function SkillTimeLine:GetNewTargetPosition()
    return self._newTargetPosition
end

function SkillTimeLine:SetNewStartPosition(position)
    self._newStartPosition = position
end

function SkillTimeLine:GetNewStartPosition()
    return self._newStartPosition
end

function SkillTimeLine:SetNewMoveSpeed(speed)
    self._newMoveSpeed = speed
end

function SkillTimeLine:GetNewMoveSpeed()
    return self._newMoveSpeed
end

function SkillTimeLine:SetNewForward(forward)
    self._newForward = forward
end

function SkillTimeLine:GetNewForward()
    return self._newForward
end

function SkillTimeLine:SetNewRangeParams(params)
    self._newRangeParams = params
end

function SkillTimeLine:GetNewRangeParams()
    return self._newRangeParams
end

function SkillTimeLine:SetNewDuration(duration)
    self._newDuration = duration
end

function SkillTimeLine:GetNewDuration()
    return self._newDuration
end

function SkillTimeLine:SetNewTargetPositionType(positionType)
    self._newTargetPositionType = positionType
end

function SkillTimeLine:GetNewTargetPositionType()
    return self._newTargetPositionType
end

-- 技能结算检查（简化版）
function SkillTimeLine:CheckSkillSettlement(settlement)
    -- Phase 5: 实现具体的结算逻辑
end

print("[Phase 4] SkillTimeLine.lua 加载完成")
