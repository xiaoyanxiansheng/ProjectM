--[[critcore/skill/SKillLogic.lua]]
-- 技能逻辑模块 - Phase 4 移植版
-- 负责处理单个技能的生命周期

require("critcore.skill.SkillTimeLine")

SkillInsId = 0

---@class SkillLogic : Classnew
SkillLogic = Classnew("SkillLogic", nil)

---@param handle SkillLogic 技能处理器
---@param doSkillData DoSkillData 技能释放数据
---@param skillTableLine table 技能配置表数据
---@param onStartSkill function 技能开始回调
---@param onFinishSkill function 技能结束回调
function SkillLogic:ctor(handle, doSkillData, skillTableLine, onStartSkill, onFinishSkill)
    SkillInsId = SkillInsId + 1
    self._insId = SkillInsId
    self._doSkillData = doSkillData
    self._skillTableLine = skillTableLine
    self._handle = handle
    self._onStartSkill = onStartSkill
    self._onFinishSkill = onFinishSkill
    self._sonSkills = {}
end

function SkillLogic:Init()
    self._timeLine = nil
    self._duration = 0
    self._active = false

    if self._doSkillData.ParentSkill then
        self._doSkillData.ParentSkill:AddSonSkill(self)
    end

    self._skillRange = nil
end

---添加子技能
function SkillLogic:AddSonSkill(sonSkill)
    if sonSkill then
        table.insert(self._sonSkills, sonSkill)
    end
end

---开始释放技能
function SkillLogic:DoSkill()
    if self._active then
        return
    end

    self._active = true

    self._duration = GetConfDataLevel(self._skillTableLine.Duration, self._doSkillData.SkillLevel)
    self._timeLine = SkillTimeLine.New()
    self._timeLine:Init(self, self._skillTableLine.TimeLine)
    self._timeLine:Start()

    self._onStartSkill(self._handle, self)
end

---更新技能状态
function SkillLogic:Update(delta)
    if not self._active then
        return
    end

    self._timeLine:Update(delta)

    self._duration = self._duration - delta
    if self._duration <= 0 then
        self:Finish(false, true)
    end
end

---结束技能
function SkillLogic:Finish(isEndParent, isNoEndSon)
    if not self._active then
        return
    end
    self._active = false

    self._timeLine:SKillFinish()
    self._onFinishSkill(self._handle, self)

    if self._doSkillData.ParentSkill and isEndParent then
        self._doSkillData.ParentSkill:Finish(true)
    end

    if not isNoEndSon then
        for _, skill in pairs(self._sonSkills) do
            skill:Finish(false)
        end
        self._sonSkills = {}
    end
end

---设置技能代理
function SkillLogic:SetAgent(agentId, speed)
    if self._timeLine then
        self._timeLine:SetAgent(agentId, speed)
    end
end

---设置技能目标
function SkillLogic:SetTarget(targetInsId)
    self._doSkillData.TargetInsId = targetInsId
    self._doSkillData.PositionNew:SetTargetInsId(targetInsId)
    if self._timeLine then 
        self._timeLine:OnSetTarget(targetInsId) 
    end
end

---结算击中目标
function SkillLogic:SettlementHitTarget(hitBreakSkill, targetId)
    if self._timeLine then
        self._timeLine:SettlementHitTarget(targetId)
    end
    if hitBreakSkill and hitBreakSkill > 0 then
        self:Finish(hitBreakSkill == 2)
    end
end

---获取结算配置
function SkillLogic:GetSettlementTableLine(timeLineIndex)
    if self._timeLine then
        return self._timeLine:GetSettlementTableLine(timeLineIndex)
    end
    return nil
end

function SkillLogic:CanBreakSkill()
    if self._timeLine ~= nil then
        return self._timeLine:CanBreakSkill()
    end
    return false
end

function SkillLogic:GetDoSkillData()
    return self._doSkillData
end

function SkillLogic:IsSubSkill()
    return self._doSkillData.ParentSkill ~= nil
end

function SkillLogic:IsActive()
    return self._active
end

function SkillLogic:GetSkillTimeLine()
    return self._timeLine
end

function SkillLogic:GetSkillTableLine()
    return self._skillTableLine
end

function SkillLogic:GetDuration()
    return self._duration
end

function SkillLogic:GetSkillCD()
    return GetConfDataLevel(self._skillTableLine.Cd, self._doSkillData.SkillLevel)
end

function SkillLogic:GetSkillInsId()
    return self._insId
end

function SkillLogic:GetSkillId()
    return self._doSkillData.SkillId
end

function SkillLogic:GetAgentSpeed()
    if self._timeLine then
        return self._timeLine:GetAgentSpeed()
    end
    return 0
end

function SkillLogic:ismain()
    return self._doSkillData.ParentSkill == nil
end

function SkillLogic:getdata()
    return self._doSkillData
end

function SkillLogic:gettable()
    return self._skillTableLine
end

function SkillLogic:getlocaltable()
    return GetSkillLine(self._doSkillData.SkillId)
end

function SkillLogic:GetNewTargetPositionType()
    if self._timeLine then
        return self._timeLine:GetNewTargetPositionType()
    end
    return nil
end

print("[Phase 4] SKillLogic.lua 加载完成")
