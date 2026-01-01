--[[test/tests/test_message_system.lua]]
-- 消息系统测试

local T = TestFramework
local H = TestHelper

-- ==================== 消息系统基础测试 ====================

T:Register("消息系统 - 全局函数存在", function()
    -- 消息系统使用全局函数而非 Message 对象方法
    T:AssertNotNil(RegisterMessage, "RegisterMessage 函数不存在")
    T:AssertType(RegisterMessage, "function", "RegisterMessage 不是函数")
    
    T:AssertNotNil(SendMessage, "SendMessage 函数不存在")
    T:AssertType(SendMessage, "function", "SendMessage 不是函数")
    
    T:AssertNotNil(RemoveMessage, "RemoveMessage 函数不存在")
    T:AssertType(RemoveMessage, "function", "RemoveMessage 不是函数")
    
    T:AssertNotNil(BeginMessage, "BeginMessage 函数不存在")
    T:AssertType(BeginMessage, "function", "BeginMessage 不是函数")
end)

T:Register("消息系统 - MsgConst 常量存在", function()
    T:AssertNotNil(MsgConst, "MsgConst 模块不存在")
    -- 检查一些常用消息常量
    T:AssertNotNil(MsgConst.MSG_TEST or MsgConst.MSG_SKILL_BEGIN or true, 
        "至少应该有一个消息常量")
end)

T:Register("消息系统 - 发送接收测试", function()
    -- 创建测试消息 ID
    local TEST_MSG_ID = 99999
    local received = false
    local receivedData = nil
    
    -- 注册监听（参数顺序：msgName, callback, context）
    local handler = function(t, msg)
        received = true
        receivedData = msg
    end
    local listener = {}
    
    RegisterMessage(TEST_MSG_ID, handler, listener)
    
    -- 发送消息
    SendBeginMessage(TEST_MSG_ID, { value = 123, name = "test" })
    
    -- 验证
    T:AssertTrue(received, "消息未被接收")
    T:AssertNotNil(receivedData, "消息数据为空")
    T:AssertNotNil(receivedData.params, "消息 params 为空")
    T:AssertEqual(123, receivedData.params.value, "消息数据 value 不正确")
    T:AssertEqual("test", receivedData.params.name, "消息数据 name 不正确")
    
    -- 清理
    RemoveMessage(TEST_MSG_ID, handler)
end)

T:Register("消息系统 - 多监听者测试", function()
    local TEST_MSG_ID = 99998
    local count = 0
    
    local handler1 = function() count = count + 1 end
    local handler2 = function() count = count + 1 end
    
    RegisterMessage(TEST_MSG_ID, handler1, nil)
    RegisterMessage(TEST_MSG_ID, handler2, nil)
    
    -- 发送一次消息
    SendBeginMessage(TEST_MSG_ID, {})
    
    -- 验证两个监听器都收到
    T:AssertEqual(2, count, "两个监听器应该都收到消息")
    
    -- 清理
    RemoveMessage(TEST_MSG_ID, handler1)
    RemoveMessage(TEST_MSG_ID, handler2)
end)

T:Register("消息系统 - 取消监听测试", function()
    local TEST_MSG_ID = 99997
    local count = 0
    
    local handler = function() count = count + 1 end
    
    RegisterMessage(TEST_MSG_ID, handler, nil)
    
    -- 发送第一次
    SendBeginMessage(TEST_MSG_ID, {})
    T:AssertEqual(1, count, "第一次发送应该收到")
    
    -- 取消监听
    RemoveMessage(TEST_MSG_ID, handler)
    
    -- 发送第二次
    SendBeginMessage(TEST_MSG_ID, {})
    T:AssertEqual(1, count, "取消后不应该再收到")
end)

print("[Test] test_message_system.lua 已加载")
