--[[
    桥接层测试脚本
    测试所有 Phase 1 实现的 API
]]

print("========== 桥接测试开始 ==========")
print("")

-- ========== 测试时间 API ==========
print("--- 时间 API 测试 ---")
print("Time(): " .. Time())
print("FrameTime(): " .. FrameTime())
print("GetSystemTime(): " .. GetSystemTime())
print("GetSystemTimeMS(): " .. GetSystemTimeMS())
print("")

-- ========== 测试向量 API ==========
print("--- 向量 API 测试 ---")
local v1 = Vector(1, 2, 3)
local v2 = Vector(4, 5, 6)
print("v1 = Vector(1, 2, 3)")
print("v2 = Vector(4, 5, 6)")
print("v1.x, v1.y, v1.z: " .. v1.x .. ", " .. v1.y .. ", " .. v1.z)
print("v1:Length(): " .. v1:Length())
print("v1:Length2D(): " .. v1:Length2D())

local v3 = v1 + v2
print("v1 + v2: " .. v3.x .. ", " .. v3.y .. ", " .. v3.z)

local v4 = v2 - v1
print("v2 - v1: " .. v4.x .. ", " .. v4.y .. ", " .. v4.z)

local v5 = v1 * 2
print("v1 * 2: " .. v5.x .. ", " .. v5.y .. ", " .. v5.z)

local v6 = -v1
print("-v1: " .. v6.x .. ", " .. v6.y .. ", " .. v6.z)

local v7 = v1:Normalized()
print("v1:Normalized(): " .. string.format("%.4f, %.4f, %.4f", v7.x, v7.y, v7.z))

local dotResult = v1:Dot(v2)
print("v1:Dot(v2): " .. dotResult)

local v8 = v1:Cross(v2)
print("v1:Cross(v2): " .. v8.x .. ", " .. v8.y .. ", " .. v8.z)
print("")

-- ========== 测试位运算 API ==========
print("--- 位运算 API 测试 ---")
print("bit.lshift(1, 4) = " .. bit.lshift(1, 4) .. " (预期: 16)")
print("bit.rshift(16, 2) = " .. bit.rshift(16, 2) .. " (预期: 4)")
print("bit.band(15, 9) = " .. bit.band(15, 9) .. " (预期: 9)")
print("bit.bor(8, 4) = " .. bit.bor(8, 4) .. " (预期: 12)")
print("bit.bxor(15, 9) = " .. bit.bxor(15, 9) .. " (预期: 6)")
print("")

-- ========== 测试调试 API ==========
print("--- 调试 API 测试 ---")
print("GetMapName(): " .. GetMapName())
print("IsInToolsMode(): " .. tostring(IsInToolsMode()))
print("IsClient(): " .. tostring(IsClient()))
print("")

-- ========== 测试随机数 API ==========
print("--- 随机数 API 测试 ---")
print("RandomInt(1, 10): " .. RandomInt(1, 10))
print("RandomInt(1, 10): " .. RandomInt(1, 10))
print("RandomInt(1, 10): " .. RandomInt(1, 10))
print("RandomFloat(0, 1): " .. RandomFloat(0, 1))
print("RandomFloat(0, 1): " .. RandomFloat(0, 1))
print("")

-- ========== 测试游戏循环 API ==========
print("--- 游戏循环 API 测试 ---")
local TestModule = {}
TestModule.tickCount = 0
TestModule.maxTicks = 5

function TestModule.Update()
    TestModule.tickCount = TestModule.tickCount + 1
    if TestModule.tickCount <= TestModule.maxTicks then
        print("TestModule.Update tick: " .. TestModule.tickCount .. " / " .. TestModule.maxTicks)
    elseif TestModule.tickCount == TestModule.maxTicks + 1 then
        print("TestModule.Update: 测试完成，后续不再打印")
    end
    return FrameTime()  -- 返回下次调用间隔
end

-- 注册到游戏循环
GameRules:GetGameModeEntity():SetThink("Update", TestModule)
print("已注册 TestModule.Update 到游戏循环")
print("")

print("========== 桥接测试结束 ==========")
print("请观察 Console 输出，确认 Update 函数被周期调用")
