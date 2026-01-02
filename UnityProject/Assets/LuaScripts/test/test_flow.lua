--[[test/test_flow.lua]]
--[[
    Phase 7 流程框架测试
    测试完整的游戏流程：启动 -> 大厅 -> 选英雄 -> 选副本 -> 进入副本 -> 战斗 -> 结算 -> 返回大厅
]]

print("========================================")
print("   Phase 7: 游戏流程框架测试")
print("========================================")

-- 加载测试框架
require("test.TestFramework")
require("test.TestHelper")

-- 加载核心模块
require("critcore.skill.lib.Classnew")
require("critcore.skill.lib.Define")
require("critcore.skill.lib.MessageConst")
require("critcore.skill.lib.Message")
require("critcore.static.units")
require("critcore.static.flow")

-- 清理测试
TestFramework:Clear()

--[================[测试组：Flow 模块基础]================]
TestFramework:RegisterGroup("Flow模块基础", {
    setUp = function()
        -- 重置 Flow 状态
        Flow.__CurrentState = GameState.NONE
        Flow.__Player = nil
        Flow.__Dungeon = nil
        Flow.__SelectedHeroId = nil
        Flow.__SelectedDungeonId = nil
    end,
    
    tearDown = function()
    end,
    
    tests = {
        ["GameState 枚举存在"] = function()
            TestFramework:AssertNotNil(GameState, "GameState 应存在")
            TestFramework:AssertEqual(GameState.NONE, 0, "NONE = 0")
            TestFramework:AssertEqual(GameState.INIT, 1, "INIT = 1")
            TestFramework:AssertEqual(GameState.LOBBY, 2, "LOBBY = 2")
            TestFramework:AssertEqual(GameState.IN_DUNGEON, 6, "IN_DUNGEON = 6")
        end,
        
        ["DungeonState 枚举存在"] = function()
            TestFramework:AssertNotNil(DungeonState, "DungeonState 应存在")
            TestFramework:AssertEqual(DungeonState.INIT, 0, "INIT = 0")
            TestFramework:AssertEqual(DungeonState.VICTORY, 3, "VICTORY = 3")
        end,
        
        ["Flow 模块存在"] = function()
            TestFramework:AssertNotNil(Flow, "Flow 应存在")
            TestFramework:AssertNotNil(Flow.Init, "Flow:Init 应存在")
            TestFramework:AssertNotNil(Flow.EnterLobby, "Flow:EnterLobby 应存在")
            TestFramework:AssertNotNil(Flow.SelectHero, "Flow:SelectHero 应存在")
            TestFramework:AssertNotNil(Flow.SelectDungeon, "Flow:SelectDungeon 应存在")
            TestFramework:AssertNotNil(Flow.StartDungeon, "Flow:StartDungeon 应存在")
        end,
        
        ["GetState 和 GetStateName"] = function()
            Flow.__CurrentState = GameState.LOBBY
            TestFramework:AssertEqual(Flow:GetState(), GameState.LOBBY, "GetState 应返回 LOBBY")
            TestFramework:AssertEqual(Flow:GetStateName(), "LOBBY", "GetStateName 应返回 'LOBBY'")
        end,
    }
})

--[================[测试组：流程状态切换]================]
TestFramework:RegisterGroup("流程状态切换", {
    setUp = function()
        Flow.__CurrentState = GameState.NONE
        Flow.__Player = nil
        Flow.__Dungeon = nil
        Flow.__SelectedHeroId = nil
        Flow.__SelectedDungeonId = nil
    end,
    
    tests = {
        ["Init -> LOBBY"] = function()
            Flow:Init()
            TestFramework:AssertEqual(Flow:GetState(), GameState.LOBBY, "Init 后应进入 LOBBY")
        end,
        
        ["LOBBY -> SELECT_HERO"] = function()
            Flow.__CurrentState = GameState.LOBBY
            Flow.__Player = { GetHero = function() return nil end, CreateHero = function() end }
            
            local result = Flow:SelectHero(1001)
            TestFramework:Assert(result, "SelectHero 应返回 true")
            TestFramework:AssertEqual(Flow:GetState(), GameState.SELECT_HERO, "应进入 SELECT_HERO")
            TestFramework:AssertEqual(Flow.__SelectedHeroId, 1001, "SelectedHeroId 应为 1001")
        end,
        
        ["SELECT_HERO -> SELECT_DUNGEON"] = function()
            Flow.__CurrentState = GameState.SELECT_HERO
            Flow.__SelectedHeroId = 1001
            
            local result = Flow:SelectDungeon(1)
            TestFramework:Assert(result, "SelectDungeon 应返回 true")
            TestFramework:AssertEqual(Flow:GetState(), GameState.SELECT_DUNGEON, "应进入 SELECT_DUNGEON")
            TestFramework:AssertEqual(Flow.__SelectedDungeonId, 1, "SelectedDungeonId 应为 1")
        end,
        
        ["无法从 LOBBY 直接选择副本"] = function()
            Flow.__CurrentState = GameState.LOBBY
            Flow.__SelectedHeroId = nil
            
            local result = Flow:SelectDungeon(1)
            TestFramework:Assert(not result, "未选英雄时 SelectDungeon 应返回 false")
        end,
        
        ["SELECT_DUNGEON -> IN_DUNGEON"] = function()
            Flow.__CurrentState = GameState.SELECT_DUNGEON
            Flow.__SelectedDungeonId = 1
            
            local result = Flow:StartDungeon()
            TestFramework:Assert(result, "StartDungeon 应返回 true")
            TestFramework:AssertEqual(Flow:GetState(), GameState.IN_DUNGEON, "应进入 IN_DUNGEON")
            TestFramework:AssertNotNil(Flow.__Dungeon, "Dungeon 应被创建")
        end,
    }
})

--[================[测试组：副本系统]================]
TestFramework:RegisterGroup("副本系统", {
    setUp = function()
        Flow.__CurrentState = GameState.SELECT_DUNGEON
        Flow.__SelectedDungeonId = 1
        Flow.__Dungeon = nil
    end,
    
    tests = {
        ["副本创建"] = function()
            Flow:StartDungeon()
            
            local dungeon = Flow:GetDungeon()
            TestFramework:AssertNotNil(dungeon, "副本应被创建")
            TestFramework:AssertEqual(dungeon:GetDungeonId(), 1, "副本ID应为1")
            TestFramework:AssertEqual(dungeon:GetState(), DungeonState.RUNNING, "副本应处于 RUNNING 状态")
        end,
        
        ["房间系统"] = function()
            Flow:StartDungeon()
            local dungeon = Flow:GetDungeon()
            
            TestFramework:Assert(#dungeon.__Rooms > 0, "应有房间")
            TestFramework:AssertEqual(dungeon.__CurrentRoomIndex, 1, "应在第一个房间")
        end,
        
        ["怪物生成"] = function()
            Flow:StartDungeon()
            local dungeon = Flow:GetDungeon()
            
            TestFramework:Assert(#dungeon.__Monsters > 0, "应有怪物")
            
            local aliveCount = dungeon:GetAliveMonsterCount()
            TestFramework:Assert(aliveCount > 0, "存活怪物数应大于0")
        end,
        
        ["杀死怪物"] = function()
            Flow:StartDungeon()
            local dungeon = Flow:GetDungeon()
            
            local initialCount = dungeon:GetAliveMonsterCount()
            dungeon:KillMonster(1)
            local afterCount = dungeon:GetAliveMonsterCount()
            
            TestFramework:AssertEqual(afterCount, initialCount - 1, "杀死怪物后数量应减少")
        end,
        
        ["房间通关检测"] = function()
            Flow:StartDungeon()
            local dungeon = Flow:GetDungeon()
            
            -- 杀死所有怪物
            dungeon:KillAllMonsters()
            
            -- 模拟一帧更新触发通关检测
            dungeon:Tick(0.016)
            
            -- 应该进入下一个房间
            TestFramework:Assert(dungeon.__CurrentRoomIndex > 1, "应进入下一个房间")
        end,
    }
})

--[================[测试组：完整流程]================]
TestFramework:RegisterGroup("完整流程", {
    setUp = function()
        Flow.__CurrentState = GameState.NONE
        Flow.__Player = nil
        Flow.__Dungeon = nil
        Flow.__SelectedHeroId = nil
        Flow.__SelectedDungeonId = nil
    end,
    
    tests = {
        ["完整游戏流程"] = function()
            print("\n--- 开始完整流程测试 ---")
            
            -- 1. 初始化
            Flow:Init()
            TestFramework:AssertEqual(Flow:GetState(), GameState.LOBBY, "1. 应在大厅")
            print("✓ 进入大厅")
            
            -- 2. 选择英雄
            Flow:SelectHero(1001)
            TestFramework:AssertEqual(Flow:GetState(), GameState.SELECT_HERO, "2. 应在选英雄")
            print("✓ 选择英雄 1001")
            
            -- 3. 选择副本
            Flow:SelectDungeon(1)
            TestFramework:AssertEqual(Flow:GetState(), GameState.SELECT_DUNGEON, "3. 应在选副本")
            print("✓ 选择副本 1")
            
            -- 4. 开始副本
            Flow:StartDungeon()
            TestFramework:AssertEqual(Flow:GetState(), GameState.IN_DUNGEON, "4. 应在副本中")
            print("✓ 进入副本")
            
            local dungeon = Flow:GetDungeon()
            
            -- 5. 模拟战斗（通关所有房间）
            local roomCount = #dungeon.__Rooms
            for roomIdx = 1, roomCount do
                print("  战斗: 房间 " .. roomIdx)
                dungeon:KillAllMonsters()
                Flow:Tick(0.016)  -- 使用 Flow:Tick 以便检测副本结束
            end
            print("✓ 战斗完成")
            
            -- 6. 检查是否进入结算
            TestFramework:AssertEqual(Flow:GetState(), GameState.SETTLEMENT, "5. 应在结算")
            print("✓ 进入结算")
            
            -- 7. 返回大厅
            Flow:ReturnToLobby()
            TestFramework:AssertEqual(Flow:GetState(), GameState.LOBBY, "6. 应返回大厅")
            print("✓ 返回大厅")
            
            print("--- 完整流程测试通过 ---\n")
        end,
        
        ["多次副本循环"] = function()
            print("\n--- 开始多次循环测试 ---")
            
            for i = 1, 3 do
                print("第 " .. i .. " 次循环:")
                
                -- 设置初始状态
                if i == 1 then
                    Flow:Init()
                else
                    -- 从结算返回大厅
                    Flow.__CurrentState = GameState.SETTLEMENT
                    Flow:ReturnToLobby()
                end
                
                Flow:SelectHero(1001)
                Flow:SelectDungeon(1)
                Flow:StartDungeon()
                
                local dungeon = Flow:GetDungeon()
                for roomIdx = 1, #dungeon.__Rooms do
                    dungeon:KillAllMonsters()
                    Flow:Tick(0.016)  -- 使用 Flow:Tick
                end
                
                TestFramework:AssertEqual(Flow:GetState(), GameState.SETTLEMENT, "循环" .. i .. ": 应在结算")
                print("  ✓ 循环 " .. i .. " 完成")
            end
            
            print("--- 多次循环测试通过 ---\n")
        end,
    }
})

--[================[运行测试]================]
print("\n开始运行测试...")
TestFramework:Run()

-- 导出 Stub 报告
if CS and CS.CritFramework and CS.CritFramework.StubConfig then
    CS.CritFramework.StubConfig.ExportReport()
end

print("\n========================================")
print("   Phase 7 流程框架测试完成")
print("========================================")
