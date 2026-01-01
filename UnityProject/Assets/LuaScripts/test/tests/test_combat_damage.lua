--[[test/tests/test_combat_damage.lua]]
-- 战斗伤害测试

local T = TestFramework
local H = TestHelper

-- ==================== 战斗系统测试 ====================

T:Register("战斗系统 - Fight 模块存在", function()
    T:AssertNotNil(Fight, "Fight 模块不存在")
end)

T:Register("战斗系统 - ApplyDamage 函数存在", function()
    -- 检查全局 ApplyDamage 函数（由 CombatBridge 注册）
    T:AssertNotNil(ApplyDamage, "ApplyDamage 函数不存在")
    T:AssertType(ApplyDamage, "function", "ApplyDamage 不是函数")
end)

T:Register("战斗系统 - FindUnitsInRadius 函数存在", function()
    T:AssertNotNil(FindUnitsInRadius, "FindUnitsInRadius 函数不存在")
    T:AssertType(FindUnitsInRadius, "function", "FindUnitsInRadius 不是函数")
end)

-- ==================== 伤害类型常量测试 ====================

T:Register("战斗系统 - 伤害类型常量", function()
    T:AssertNotNil(DAMAGE_TYPE_PHYSICAL, "DAMAGE_TYPE_PHYSICAL 不存在")
    T:AssertNotNil(DAMAGE_TYPE_MAGICAL, "DAMAGE_TYPE_MAGICAL 不存在")
    T:AssertNotNil(DAMAGE_TYPE_PURE, "DAMAGE_TYPE_PURE 不存在")
    
    T:AssertEqual(1, DAMAGE_TYPE_PHYSICAL, "DAMAGE_TYPE_PHYSICAL 值不正确")
    T:AssertEqual(2, DAMAGE_TYPE_MAGICAL, "DAMAGE_TYPE_MAGICAL 值不正确")
    T:AssertEqual(4, DAMAGE_TYPE_PURE, "DAMAGE_TYPE_PURE 值不正确")
end)

-- ==================== 目标类型常量测试 ====================

T:Register("战斗系统 - 目标类型常量", function()
    T:AssertNotNil(DOTA_UNIT_TARGET_TEAM_ENEMY, "DOTA_UNIT_TARGET_TEAM_ENEMY 不存在")
    T:AssertNotNil(DOTA_UNIT_TARGET_HERO, "DOTA_UNIT_TARGET_HERO 不存在")
    T:AssertNotNil(DOTA_TEAM_GOODGUYS, "DOTA_TEAM_GOODGUYS 不存在")
    T:AssertNotNil(DOTA_TEAM_BADGUYS, "DOTA_TEAM_BADGUYS 不存在")
end)

-- ==================== ApplyDamage 调用测试 ====================

T:Register("战斗系统 - ApplyDamage 调用", function()
    -- 创建测试数据
    local damageTable = {
        attacker = nil,
        victim = nil,
        damage = 100,
        damage_type = DAMAGE_TYPE_PHYSICAL,
        damage_flags = 0,
        ability = nil
    }
    
    -- 调用 ApplyDamage（Stub 模式下只打印）
    local success, err = pcall(ApplyDamage, damageTable)
    T:Assert(success, "ApplyDamage 调用失败: " .. tostring(err))
end)

-- ==================== FindUnitsInRadius 调用测试 ====================

T:Register("战斗系统 - FindUnitsInRadius 调用", function()
    -- 调用 FindUnitsInRadius（Stub 模式下返回空列表）
    local units = FindUnitsInRadius(
        DOTA_TEAM_GOODGUYS,
        Vector(0, 0, 0),
        500,
        DOTA_UNIT_TARGET_TEAM_ENEMY,
        DOTA_UNIT_TARGET_HERO,
        0,
        FIND_ANY_ORDER or 0,
        false
    )
    
    T:AssertNotNil(units, "FindUnitsInRadius 返回 nil")
    T:AssertType(units, "table", "返回值应该是 table")
    -- Stub 模式下返回空列表
    T:AssertEqual(0, #units, "Stub 模式应返回空列表")
end)

-- ==================== MockUnit 伤害计算测试 ====================

T:Register("战斗系统 - MockUnit 伤害计算", function()
    local attacker = H:CreateMockUnit({
        attack = 100,
        teamId = DOTA_TEAM_GOODGUYS
    })
    
    local victim = H:CreateMockUnit({
        hp = 1000,
        defense = 50,
        teamId = DOTA_TEAM_BADGUYS
    })
    
    -- 物理伤害计算（有护甲）
    local rawDamage = 100
    local actualDamage = victim:TakeDamage(rawDamage, DAMAGE_TYPE_PHYSICAL, attacker)
    
    -- 伤害应该被护甲减免
    T:AssertLessThan(actualDamage, rawDamage, "护甲应该减免伤害")
    T:AssertLessThan(victim:GetHealth(), 1000, "HP 应该减少")
    
    -- 清理
    H:CleanupUnits()
end)

T:Register("战斗系统 - MockUnit 致死伤害", function()
    local unit = H:CreateMockUnit({
        hp = 100,
        defense = 0
    })
    
    T:AssertTrue(unit:IsAlive(), "初始应该存活")
    
    -- 造成致死伤害
    unit:TakeDamage(150, DAMAGE_TYPE_PURE, nil)
    
    T:AssertFalse(unit:IsAlive(), "应该死亡")
    T:AssertEqual(0, unit:GetHealth(), "HP 应该为 0")
    
    -- 清理
    H:CleanupUnits()
end)

print("[Test] test_combat_damage.lua 已加载")
