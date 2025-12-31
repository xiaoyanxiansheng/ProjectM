--[[critcore/skill/buff/buffEvent/BuffEvent.lua]]
-- Buff事件模块 - Phase 4 移植版

---@class NewBuffEvent : Classnew
NewBuffEvent = Classnew("NewBuffEvent", nil)

---@class NewBuffEventData : Classnew
NewBuffEventData = Classnew("NewBuffEventData", nil)
function NewBuffEventData:ctor()
    self.EntityId = 0
    self.BuffId = 0
    self.BuffLevel = 0
    self.Duration = 0
end

function NewBuffEvent:ctor(buffEventId)
    self._buffEventId = buffEventId
    self._buffs = {}  -- 实体ID -> {BuffID -> Buff实例}
end

function NewBuffEvent:Add(buff)
    local doBuffData = buff:GetDoBuffData()
    local entityId = doBuffData.EntityId
    local buffId = doBuffData.BuffId
    local buffLevel = doBuffData.BuffLevel

    if not self._buffs[entityId] then
        self._buffs[entityId] = {}
    end

    self._buffs[entityId][buffId] = buff

    if table.nillength(self._buffs[entityId]) == 1 then
        self:AddFirst(buff)
    end

    DebugSKillLog(DebugSKillLogLayer.All, self.__cname..":OnAdd", buffId)
    self:OnAdd(buff)
    
    local msg = BeginMessage(MsgConst.BUFF_EVENT_ADD)
    msg.params = {insid = entityId, event = self._buffEventId, buffid = buffId, bufflevel = buffLevel}
    SendMessage(msg)
end

function NewBuffEvent:Reset(buff)
    DebugSKillLog(DebugSKillLogLayer.All, self.__cname..":OnReset", buff:GetDoBuffData().BuffId)
    self:OnReset(buff)
end

function NewBuffEvent:Remove(buff)
    local doBuffData = buff:GetDoBuffData()
    local entityId = doBuffData.EntityId
    local buffId = doBuffData.BuffId

    if not self._buffs[entityId] then
        return
    end

    if self._buffs[entityId][buffId] and table.nillength(self._buffs[entityId]) == 1 then
        self:RemoveEnd(buff)
    end

    self:OnRemove(buff)
    self._buffs[entityId][buffId] = nil
    DebugSKillLog(DebugSKillLogLayer.All, self.__cname..":OnRemove", buffId)

    local msg = BeginMessage(MsgConst.BUFF_EVENT_REMOVE)
    msg.params = {insid = entityId, event = self._buffEventId}
    SendMessage(msg)
end

function NewBuffEvent:Update(delta)
    for _, buffs in pairs(self._buffs) do
        for _, buff in pairs(buffs) do
            self:OnUpdate(delta, buff)
        end
    end
end

function NewBuffEvent:AddFirst(buff)
    self:OnAddFirst(buff)
end

function NewBuffEvent:RemoveEnd(buff)
    self:OnRemoveEnd(buff)
end

function NewBuffEvent:GetEffectParams(entityId, buffId)
    local buff = self._buffs[entityId] and self._buffs[entityId][buffId]
    if not buff then return {} end
    local tableLine = buff:GetBuffTableLine()
    if not tableLine or not tableLine.Effect or not tableLine.Effect[self._buffEventId] then
        return {}
    end
    return tableLine.Effect[self._buffEventId].Params or {}
end

-- 虚函数
function NewBuffEvent:OnUpdate(delta, buff) end
function NewBuffEvent:OnAdd(buff) end
function NewBuffEvent:OnReset(buff) end
function NewBuffEvent:OnRemove(buff) end
function NewBuffEvent:OnAddFirst(buff) end
function NewBuffEvent:OnRemoveEnd(buff) end

function NewBuffEvent:InEventState(entityId)
    return self._buffs[entityId] and table.nillength(self._buffs[entityId]) > 0 or false
end

function NewBuffEvent:CheckEventStateOne(entityId, buffId, eventId)
    if eventId == self._buffEventId then
        return false
    end
    return self._buffs[entityId] 
        and self._buffs[entityId][buffId] 
        and table.nillength(self._buffs[entityId]) == 1
end

function NewBuffEvent:GetBuffIds(entityId)
    local buffIds = {}
    if self._buffs[entityId] then
        for buffId, _ in pairs(self._buffs[entityId]) do
            table.insert(buffIds, buffId)
        end
    end
    return buffIds
end

function NewBuffEvent:CheckAndGetPosition(entityId, position)
    return position, false
end

print("[Phase 4] BuffEvent.lua 加载完成")
