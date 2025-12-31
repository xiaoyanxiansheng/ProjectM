--[[critcore/skill/SkillManager.lua]]
-- 技能管理器 - Phase 4 移植版
-- 负责管理游戏中所有技能的创建、释放、更新和结束

require("critcore.skill.SKillLogic")

---@class SKillManager : Classnew
SkillManager = Classnew("SkillManager", nil)

---构造函数
function SkillManager:ctor()
    self._entitySkillList = {}
    self._delayedChildSkillList = {}
    
    -- 技能命中追踪
    self._skillHitTracking = {}
    self._skillToMainMapping = {}

    -- 注册消息
    RegisterMessage(MsgConst.SKILL_ENTER_CD, self.MSG_SKILL_ENTER_CD, self)
    RegisterMessage(MsgConst.ENTITY_DEATH_2, self.MSG_ENTITY_DEATH, self)
end

---释放技能
---@param doSkillData DoSkillData 技能释放数据
---@return SkillLogic|nil
function SkillManager:DoSkill(doSkillData)
    if self:DoSkillOptimized(doSkillData) then
        return
    end
    return self:DoSkillCore(doSkillData)
end

function SkillManager:DoSkillCore(doSkillData)
    -- 初始化新位置
    doSkillData:InitNewPosition()

    local skillTableLine = clone(GetSkillLine(doSkillData.SkillId))
    if not skillTableLine then
        print("[SkillManager] 技能配置不存在, Id:", doSkillData.SkillId)
        return nil
    end

    if doSkillData.CasterInsId == 0 or doSkillData.SkillId == 0 then
        return nil
    end

    local caster = GetEntityByInsId(doSkillData.CasterInsId)
    if not caster or not caster:IsAlive() then
        return nil
    end

    -- 创建技能
    local casterId = doSkillData.CasterInsId
    if not self._entitySkillList[casterId] then
        self._entitySkillList[casterId] = {}
    end
    
    local skill = SkillLogic.New(self, doSkillData, skillTableLine, self.OnStartSkill, self.OnFinishSkill)
    table.insert(self._entitySkillList[casterId], skill)

    -- 注册技能追踪
    self:RegisterSkillTracking(skill, doSkillData)

    -- 添加技能被动
    self:AddSelfPassiveSkill(skill)

    -- 检查被动技能
    if PassiveSkillManagerInstance then
        self:CheckPassiveSkill(PassiveSkillVariable.IsDoSkill, skill)
    end

    -- 检测循环
    local hitLoopCount = GetConfDataLevel(skillTableLine.FinishLoopCount, doSkillData.SkillLevel)
    self:CheckLoop(doSkillData, hitLoopCount)

    skill:Init()

    DebugSKillLog_DoSkillData(DebugSKillLogLayer.All, "SkillManager:DoSkill", skill:GetDoSkillData())
    skill:DoSkill()

    return skill
end

---优化的技能释放
function SkillManager:DoSkillOptimized(doSkillData)
    if doSkillData.ParentSkill and doSkillData.IsOptimized then
        local delay = math.random(0, 100) / 500.0
        table.insert(self._delayedChildSkillList, {doSkillData, delay})
        return true
    end
    return false
end

---结束指定技能
function SkillManager:DoFinishSkill(skill, isNoEndSon)
    if not skill then return end

    local casterInsId = skill:GetDoSkillData().CasterInsId
    local skills = self._entitySkillList[casterInsId]
    if not skills then return end
    
    local inIndex = table.ContainValue(skills, skill, nil, nil)
    if inIndex == 0 then return end
    
    table.remove(skills, inIndex)
    skill:Finish(false, isNoEndSon)
    DebugSKillLog_DoSkillData(DebugSKillLogLayer.All, "SkillManager:DoFinishSkill", skill:GetDoSkillData())
end

---添加技能自身的被动效果
function SkillManager:AddSelfPassiveSkill(skill)
    local doSkillData = skill:GetDoSkillData()
    local skillTableLine = skill:GetSkillTableLine()
    if not skillTableLine.SkillPassiveId or skillTableLine.SkillPassiveId == 0 then
        return
    end
    if PassiveSkillManagerInstance then
        PassiveSkillManagerInstance:Add(doSkillData.CasterInsId, skillTableLine.SkillPassiveId, doSkillData.SkillLevel)
    end
end

---检查技能的被动效果
function SkillManager:CheckPassiveSkill(passiveSkillVariable, skill)
    if not PassiveSkillManagerInstance then return end
    local casterId = skill:GetDoSkillData().CasterInsId
    local condition = PassiveSkillManagerInstance:TRIGGERCONDITION(passiveSkillVariable, casterId, nil, skill, nil, nil)
    PassiveSkillManagerInstance:ModifySkill(skill, condition)
end

---检查技能循环次数
function SkillManager:CheckLoop(doSkillData, hitLoopCount)
    if hitLoopCount == nil then return end

    local targetId = doSkillData.TargetInsId
    if not targetId then return end

    local target = GetEntityByInsId(targetId)
    if not target or not target:IsAlive() then return end

    if doSkillData.FinishLoopCount ~= 0 then
        if doSkillData.FinishLoopCount == -1 then
            doSkillData.FinishLoopCount = hitLoopCount or 1
        else
            doSkillData.FinishLoopCount = doSkillData.FinishLoopCount - 1
        end
        self:AddHitedEntityList(doSkillData, targetId)
    end
end

---添加已击中的实体到列表中
function SkillManager:AddHitedEntityList(doSkillData, insId)
    if doSkillData.HitedEntityList == nil then
        doSkillData.HitedEntityList = {}
    end
    if not table.ContainValue(doSkillData.HitedEntityList, insId, nil, nil) then
        table.insert(doSkillData.HitedEntityList, insId)
    end
end

---技能追踪相关
function SkillManager:RegisterSkillTracking(skill, doSkillData)
    local skillInsId = skill:GetSkillInsId()
    
    if doSkillData.ParentSkill then
        -- 子技能
        local parentInsId = doSkillData.ParentSkill:GetSkillInsId()
        local mainInsId = self._skillToMainMapping[parentInsId] or parentInsId
        
        self._skillToMainMapping[skillInsId] = mainInsId
        
        if self._skillHitTracking[mainInsId] then
            table.insert(self._skillHitTracking[mainInsId].allSkills, skillInsId)
        end
    else
        -- 主技能
        self._skillHitTracking[skillInsId] = {
            hitUnits = {},
            allSkills = {skillInsId},
            finishedSkills = {}
        }
        self._skillToMainMapping[skillInsId] = skillInsId
    end
end

---技能开始回调
function SkillManager:OnStartSkill(skill)
    local doSkillData = skill:GetDoSkillData()
    SkillAPI.DoEvent(MsgConst.SKill_DO_START, {
        casterInsId = doSkillData.CasterInsId,
        skillId = doSkillData.SkillId,
        skillLevel = doSkillData.SkillLevel
    })
end

---技能结束回调
function SkillManager:OnFinishSkill(skill)
    local doSkillData = skill:GetDoSkillData()
    SkillAPI.DoEvent(MsgConst.SKill_DO_FINISH, {
        casterInsId = doSkillData.CasterInsId,
        skillId = doSkillData.SkillId,
        skillLevel = doSkillData.SkillLevel
    })
    
    -- 清理追踪数据
    local skillInsId = skill:GetSkillInsId()
    local mainInsId = self._skillToMainMapping[skillInsId]
    
    if mainInsId and self._skillHitTracking[mainInsId] then
        table.insert(self._skillHitTracking[mainInsId].finishedSkills, skillInsId)
        
        -- 检查是否所有技能都结束了
        local tracking = self._skillHitTracking[mainInsId]
        if #tracking.finishedSkills >= #tracking.allSkills then
            self._skillHitTracking[mainInsId] = nil
        end
    end
    self._skillToMainMapping[skillInsId] = nil
end

---更新
function SkillManager:Update(delta)
    -- 更新所有技能
    for casterId, skills in pairs(self._entitySkillList) do
        for i = #skills, 1, -1 do
            local skill = skills[i]
            if skill and skill:IsActive() then
                skill:Update(delta)
            end
        end
    end
    
    -- 处理延迟子技能
    for i = #self._delayedChildSkillList, 1, -1 do
        local data = self._delayedChildSkillList[i]
        data[2] = data[2] - delta
        if data[2] <= 0 then
            self:DoSkillCore(data[1])
            table.remove(self._delayedChildSkillList, i)
        end
    end
end

---打断技能
function SkillManager:BreakSkill(insId)
    local skills = self._entitySkillList[insId]
    if not skills then return end
    
    for i = #skills, 1, -1 do
        local skill = skills[i]
        if skill and skill:IsActive() and not skill:IsSubSkill() then
            self:DoFinishSkill(skill, false)
        end
    end
end

---可打断检查
function SkillManager:CanBreakSkill(insId)
    local skills = self._entitySkillList[insId]
    if not skills then return end
    
    for i = #skills, 1, -1 do
        local skill = skills[i]
        if skill and skill:IsActive() and not skill:IsSubSkill() then
            if skill:CanBreakSkill() then
                self:DoFinishSkill(skill, false)
            end
        end
    end
end

---是否在技能中
function SkillManager:InSkill(insId)
    local skills = self._entitySkillList[insId]
    if not skills then return false end
    
    for _, skill in pairs(skills) do
        if skill and skill:IsActive() and not skill:IsSubSkill() then
            return true
        end
    end
    return false
end

---获取技能数据
function SkillManager:GetDoSkillData(insId, skillId)
    local skills = self._entitySkillList[insId]
    if not skills then return nil end
    
    for _, skill in pairs(skills) do
        if skill and skill:IsActive() then
            if skill:GetDoSkillData().SkillId == skillId then
                return skill:GetDoSkillData()
            end
        end
    end
    return nil
end

---CD消息处理
function SkillManager:MSG_SKILL_ENTER_CD(msg)
    -- Phase 5: 处理技能CD
end

---死亡消息处理
function SkillManager:MSG_ENTITY_DEATH(msg)
    local insId = msg.params and msg.params.insId
    if insId then
        self:BreakSkill(insId)
    end
end

---清空
function SkillManager:Clear()
    for casterId, skills in pairs(self._entitySkillList) do
        for _, skill in pairs(skills) do
            if skill and skill:IsActive() then
                skill:Finish(false, true)
            end
        end
    end
    self._entitySkillList = {}
    self._delayedChildSkillList = {}
    self._skillHitTracking = {}
    self._skillToMainMapping = {}
end

print("[Phase 4] SkillManager.lua 加载完成")
