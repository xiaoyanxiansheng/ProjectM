--[[test/TestFramework.lua]]
-- 集成测试框架
-- 提供测试注册、断言、运行等功能

TestFramework = {}
TestFramework.tests = {}
TestFramework.results = {
    passed = 0,
    failed = 0,
    errors = {}
}

-- ==================== 测试注册 ====================

--- 注册一个测试用例
---@param name string 测试名称
---@param testFunc function 测试函数
function TestFramework:Register(name, testFunc)
    table.insert(self.tests, { name = name, func = testFunc })
end

--- 注册一组测试（带 setUp 和 tearDown）
---@param groupName string 组名
---@param tests table 测试列表 { {name, func}, ... }
---@param setUp function 每个测试前执行
---@param tearDown function 每个测试后执行
function TestFramework:RegisterGroup(groupName, tests, setUp, tearDown)
    for _, test in ipairs(tests) do
        local wrappedFunc = function()
            if setUp then setUp() end
            local success, err = pcall(test.func)
            if tearDown then tearDown() end
            if not success then error(err) end
        end
        table.insert(self.tests, { 
            name = string.format("[%s] %s", groupName, test.name), 
            func = wrappedFunc 
        })
    end
end

-- ==================== 断言方法 ====================

--- 断言条件为真
---@param condition boolean 条件
---@param message string 失败消息
function TestFramework:Assert(condition, message)
    if not condition then
        error(message or "Assertion failed")
    end
end

--- 断言两个值相等
---@param expected any 期望值
---@param actual any 实际值
---@param message string 失败消息
function TestFramework:AssertEqual(expected, actual, message)
    if expected ~= actual then
        error(string.format("%s: expected [%s], got [%s]", 
            message or "AssertEqual", tostring(expected), tostring(actual)))
    end
end

--- 断言两个值不相等
---@param notExpected any 不期望的值
---@param actual any 实际值
---@param message string 失败消息
function TestFramework:AssertNotEqual(notExpected, actual, message)
    if notExpected == actual then
        error(string.format("%s: should not be [%s]", 
            message or "AssertNotEqual", tostring(actual)))
    end
end

--- 断言值不为 nil
---@param value any 值
---@param message string 失败消息
function TestFramework:AssertNotNil(value, message)
    if value == nil then
        error(message or "Value is nil")
    end
end

--- 断言值为 nil
---@param value any 值
---@param message string 失败消息
function TestFramework:AssertNil(value, message)
    if value ~= nil then
        error(string.format("%s: expected nil, got [%s]", 
            message or "AssertNil", tostring(value)))
    end
end

--- 断言值为 true
---@param value any 值
---@param message string 失败消息
function TestFramework:AssertTrue(value, message)
    if value ~= true then
        error(string.format("%s: expected true, got [%s]", 
            message or "AssertTrue", tostring(value)))
    end
end

--- 断言值为 false
---@param value any 值
---@param message string 失败消息
function TestFramework:AssertFalse(value, message)
    if value ~= false then
        error(string.format("%s: expected false, got [%s]", 
            message or "AssertFalse", tostring(value)))
    end
end

--- 断言值大于
---@param value number 实际值
---@param threshold number 阈值
---@param message string 失败消息
function TestFramework:AssertGreaterThan(value, threshold, message)
    if value <= threshold then
        error(string.format("%s: expected > %s, got %s", 
            message or "AssertGreaterThan", tostring(threshold), tostring(value)))
    end
end

--- 断言值小于
---@param value number 实际值
---@param threshold number 阈值
---@param message string 失败消息
function TestFramework:AssertLessThan(value, threshold, message)
    if value >= threshold then
        error(string.format("%s: expected < %s, got %s", 
            message or "AssertLessThan", tostring(threshold), tostring(value)))
    end
end

--- 断言表包含某个键
---@param tbl table 表
---@param key any 键
---@param message string 失败消息
function TestFramework:AssertContainsKey(tbl, key, message)
    if tbl[key] == nil then
        error(string.format("%s: table does not contain key [%s]", 
            message or "AssertContainsKey", tostring(key)))
    end
end

--- 断言函数类型
---@param value any 值
---@param expectedType string 期望类型
---@param message string 失败消息
function TestFramework:AssertType(value, expectedType, message)
    local actualType = type(value)
    if actualType ~= expectedType then
        error(string.format("%s: expected type [%s], got [%s]", 
            message or "AssertType", expectedType, actualType))
    end
end

-- ==================== 运行测试 ====================

--- 运行所有注册的测试
---@return boolean 是否全部通过
function TestFramework:Run()
    print("╔════════════════════════════════════════════════════════════╗")
    print("║                    开始集成测试                            ║")
    print("╠════════════════════════════════════════════════════════════╣")
    
    self.results = {
        passed = 0,
        failed = 0,
        errors = {}
    }
    
    for _, test in ipairs(self.tests) do
        local success, err = pcall(test.func)
        if success then
            self.results.passed = self.results.passed + 1
            print(string.format("║ ✓ %s", test.name))
        else
            self.results.failed = self.results.failed + 1
            table.insert(self.results.errors, {
                name = test.name,
                error = err
            })
            print(string.format("║ ✗ %s", test.name))
            print(string.format("║   错误: %s", tostring(err)))
        end
    end
    
    print("╠════════════════════════════════════════════════════════════╣")
    print(string.format("║ 测试结果: 通过 %d, 失败 %d, 总计 %d", 
        self.results.passed, self.results.failed, #self.tests))
    print("╚════════════════════════════════════════════════════════════╝")
    
    -- 输出失败详情
    if #self.results.errors > 0 then
        print("")
        print("失败测试详情:")
        for i, err in ipairs(self.results.errors) do
            print(string.format("  %d. %s", i, err.name))
            print(string.format("     %s", err.error))
        end
    end
    
    return self.results.failed == 0
end

--- 清空已注册的测试
function TestFramework:Clear()
    self.tests = {}
    self.results = {
        passed = 0,
        failed = 0,
        errors = {}
    }
end

--- 获取测试统计
---@return table 统计结果
function TestFramework:GetStats()
    return {
        total = #self.tests,
        passed = self.results.passed,
        failed = self.results.failed,
        passRate = #self.tests > 0 and (self.results.passed / #self.tests * 100) or 0
    }
end

return TestFramework
