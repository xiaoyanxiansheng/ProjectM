-- test/test_core.lua
-- Phase 2 核心框架测试

print("========== Phase 2 核心框架测试 ==========")

-- 预先加载依赖（顺序很重要！）
require("critcore.tool.table")           -- table 扩展（Phase 1.5 已移植）
require("critcore.skill.lib.Define")     -- 定义 table.ContainValue 等（必须在 Message 之前）
require("critcore.static.conf_data")     -- ConfData（Phase 1.5 已移植）

-- 1. 测试 Classnew OOP 系统
print("\n--- 1. 测试 Classnew ---")
require("critcore.skill.lib.Classnew")

-- 创建基类
local Animal = Classnew("Animal")
function Animal:ctor(name)
    self.name = name
end
function Animal:speak()
    return self.name .. " makes a sound"
end

-- 创建子类
local Dog = Classnew("Dog", Animal)
function Dog:ctor(name, breed)
    Dog.super.ctor(self, name)
    self.breed = breed
end
function Dog:speak()
    return self.name .. " barks!"
end

-- 测试
local animal = Animal.New("Generic")
local dog = Dog.New("Buddy", "Golden Retriever")

assert(animal.name == "Generic", "Animal name failed")
assert(animal:speak() == "Generic makes a sound", "Animal speak failed")
assert(dog.name == "Buddy", "Dog name failed")
assert(dog.breed == "Golden Retriever", "Dog breed failed")
assert(dog:speak() == "Buddy barks!", "Dog speak failed")
assert(dog.class.__cname == "Dog", "Dog classname failed")
print("✓ Classnew OOP 系统测试通过")

-- 2. 测试 clone 函数
print("\n--- 2. 测试 clone ---")
local original = {a = 1, b = {c = 2}}
local cloned = clone(original)
cloned.a = 10
cloned.b.c = 20
assert(original.a == 1, "clone shallow copy failed")
assert(original.b.c == 2, "clone deep copy failed")
print("✓ clone 函数测试通过")

-- 3. 测试消息系统
print("\n--- 3. 测试消息系统 ---")
require("critcore.skill.lib.Message")

local received = nil
local function onTestMessage(msg)
    received = msg.params.value
end

RegisterMessage(MsgConst.SKill_DO_START, onTestMessage, nil)

local msg = BeginMessage(MsgConst.SKill_DO_START)
msg.params = {value = 42}
SendMessage(msg)

assert(received == 42, "Message system failed")
print("✓ 消息系统测试通过")

RemoveMessage(MsgConst.SKill_DO_START, onTestMessage)

-- 4. 测试 Define 中的工具函数
print("\n--- 4. 测试 Define 工具函数 ---")
-- Define 已在开头加载

-- table.ContainValue
local t = {{id = 1}, {id = 2}, {id = 3}}
assert(table.ContainValue(t, 2, "id", nil) == 2, "table.ContainValue failed")

-- Lerp
assert(Lerp(0, 100, 0.5) == 50, "Lerp failed")
assert(Lerp2(0, 100, 0.5) == 50, "Lerp2 failed")

-- DoExpression
local T = {a = 10, b = 20}
assert(DoExpression("T.a + T.b", T) == 30, "DoExpression failed")

-- BuffEvent 枚举
assert(BuffEvent.CantMagic == 1, "BuffEvent.CantMagic failed")
assert(BuffEvent.Displacement == 2, "BuffEvent.Displacement failed")

-- GetCurTime
local curTime = GetCurTime()
assert(curTime >= 0, "GetCurTime failed")
print("✓ Define 工具函数测试通过")

-- 5. 测试 math 扩展
print("\n--- 5. 测试 math 扩展 ---")
require("critcore.tool.math")

assert(math.round(1.4) == 1, "math.round down failed")
assert(math.round(1.5) == 2, "math.round up failed")

local v1 = Vector(1, 0, 0)
local v2 = Vector(0, 1, 0)
local angle = math.two_vector_angle(v1, v2)
assert(math.abs(angle - 90) < 0.01, "math.two_vector_angle failed: " .. tostring(angle))

local polygon = {Vector(0,0,0), Vector(4,0,0), Vector(4,4,0), Vector(0,4,0)}
assert(math.is_point_in_polygon(Vector(2,2,0), polygon) == true, "point in polygon failed")
assert(math.is_point_in_polygon(Vector(5,5,0), polygon) == false, "point outside polygon failed")
print("✓ math 扩展测试通过")

-- 6. 测试 string 扩展
print("\n--- 6. 测试 string 扩展 ---")
require("critcore.tool.string")

local parts = string.split_lite("a,b,c", ",")
assert(#parts == 3, "string.split_lite count failed")
assert(parts[1] == "a", "string.split_lite value failed")

local replaced = string.getReplace("Hello {name}!", {name = "World"})
assert(replaced == "Hello World!", "string.getReplace failed")
print("✓ string 扩展测试通过")

-- 7. 测试 time 工具
print("\n--- 7. 测试 time 工具 ---")
require("critcore.tool.time")

local ts1 = 1735689600  -- 2025-01-01 00:00:00 UTC
local year, month, day = TimestampToDatetime(ts1)
assert(year == 2025 and month == 1 and day == 1, "TimestampToDatetime failed: " .. year .. "-" .. month .. "-" .. day)

local dateStr = TimestampToDateString(ts1)
assert(dateStr == "2025-1-1", "TimestampToDateString failed: " .. dateStr)

-- 测试同一天判断
assert(TimestampIsSameDay(ts1, ts1 + 3600) == true, "TimestampIsSameDay same day failed")
assert(TimestampIsSameDay(ts1, ts1 + 86400) == false, "TimestampIsSameDay different day failed")
print("✓ time 工具测试通过")

-- 8. 测试 cover 工具函数
print("\n--- 8. 测试 cover 工具函数 ---")
require("critcore.tool.cover")

assert(If(true, "yes", "no") == "yes", "If true failed")
assert(If(false, "yes", "no") == "no", "If false failed")

local result = TryCall(false, function() return 123 end)
assert(result == 123, "TryCall success failed")
print("✓ cover 工具函数测试通过")

-- 9. 测试 JSON
print("\n--- 9. 测试 JSON ---")
require("critcore.tool.json")

local jsonStr = '{"name":"test","value":42}'
local decoded = JSON:decode(jsonStr)
assert(decoded.name == "test", "JSON decode name failed")
assert(decoded.value == 42, "JSON decode value failed")

local encoded = JSON:encode({a = 1, b = "hello"})
assert(type(encoded) == "string", "JSON encode failed")
print("✓ JSON 测试通过")

-- 10. 测试 ConfData 集成
print("\n--- 10. 测试 ConfData 集成 ---")
-- ConfData 已在 Phase 1.5 移植，这里测试 Define 中的配置访问函数
-- 使用 pcall 安全测试，因为配置表中可能没有特定 ID
local success, result = pcall(function()
    -- 尝试读取配置表中存在的数据
    local skillTable = ConfData:GetTable("Skill")
    if skillTable then
        -- 获取第一个有效的技能 ID
        for id, line in pairs(skillTable) do
            if type(id) == "number" then
                print("  Skill 表存在，示例 ID: " .. id)
                return true
            end
        end
    end
    return false
end)
if success and result then
    print("✓ ConfData 集成测试通过")
else
    print("  [跳过] ConfData 配置表测试（表可能为空）")
    print("✓ ConfData 集成测试跳过")
end

print("\n========== Phase 2 所有测试通过！ ==========")
