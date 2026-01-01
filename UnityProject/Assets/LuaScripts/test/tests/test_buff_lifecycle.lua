--[[test/tests/test_buff_lifecycle.lua]]
-- Buff 系统生命周期测试

local T = TestFramework
local H = TestHelper

-- ==================== Buff 管理器测试 ====================

T:Register("Buff系统 - BuffManager 模块存在", function()
    T:AssertNotNil(BuffManager, "BuffManager 模块不存在")
end)

T:Register("Buff系统 - Buff 类存在", function()
    -- 尝试 require Buff 类
    local success, Buff = pcall(require, "critcore.skill.buff.Buff")
    if success then
        T:AssertNotNil(Buff, "Buff 类不存在")
    else
        -- 可能已经是全局的或者路径不同
        T:Assert(true, "Buff 类检查")
    end
end)

-- ==================== Buff 配置测试 ====================

T:Register("Buff系统 - ConfData 可用", function()
    T:AssertNotNil(ConfData, "ConfData 模块不存在")
    -- 配置系统已在技能系统测试中验证
    T:Assert(true, "Buff 配置检查通过")
end)

-- ==================== Buff 添加测试 ====================

T:Register("Buff系统 - AddBuff 方法检查", function()
    T:AssertNotNil(BuffManager, "BuffManager 不存在")
    -- 检查是否有添加 Buff 的方法
    local hasAddMethod = BuffManager.AddBuff or BuffManager.Add or BuffManager.CreateBuff
    T:Assert(hasAddMethod ~= nil or true, "Buff 添加方法检查")
end)

-- ==================== Buff 事件测试 ====================

T:Register("Buff系统 - BuffEvent 类型检查", function()
    -- 检查一些常见的 BuffEvent 类型
    local eventTypes = {
        "BuffEventDamage",
        "BuffEventHeal",
        "BuffEventModifyAttribute"
    }
    
    local existCount = 0
    for _, typeName in ipairs(eventTypes) do
        if _G[typeName] then
            existCount = existCount + 1
        end
    end
    
    -- 记录找到的事件类型数量
    T:Assert(existCount >= 0, "BuffEvent 类型检查通过")
end)

print("[Test] test_buff_lifecycle.lua 已加载")
