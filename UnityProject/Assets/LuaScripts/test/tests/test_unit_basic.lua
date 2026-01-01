--[[test/tests/test_unit_basic.lua]]
-- 单位基础测试

local T = TestFramework
local H = TestHelper

-- ==================== Units 模块测试 ====================

T:Register("单位系统 - Units 模块存在", function()
    T:AssertNotNil(Units, "Units 模块不存在")
    T:AssertType(Units.GetNewInsid, "function", "Units:GetNewInsid 不是函数")
end)

T:Register("单位系统 - 分配 InsId", function()
    local id1 = Units:GetNewInsid()
    local id2 = Units:GetNewInsid()
    
    T:AssertNotNil(id1, "InsId 1 为空")
    T:AssertNotNil(id2, "InsId 2 为空")
    T:AssertNotEqual(id1, id2, "两个 InsId 应该不同")
    T:AssertGreaterThan(id2, id1, "InsId 应该递增")
end)

-- ==================== MockUnit 测试 ====================

T:Register("单位系统 - 创建 MockUnit", function()
    local unit = H:CreateMockUnit({
        unitId = 2001,
        teamId = 2,
        hp = 500,
        attack = 80
    })
    
    T:AssertNotNil(unit, "MockUnit 创建失败")
    T:AssertEqual(2001, unit:GetUnitId(), "UnitId 不正确")
    T:AssertEqual(2, unit:GetTeamNumber(), "TeamId 不正确")
    T:AssertEqual(500, unit:GetHealth(), "HP 不正确")
    T:AssertEqual(80, unit:GetAttackDamage(), "Attack 不正确")
    T:AssertTrue(unit:IsAlive(), "单位应该存活")
end)

T:Register("单位系统 - MockUnit 位置", function()
    local unit = H:CreateMockUnit({
        position = Vector(100, 0, 200)
    })
    
    local pos = unit:GetAbsOrigin()
    T:AssertNotNil(pos, "Position 为空")
    T:AssertEqual(100, pos.x, "Position.x 不正确")
    T:AssertEqual(200, pos.z, "Position.z 不正确")
    
    -- 修改位置
    unit:SetAbsOrigin(Vector(50, 0, 50))
    local newPos = unit:GetAbsOrigin()
    T:AssertEqual(50, newPos.x, "新 Position.x 不正确")
end)

T:Register("单位系统 - MockUnit 生命值", function()
    local unit = H:CreateMockUnit({
        hp = 1000,
        maxHp = 1000
    })
    
    -- 设置生命值
    unit:SetHealth(500)
    T:AssertEqual(500, unit:GetHealth(), "设置 HP 后不正确")
    T:AssertTrue(unit:IsAlive(), "应该存活")
    
    -- 设置为 0
    unit:SetHealth(0)
    T:AssertEqual(0, unit:GetHealth(), "HP 应该为 0")
    T:AssertFalse(unit:IsAlive(), "应该死亡")
end)

T:Register("单位系统 - MockUnit 魔法值", function()
    local unit = H:CreateMockUnit({
        mp = 500,
        maxMp = 500
    })
    
    T:AssertEqual(500, unit:GetMana(), "初始 MP 不正确")
    
    -- 消耗魔法
    local success = unit:SpendMana(100)
    T:AssertTrue(success, "消耗魔法应该成功")
    T:AssertEqual(400, unit:GetMana(), "消耗后 MP 不正确")
    
    -- 消耗超过当前值
    success = unit:SpendMana(500)
    T:AssertFalse(success, "魔法不足应该失败")
    T:AssertEqual(400, unit:GetMana(), "失败后 MP 不应变化")
end)

T:Register("单位系统 - MockUnit 受伤", function()
    local unit = H:CreateMockUnit({
        hp = 1000,
        defense = 0 -- 无护甲
    })
    
    -- 受到伤害
    local damage = unit:TakeDamage(100, DAMAGE_TYPE_PHYSICAL or 1, nil)
    T:AssertEqual(100, damage, "无护甲伤害应该是 100")
    T:AssertEqual(900, unit:GetHealth(), "HP 应该减少")
    
    -- 检查事件记录
    local events = unit:GetEvents("TakeDamage")
    T:AssertEqual(1, #events, "应该有一条伤害记录")
    T:AssertEqual(100, events[1].damage, "记录的伤害不正确")
end)

T:Register("单位系统 - MockUnit Buff", function()
    local unit = H:CreateMockUnit()
    
    -- 添加 Buff
    T:AssertFalse(unit:HasBuff("test_buff"), "初始不应有 Buff")
    
    unit:AddBuff("test_buff", { stacks = 3 })
    T:AssertTrue(unit:HasBuff("test_buff"), "应该有 Buff")
    T:AssertEqual(3, unit:GetBuffStacks("test_buff"), "层数不正确")
    
    -- 移除 Buff
    unit:RemoveBuff("test_buff")
    T:AssertFalse(unit:HasBuff("test_buff"), "移除后不应有 Buff")
end)

-- ==================== 清理 ====================

T:Register("单位系统 - 清理测试单位", function()
    -- 注意：真实的 Units 模块不支持重置 insid
    -- 这里只验证清理不报错
    local success, err = pcall(H.CleanupUnits, H)
    T:Assert(success, "CleanupUnits 调用失败: " .. tostring(err))
end)

print("[Test] test_unit_basic.lua 已加载")
