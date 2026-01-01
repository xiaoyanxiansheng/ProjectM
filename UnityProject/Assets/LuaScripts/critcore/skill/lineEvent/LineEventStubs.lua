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

-- LineEventSound 实现（调用 C# 桥接）
function LineEventSound:OnInvoke()
    local soundId = self._config[3]
    local doSkillData = self:GetDoSkillData()
    
    if soundId and doSkillData then
        -- 通过 AudioBridge 播放音效
        EmitSoundOn(soundId, doSkillData.CasterInsId)
        DebugSKillLog(DebugSKillLogLayer.All, "[Sound] Play:", soundId)
    end
end

function LineEventSound:OnEnd()
    local soundId = self._config[3]
    local doSkillData = self:GetDoSkillData()
    
    if soundId and doSkillData then
        StopSoundOn(soundId, doSkillData.CasterInsId)
    end
end

-- LineEventAnimation 实现（调用 C# 桥接）
function LineEventAnimation:OnInvoke()
    local animName = self._config[3]
    local animRate = tonumber(self._config[4]) or 1.0
    local doSkillData = self:GetDoSkillData()
    
    if animName and doSkillData then
        -- 通过 AnimationBridge 播放动画
        PlayAnimation(doSkillData.CasterInsId, animName, animRate)
        DebugSKillLog(DebugSKillLogLayer.All, "[Animation] Play:", animName, "Rate:", animRate)
    end
end

function LineEventAnimation:OnEnd()
    local doSkillData = self:GetDoSkillData()
    if doSkillData then
        -- 过渡回 Idle
        PlayAnimation(doSkillData.CasterInsId, "Idle", 1.0)
    end
end

-- LineEventParticle 实现（调用 C# 桥接）
function LineEventParticle:OnInvoke()
    local particlePath = self._config[3]
    local attachType = tonumber(self._config[4]) or PATTACH_ABSORIGIN_FOLLOW
    local doSkillData = self:GetDoSkillData()
    
    if particlePath and doSkillData then
        -- 通过 ParticleManager 创建粒子
        local particleId = ParticleManager:CreateParticle(particlePath, attachType, doSkillData.CasterInsId)
        self._particleId = particleId
        DebugSKillLog(DebugSKillLogLayer.All, "[Particle] Create:", particlePath, "Id:", particleId)
    end
end

function LineEventParticle:OnEnd()
    if self._particleId then
        ParticleManager:DestroyParticle(self._particleId, false)
        self._particleId = nil
    end
end

-- LineEventBuff 实现
function LineEventBuff:OnInvoke()
    local buffId = tonumber(self._config[3])
    local buffLevel = tonumber(self._config[4]) or 1
    local doSkillData = self:GetDoSkillData()
    
    if BuffManagerInstance and buffId and doSkillData then
        local doBuffData = DoBuffData.New()
        doBuffData.EntityId = doSkillData.TargetInsId or doSkillData.CasterInsId
        doBuffData.BuffId = buffId
        doBuffData.BuffLevel = buffLevel
        doBuffData.CasterInsId = doSkillData.CasterInsId
        BuffManagerInstance:AddBuff(doBuffData)
        DebugSKillLog(DebugSKillLogLayer.All, "[Buff] Add:", buffId, "Level:", buffLevel)
    end
end

-- LineEventParticleNew 实现（与 LineEventParticle 类似但支持更多参数）
function LineEventParticleNew:OnInvoke()
    local particlePath = self._config[3]
    local attachType = tonumber(self._config[4]) or PATTACH_ABSORIGIN_FOLLOW
    local doSkillData = self:GetDoSkillData()
    
    if particlePath and doSkillData then
        local particleId = ParticleManager:CreateParticle(particlePath, attachType, doSkillData.CasterInsId)
        self._particleId = particleId
        
        -- 设置控制点（如果配置了位置）
        local position = self:GetStartPosition()
        if position then
            ParticleManager:SetParticleControl(particleId, 0, position)
        end
        
        DebugSKillLog(DebugSKillLogLayer.All, "[ParticleNew] Create:", particlePath, "Id:", particleId)
    end
end

function LineEventParticleNew:OnEnd()
    if self._particleId then
        ParticleManager:DestroyParticle(self._particleId, false)
        self._particleId = nil
    end
end

print("[Phase 5] LineEventStubs.lua 加载完成（C# 桥接版）")
