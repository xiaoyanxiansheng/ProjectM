--[[critcore/static/battle_init.lua]]
--[[
    战斗初始化模块 - Phase 9.1
    在进入副本时加载战斗系统
]]

BattleInit = BattleInit or {}

local _M = BattleInit
_M.__Initialized = false
_M.__HeroUnit = nil  -- 玩家英雄单位

---@enum BattleState 战斗状态
BattleState = {
    NONE = 0,
    READY = 1,
    FIGHTING = 2,
    PAUSED = 3,
    ENDED = 4,
}

_M.__State = BattleState.NONE

--[================[初始化战斗系统]================]
function _M:Init()
    if self.__Initialized then
        print("[BattleInit] 战斗系统已初始化，跳过")
        return true
    end
    
    print("[BattleInit] 开始初始化战斗系统...")
    
    -- 1. 加载配置系统（如果尚未加载）
    if not ConfData then
        local success, err = pcall(function()
            require("critcore.static.conf_data")
        end)
        if not success then
            print("[BattleInit] 加载配置系统失败: " .. tostring(err))
        else
            print("[BattleInit] 配置系统加载完成")
        end
    end
    
    -- 2. 加载基础库
    local success, err = pcall(function()
        require("critcore.skill.lib.Classnew")
        require("critcore.skill.lib.Define")
        require("critcore.skill.lib.MessageConst")
        require("critcore.skill.lib.Message")
    end)
    if not success then
        print("[BattleInit] 加载基础库失败: " .. tostring(err))
        return false
    end
    print("[BattleInit] 基础库加载完成")
    
    -- 2. 加载 Units 系统
    success, err = pcall(function()
        require("critcore.static.units")
    end)
    if not success then
        print("[BattleInit] 加载 Units 系统失败: " .. tostring(err))
        return false
    end
    print("[BattleInit] Units 系统加载完成")
    
    -- 3. 加载 Fight 系统
    success, err = pcall(function()
        require("critcore.static.fight")
    end)
    if not success then
        print("[BattleInit] 加载 Fight 系统失败: " .. tostring(err))
        return false
    end
    print("[BattleInit] Fight 系统加载完成")
    
    -- 4. 加载 CUnitBase
    success, err = pcall(function()
        require("critcore.class.unit")
    end)
    if not success then
        print("[BattleInit] 加载 CUnitBase 失败: " .. tostring(err))
        return false
    end
    print("[BattleInit] CUnitBase 加载完成")
    
    -- 5. 加载技能模块
    success, err = pcall(function()
        require("critcore.skill.SkillModule")
    end)
    if not success then
        print("[BattleInit] 加载 SkillModule 失败: " .. tostring(err))
        return false
    end
    print("[BattleInit] SkillModule 加载完成")
    
    -- 6. 初始化技能模块
    if SkillModule and SkillModule.Init then
        SkillModule.Init()
    end
    
    self.__Initialized = true
    self.__State = BattleState.READY
    print("[BattleInit] 战斗系统初始化完成")
    return true
end

--[================[创建玩家英雄单位]================]
---@param heroId number 英雄配置ID
---@param unitId number 单位配置ID
---@param position table|nil 初始位置
---@param skills table|nil 技能表 {[slot]=skillId}
---@return CUnitBase|nil
function _M:CreatePlayerHero(heroId, unitId, position, skills)
    if not self.__Initialized then
        print("[BattleInit] 错误: 战斗系统未初始化")
        return nil
    end
    
    -- 默认位置
    position = position or Vector(0, 0, 0)
    
    -- 创建英雄单位
    local hero = CreateClass_UnitBase(
        unitId,                    -- 单位ID
        position,                  -- 位置
        function(insid, unit, atker)  -- 死亡回调
            print("[BattleInit] 英雄死亡: " .. insid)
            self:OnHeroDeath(unit, atker)
        end,
        heroId,                    -- 英雄ID
        nil,                       -- 玩家
        false,                     -- 非特殊单位
        1,                         -- 属性基数
        nil                        -- 归属单位
    )
    
    if hero then
        -- 设置阵营
        hero:SetCamp(EnumUnitCamp.Player)
        
        -- 同步技能
        if skills then
            for slot, skillId in pairs(skills) do
                hero:LearnSkill(slot, skillId)
            end
        else
            -- 默认技能（从配置或测试用）
            hero:LearnSkill(1, 101)
            hero:LearnSkill(2, 102)
            hero:LearnSkill(3, 103)
            hero:LearnSkill(4, 104)
        end
        
        -- 添加到 Units 管理器
        Units:AddToLib(hero:GetInsid(), hero, "player_hero")
        
        -- 创建 Unity 实体
        local entityId = CreateEntity(unitId, position)
        if entityId then
            hero.__EntityId = entityId
            print(string.format("[BattleInit] 创建英雄: HeroId=%d, UnitId=%d, Insid=%d, EntityId=%d", 
                heroId, unitId, hero:GetInsid(), entityId))
        end
        
        self.__HeroUnit = hero
    end
    
    return hero
end

--[================[创建怪物单位]================]
---@param unitId number 单位配置ID
---@param position table|nil 初始位置
---@param isBoss boolean|nil 是否是 Boss
---@return CUnitBase|nil
function _M:CreateMonster(unitId, position, isBoss)
    if not self.__Initialized then
        print("[BattleInit] 错误: 战斗系统未初始化")
        return nil
    end
    
    -- 默认位置
    position = position or Vector(0, 0, 0)
    
    -- 创建怪物单位
    local monster = CreateClass_UnitBase(
        unitId,                    -- 单位ID
        position,                  -- 位置
        function(insid, unit, atker)  -- 死亡回调
            local typeStr = isBoss and "Boss" or "怪物"
            print(string.format("[BattleInit] %s死亡: %d", typeStr, insid))
            self:OnMonsterDeath(unit, atker)
        end,
        nil,                       -- 非英雄
        nil,                       -- 玩家
        isBoss or false,           -- 是否特殊单位(Boss)
        1,                         -- 属性基数
        nil                        -- 归属单位
    )
    
    if monster then
        -- 设置阵营
        monster:SetCamp(EnumUnitCamp.Monster)
        
        -- 添加到 Units 管理器
        Units:AddToLib(monster:GetInsid(), monster, "dungeon_monster")
        
        -- 创建 Unity 实体
        local entityId = CreateEntity(unitId + 2000, position)  -- +2000 确保是怪物阵营颜色
        if entityId then
            monster.__EntityId = entityId
            local typeStr = isBoss and "Boss" or "怪物"
            print(string.format("[BattleInit] 创建%s: UnitId=%d, Insid=%d, EntityId=%d", 
                typeStr, unitId, monster:GetInsid(), entityId))
        end
    end
    
    return monster
end

--[================[获取玩家英雄]================]
---@return CUnitBase|nil
function _M:GetPlayerHero()
    return self.__HeroUnit
end

--[================[英雄死亡回调]================]
function _M:OnHeroDeath(unit, attacker)
    self.__State = BattleState.ENDED
    
    -- 通知游戏流程
    if Flow and Flow.EndDungeon then
        Flow:EndDungeon(false)  -- 失败
    end
end

--[================[怪物死亡回调]================]
function _M:OnMonsterDeath(unit, attacker)
    -- 怪物死亡由副本逻辑处理
    -- 这里可以添加击杀奖励等逻辑
end

--[================[释放技能]================]
---@param skillSlot number 技能槽位 (1-4)
---@return boolean
function _M:CastSkill(skillSlot)
    if not self.__Initialized then
        print("[BattleInit] 错误: 战斗系统未初始化")
        return false
    end
    
    if not self.__HeroUnit then
        print("[BattleInit] 错误: 没有英雄单位")
        return false
    end
    
    if self.__State ~= BattleState.FIGHTING then
        print("[BattleInit] 警告: 当前不在战斗状态")
        return false
    end
    
    -- 获取英雄的技能
    local hero = self.__HeroUnit
    local skillId = hero:GetSkillBySlot(skillSlot)
    
    if not skillId then
        print("[BattleInit] 警告: 技能槽位 " .. skillSlot .. " 没有技能")
        return false
    end
    
    -- 查找目标（获取最近的敌人）
    local target = nil
    local heroPos = hero:GetAbsOrigin()
    if Units then
        -- 查找最近的怪物
        local monsters = Units:GetUnitsByLib("dungeon_monster")
        local minDist = math.huge
        for insid, monster in pairs(monsters or {}) do
            if monster:IsAlive() then
                local dist = (monster:GetAbsOrigin() - heroPos):Length()
                if dist < minDist then
                    minDist = dist
                    target = monster
                end
            end
        end
    end
    
    -- 调用 SkillAPI 释放技能
    if SkillAPI and SkillAPI.DoSkill and DoSkillData then
        -- 验证单位是否在 Units 中注册
        local unitInUnits = Units and Units:GetUnitByInsid(hero:GetInsid())
        if not unitInUnits then
            print("[BattleInit] 警告: 英雄不在 Units 系统中，尝试重新添加")
            Units:Add(hero)
        end
        
        -- 创建正确的 DoSkillData 实例
        local doSkillData = DoSkillData.New()
        doSkillData.CasterInsId = hero:GetInsid()
        doSkillData.TargetInsId = target and target:GetInsid() or 0
        doSkillData.SkillId = skillId
        doSkillData.SkillLevel = hero:GetSkillLevel(skillId) or 1
        doSkillData.Position = target and target:GetPosition() or hero:GetPosition()
        doSkillData.StartPosition = hero:GetPosition()
        doSkillData.CasterCamp = hero:GetCamp()
        doSkillData.TargetCamp = target and target:GetCamp() or 0
        
        print(string.format("[BattleInit] 释放技能: 槽位=%d, 技能ID=%d, 施法者=%d, 目标=%s",
            skillSlot, skillId, hero:GetInsid(),
            target and target:GetInsid() or "无"))
            
        local result = SkillAPI.DoSkill(doSkillData)
        print(string.format("[BattleInit] 技能释放结果: %s", result and "成功" or "失败"))
        return result ~= nil
    else
        print("[BattleInit] 错误: SkillAPI/DoSkillData 未加载")
    end
    
    return false
end

--[================[开始战斗]================]
function _M:StartBattle()
    if not self.__Initialized then
        print("[BattleInit] 错误: 战斗系统未初始化")
        return false
    end
    
    self.__State = BattleState.FIGHTING
    print("[BattleInit] 战斗开始")
    return true
end

--[================[结束战斗]================]
function _M:EndBattle()
    self.__State = BattleState.ENDED
    print("[BattleInit] 战斗结束")
end

--[================[清理战斗系统]================]
function _M:Clear()
    -- 清理英雄
    if self.__HeroUnit then
        local entityId = self.__HeroUnit.__EntityId
        if entityId and DestroyEntity then
            DestroyEntity(entityId)
        end
        self.__HeroUnit = nil
    end
    
    -- 清理怪物
    if Units then
        local monsters = Units:GetUnitsByLib("dungeon_monster")
        for insid, monster in pairs(monsters or {}) do
            local entityId = monster.__EntityId
            if entityId and DestroyEntity then
                DestroyEntity(entityId)
            end
        end
        Units:RemoveUnitByLib("dungeon_monster")
    end
    
    -- 清理技能模块
    if SkillModule and SkillModule.Clear then
        SkillModule.Clear()
    end
    
    self.__State = BattleState.NONE
    print("[BattleInit] 战斗系统已清理")
end

--[================[每帧更新]================]
function _M:Tick(dt)
    if self.__State ~= BattleState.FIGHTING then
        return
    end
    
    -- 技能模块的更新由 SetThink 处理
end

print("[Phase 9.1] battle_init.lua 加载完成")
return BattleInit
