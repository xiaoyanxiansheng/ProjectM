--[[critcore/skill/buff/Buff.lua]]
-- Buff模块 - Phase 4 移植版
-- 负责管理单个Buff实例的生命周期和效果

---@class DoBuffData : Classnew
DoBuffData = Classnew("DoBuffData", nil)

function DoBuffData:ctor()
    self.EntityId = 0
    self.BuffId = 0
    self.BuffLevel = 1
    self.Skill = nil
    self.InitStackCount = 1
    self.AddStackCount = 1
    self.EffectTimes = 1.0
    self.EndPosition = nil
    self.InsIds = nil
    self.HealthDamageParams = nil
    self.MoveFinishBreakSkill = false
    self.AddTimes = 1.0
    self.IsOptimized = false
end

function DoBuffData:GetCasterInsId()
    return self.Skill and self.Skill:GetDoSkillData().CasterInsId or self.EntityId
end

function DoBuffData:GetTargetInsId()
    return self.Skill and self.Skill:GetDoSkillData().TargetInsId or self.EntityId
end

---@class NewBuff : Classnew
NewBuff = Classnew("NewBuff", nil)

function NewBuff:ctor(handle, onStartCall, onResetCall, onEndCall, modifyCall)
    self._handle = handle
    self._onStartCall = onStartCall
    self._onResetCall = onResetCall
    self._onEndCall = onEndCall
    self._modifyCall = modifyCall
    
    -- 粒子附着类型（简化版）
    self._attachments = {
        PATTACH_ABSORIGIN = 0,
        PATTACH_ABSORIGIN_FOLLOW = 1,
        PATTACH_POINT_FOLLOW = 2,
        PATTACH_OVERHEAD_FOLLOW = 3,
    }
    self.PATTACH_ATTACHMENT_FOLLOW = 100

    self._initStackCount = 0
    self._stackCount = 0
    self._active = false
    self._duration = 0
    self._passTime = 0
end

function NewBuff:InitBuffData()
    local buffConfig = self._buffTableLine
    self.BuffEvent = {}
    if buffConfig and buffConfig.Effect then
        for event, _ in pairs(buffConfig.Effect) do
            table.insert(self.BuffEvent, event)
        end
    end

    self._attrType = self._buffTableLine and self._buffTableLine.AttrType or 0
    self:SetDuration(self:GetCalDuration())
    self._defaultActiveProb = self:GetCalActiveProb()

    self._position = Vector(0, 0, 0)
    self._positionCP = self._buffTableLine and self._buffTableLine.ParticlePathCP or 0
    self._attachment = self._attachments.PATTACH_ABSORIGIN

    if self._modifyCall then
        self._modifyCall(self)
    end
end

function NewBuff:SetDoBuffData(doBuffData, buffTableLine)
    self._doBuffData = doBuffData
    self._buffTableLine = buffTableLine
end

function NewBuff:Apply()
    self:InitBuffData()

    if not self:IsActiveProb() then
        self._onEndCall(self._handle, self)
        return
    end

    self._active = true
    self._stackCount = self._initStackCount > 0 and self._initStackCount or self._doBuffData.InitStackCount
    self:Start()
    self._onResetCall(self._handle, self)
end

function NewBuff:Reset(count)
    count = count or 1
    self._doBuffData = self._doBuffData
    self:InitBuffData()

    if not self:IsActiveProb() then
        return
    end

    self._active = true

    local buffConfig = self._buffTableLine
    local maxStack = buffConfig and GetConfDataLevel(buffConfig.MaxStack, self._doBuffData.BuffLevel) or 1
    self._stackCount = self._stackCount + count
    self._stackCount = math.min(maxStack, self._stackCount)
    
    if maxStack > 1 or (maxStack == 1 and self._modifyCall) then
        self._onResetCall(self._handle, self)
    end

    -- 刷新持续时间
    self._passTime = 0
end

function NewBuff:Start()
    self._passTime = 0
    self._onStartCall(self._handle, self)
end

function NewBuff:Update(delta)
    if not self._active then return end

    self._passTime = self._passTime + delta

    -- 持续时间到期
    if self._duration > 0 and self._passTime >= self._duration then
        self:End()
    end
end

function NewBuff:End()
    if not self._active then return end
    self._active = false
    self._onEndCall(self._handle, self)
end

function NewBuff:ForceEnd()
    self:End()
end

-- 获取计算后的持续时间
function NewBuff:GetCalDuration()
    local buffConfig = self._buffTableLine
    if not buffConfig then return 0 end
    local duration = GetConfDataLevel(buffConfig.Duration, self._doBuffData.BuffLevel) or 0
    return duration * (self._doBuffData.AddTimes or 1.0)
end

-- 获取激活概率
function NewBuff:GetCalActiveProb()
    local buffConfig = self._buffTableLine
    if not buffConfig then return 100 end
    return GetConfDataLevel(buffConfig.ActiveProb, self._doBuffData.BuffLevel) or 100
end

-- 是否触发概率
function NewBuff:IsActiveProb()
    local prob = self._defaultActiveProb or 100
    if prob >= 100 then return true end
    return math.random(1, 100) <= prob
end

function NewBuff:SetDuration(duration)
    self._duration = duration
end

function NewBuff:GetDuration()
    return self._duration
end

function NewBuff:GetRemainDuration()
    return math.max(0, self._duration - self._passTime)
end

function NewBuff:GetStackCount()
    return self._stackCount
end

function NewBuff:SetStackCount(count)
    self._stackCount = count
end

function NewBuff:AddStackCount(count)
    count = count or 1
    local buffConfig = self._buffTableLine
    local maxStack = buffConfig and GetConfDataLevel(buffConfig.MaxStack, self._doBuffData.BuffLevel) or 99
    self._stackCount = math.min(maxStack, self._stackCount + count)
end

function NewBuff:ReduceStackCount(count)
    count = count or 1
    self._stackCount = self._stackCount - count
    if self._stackCount <= 0 then
        self:End()
    end
end

function NewBuff:IsActive()
    return self._active
end

function NewBuff:GetDoBuffData()
    return self._doBuffData
end

function NewBuff:GetBuffTableLine()
    return self._buffTableLine
end

function NewBuff:GetEntityId()
    return self._doBuffData.EntityId
end

function NewBuff:GetBuffId()
    return self._doBuffData.BuffId
end

function NewBuff:GetBuffLevel()
    return self._doBuffData.BuffLevel
end

function NewBuff:GetAttrType()
    return self._attrType
end

print("[Phase 4] Buff.lua 加载完成")
