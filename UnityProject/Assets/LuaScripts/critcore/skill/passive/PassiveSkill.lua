--[[critcore/skill/passive/PassiveSkill.lua]]
-- 被动技能模块 - Phase 4 移植版

DoPassiveSkillData = Classnew("DoPassiveSkillData", nil)

function DoPassiveSkillData:ctor(insId, passiveId, passiveLevel)
    self.EntityId = insId
    self.PassiveId = passiveId
    self.PassiveLevel = passiveLevel
end

---@class PassiveSkill : Classnew
PassiveSkill = Classnew("PassiveSkill", nil)

function PassiveSkill:ctor(insId, passiveSkillId, passiveSkillLevel, bindSkill)
    self._doPassiveSkillData = DoPassiveSkillData.New(insId, passiveSkillId, passiveSkillLevel)
    self._insId = insId
    self._passiveSkillId = passiveSkillId
    self._bindSkill = bindSkill
    self._activeLevelConfig = nil
    self._activeTimeLineIndexs = {}
    self._activeBuffChange = {}
    self._cacheCondition = nil
    self._active = false
    self._remove = false

    -- CD相关
    self._cd = 0.0
    self._cdPassTime = 0.0
    self._cdCanActive = false

    self._isUpdate = false
    self._isMove = false
    self._moveSpeed = 0.0
    self._moveDistance = 0.0

    self:Reset(passiveSkillLevel)
end

function PassiveSkill:Reset(passiveSkillLevel)
    self._passiveSkillConfig = GetPassiveSkillLine(self._passiveSkillId)
    if not self._passiveSkillConfig then
        print("[PassiveSkill] 被动技能配置不存在:", self._passiveSkillId)
        return
    end
    
    self._doPassiveSkillData.PassiveLevel = passiveSkillLevel
    self._passiveSkillLevel = passiveSkillLevel
    
    local duration = self._passiveSkillConfig.Duration
    local interval = self._passiveSkillConfig.Interval
    self._duration = duration and GetConfDataLevel(duration, passiveSkillLevel) or 0
    self._interval = interval and GetConfDataLevel(interval, passiveSkillLevel) or 0
    self._addTriggerProb = GetConfDataLevel(self._passiveSkillConfig.AddTriggerProb, passiveSkillLevel) or 100
    self._removeTriggerProb = GetConfDataLevel(self._passiveSkillConfig.RemoveTriggerProb, passiveSkillLevel) or 100
    self._activeLevelConfig = self:GetLevelConfig()

    local cd = self._passiveSkillConfig.Cd
    self._cd = cd and GetConfDataLevel(cd, passiveSkillLevel) or 0
    self._cdCanActive = self._cd == 0

    self._checkCD = math.max(self._interval, 0.1)
    self._checkCDTime = 0.0
    
    self._passInterval = 0
    self._durationPassTime = 0

    -- 检查是否需要更新
    local AddCondition = self._activeLevelConfig and self._activeLevelConfig.AddCondition or ""
    local RemoveCondition = self._activeLevelConfig and self._activeLevelConfig.RemoveCondition or ""
    if AddCondition:find("ispassiveupdate") or RemoveCondition:find("ispassiveupdate") then
        self._isUpdate = true
        self._isMove = true
    end
end

function PassiveSkill:Remove()
    self._remove = true
end

function PassiveSkill:Update(delta)
    if self._remove then return end
    
    -- CD更新
    self._cdCanActive = self._cdPassTime >= self._cd
    self._cdPassTime = self._cdPassTime + delta

    if self._isUpdate then
        if self._checkCDTime >= self._checkCD then
            self._checkCDTime = 0
            if PassiveSkillManagerInstance then
                PassiveSkillManagerInstance:TRIGGER(PassiveSkillVariable.IsPassiveUpdate, self._insId)
            end
        end
        self._checkCDTime = self._checkCDTime + delta
        return
    end

    if not self._active then return end

    -- 间隔更新
    if self._interval == 0 then
        if self._passInterval == 0 then
            self:StartEffect()
        end
        self._passInterval = self._passInterval + delta
    else
        if self._passInterval >= self._interval then
            self._passInterval = 0
            self:StartEffect()
        else
            self._passInterval = self._passInterval + delta
        end
    end

    if self._durationPassTime >= self._duration then
        self._active = false
    end
    self._durationPassTime = self._durationPassTime + delta
end

function PassiveSkill:GetLevelConfig()
    if not self._passiveSkillConfig then return nil end
    local levels = self._passiveSkillConfig.Levels
    if levels then
        for _, levelConfig in ipairs(levels) do
            if self._passiveSkillLevel >= levelConfig.MinLevel and self._passiveSkillLevel <= levelConfig.MaxLevel then
                return levelConfig
            end
        end
    end
    return nil
end

function PassiveSkill:StartEffect()
    -- Phase 5: 实现具体效果
    DebugSKillLog(DebugSKillLogLayer.All, "PassiveSkill:StartEffect", self._passiveSkillId)
end

function PassiveSkill:GetInsId()
    return self._insId
end

function PassiveSkill:GetPassiveSkillId()
    return self._passiveSkillId
end

function PassiveSkill:GetPassiveSkillLevel()
    return self._passiveSkillLevel
end

function PassiveSkill:IsActive()
    return self._active
end

function PassiveSkill:SetActive(active)
    self._active = active
    if active then
        self._passInterval = 0
        self._durationPassTime = 0
    end
end

function PassiveSkill:IsCDReady()
    return self._cdCanActive
end

function PassiveSkill:ResetCD()
    self._cdPassTime = 0
    self._cdCanActive = false
end

function PassiveSkill:GetDoPassiveSkillData()
    return self._doPassiveSkillData
end

function PassiveSkill:GetConfig()
    return self._passiveSkillConfig
end

function PassiveSkill:GetBindSkill()
    return self._bindSkill
end

print("[Phase 4] PassiveSkill.lua 加载完成")
