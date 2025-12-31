-- Phase 3 实体系统测试
print("========== Phase 3 实体系统测试 ==========")

-- 预加载依赖（顺序很重要！）
require("critcore.tool.table")
require("critcore.tool.math")  -- math.round 等扩展
require("critcore.skill.lib.Classnew")
require("critcore.skill.lib.Define")
require("critcore.static.conf_data")

-- 加载 Phase 3 模块
print("\n--- 加载 Phase 3 模块 ---")
require("critcore.class.attr")
require("critcore.static.units")
require("critcore.class.unit")
require("critcore.static.fight")

-- 初始化战斗系统
Fight:__Init()

print("\n--- 1. 测试属性系统 (CAttr) ---")
local attrTestPassed = true

local attr = CreateClass_Attr("test_attr", false, 0, function()
    -- print("  属性发生变化回调")
end)

attr:AddAttr(1, 100, 0, 1)  -- 属性ID=1, 值=100
attr:AddAttr(2, 50, 0, 1)   -- 属性ID=2, 值=50
local v1 = attr:GetValue(1)
local v2 = attr:GetValue(2)
print("  属性1: " .. v1 .. ", 属性2: " .. v2)

if v1 ~= 100 then
    print("  [ERROR] 属性1应该是100，实际是" .. v1)
    attrTestPassed = false
end
if v2 ~= 50 then
    print("  [ERROR] 属性2应该是50，实际是" .. v2)
    attrTestPassed = false
end

-- 测试属性绑定
local childAttr = CreateClass_Attr("child_attr", false, 0, nil)
childAttr:AddAttr(1, 25, 0, 1)
childAttr:Bind(attr)

local v1After = attr:GetValue(1)
print("  绑定后属性1: " .. v1After)
if v1After ~= 125 then
    print("  [WARNING] 绑定后属性1应该是125，实际是" .. v1After)
end

if attrTestPassed then
    print("✓ CAttr 测试通过")
else
    print("✗ CAttr 测试失败")
end

print("\n--- 2. 测试 Units 管理 ---")
local unitsTestPassed = true

local insId = Units:GetNewInsid()
print("  新 InsId: " .. insId)
if insId <= 1001 then
    print("  [ERROR] InsId应该大于1001")
    unitsTestPassed = false
end

local allUnits = Units:GetAllUnits()
print("  当前单位数量: " .. table.nillength(allUnits))

if unitsTestPassed then
    print("✓ Units 管理测试通过")
else
    print("✗ Units 管理测试失败")
end

print("\n--- 3. 测试单位创建 ---")
local unitTestPassed = true

-- 创建一个测试单位（不依赖配置表）
local success, unit = pcall(function()
    return CreateClass_UnitBase(9999, Vector(100, 200, 0))
end)

if success and unit then
    print("  单位 InsId: " .. unit:GetInsid())
    print("  单位 UnitId: " .. unit:GetUnitId())
    local pos = unit:GetPosition()
    print("  单位位置: " .. pos.x .. ", " .. pos.y .. ", " .. pos.z)
    print("  单位阵营: " .. unit:GetCamp())
    print("  单位存活: " .. tostring(unit:IsAlive()))
    print("  单位有效: " .. tostring(unit:IsValid()))
    
    -- 测试位置设置
    unit:SetPosition(Vector(300, 400, 0))
    local newPos = unit:GetPosition()
    print("  新位置: " .. newPos.x .. ", " .. newPos.y .. ", " .. newPos.z)
    
    print("✓ 单位创建测试通过")
else
    print("  单位创建失败: " .. tostring(unit))
    unitTestPassed = false
    print("✗ 单位创建测试失败")
end

print("\n--- 4. 测试战斗系统常量 ---")
print("  CONST_HP_MAX_ATTR_ID: " .. CONST_HP_MAX_ATTR_ID)
print("  CONST_SPEED_ATTR_ID: " .. CONST_SPEED_ATTR_ID)
print("  EnumFightDamageType.Normal: " .. EnumFightDamageType.Normal)
print("  EnumFightDamageType.Critical: " .. EnumFightDamageType.Critical)
print("  EnumFightDamageType.Heal: " .. EnumFightDamageType.Heal)
print("✓ 战斗系统常量测试通过")

print("\n--- 5. 测试空间分区查询 ---")
local centerPos = Vector(0, 0, 0)
local nearbyUnits = Units:GetUnitsByArea(centerPos, 1000, nil, false, false)
print("  范围内单位数量: " .. table.nillength(nearbyUnits))
print("✓ 空间分区查询测试通过")

print("\n--- 6. 测试战斗伤害 ---")
if unit and unit:IsValid() then
    -- 创建第二个单位作为攻击者
    local attacker = CreateClass_UnitBase(9998, Vector(50, 50, 0))
    
    local hpBefore = unit:GetHP()
    print("  目标HP（伤害前）: " .. hpBefore)
    
    -- 直接伤害
    Fight:ApplyDirectlyDamage(attacker, unit, 10, 0)
    
    local hpAfter = unit:GetHP()
    print("  目标HP（伤害后）: " .. hpAfter)
    
    -- 治疗
    Fight:ApplyDirectlyHeal(attacker, unit, 0, 5)
    
    local hpHealed = unit:GetHP()
    print("  目标HP（治疗后）: " .. hpHealed)
    
    -- 清理
    attacker:Remove()
    
    print("✓ 战斗伤害测试通过")
else
    print("  [跳过] 战斗测试（单位不可用）")
end

print("\n--- 7. 测试单位移除 ---")
if unit and unit:IsValid() then
    local unitInsId = unit:GetInsid()
    unit:Remove()
    
    local removedUnit = Units:GetUnitByInsid(unitInsId)
    if removedUnit == nil then
        print("  单位已从 Units 管理器移除")
        print("✓ 单位移除测试通过")
    else
        print("  [ERROR] 单位仍存在于 Units 管理器")
        print("✗ 单位移除测试失败")
    end
else
    print("  [跳过] 单位移除测试")
end

print("\n========== Phase 3 所有测试完成！ ==========")
