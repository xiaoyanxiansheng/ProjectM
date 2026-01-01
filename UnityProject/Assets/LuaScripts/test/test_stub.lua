--[[test/test_stub.lua]]
-- Stub 系统集成测试脚本
-- 测试所有 Stub 功能是否正常工作

print("========== Stub 系统测试 ==========")

-- ==================== 1. 测试 StubConfig ====================
print("[1] 测试 StubConfig...")

local success, err = pcall(function()
    local stubConfig = CS.CritFramework.StubConfig
    print("    ✓ StubConfig 可访问")
    print("    DebugMode:", stubConfig.DebugMode)
    print("    StubResources:", stubConfig.StubResources)
    print("    StubCombat:", stubConfig.StubCombat)
end)
if not success then
    print("    ✗ StubConfig 访问失败:", err)
end

-- ==================== 2. 测试 ResourceService ====================
print("[2] 测试 ResourceService...")

local success2, err2 = pcall(function()
    local resourceService = CS.CritFramework.ResourceService.Instance
    if resourceService then
        print("    ✓ ResourceService.Instance 可访问")
        
        -- 测试加载特效（会被 Stub）
        local effect = resourceService:LoadEffect("test_effect")
        print("    ✓ LoadEffect 调用成功, 返回:", tostring(effect))
        
        -- 测试加载音效（会被 Stub）
        local sound = resourceService:LoadSound("test_sound")
        print("    ✓ LoadSound 调用成功, 返回:", tostring(sound))
    end
end)
if not success2 then
    print("    ✗ ResourceService 访问失败:", err2)
end

-- ==================== 3. 测试 Dota2 常量 ====================
print("[3] 测试 Dota2 常量...")

-- 队伍常量
if DOTA_TEAM_GOODGUYS then
    print("    ✓ DOTA_TEAM_GOODGUYS =", DOTA_TEAM_GOODGUYS)
else
    print("    ✗ DOTA_TEAM_GOODGUYS 不存在")
end

if DOTA_TEAM_BADGUYS then
    print("    ✓ DOTA_TEAM_BADGUYS =", DOTA_TEAM_BADGUYS)
else
    print("    ✗ DOTA_TEAM_BADGUYS 不存在")
end

-- 目标类型常量
if DOTA_UNIT_TARGET_HERO then
    print("    ✓ DOTA_UNIT_TARGET_HERO =", DOTA_UNIT_TARGET_HERO)
else
    print("    ✗ DOTA_UNIT_TARGET_HERO 不存在")
end

if DOTA_UNIT_TARGET_TEAM_ENEMY then
    print("    ✓ DOTA_UNIT_TARGET_TEAM_ENEMY =", DOTA_UNIT_TARGET_TEAM_ENEMY)
else
    print("    ✗ DOTA_UNIT_TARGET_TEAM_ENEMY 不存在")
end

-- 伤害类型常量
if DAMAGE_TYPE_PHYSICAL then
    print("    ✓ DAMAGE_TYPE_PHYSICAL =", DAMAGE_TYPE_PHYSICAL)
else
    print("    ✗ DAMAGE_TYPE_PHYSICAL 不存在")
end

if DAMAGE_TYPE_MAGICAL then
    print("    ✓ DAMAGE_TYPE_MAGICAL =", DAMAGE_TYPE_MAGICAL)
else
    print("    ✗ DAMAGE_TYPE_MAGICAL 不存在")
end

-- 修改器状态
if MODIFIER_STATE_STUNNED then
    print("    ✓ MODIFIER_STATE_STUNNED =", MODIFIER_STATE_STUNNED)
else
    print("    ✗ MODIFIER_STATE_STUNNED 不存在")
end

-- ==================== 4. 测试 FindUnitsInRadius ====================
print("[4] 测试 FindUnitsInRadius...")

if FindUnitsInRadius then
    print("    ✓ FindUnitsInRadius 函数存在")
    
    local units = FindUnitsInRadius(
        DOTA_TEAM_GOODGUYS,
        Vector(0, 0, 0),
        500,
        DOTA_UNIT_TARGET_TEAM_ENEMY,
        DOTA_UNIT_TARGET_HERO,
        0,
        FIND_ANY_ORDER,
        false
    )
    
    print("    ✓ FindUnitsInRadius 调用成功")
    print("    返回单位数量:", #units)
else
    print("    ✗ FindUnitsInRadius 函数不存在")
end

-- ==================== 5. 测试 ApplyDamage ====================
print("[5] 测试 ApplyDamage...")

if ApplyDamage then
    print("    ✓ ApplyDamage 函数存在")
    
    ApplyDamage({
        attacker = nil,
        victim = nil,
        damage = 100,
        damage_type = DAMAGE_TYPE_PHYSICAL,
        damage_flags = 0,
        ability = nil
    })
    
    print("    ✓ ApplyDamage 调用成功")
else
    print("    ✗ ApplyDamage 函数不存在")
end

-- ==================== 6. 测试 CustomNetTables ====================
print("[6] 测试 CustomNetTables...")

if CustomNetTables then
    print("    ✓ CustomNetTables 存在")
    
    -- 测试设置值
    CustomNetTables:SetTableValue("test_table", "test_key", { value = 123 })
    print("    ✓ SetTableValue 调用成功")
    
    -- 测试获取值
    local value = CustomNetTables:GetTableValue("test_table", "test_key")
    if value and value.value == 123 then
        print("    ✓ GetTableValue 返回正确:", value.value)
    else
        print("    ✗ GetTableValue 返回错误")
    end
else
    print("    ✗ CustomNetTables 不存在")
end

-- ==================== 7. 测试 Lobby ====================
print("[7] 测试 Lobby...")

if Lobby then
    print("    ✓ Lobby 存在")
    
    local players = Lobby:GetAllPlayers()
    print("    ✓ GetAllPlayers 调用成功, 玩家数:", #players)
    
    local localPlayer = Lobby:GetLocalPlayer()
    print("    ✓ GetLocalPlayer 调用成功, 返回:", tostring(localPlayer))
    
    print("    ✓ IsConnected:", Lobby:IsConnected())
else
    print("    ✗ Lobby 不存在")
end

-- ==================== 8. 测试 Convars ====================
print("[8] 测试 Convars...")

if Convars then
    print("    ✓ Convars 存在")
    
    -- 测试注册命令
    Convars:RegisterCommand("test_cmd", function(player, arg1)
        print("    [Convar] test_cmd 被调用:", arg1)
    end, "测试命令", 0)
    print("    ✓ RegisterCommand 调用成功")
    
    -- 测试设置/获取 CVar
    Convars:SetInt("test_int", 42)
    local intVal = Convars:GetInt("test_int", 0)
    print("    ✓ SetInt/GetInt:", intVal)
else
    print("    ✗ Convars 不存在")
end

-- ==================== 9. 测试 PlayerResource ====================
print("[9] 测试 PlayerResource...")

if PlayerResource then
    print("    ✓ PlayerResource 存在")
    
    PlayerResource:SetGold(0, 1000)
    local gold = PlayerResource:GetGold(0)
    print("    ✓ SetGold/GetGold:", gold)
    
    local team = PlayerResource:GetTeam(0)
    print("    ✓ GetTeam:", team)
else
    print("    ✗ PlayerResource 不存在")
end

-- ==================== 10. 测试 CustomGameEventManager ====================
print("[10] 测试 CustomGameEventManager...")

if CustomGameEventManager then
    print("    ✓ CustomGameEventManager 存在")
    
    -- 注册监听器
    CustomGameEventManager:RegisterListener("test_event", function(data)
        print("    [Event] test_event 收到:", data and data.msg or "nil")
    end)
    print("    ✓ RegisterListener 调用成功")
    
    -- 发送事件
    CustomGameEventManager:Send_ServerToAllClients("test_event", { msg = "Hello" })
    print("    ✓ Send_ServerToAllClients 调用成功")
else
    print("    ✗ CustomGameEventManager 不存在")
end

-- ==================== 11. 导出报告 ====================
print("[11] 导出 Stub 报告...")

local success3, err3 = pcall(function()
    CS.CritFramework.StubConfig.ExportReport()
    print("    ✓ ExportReport 调用成功")
end)
if not success3 then
    print("    ✗ ExportReport 调用失败:", err3)
end

print("========== Stub 系统测试完成 ==========")
