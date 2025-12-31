--[[
    配置系统测试脚本
    测试 ConfData 能否正常加载 Lua 配置文件
]]

print("========== 配置系统测试开始 ==========")
print("")

-- 加载工具函数
require("critcore.tool.table")
print("[OK] table 工具函数加载成功")

-- 加载配置管理器
require("critcore.static.conf_data")
print("[OK] ConfData 加载成功")
print("")

-- ========== 测试 Skill 表 ==========
print("--- 测试 Skill 配置表 ---")
local skillTable = ConfData:GetTable("Skill")
if skillTable then
    print("[OK] Skill 表加载成功")
    
    -- 获取第一个技能配置
    local skill101 = ConfData:GetLine("Skill", 101)
    if skill101 then
        print("  Skill 101:")
        print("    id = " .. tostring(skill101.id))
        print("    Quality = " .. tostring(skill101.Quality))
        print("    DamageType = " .. tostring(skill101.DamageType))
        print("    Maxlevel = " .. tostring(skill101.Maxlevel))
        if skill101.Cd then
            print("    Cd = " .. tostring(skill101.Cd[1]))
        end
    else
        print("[ERROR] 无法获取 Skill 101")
    end
else
    print("[ERROR] Skill 表加载失败")
end
print("")

-- ========== 测试 Unit 表 ==========
print("--- 测试 Unit 配置表 ---")
local unitTable = ConfData:GetTable("Unit")
if unitTable then
    print("[OK] Unit 表加载成功")
    
    -- 获取任意一个单位配置
    local unit, unitId = table.GetAnyOne(unitTable)
    if unit then
        print("  Unit " .. tostring(unitId) .. ":")
        print("    id = " .. tostring(unit.id))
        if unit.ModelName then
            print("    ModelName = " .. tostring(unit.ModelName))
        end
    end
else
    print("[ERROR] Unit 表加载失败")
end
print("")

-- ========== 测试 Item 表 ==========
print("--- 测试 Item 配置表 ---")
local itemTable = ConfData:GetTable("Item")
if itemTable then
    print("[OK] Item 表加载成功")
    print("  Item 表共有 " .. table.length(itemTable) .. " 条记录")
else
    print("[ERROR] Item 表加载失败")
end
print("")

-- ========== 测试 Get 方法 ==========
print("--- 测试 ConfData:Get 方法 ---")
local skillQuality = ConfData:Get("Skill", 101, "Quality", 0)
print("ConfData:Get('Skill', 101, 'Quality', 0) = " .. tostring(skillQuality))

local notExist = ConfData:Get("Skill", 99999, "Quality", -1)
print("ConfData:Get('Skill', 99999, 'Quality', -1) = " .. tostring(notExist) .. " (应为 -1)")
print("")

-- ========== 测试 GetFiltrate 方法 ==========
print("--- 测试 ConfData:GetFiltrate 方法 ---")
local highQualitySkills = ConfData:GetFiltrate("Skill", function(line)
    return line.Quality and line.Quality >= 3
end)
print("Quality >= 3 的技能数量: " .. table.length(highQualitySkills))
print("")

print("========== 配置系统测试结束 ==========")
