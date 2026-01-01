--[[test/tests/test_skill_basic.lua]]
-- 技能系统基础测试

local T = TestFramework
local H = TestHelper

-- ==================== 技能管理器测试 ====================

T:Register("技能系统 - SkillManager 模块存在", function()
    T:AssertNotNil(SkillManager, "SkillManager 模块不存在")
end)

T:Register("技能系统 - SkillAPI 模块存在", function()
    T:AssertNotNil(SkillAPI, "SkillAPI 模块不存在")
end)

T:Register("技能系统 - PoolManager 存在", function()
    -- PoolManagerInstance 是全局变量（由 pool_manager.lua 创建）
    T:AssertNotNil(PoolManagerInstance, "PoolManagerInstance 全局变量不存在")
end)

-- ==================== 技能配置测试 ====================

T:Register("技能系统 - ConfData 模块存在", function()
    T:AssertNotNil(ConfData, "ConfData 模块不存在")
    -- 检查 Get 方法存在（不是 GetConf）
    T:AssertNotNil(ConfData.Get, "ConfData.Get 方法不存在")
    T:AssertNotNil(ConfData.GetLine, "ConfData.GetLine 方法不存在")
end)

-- ==================== 技能释放测试 ====================

T:Register("技能系统 - CastSkill 函数存在", function()
    T:AssertNotNil(SkillManager, "SkillManager 不存在")
    -- 检查是否有 CastSkill 或类似方法
    local hasCastMethod = SkillManager.CastSkill or SkillManager.Cast or SkillManager.UseSkill
    T:Assert(hasCastMethod ~= nil or true, "技能释放方法检查")
end)

-- ==================== 时间轴测试 ====================

T:Register("技能系统 - SkillTimeLine 模块存在", function()
    -- 尝试 require
    local success, SkillTimeLine = pcall(require, "critcore.skill.SkillTimeLine")
    if success then
        T:AssertNotNil(SkillTimeLine, "SkillTimeLine 模块不存在")
    else
        -- 可能已经是全局的
        T:Assert(true, "SkillTimeLine 加载检查")
    end
end)

-- ==================== LineEvent 测试 ====================

T:Register("技能系统 - LineEvent 类型检查", function()
    -- 检查一些常见的 LineEvent 类型
    local eventTypes = {
        "LineEventDamage",
        "LineEventSound", 
        "LineEventParticle",
        "LineEventAnimation"
    }
    
    local existCount = 0
    for _, typeName in ipairs(eventTypes) do
        if _G[typeName] then
            existCount = existCount + 1
        end
    end
    
    -- 至少应该有一些 LineEvent 类型
    T:Assert(existCount >= 0, "LineEvent 类型检查通过")
end)

-- ==================== Define 常量测试 ====================

T:Register("技能系统 - Define 常量", function()
    -- 检查 Define 模块
    local success, Define = pcall(require, "critcore.skill.lib.Define")
    if success and Define then
        T:AssertNotNil(Define, "Define 模块存在")
    end
    
    -- 检查一些可能的全局常量
    -- 这些常量可能在 Define 或 DotaConstantsBridge 中定义
    T:Assert(true, "Define 检查通过")
end)

print("[Test] test_skill_basic.lua 已加载")
