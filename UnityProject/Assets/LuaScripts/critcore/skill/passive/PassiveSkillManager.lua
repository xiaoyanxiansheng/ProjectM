--[[critcore/skill/passive/PassiveSkillManager.lua]]
-- 被动技能管理器模块 - Phase 4 移植版

require("critcore.skill.passive.PassiveSkill")

---@class PassiveSkillManager : Classnew
PassiveSkillManager = Classnew("PassiveSkillManager", nil)

-- 被动技能变量定义
PassiveSkillVariable = {
    IsDoSkill           = "isdoskill",
    IsDoFinishSkill     = "isdofinishskill",
    IsSkillEnterCD      = "isskillentercd",
    IsDoSettlement      = "isdosettlement",
    IsAddBuff           = "isaddbuff",
    IsUpdateBuff        = "isupdatebuff",
    IsFinishedBuff      = "isfinishedbuff",
    IsAddPassive        = "isaddpassive",
    IsPassiveUpdate     = "ispassiveupdate",
    IsHit               = "ishit",
    IsHitRcv            = "ishitrcv",
    IsCritical          = "iscritical",
    IsKill              = "iskill",
    IsDeath             = "isdeath",
    IsDamage            = "isdamage",
    IsHPChange          = "ishpchange",
    IsShieldChange      = "isshieldchange",

    CasterIns           = "casterins",
    TargetIns           = "targetins",
    SkillIns            = "skillins",
    SettlementIns       = "settlementins",
    PassiveIns          = "passiveins",
    BuffIns             = "buffins",
    LearnedPassive      = "learnedpassive",
    LearnedBuff         = "learnedbuff",

    HPChangeIns         = "hpchangeins",
    ShieldChangeIns     = "shieldchangeins",
    SettlementCount     = "settlementcount",
    SettlementInsList   = "settlementinslist",
    SupposedDie         = "supposeddie",
    MoveDistance        = "movedistance",
    MoveSpeed           = "movespeed",
}

-- 全局辅助函数
learnedpassive = nil
learnedbuff = nil

function PassiveSkillManager:Setup()
    learnedpassive = function(insId, passiveId)
        return PassiveSkillManagerInstance:IsLearnedPassiveSkill(insId, passiveId)
    end
    learnedbuff = function(insId, buffId)
        return BuffManagerInstance and BuffManagerInstance:GetEntityBuff(insId, buffId) ~= nil
    end
end

function PassiveSkillManager:ctor()
    self._passiveSkillList = {}
    self._stringCache = {}
    self._addBuffList = {}
    self._addSkillList = {}

    RegisterMessage(MsgConst.ENTITY_ATTACK, self.MSG_ENTITY_ATTACK, self)
    RegisterMessage(MsgConst.ENTITY_ATTACKED, self.MSG_ENTITY_ATTACKED, self)
    RegisterMessage(MsgConst.ENTITY_DAMAGED, self.MSG_ENTITY_DAMAGED, self)
    RegisterMessage(MsgConst.ENTITY_KILL, self.MSG_ENTITY_KILL, self)
    RegisterMessage(MsgConst.ENTITY_DEATH, self.ENTITY_DEATH, self)
    RegisterMessage(MsgConst.ENTITY_DEATH_1, self.ENTITY_DEATH_1, self)
    RegisterMessage(MsgConst.ENTITY_HP_CHANGE, self.ENTITY_HP_CHANGE, self)
end

-- 添加被动技能
function PassiveSkillManager:Add(insId, passiveId, passiveLevel, isBindSkill)
    if not self._passiveSkillList[insId] then
        self._passiveSkillList[insId] = {}
    end

    if self._passiveSkillList[insId][passiveId] then
        self._passiveSkillList[insId][passiveId]:Reset(passiveLevel)
    else
        self._passiveSkillList[insId][passiveId] = PassiveSkill.New(insId, passiveId, passiveLevel, isBindSkill)
    end

    DebugSKillLog(DebugSKillLogLayer.All, "PassiveSkillManager:Add", insId, passiveId, passiveLevel)
    self:TRIGGER(PassiveSkillVariable.IsAddPassive, insId)
end

-- 移除被动技能
function PassiveSkillManager:Remove(insId, passiveId)
    if self._passiveSkillList[insId] and self._passiveSkillList[insId][passiveId] then
        self._passiveSkillList[insId][passiveId]:Remove()
        self._passiveSkillList[insId][passiveId] = nil
    end
    DebugSKillLog(DebugSKillLogLayer.All, "PassiveSkillManager:Remove", insId, passiveId)
end

-- 移除所有被动技能
function PassiveSkillManager:RemoveAll(insId)
    if self._passiveSkillList[insId] then
        for passiveId, passive in pairs(self._passiveSkillList[insId]) do
            if passive then passive:Remove() end
        end
        self._passiveSkillList[insId] = nil
    end
    DebugSKillLog(DebugSKillLogLayer.All, "PassiveSkillManager:RemoveAll", insId)
end

-- 是否学习过被动技能
function PassiveSkillManager:IsLearnedPassiveSkill(insId, passiveId)
    return self._passiveSkillList[insId] and self._passiveSkillList[insId][passiveId] ~= nil
end

-- 获取学习过的被动技能ID列表
function PassiveSkillManager:GetLearnedPassiveSkillIds(insId)
    local ids = {}
    if self._passiveSkillList[insId] then
        for passiveId, _ in pairs(self._passiveSkillList[insId]) do
            table.insert(ids, passiveId)
        end
    end
    return ids
end

-- 更新
function PassiveSkillManager:Update(delta)
    for insId, passives in pairs(self._passiveSkillList) do
        for passiveId, passive in pairs(passives) do
            if passive then
                passive:Update(delta)
            end
        end
    end
end

-- 触发被动技能检查
function PassiveSkillManager:TRIGGER(variable, insId, callback)
    if not self._passiveSkillList[insId] then return end
    
    local condition = self:TRIGGERCONDITION(variable, insId, nil, nil, nil, nil)
    if callback then
        callback(condition)
    end
    
    for passiveId, passive in pairs(self._passiveSkillList[insId]) do
        if passive then
            self:CheckAndTrigger(passive, condition)
        end
    end
end

-- 构建触发条件
function PassiveSkillManager:TRIGGERCONDITION(variable, insId, targetInsId, skill, settlement, buff)
    local condition = {
        [variable] = true,
        InsId = insId,
        TargetInsId = targetInsId,
        Skill = skill,
        Settlement = settlement,
        Buff = buff,
    }
    return condition
end

-- 检查并触发被动技能
function PassiveSkillManager:CheckAndTrigger(passive, condition)
    -- Phase 5: 实现具体的条件检查和触发逻辑
    -- 简化版：直接触发
    if passive:IsCDReady() then
        -- 触发效果
    end
end

-- 修改技能（被动技能影响）
function PassiveSkillManager:ModifySkill(skill, condition)
    -- Phase 5: 实现具体的技能修改逻辑
end

-- 清除字符串缓存
function PassiveSkillManager:ClearStringCache()
    self._stringCache = {}
end

-- 消息处理
function PassiveSkillManager:MSG_ENTITY_ATTACK(msg)
    local params = msg.params
    if params and params.casterinsid then
        self:TRIGGER(PassiveSkillVariable.IsHit, params.casterinsid)
    end
end

function PassiveSkillManager:MSG_ENTITY_ATTACKED(msg)
    local params = msg.params
    if params and params.targetinsid then
        self:TRIGGER(PassiveSkillVariable.IsHitRcv, params.targetinsid)
    end
end

function PassiveSkillManager:MSG_ENTITY_DAMAGED(msg)
    local params = msg.params
    if params and params.targetinsid then
        self:TRIGGER(PassiveSkillVariable.IsDamage, params.targetinsid)
    end
end

function PassiveSkillManager:MSG_ENTITY_KILL(msg)
    local params = msg.params
    if params and params.casterinsid then
        self:TRIGGER(PassiveSkillVariable.IsKill, params.casterinsid)
    end
end

function PassiveSkillManager:ENTITY_DEATH(msg)
    local params = msg.params
    if params and params.insId then
        self:TRIGGER(PassiveSkillVariable.IsDeath, params.insId)
    end
end

function PassiveSkillManager:ENTITY_DEATH_1(msg)
    local params = msg.params
    if params and params.insId then
        self:RemoveAll(params.insId)
    end
end

function PassiveSkillManager:ENTITY_HP_CHANGE(msg)
    local params = msg.params
    if params and params.insid then
        self:TRIGGER(PassiveSkillVariable.IsHPChange, params.insid)
    end
end

-- 清空
function PassiveSkillManager:Clear()
    for insId, _ in pairs(self._passiveSkillList) do
        self:RemoveAll(insId)
    end
    self._passiveSkillList = {}
    self._stringCache = {}
    self._addBuffList = {}
    self._addSkillList = {}
end

print("[Phase 4] PassiveSkillManager.lua 加载完成")
