--[[test/test_skill.lua]]
-- Phase 4 技能系统测试
print("========== Phase 4 技能系统测试 ==========")

-- 预加载依赖
print("[1] 加载基础依赖...")
require("critcore.tool.table")
require("critcore.tool.math")
require("critcore.tool.string")
require("critcore.skill.lib.Classnew")
require("critcore.skill.lib.Define")
require("critcore.skill.lib.MessageConst")
require("critcore.skill.lib.Message")
require("critcore.static.conf_data")

-- 检查 ConfData
print("[2] 检查 ConfData...")
local skillTable = ConfData:GetTable("Skill")
if skillTable then
    print("    ✓ Skill 表加载成功, 条目数:", table.nillength(skillTable))
else
    print("    ✗ Skill 表加载失败")
end

local buffTable = ConfData:GetTable("SkillBuff")
if buffTable then
    print("    ✓ SkillBuff 表加载成功, 条目数:", table.nillength(buffTable))
else
    print("    ✗ SkillBuff 表加载失败")
end

local passiveTable = ConfData:GetTable("SkillPassive")
if passiveTable then
    print("    ✓ SkillPassive 表加载成功, 条目数:", table.nillength(passiveTable))
else
    print("    ✗ SkillPassive 表加载失败")
end

-- 加载实体系统 (Phase 3)
print("[3] 加载实体系统...")
require("critcore.class.attr")
require("critcore.class.unit")
require("critcore.static.units")
require("critcore.static.fight")

-- Units 和 Fight 是静态表，无需显式初始化
print("    ✓ Units 和 Fight 加载完成")

-- 加载技能模块
print("[4] 加载技能模块...")

-- PoolManagerInstance 由 pool_manager.lua 自动创建
require("critcore.skill.lib.pool_manager")
-- PoolManagerInstance 已在 pool_manager.lua 末尾初始化

-- 加载技能系统各组件
require("critcore.skill.lib.Debug")
require("critcore.skill.lib.LayeredAttributeSystem")
require("critcore.skill.SkillAPI")
require("critcore.skill.buff.Buff")
require("critcore.skill.buff.buffEvent.BuffEvent")
require("critcore.skill.buff.buffEvent.BuffEventStubs")
require("critcore.skill.buff.BuffManager")
require("critcore.skill.passive.PassiveSkill")
require("critcore.skill.passive.PassiveSkillManager")
require("critcore.skill.lineEvent.SkillLineEvent")
require("critcore.skill.lineEvent.LineEventStubs")
require("critcore.skill.SkillTimeLine")
require("critcore.skill.SKillLogic")
require("critcore.skill.SkillManager")

print("    ✓ 技能模块组件加载完成")

-- 创建管理器实例
print("[5] 创建管理器实例...")
SkillManagerInstance = SkillManager.New()
BuffManagerInstance = BuffManager.New()
PassiveSkillManagerInstance = PassiveSkillManager.New()
PassiveSkillManagerInstance:Setup()
print("    ✓ 管理器实例创建完成")

-- 测试创建模拟单位
print("[6] 创建测试单位(模拟)...")
-- 使用简化的测试，不依赖完整的单位创建
local unit1InsId = Units:GetNewInsid()
local unit2InsId = Units:GetNewInsid()
print("    ✓ 分配单位ID成功")
print("    Unit1 InsId:", unit1InsId)
print("    Unit2 InsId:", unit2InsId)

-- 测试 DoSkillData
print("[7] 测试 DoSkillData...")
local doSkillData = DoSkillData.New()
doSkillData.CasterInsId = unit1InsId
doSkillData.TargetInsId = unit2InsId
doSkillData.SkillId = 10001
doSkillData.SkillLevel = 1
doSkillData.Position = Vector(100, 0, 0)

print("    ✓ DoSkillData 创建成功")
print("    CasterInsId:", doSkillData.CasterInsId)
print("    TargetInsId:", doSkillData.TargetInsId)
print("    SkillId:", doSkillData.SkillId)

-- 测试 DoBuffData
print("[8] 测试 DoBuffData...")
local doBuffData = DoBuffData.New()
doBuffData.EntityId = unit1InsId
doBuffData.BuffId = 10001
doBuffData.BuffLevel = 1

print("    ✓ DoBuffData 创建成功")
print("    EntityId:", doBuffData.EntityId)
print("    BuffId:", doBuffData.BuffId)

-- 测试 Buff 状态查询
print("[9] 测试 Buff 状态查询...")
local inCantMagic = BuffManagerInstance:InEventState(unit1InsId, BuffEvent.CantMagic)
print("    InCantMagic:", inCantMagic)

local canMove = SkillAPI.CheckEntityMove(unit1InsId)
print("    CanMove:", canMove)

local canDoSkill = SkillAPI.CheckEntityDoSKill(unit1InsId, nil)
print("    CanDoSkill:", canDoSkill)

-- 测试被动技能
print("[10] 测试被动技能...")
SkillAPI.AddPassiveSkill(unit1InsId, 10001, 1)
local hasPassive = SkillAPI.IsLearnedPassiveSkill(unit1InsId, 10001)
print("    HasPassive 10001:", hasPassive)

local passiveIds = SkillAPI.GetLearnedPassiveSkillIds(unit1InsId)
print("    LearnedPassiveIds:", table.concat(passiveIds, ", "))

-- 测试技能相关 API
print("[11] 测试 SkillAPI...")
local inSkill = SkillAPI.CheckEntityInSKill(unit1InsId)
print("    InSkill:", inSkill)

local attackDamage = SkillAPI.GetAttackContinueDamage(unit1InsId, unit2InsId)
print("    AttackDamageTimes:", attackDamage)

-- 测试消息系统
print("[12] 测试消息系统...")
SkillAPI.DoEvent(MsgConst.ENTITY_ATTACK, {
    casterinsid = unit1InsId,
    targetinsid = unit2InsId
})
print("    ✓ 发送 ENTITY_ATTACK 消息")

-- 测试管理器更新
print("[13] 测试更新循环...")
local delta = 0.016  -- 模拟一帧
SkillManagerInstance:Update(delta)
BuffManagerInstance:Update(delta)
PassiveSkillManagerInstance:Update(delta)
print("    ✓ 更新循环执行成功")

-- 清理
print("[14] 测试清理...")
SkillAPI.RemovePassiveSkill(unit1InsId, 10001)
hasPassive = SkillAPI.IsLearnedPassiveSkill(unit1InsId, 10001)
print("    HasPassive after remove:", hasPassive)
print("    ✓ 清理完成")

print("")
print("========== Phase 4 测试完成 ==========")
print("技能系统骨架已就绪，具体功能待 Phase 5 完善")
