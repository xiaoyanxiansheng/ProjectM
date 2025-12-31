--[[critcore/skill/lineEvent/SkillLineEvent.lua]]
-- 技能时间线事件基类 - Phase 4 移植版

---@class SkillLineEvent : Classnew
SkillLineEvent = Classnew("SkillLineEvent", nil)

---@param skillTimeLine SkillTimeLine 技能时间线对象
---@param eventType integer 事件类型
---@param config table 事件配置参数
---@param timeLineIndex number 时间线索引
function SkillLineEvent:ctor(skillTimeLine, eventType, config, timeLineIndex)
    self._timeLineIndex = timeLineIndex
    self._skillTimeLine = skillTimeLine
    self._eventType = eventType
    self._config = config
    self._isInvoke = false
end

-- 重置事件状态
function SkillLineEvent:Reset()
    self._IsInvoke = false
    self._activeTime = tonumber(self._config[1])
    if self:IsValidEntity() then
        self:OnReset()
    end
end

-- 获取技能释放位置
function SkillLineEvent:GetStartPosition(flollowTypeP1)
    local position = Vector(0, 0, 0)
    local doSkillData = self:GetDoSkillData()
    local caster = GetEntityByInsId(doSkillData.CasterInsId)
    if caster then
        position = caster:GetPosition()
    end

    if doSkillData.StartAgentId then
        position = GetEntityPosition(doSkillData.StartAgentId)
    end

    if doSkillData.StartPosition then
        position = doSkillData.StartPosition
    end

    if flollowTypeP1 and flollowTypeP1 ~= 0 then
        local forward = self:GetForward(SettlementForwardType.CasterForward)
        position = position + forward * flollowTypeP1
    end

    return position
end

-- 获取技能朝向向量
function SkillLineEvent:GetForward(forward)
    local doSkillData = self:GetDoSkillData()
    local rForward = Vector(1, 0, 0)
    local caster = GetEntityByInsId(doSkillData.CasterInsId)
    if caster then
        rForward = caster:GetForwardVector()
        if forward == SettlementForwardType.StartTargetForward then
            local targetPosition = self:GetDoSkillData().Position
            local startPosition = caster:GetPosition()
            if targetPosition and startPosition then
                local diff = targetPosition - startPosition
                local len = math.sqrt(diff.x * diff.x + diff.y * diff.y + diff.z * diff.z)
                if len > 0.01 then
                    rForward = Vector(diff.x / len, diff.y / len, diff.z / len)
                end
            end
        end
    end
    return rForward
end

-- 获取技能目标位置
function SkillLineEvent:GetTargetPosition(flollowType, flollowTypeP1)
    local doSkillData = self._skillTimeLine:GetSkill():GetDoSkillData()
    local casterPosition = GetEntityPosition(doSkillData.CasterInsId)
    local vec = self:GetDoSkillData().Position or casterPosition

    flollowTypeP1 = flollowTypeP1 or 0

    if flollowType == SettlementFlollowType.Position then
        vec = self:GetDoSkillData().Position or vec
    elseif flollowType == SettlementFlollowType.Caster or flollowType == SettlementFlollowType.DynCaster then
        vec = casterPosition
    elseif flollowType == SettlementFlollowType.Target or flollowType == SettlementFlollowType.DynTarget then
        local target = GetEntityByInsId(doSkillData.TargetInsId)
        vec = target and target:GetPosition() or vec
    elseif flollowType == SettlementFlollowType.Agent or flollowType == SettlementFlollowType.DynAgent then
        local agent = GetEntityByInsId(doSkillData.AgentInsId)
        vec = agent and agent:GetPosition() or vec
    elseif flollowType == SettlementFlollowType.StartPosition then
        vec = self:GetDoSkillData().StartPosition or vec
    end

    return vec
end

function SkillLineEvent:GetTypePosition(positionType)
    local newPosition = self:GetDoSkillData().PositionNew
    local casterInsId = newPosition.CasterInsId
    local targetInsId = newPosition.TargetInsId
    local endPosition = newPosition.EndPosition
    local startPosition = newPosition.StartPosition
    local vec = endPosition or startPosition or Vector(0, 0, 0)

    if positionType == SettlementFlollowType.Position or positionType == SettlementFlollowType.DynPosition then
        vec = endPosition or vec
    elseif positionType == SettlementFlollowType.Caster or positionType == SettlementFlollowType.DynCaster then
        local caster = GetEntityByInsId(casterInsId)
        if caster then vec = caster:GetPosition() end
    elseif positionType == SettlementFlollowType.Target or positionType == SettlementFlollowType.DynTarget then
        local target = GetEntityByInsId(targetInsId)
        if target then vec = target:GetPosition() end
    elseif positionType == SettlementFlollowType.StartPosition then
        vec = startPosition or vec
    end

    return vec
end

function SkillLineEvent:GetTypePostitionOffset(position, forward, offsetForward, offsetRight)
    position = position + forward * offsetForward
    if offsetRight and offsetRight ~= 0 then
        local upVec = Vector(0, 0, 1)
        local right = Vector(-forward.y, forward.x, 0)  -- 简化的叉乘
        position = position + right * offsetRight
    end
    return position
end

function SkillLineEvent:GetNewPosition()
    return self._skillTimeLine:GetNewPosition()
end

function SkillLineEvent:GetNewTargetPosition()
    return self._skillTimeLine:GetNewTargetPosition()
end

function SkillLineEvent:GetNewStartPosition()
    return self._skillTimeLine:GetNewStartPosition()
end

function SkillLineEvent:GetNewMoveSpeed()
    return self._skillTimeLine:GetNewMoveSpeed()
end

function SkillLineEvent:GetNewForward()
    return self._skillTimeLine:GetNewForward()
end

function SkillLineEvent:GetNewRangeParams()
    return self._skillTimeLine:GetNewRangeParams()
end

function SkillLineEvent:GetNewDuration()
    return self._skillTimeLine:GetNewDuration()
end

function SkillLineEvent:MoveToTargetPositionCallBack()
end

function SkillLineEvent:CalForward(targetPosition, startPosition)
    local forward = targetPosition - startPosition
    local len = math.sqrt(forward.x * forward.x + forward.y * forward.y + forward.z * forward.z)
    if len < 0.01 then
        local caster = GetEntityByInsId(self:GetDoSkillData().CasterInsId)
        if caster then
            forward = caster:GetForwardVector()
        else
            forward = Vector(1, 0, 0)
        end
    else
        forward = Vector(forward.x / len, forward.y / len, forward.z / len)
    end
    return forward
end

-- 触发事件执行
function SkillLineEvent:Invoke()
    if not self:GetSkill():IsActive() then
        return
    end

    if self._IsInvoke then
        return
    end

    local doSkillData = self._skillTimeLine:GetSkill():GetDoSkillData()
    DebugSKillLog_DoSkillData(DebugSKillLogLayer.All, tostring(self) .. self.__cname .. ":Invoke", doSkillData)

    if self:IsValidEntity() then
        self:OnInvoke()
    end
end

-- 更新事件状态
function SkillLineEvent:Update(passTime, delta)
    if self._IsInvoke == false then
        if passTime >= self._activeTime then
            self:Invoke()
            self._IsInvoke = true
        end
    end

    if self._IsInvoke then
        if self:IsValidEntity() and self:GetSkill():IsActive() then
            self:OnUpdate(delta)
        end
    end
end

-- 技能结束时调用
function SkillLineEvent:SKillFinish()
    if self:IsValidEntity() then
        self:OnSkillFinish()
    end
    self:OnClear()
end

function SkillLineEvent:EventType()
    return self._eventType
end

-- 子类继承的虚函数
function SkillLineEvent:OnReset() end
function SkillLineEvent:OnInvoke() end
function SkillLineEvent:OnUpdate(delta) end
function SkillLineEvent:OnSkillFinish() end
function SkillLineEvent:OnClear() end

-- 检查实体是否有效
function SkillLineEvent:IsValidEntity()
    local caster = GetEntityByInsId(self:GetDoSkillData().CasterInsId)
    if not caster then return false end
    if not caster:IsAlive() then return false end
    return true
end

function SkillLineEvent:IsEvent(eventType)
    return self._eventType == eventType
end

function SkillLineEvent:SettlementHitTarget(targetId) end

function SkillLineEvent:SetAgent(agentInsId, speed)
    self:GetSkill():SetAgent(agentInsId, speed)
end

function SkillLineEvent:SetTarget(targetInsId)
    self:GetSkill():SetTarget(targetInsId)
end

function SkillLineEvent:OnSetTarget(targetInsId) end

function SkillLineEvent:GetSkill()
    return self._skillTimeLine:GetSkill()
end

function SkillLineEvent:GetDoSkillData()
    return self:GetSkill():GetDoSkillData()
end

function SkillLineEvent:GetSkillTableLine()
    return self:GetSkill():GetSkillTableLine()
end

function SkillLineEvent:GetSkillTimeLine()
    return self._skillTimeLine
end

function SkillLineEvent:IsTimeLine(index)
    return self._timeLineIndex == index
end

function SkillLineEvent:GetTimeLineIndex()
    return self._timeLineIndex
end

function SkillLineEvent:gettimelineindex()
    return self._timeLineIndex
end

function SkillLineEvent:IsInvoke()
    return self._IsInvoke
end

print("[Phase 4] SkillLineEvent.lua 加载完成")
