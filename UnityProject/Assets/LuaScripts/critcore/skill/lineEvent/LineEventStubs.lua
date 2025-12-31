--[[critcore/skill/lineEvent/LineEventStubs.lua]]
-- LineEvent 占位实现 - Phase 4
-- 所有 LineEvent 都继承自 SkillLineEvent，提供空实现

require("critcore.skill.lineEvent.SkillLineEvent")

-- 创建占位 LineEvent 的辅助函数
local function CreateStubLineEvent(name)
    local cls = Classnew(name, SkillLineEvent)
    _G[name] = cls
    return cls
end

-- 基础事件类型
LineEventPreWarning = CreateStubLineEvent("LineEventPreWarning")
LineEventAnimation = CreateStubLineEvent("LineEventAnimation")
LineEventBuff = CreateStubLineEvent("LineEventBuff")
LineEventBullet = CreateStubLineEvent("LineEventBullet")
LineEventSettlementObject = CreateStubLineEvent("LineEventSettlementObject")
LineEventSound = CreateStubLineEvent("LineEventSound")
LineEventParticle = CreateStubLineEvent("LineEventParticle")
LineEventCameraShake = CreateStubLineEvent("LineEventCameraShake")
LineEventDisplacement = CreateStubLineEvent("LineEventDisplacement")
LineEventEnterCD = CreateStubLineEvent("LineEventEnterCD")
LineEventTurnToTarget = CreateStubLineEvent("LineEventTurnToTarget")
LineEventTimeLineState = CreateStubLineEvent("LineEventTimeLineState")
LineEventCanBreakSkill = CreateStubLineEvent("LineEventCanBreakSkill")
LineEventSummon = CreateStubLineEvent("LineEventSummon")
LineEventBulletRange = CreateStubLineEvent("LineEventBulletRange")
LineEventTargetSelect = CreateStubLineEvent("LineEventTargetSelect")
LineEventDoSkill = CreateStubLineEvent("LineEventDoSkill")
LineEventTransferbuff = CreateStubLineEvent("LineEventTransferbuff")
LineEventBuffTogether = CreateStubLineEvent("LineEventBuffTogether")
LineEventPassive = CreateStubLineEvent("LineEventPassive")
LineEventNewPosition = CreateStubLineEvent("LineEventNewPosition")
LineEventSettlementObjectNew = CreateStubLineEvent("LineEventSettlementObjectNew")
LineEventTargetSelectNew = CreateStubLineEvent("LineEventTargetSelectNew")
LineEventDisplacementNew = CreateStubLineEvent("LineEventDisplacementNew")
LineEventParticleNew = CreateStubLineEvent("LineEventParticleNew")
LineEventBulletNew = CreateStubLineEvent("LineEventBulletNew")
LineEventBulletRangeNew = CreateStubLineEvent("LineEventBulletRangeNew")
LineEventBuffNew = CreateStubLineEvent("LineEventBuffNew")
LineEventTurnToSkill = CreateStubLineEvent("LineEventTurnToSkill")
LineEventSummonNew = CreateStubLineEvent("LineEventSummonNew")

-- LineEventSettlementObject 需要额外的方法
function LineEventSettlementObject:ctor(skillTimeLine, eventType, config, timeLineIndex, settlementTableLine)
    SkillLineEvent.ctor(self, skillTimeLine, eventType, config, timeLineIndex)
    self._settlementTableLine = settlementTableLine
end

function LineEventSettlementObject:GetSettlementTableLine()
    return self._settlementTableLine
end

-- LineEventSettlementObjectNew 同样需要
function LineEventSettlementObjectNew:ctor(skillTimeLine, eventType, config, timeLineIndex, settlementTableLine)
    SkillLineEvent.ctor(self, skillTimeLine, eventType, config, timeLineIndex)
    self._settlementTableLine = settlementTableLine
end

function LineEventSettlementObjectNew:GetSettlementTableLine()
    return self._settlementTableLine
end

-- LineEventCanBreakSkill 需要特殊方法
function LineEventCanBreakSkill:CanBreakSkill()
    return true
end

-- LineEventSound 简单实现
function LineEventSound:OnInvoke()
    local soundId = self._config[3]
    -- Phase 5: 调用 C# 播放音效
    DebugSKillLog(DebugSKillLogLayer.All, "[Sound] Play:", soundId)
end

-- LineEventAnimation 简单实现
function LineEventAnimation:OnInvoke()
    local animName = self._config[3]
    -- Phase 5: 调用 C# 播放动画
    DebugSKillLog(DebugSKillLogLayer.All, "[Animation] Play:", animName)
end

-- LineEventParticle 简单实现
function LineEventParticle:OnInvoke()
    local particlePath = self._config[3]
    -- Phase 5: 调用 C# 创建粒子
    DebugSKillLog(DebugSKillLogLayer.All, "[Particle] Create:", particlePath)
end

-- LineEventBuff 简单实现
function LineEventBuff:OnInvoke()
    local buffId = tonumber(self._config[3])
    local buffLevel = tonumber(self._config[4]) or 1
    local doSkillData = self:GetDoSkillData()
    
    if BuffManagerInstance and buffId then
        local doBuffData = DoBuffData.New()
        doBuffData.EntityId = doSkillData.TargetInsId or doSkillData.CasterInsId
        doBuffData.BuffId = buffId
        doBuffData.BuffLevel = buffLevel
        BuffManagerInstance:AddBuff(doBuffData)
    end
end

print("[Phase 4] LineEventStubs.lua 加载完成")
