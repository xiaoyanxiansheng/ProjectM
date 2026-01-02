--[[critcore/static/flow.lua]]
--[[
    游戏流程控制 - Phase 7 实现
    负责管理游戏的整体流程状态切换
]]

---@enum GameState 游戏状态枚举
GameState = {
    NONE = 0,           -- 无状态
    INIT = 1,           -- 初始化
    LOBBY = 2,          -- 大厅
    SELECT_HERO = 3,    -- 选英雄
    SELECT_DUNGEON = 4, -- 选副本
    LOADING = 5,        -- 加载中
    IN_DUNGEON = 6,     -- 副本中
    SETTLEMENT = 7,     -- 结算
}

---@class Flow 游戏流程管理器
Flow = Flow or {}

-- 当前游戏状态
Flow.__CurrentState = GameState.NONE

-- 当前玩家
Flow.__Player = nil

-- 当前副本
Flow.__Dungeon = nil

-- 选中的英雄ID
Flow.__SelectedHeroId = nil

-- 选中的副本ID
Flow.__SelectedDungeonId = nil


--[================[初始化]================]
function Flow:Init()
    print("[Flow] 初始化游戏流程")
    self.__CurrentState = GameState.INIT
    
    -- 发送状态变更消息
    self:__OnStateChanged(GameState.NONE, GameState.INIT)
    
    -- 自动进入大厅
    self:EnterLobby()
end


--[================[进入大厅]================]
function Flow:EnterLobby()
    if self.__CurrentState ~= GameState.INIT and 
       self.__CurrentState ~= GameState.SETTLEMENT then
        print("[Flow] 警告: 无法从当前状态进入大厅, 当前状态=" .. self.__CurrentState)
        return false
    end
    
    local oldState = self.__CurrentState
    self.__CurrentState = GameState.LOBBY
    
    print("[Flow] 进入大厅")
    
    -- 清理副本数据
    self.__Dungeon = nil
    self.__SelectedDungeonId = nil
    
    -- 创建或获取玩家
    if not self.__Player then
        self:__CreatePlayer()
    end
    
    self:__OnStateChanged(oldState, GameState.LOBBY)
    return true
end


--[================[选择英雄]================]
---@param heroId number 英雄配置ID
function Flow:SelectHero(heroId)
    if self.__CurrentState ~= GameState.LOBBY and 
       self.__CurrentState ~= GameState.SELECT_HERO then
        print("[Flow] 警告: 无法在当前状态选择英雄, 当前状态=" .. self.__CurrentState)
        return false
    end
    
    local oldState = self.__CurrentState
    self.__CurrentState = GameState.SELECT_HERO
    self.__SelectedHeroId = heroId
    
    print("[Flow] 选择英雄: " .. tostring(heroId))
    
    -- 创建英雄
    if self.__Player then
        self.__Player:CreateHero(heroId)
    end
    
    self:__OnStateChanged(oldState, GameState.SELECT_HERO)
    return true
end


--[================[选择副本]================]
---@param dungeonId number 副本配置ID
function Flow:SelectDungeon(dungeonId)
    if self.__CurrentState ~= GameState.SELECT_HERO and 
       self.__CurrentState ~= GameState.SELECT_DUNGEON then
        print("[Flow] 警告: 无法在当前状态选择副本, 当前状态=" .. self.__CurrentState)
        return false
    end
    
    if not self.__SelectedHeroId then
        print("[Flow] 警告: 必须先选择英雄")
        return false
    end
    
    local oldState = self.__CurrentState
    self.__CurrentState = GameState.SELECT_DUNGEON
    self.__SelectedDungeonId = dungeonId
    
    print("[Flow] 选择副本: " .. tostring(dungeonId))
    
    self:__OnStateChanged(oldState, GameState.SELECT_DUNGEON)
    return true
end


--[================[开始副本]================]
function Flow:StartDungeon()
    if self.__CurrentState ~= GameState.SELECT_DUNGEON then
        print("[Flow] 警告: 无法在当前状态开始副本, 当前状态=" .. self.__CurrentState)
        return false
    end
    
    if not self.__SelectedDungeonId then
        print("[Flow] 警告: 必须先选择副本")
        return false
    end
    
    local oldState = self.__CurrentState
    self.__CurrentState = GameState.LOADING
    
    print("[Flow] 开始加载副本: " .. tostring(self.__SelectedDungeonId))
    
    -- 通知 C# 显示加载界面，等待加载完成后调用 OnDungeonLoadComplete
    self:__OnStateChanged(oldState, GameState.LOADING)
    
    -- 创建副本（但不立即开始）
    self:__CreateDungeon(self.__SelectedDungeonId)
    
    return true
end


--[================[副本加载完成（由 C# 调用）]================]
function Flow:OnDungeonLoadComplete()
    if self.__CurrentState ~= GameState.LOADING then
        print("[Flow] 警告: 只有在加载状态才能调用 OnDungeonLoadComplete")
        return false
    end
    
    print("[Flow] 副本加载完成，进入副本")
    
    -- 加载完成，进入副本
    local oldState = self.__CurrentState
    self.__CurrentState = GameState.IN_DUNGEON
    self:__OnStateChanged(oldState, GameState.IN_DUNGEON)
    
    -- 开始副本
    if self.__Dungeon then
        self.__Dungeon:Start()
    end
    
    return true
end


--[================[结束副本]================]
---@param isVictory boolean 是否胜利
function Flow:EndDungeon(isVictory)
    if self.__CurrentState ~= GameState.IN_DUNGEON then
        print("[Flow] 警告: 无法在当前状态结束副本, 当前状态=" .. self.__CurrentState)
        return false
    end
    
    local oldState = self.__CurrentState
    self.__CurrentState = GameState.SETTLEMENT
    
    local resultStr = isVictory and "胜利" or "失败"
    print("[Flow] 副本结束: " .. resultStr)
    
    -- 结算
    if self.__Dungeon then
        self.__Dungeon:End()
    end
    
    -- 计算奖励
    if isVictory then
        self:__CalculateReward()
    end
    
    self:__OnStateChanged(oldState, GameState.SETTLEMENT)
    return true
end


--[================[返回大厅]================]
function Flow:ReturnToLobby()
    if self.__CurrentState ~= GameState.SETTLEMENT then
        print("[Flow] 警告: 无法在当前状态返回大厅, 当前状态=" .. self.__CurrentState)
        return false
    end
    
    print("[Flow] 返回大厅")
    
    -- 清理副本
    self:__CleanupDungeon()
    
    -- 回到大厅
    self:EnterLobby()
    return true
end


--[================[获取当前状态]================]
---@return GameState
function Flow:GetState()
    return self.__CurrentState
end


--[================[获取状态名称]================]
---@return string
function Flow:GetStateName()
    local names = {
        [GameState.NONE] = "NONE",
        [GameState.INIT] = "INIT",
        [GameState.LOBBY] = "LOBBY",
        [GameState.SELECT_HERO] = "SELECT_HERO",
        [GameState.SELECT_DUNGEON] = "SELECT_DUNGEON",
        [GameState.LOADING] = "LOADING",
        [GameState.IN_DUNGEON] = "IN_DUNGEON",
        [GameState.SETTLEMENT] = "SETTLEMENT",
    }
    return names[self.__CurrentState] or "UNKNOWN"
end


--[================[获取当前玩家]================]
---@return CPlayer|nil
function Flow:GetPlayer()
    return self.__Player
end


--[================[获取当前英雄]================]
---@return CHero|nil
function Flow:GetHero()
    if self.__Player then
        return self.__Player:GetHero()
    end
    return nil
end


--[================[获取当前副本]================]
---@return CDungeonBase|nil
function Flow:GetDungeon()
    return self.__Dungeon
end


--[================[释放技能（快捷接口）]================]
---@param skillSlot number 技能槽位 (1-4)
function Flow:CastSkill(skillSlot)
    if self.__CurrentState ~= GameState.IN_DUNGEON then
        print("[Flow] 警告: 只有在副本中才能释放技能")
        return false
    end

    print("[Flow] 释放技能槽位: " .. tostring(skillSlot))
    
    -- 使用战斗系统释放技能
    if BattleInit and BattleInit.CastSkill then
        return BattleInit:CastSkill(skillSlot)
    end
    
    -- 回退到简化版
    local hero = self:GetHero()
    if not hero then
        print("[Flow] 警告: 没有英雄无法释放技能")
        return false
    end
    return hero:CastSkillBySlot(skillSlot)
end


--[================[每帧更新]================]
---@param dt number 时间增量
function Flow:Tick(dt)
    -- 更新副本
    if self.__CurrentState == GameState.IN_DUNGEON and self.__Dungeon then
        self.__Dungeon:Tick(dt)
        
        -- 检查副本是否结束
        local state = self.__Dungeon:GetState()
        if state == DungeonState.VICTORY then
            self:EndDungeon(true)
        elseif state == DungeonState.FAILED then
            self:EndDungeon(false)
        end
    end
end


--[================[内部：状态变更回调]================]
---@param oldState GameState
---@param newState GameState
function Flow:__OnStateChanged(oldState, newState)
    print(string.format("[Flow] 状态变更: %s -> %s", 
        self:__GetStateName(oldState), 
        self:__GetStateName(newState)))
    
    -- 发送消息
    if SendMessage then
        SendMessage(MsgConst.GAME_STATE_CHANGED or "GAME_STATE_CHANGED", {
            oldState = oldState,
            newState = newState
        })
    end
    
    -- 通知 C# 层（使用注册的回调函数）
    if GameFlowBridge and GameFlowBridge.NotifyStateChanged then
        GameFlowBridge.NotifyStateChanged(oldState, newState)
    elseif GameFlowBridge_OnStateChanged then
        -- 直接调用注册的回调
        GameFlowBridge_OnStateChanged(oldState, newState)
    end
end


--[================[内部：获取状态名称]================]
function Flow:__GetStateName(state)
    local names = {
        [GameState.NONE] = "NONE",
        [GameState.INIT] = "INIT",
        [GameState.LOBBY] = "LOBBY",
        [GameState.SELECT_HERO] = "SELECT_HERO",
        [GameState.SELECT_DUNGEON] = "SELECT_DUNGEON",
        [GameState.LOADING] = "LOADING",
        [GameState.IN_DUNGEON] = "IN_DUNGEON",
        [GameState.SETTLEMENT] = "SETTLEMENT",
    }
    return names[state] or "UNKNOWN"
end


--[================[内部：创建玩家]================]
function Flow:__CreatePlayer()
    print("[Flow] 创建玩家")
    
    -- 使用 CPlayer 类（如果存在）
    if CPlayer then
        self.__Player = CPlayer.New()
        self.__Player:Init(1, "TestPlayer")
    else
        -- 简化版玩家
        self.__Player = {
            __Uid = 1,
            __Name = "TestPlayer",
            __Hero = nil,
            
            GetUid = function(self) return self.__Uid end,
            GetName = function(self) return self.__Name end,
            GetHero = function(self) return self.__Hero end,
            
            CreateHero = function(self, heroId)
                print("[Player] 创建英雄: " .. tostring(heroId))
                -- 使用 CHero 类（如果存在）
                if CHero then
                    self.__Hero = CHero.New()
                    self.__Hero:Init(heroId, self)
                else
                    -- 简化版英雄
                    self.__Hero = self:__CreateSimpleHero(heroId)
                end
                return self.__Hero
            end,
            
            __CreateSimpleHero = function(self, heroId)
                local hero = {
                    __HeroId = heroId,
                    __Player = self,
                    __Insid = Units and Units:GetNewInsid() or 1,
                    __Skills = {},
                    
                    GetHeroId = function(s) return s.__HeroId end,
                    GetPlayer = function(s) return s.__Player end,
                    GetInsid = function(s) return s.__Insid end,
                    
                    CastSkillBySlot = function(s, slot)
                        print("[Hero] 释放技能槽位: " .. tostring(slot))
                        local skillId = s.__Skills[slot]
                        if skillId and SkillManager then
                            -- 调用技能系统
                            return true
                        end
                        return false
                    end,
                    
                    LearnSkill = function(s, slot, skillId)
                        s.__Skills[slot] = skillId
                        print("[Hero] 学习技能: 槽位=" .. slot .. ", ID=" .. skillId)
                    end,
                }
                
                -- 学习默认技能
                hero:LearnSkill(1, 101)
                hero:LearnSkill(2, 102)
                hero:LearnSkill(3, 103)
                hero:LearnSkill(4, 104)
                
                return hero
            end,
        }
    end
    
    -- 注册到 Lobby
    if Lobby and Lobby.SetLocalPlayer then
        Lobby:SetLocalPlayer(self.__Player)
    end
end


--[================[内部：创建副本]================]
---@param dungeonId number
function Flow:__CreateDungeon(dungeonId)
    print("[Flow] 创建副本: " .. tostring(dungeonId))
    
    -- 加载并初始化战斗系统
    local success, err = pcall(function()
        require("critcore.static.battle_init")
    end)
    if success and BattleInit then
        BattleInit:Init()
        
        -- 创建玩家英雄单位
        if self.__Player then
            local hero = self.__Player:GetHero()
            if hero then
                local heroId = hero:GetHeroId()
                local unitId = hero.unitId or 101  -- 默认 UnitId
                local position = Vector(0, 0, 0)  -- 默认出生点
                local skills = hero.__Skills or {}  -- 技能槽位表

                BattleInit:CreatePlayerHero(heroId, unitId, position, skills)
            else
                print("[Flow] 警告: 没有英雄数据，跳过创建战斗单位")
            end
        end
    else
        print("[Flow] 警告: 加载战斗系统失败: " .. tostring(err))
    end
    
    -- 使用 CDungeonBase 类（如果存在）
    if CDungeonBase then
        self.__Dungeon = CDungeonBase.New()
        self.__Dungeon:Init(dungeonId)
    else
        -- 简化版副本
        self.__Dungeon = self:__CreateSimpleDungeon(dungeonId)
    end
end


--[================[内部：创建简化版副本]================]
function Flow:__CreateSimpleDungeon(dungeonId)
    local dungeon = {
        __DungeonId = dungeonId,
        __State = DungeonState and DungeonState.INIT or 0,
        __Time = 0,
        __Rooms = {},
        __CurrentRoomIndex = 0,
        __Monsters = {},
        __MonstersSpawned = false,  -- 标记是否已生成怪物
        
        GetDungeonId = function(s) return s.__DungeonId end,
        GetState = function(s) return s.__State end,
        GetTime = function(s) return s.__Time end,
        
        Init = function(s, id)
            s.__DungeonId = id
            print("[Dungeon] 初始化副本: " .. tostring(id))
            
            -- 从配置加载房间
            s:__LoadRooms()
        end,
        
        Start = function(s)
            s.__State = DungeonState and DungeonState.RUNNING or 1
            print("[Dungeon] 副本开始")
            
            -- 开始战斗
            if BattleInit then
                BattleInit:StartBattle()
            end
            
            -- 进入第一个房间
            s:EnterRoom(1)
        end,
        
        Tick = function(s, dt)
            s.__Time = s.__Time + dt
            
            -- 检查当前房间是否通关
            if s:__CheckRoomClear() then
                s:__OnRoomClear()
            end
        end,
        
        End = function(s)
            print("[Dungeon] 副本结束, 用时: " .. string.format("%.2f", s.__Time) .. "秒")
        end,
        
        EnterRoom = function(s, roomIndex)
            s.__CurrentRoomIndex = roomIndex
            print("[Dungeon] 进入房间: " .. tostring(roomIndex))
            
            -- 生成怪物
            s:__SpawnRoomMonsters(roomIndex)
        end,
        
        __LoadRooms = function(s)
            -- 简化：3个房间
            s.__Rooms = {
                { id = 1, name = "第一关", monsterCount = 3 },
                { id = 2, name = "第二关", monsterCount = 5 },
                { id = 3, name = "Boss关", isBoss = true, monsterCount = 1 },
            }
            print("[Dungeon] 加载房间数量: " .. #s.__Rooms)
        end,
        
        __SpawnRoomMonsters = function(s, roomIndex)
            local room = s.__Rooms[roomIndex]
            if not room then return end
            
            -- 清理上一个房间的怪物
            s:__ClearRoomMonsters()
            
            s.__Monsters = {}
            s.__MonstersSpawned = false  -- 重置标记
            local count = room.monsterCount or 1
            
            for i = 1, count do
                -- 计算怪物位置（简单排列）
                local posX = (i - 1) * 3 - (count - 1) * 1.5
                local posZ = 10  -- 怪物在前方
                local position = Vector(posX, 0, posZ)
                
                -- 使用战斗系统创建怪物实体
                local monsterUnit = nil
                if BattleInit then
                    -- 测试模式：使用 9xxx 作为测试单位ID（避免与配置表冲突）
                    local unitId = room.isBoss and 9999 or (9000 + i)
                    monsterUnit = BattleInit:CreateMonster(unitId, position, room.isBoss)
                end
                
                local monster = {
                    id = i,
                    hp = room.isBoss and 1000 or 100,
                    maxHp = room.isBoss and 1000 or 100,
                    alive = true,
                    isBoss = room.isBoss or false,
                    unit = monsterUnit,  -- 关联战斗单位
                }
                table.insert(s.__Monsters, monster)
            end
            
            local typeStr = room.isBoss and "Boss" or "怪物"
            print("[Dungeon] 生成" .. typeStr .. "数量: " .. count)
            
            s.__MonstersSpawned = true  -- 标记怪物已生成
        end,
        
        __ClearRoomMonsters = function(s)
            -- 清理怪物实体
            if BattleInit and Units then
                local monsters = Units:GetUnitsByLib("dungeon_monster")
                for insid, monster in pairs(monsters or {}) do
                    if monster.__EntityId and DestroyEntity then
                        DestroyEntity(monster.__EntityId)
                    end
                end
                Units:RemoveUnitByLib("dungeon_monster")
            end
        end,
        
        __CheckRoomClear = function(s)
            -- 优先检查 Units 系统中的存活怪物（与 BattleInit 同步）
            if Units then
                local monsters = Units:GetUnitsByLib("dungeon_monster")
                local aliveCount = 0
                for insid, monster in pairs(monsters or {}) do
                    if monster:IsAlive() then
                        aliveCount = aliveCount + 1
                    end
                end
                -- 有怪物被生成且全部死亡 = 通关
                return s.__MonstersSpawned and aliveCount == 0
            end
            
            -- 回退到简化版检测
            for _, monster in ipairs(s.__Monsters) do
                if monster.alive then
                    return false
                end
            end
            return #s.__Monsters > 0
        end,
        
        __OnRoomClear = function(s)
            print("[Dungeon] 房间通关: " .. tostring(s.__CurrentRoomIndex))
            
            -- 下一个房间
            local nextRoom = s.__CurrentRoomIndex + 1
            if nextRoom <= #s.__Rooms then
                s:EnterRoom(nextRoom)
            else
                -- 所有房间通关
                s.__State = DungeonState and DungeonState.VICTORY or 3
                print("[Dungeon] 副本胜利!")
            end
        end,
        
        -- 杀死怪物（测试用）
        KillMonster = function(s, index)
            local monster = s.__Monsters[index]
            if monster and monster.alive then
                monster.alive = false
                monster.hp = 0
                local typeStr = monster.isBoss and "Boss" or "怪物"
                print("[Dungeon] " .. typeStr .. " " .. index .. " 死亡")
                return true
            end
            return false
        end,
        
        -- 杀死所有怪物（测试用）
        KillAllMonsters = function(s)
            for i, monster in ipairs(s.__Monsters) do
                if monster.alive then
                    s:KillMonster(i)
                end
            end
        end,
        
        -- 获取存活怪物数量
        GetAliveMonsterCount = function(s)
            local count = 0
            for _, monster in ipairs(s.__Monsters) do
                if monster.alive then
                    count = count + 1
                end
            end
            return count
        end,
    }
    
    dungeon:Init(dungeonId)
    return dungeon
end


--[================[内部：清理副本]================]
function Flow:__CleanupDungeon()
    print("[Flow] 清理副本数据")

    if self.__Dungeon then
        self.__Dungeon = nil
    end

    -- 清理战斗系统
    if BattleInit and BattleInit.Clear then
        BattleInit:Clear()
    end

    -- 清理副本中的单位
    if Units then
        Units:RemoveUnitByLib("dungeon_monster")
    end
end


--[================[内部：计算奖励]================]
function Flow:__CalculateReward()
    print("[Flow] 计算奖励...")
    
    -- 简化：固定奖励
    local rewards = {
        gold = 100,
        exp = 50,
    }
    
    print("[Flow] 获得奖励: 金币=" .. rewards.gold .. ", 经验=" .. rewards.exp)
    
    -- 通知玩家
    if self.__Player and self.__Player.AddMoney then
        self.__Player:AddMoney("gold", rewards.gold)
    end
    
    return rewards
end


-- 定义副本状态（如果不存在）
if not DungeonState then
    ---@enum DungeonState 副本状态
    DungeonState = {
        INIT = 0,       -- 初始化
        RUNNING = 1,    -- 进行中
        PAUSED = 2,     -- 暂停
        VICTORY = 3,    -- 胜利
        FAILED = 4,     -- 失败
    }
end


print("[Phase 7] flow.lua 加载完成")
