--[[test/TestHelper.lua]]
-- 测试辅助工具
-- 提供模拟单位创建、时间模拟等功能

TestHelper = {}

-- ==================== 模拟单位 ====================

--- 创建模拟单位
---@param config table 配置 { unitId, teamId, position, hp, attack, ... }
---@return table 模拟单位对象
function TestHelper:CreateMockUnit(config)
    config = config or {}
    
    -- 确保 Units 存在
    if not Units then
        print("[TestHelper] Warning: Units not initialized, creating minimal version")
        Units = { unitPool = {}, insid = 0 }
        Units.GetNewInsid = function(self)
            self.insid = self.insid + 1
            return self.insid
        end
        Units.GetUnitByInsid = function(self, insid)
            return self.unitPool[insid]
        end
    end
    
    local insId = Units:GetNewInsid()
    
    -- 创建模拟单位数据
    local unit = {
        -- 基础属性
        insid = insId,
        unitId = config.unitId or 1001,
        teamId = config.teamId or (DOTA_TEAM_GOODGUYS or 2),
        position = config.position or Vector(0, 0, 0),
        forward = config.forward or Vector(0, 0, 1),
        
        -- 战斗属性
        hp = config.hp or 1000,
        maxHp = config.maxHp or 1000,
        mp = config.mp or 500,
        maxMp = config.maxMp or 500,
        attack = config.attack or 100,
        defense = config.defense or 10,
        alive = true,
        
        -- Buff 列表
        buffs = {},
        
        -- 被动技能列表
        passives = {},
        
        -- 事件记录（用于测试验证）
        eventLog = {},
    }
    
    -- ========== 基础方法 ==========
    
    function unit:GetInsid()
        return self.insid
    end
    
    function unit:GetUnitId()
        return self.unitId
    end
    
    function unit:GetTeamNumber()
        return self.teamId
    end
    
    function unit:GetAbsOrigin()
        return self.position
    end
    
    function unit:SetAbsOrigin(pos)
        self.position = pos
    end
    
    function unit:GetForwardVector()
        return self.forward
    end
    
    function unit:SetForwardVector(dir)
        self.forward = dir
    end
    
    -- ========== 生命值方法 ==========
    
    function unit:GetHealth()
        return self.hp
    end
    
    function unit:GetMaxHealth()
        return self.maxHp
    end
    
    function unit:SetHealth(value)
        self.hp = math.max(0, math.min(value, self.maxHp))
        if self.hp <= 0 then
            self.alive = false
        end
    end
    
    function unit:IsAlive()
        return self.alive and self.hp > 0
    end
    
    -- ========== 魔法值方法 ==========
    
    function unit:GetMana()
        return self.mp
    end
    
    function unit:GetMaxMana()
        return self.maxMp
    end
    
    function unit:SetMana(value)
        self.mp = math.max(0, math.min(value, self.maxMp))
    end
    
    function unit:SpendMana(cost)
        if self.mp >= cost then
            self.mp = self.mp - cost
            return true
        end
        return false
    end
    
    -- ========== 战斗方法 ==========
    
    function unit:GetAttackDamage()
        return self.attack
    end
    
    function unit:GetPhysicalArmorValue()
        return self.defense
    end
    
    function unit:TakeDamage(damage, damageType, attacker)
        local finalDamage = damage
        -- 简单伤害计算
        if damageType == (DAMAGE_TYPE_PHYSICAL or 1) then
            finalDamage = damage * (100 / (100 + self.defense))
        end
        
        self:SetHealth(self.hp - finalDamage)
        
        -- 记录事件
        table.insert(self.eventLog, {
            type = "TakeDamage",
            damage = finalDamage,
            damageType = damageType,
            attacker = attacker and attacker:GetInsid() or 0,
            time = Time and Time() or 0
        })
        
        return finalDamage
    end
    
    -- ========== Buff 方法 ==========
    
    function unit:HasBuff(buffName)
        return self.buffs[buffName] ~= nil
    end
    
    function unit:AddBuff(buffName, buffData)
        self.buffs[buffName] = buffData or { stacks = 1 }
        table.insert(self.eventLog, {
            type = "AddBuff",
            buffName = buffName,
            time = Time and Time() or 0
        })
    end
    
    function unit:RemoveBuff(buffName)
        self.buffs[buffName] = nil
        table.insert(self.eventLog, {
            type = "RemoveBuff",
            buffName = buffName,
            time = Time and Time() or 0
        })
    end
    
    function unit:GetBuffStacks(buffName)
        local buff = self.buffs[buffName]
        return buff and buff.stacks or 0
    end
    
    -- ========== 事件记录 ==========
    
    function unit:LogEvent(eventType, data)
        table.insert(self.eventLog, {
            type = eventType,
            data = data,
            time = Time and Time() or 0
        })
    end
    
    function unit:GetEvents(eventType)
        local results = {}
        for _, event in ipairs(self.eventLog) do
            if event.type == eventType then
                table.insert(results, event)
            end
        end
        return results
    end
    
    function unit:ClearEvents()
        self.eventLog = {}
    end
    
    -- 注册到 Units
    if Units.unitPool then
        Units.unitPool[insId] = unit
    end
    
    return unit
end

--- 清理所有测试单位
function TestHelper:CleanupUnits()
    if Units and Units.unitPool then
        Units.unitPool = {}
        Units.insid = 0
    end
end

-- ==================== 时间模拟 ====================

--- 模拟时间流逝
---@param seconds number 秒数
---@param fps number 帧率（默认60）
function TestHelper:SimulateTime(seconds, fps)
    fps = fps or 60
    local deltaTime = 1 / fps
    local frames = math.ceil(seconds * fps)
    
    for i = 1, frames do
        -- 更新技能管理器
        if SkillManager and SkillManager.Update then
            local success, err = pcall(SkillManager.Update, SkillManager, deltaTime)
            if not success then
                print("[TestHelper] SkillManager.Update error:", err)
            end
        end
        
        -- 更新 Buff 管理器
        if BuffManager and BuffManager.Update then
            local success, err = pcall(BuffManager.Update, BuffManager, deltaTime)
            if not success then
                print("[TestHelper] BuffManager.Update error:", err)
            end
        end
        
        -- 更新被动技能管理器
        if PassiveSkillManager and PassiveSkillManager.Update then
            local success, err = pcall(PassiveSkillManager.Update, PassiveSkillManager, deltaTime)
            if not success then
                print("[TestHelper] PassiveSkillManager.Update error:", err)
            end
        end
    end
end

-- ==================== 消息监听 ====================

--- 创建消息监听器（用于测试验证）
---@param msgId number 消息ID
---@return table 监听器对象 { received, data, count }
function TestHelper:CreateMessageListener(msgId)
    local listener = {
        received = false,
        data = nil,
        count = 0,
        history = {}
    }
    
    if Message and Message.Register then
        listener._handler = function(data)
            listener.received = true
            listener.data = data
            listener.count = listener.count + 1
            table.insert(listener.history, {
                data = data,
                time = Time and Time() or 0
            })
        end
        Message:Register(msgId, listener, listener._handler)
    end
    
    function listener:Reset()
        self.received = false
        self.data = nil
        self.count = 0
        self.history = {}
    end
    
    function listener:Unregister()
        if Message and Message.Unregister and self._handler then
            Message:Unregister(msgId, self, self._handler)
        end
    end
    
    return listener
end

-- ==================== 配置数据模拟 ====================

--- 创建模拟技能配置
---@param skillId number 技能ID
---@param config table 配置
---@return table 技能配置
function TestHelper:CreateMockSkillConfig(skillId, config)
    config = config or {}
    return {
        id = skillId,
        name = config.name or ("TestSkill_" .. skillId),
        cd = config.cd or 5,
        mp_cost = config.mp_cost or 50,
        cast_range = config.cast_range or 500,
        timeline = config.timeline or {},
        events = config.events or {}
    }
end

--- 创建模拟 Buff 配置
---@param buffId number Buff ID
---@param config table 配置
---@return table Buff 配置
function TestHelper:CreateMockBuffConfig(buffId, config)
    config = config or {}
    return {
        id = buffId,
        name = config.name or ("TestBuff_" .. buffId),
        duration = config.duration or 5,
        max_stacks = config.max_stacks or 1,
        is_debuff = config.is_debuff or false,
        events = config.events or {}
    }
end

-- ==================== 断言辅助 ====================

--- 等待条件满足
---@param condition function 条件函数
---@param timeout number 超时秒数
---@param interval number 检查间隔秒数
---@return boolean 是否满足
function TestHelper:WaitFor(condition, timeout, interval)
    timeout = timeout or 5
    interval = interval or 0.1
    
    local elapsed = 0
    while elapsed < timeout do
        if condition() then
            return true
        end
        self:SimulateTime(interval)
        elapsed = elapsed + interval
    end
    
    return false
end

return TestHelper
