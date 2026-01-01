--[[test/test_integration.lua]]
-- 集成测试入口
-- 加载并运行所有测试用例

print("========== 加载集成测试 ==========")

-- ==================== 加载基础依赖 ====================
print("[1] 加载基础依赖...")

-- 加载 Classnew（OOP 系统）
require("critcore.skill.lib.Classnew")

-- 加载 Define（常量定义）
require("critcore.skill.lib.Define")

-- 加载消息系统
require("critcore.skill.lib.MessageConst")
require("critcore.skill.lib.Message")

-- 加载配置系统
require("critcore.static.conf_data")

-- 加载单位系统
require("critcore.static.units")
require("critcore.static.fight")

print("    ✓ 基础依赖加载完成")

-- ==================== 加载技能系统 ====================
print("[2] 加载技能系统...")

-- 对象池（pool_manager.lua 会创建全局 PoolManagerInstance）
require("critcore.skill.lib.pool_manager")
-- PoolManagerInstance 已由 pool_manager.lua 创建

-- 技能管理器
require("critcore.skill.SkillManager")
require("critcore.skill.SkillAPI")

-- Buff 管理器
require("critcore.skill.buff.BuffManager")

-- 被动技能管理器
require("critcore.skill.passive.PassiveSkillManager")

print("    ✓ 技能系统加载完成")

-- ==================== 加载测试框架 ====================
print("[3] 加载测试框架...")

require("test.TestFramework")
require("test.TestHelper")

print("    ✓ 测试框架加载完成")

-- ==================== 加载测试用例 ====================
print("[4] 加载测试用例...")

-- 加载各模块测试
require("test.tests.test_message_system")
require("test.tests.test_unit_basic")
require("test.tests.test_skill_basic")
require("test.tests.test_buff_lifecycle")
require("test.tests.test_combat_damage")

print("    ✓ 测试用例加载完成")

-- ==================== 运行测试 ====================
print("[5] 运行测试...")

local success = TestFramework:Run()

-- ==================== 输出最终结果 ====================
print("")
if success then
    print("╔════════════════════════════════════════════════════════════╗")
    print("║              ✓ 所有集成测试通过                            ║")
    print("╚════════════════════════════════════════════════════════════╝")
else
    print("╔════════════════════════════════════════════════════════════╗")
    print("║              ✗ 存在失败的测试                              ║")
    print("╚════════════════════════════════════════════════════════════╝")
end

-- 输出统计
local stats = TestFramework:GetStats()
print(string.format("统计: 总计 %d, 通过 %d, 失败 %d, 通过率 %.1f%%",
    stats.total, stats.passed, stats.failed, stats.passRate))

-- ==================== 导出 Stub 报告 ====================
print("")
print("[6] 导出 Stub 系统报告...")
local stubSuccess, stubErr = pcall(function()
    CS.CritFramework.StubConfig.ExportReport()
end)
if stubSuccess then
    print("    ✓ Stub 报告导出完成")
else
    print("    ✗ Stub 报告导出失败:", stubErr)
end

print("")
print("========== 集成测试结束 ==========")
