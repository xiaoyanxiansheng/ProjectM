--[[critcore/static/dungeon_helper.lua]]
--[=[
    副本配置辅助模块 - 提供副本列表和名称查询
]=]

-- 确保 ConfData 模块已加载
if not ConfData then
    require("critcore.static.conf_data")
end

DungeonHelper = {}

-- 副本标题映射表 (DungeonName -> 语言Key)
local DungeonTitleKeys = {
    ["main_rogue"] = "L0636gs",  -- 常规副本
    ["test"] = nil,  -- 测试副本无翻译
}

-- 难度名称映射表 (Level -> 语言Key)
-- 根据 Dungeon.lua 中的 Name 字段
local DiffNameKeys = {
    [1] = "Ltf3yn9g",   -- N1
    [2] = "Lk80mm0e",   -- N2
    [3] = "Ll80mm0e",   -- N3
    [4] = "Lm80mm0e",   -- N4
    [5] = "Ln80mm0e",   -- N5
    [6] = "Lo80mm0e",   -- N6
    [7] = "Lp80mm0e",   -- N7
    [8] = "Lq80mm0e",   -- N8
    [9] = "Lr80mm0e",   -- N9
    [10] = "Ls80mm0e",  -- N10
}

---获取副本显示名称
---@param dungeonName string 副本配置名
---@return string 副本名称
function DungeonHelper:GetDungeonTitle(dungeonName)
    local titleKey = DungeonTitleKeys[dungeonName]
    if titleKey then
        local langCn = ConfData:GetTable("lang/cn")
        if langCn and langCn[titleKey] then
            return langCn[titleKey]
        end
    end
    
    -- 备用：使用配置中的 Title 字段
    local dungeonData = ConfData:GetLine("Dungeon", dungeonName)
    if dungeonData and dungeonData.Title then
        local langCn = ConfData:GetTable("lang/cn")
        if langCn and langCn[dungeonData.Title] then
            return langCn[dungeonData.Title]
        end
    end
    
    return dungeonName
end

---获取难度显示名称
---@param level number 难度等级
---@param nameKey string|nil 语言Key (可选)
---@return string 难度名称
function DungeonHelper:GetDiffName(level, nameKey)
    if nameKey then
        local langCn = ConfData:GetTable("lang/cn")
        if langCn and langCn[nameKey] then
            return langCn[nameKey]
        end
    end
    
    -- 备用：使用预定义的映射
    local key = DiffNameKeys[level]
    if key then
        local langCn = ConfData:GetTable("lang/cn")
        if langCn and langCn[key] then
            return langCn[key]
        end
    end
    
    return "难度" .. tostring(level)
end

---获取副本列表（从配置表）
---@return table 副本列表 [{name, title, maxLevel}, ...]
function DungeonHelper:GetDungeonList()
    local dungeons = {}
    local dungeonTable = ConfData:GetTable("Dungeon")
    
    if not dungeonTable then
        print("[DungeonHelper] 警告: Dungeon 配置表不存在")
        return dungeons
    end
    
    for dungeonName, dungeonData in pairs(dungeonTable) do
        if type(dungeonName) == "string" and dungeonData.Diffs then
            local title = self:GetDungeonTitle(dungeonName)
            local maxLevel = 0
            
            -- 计算最大难度
            for level, _ in pairs(dungeonData.Diffs) do
                if type(level) == "number" and level > maxLevel then
                    maxLevel = level
                end
            end
            
            table.insert(dungeons, {
                name = dungeonName,
                title = title,
                maxLevel = maxLevel,
            })
        end
    end
    
    -- 按名称排序
    table.sort(dungeons, function(a, b) 
        return a.name < b.name
    end)
    
    print("[DungeonHelper] 获取副本列表, 共 " .. #dungeons .. " 个副本")
    return dungeons
end

---获取副本难度列表
---@param dungeonName string 副本配置名
---@return table 难度列表 [{level, name, unlocked}, ...]
function DungeonHelper:GetDungeonDiffs(dungeonName)
    local diffs = {}
    local dungeonData = ConfData:GetLine("Dungeon", dungeonName)
    
    if not dungeonData or not dungeonData.Diffs then
        print("[DungeonHelper] 警告: 副本 " .. tostring(dungeonName) .. " 不存在或没有难度配置")
        return diffs
    end
    
    for level, diffData in pairs(dungeonData.Diffs) do
        if type(level) == "number" then
            local diffName = self:GetDiffName(level, diffData.Name)
            
            -- 检查是否解锁（简化版：无前置条件或第一关默认解锁）
            local unlocked = (level == 1) or (not diffData.Precondition)
            
            table.insert(diffs, {
                level = level,
                name = diffName,
                unlocked = unlocked,
                hasFogOfWar = diffData.FogOfWar or false,
            })
        end
    end
    
    -- 按等级排序
    table.sort(diffs, function(a, b) 
        return a.level < b.level
    end)
    
    print("[DungeonHelper] 获取副本 " .. dungeonName .. " 难度列表, 共 " .. #diffs .. " 个难度")
    return diffs
end

---获取副本详情
---@param dungeonName string 副本配置名
---@return table|nil 副本详情
function DungeonHelper:GetDungeonDetail(dungeonName)
    local dungeonData = ConfData:GetLine("Dungeon", dungeonName)
    if not dungeonData then
        return nil
    end
    
    return {
        name = dungeonName,
        title = self:GetDungeonTitle(dungeonName),
        diffs = self:GetDungeonDiffs(dungeonName),
        rawData = dungeonData,
    }
end

---创建副本ID (用于 Flow:SelectDungeon)
---副本ID格式: dungeonName_level (例: main_rogue_1)
---@param dungeonName string 副本配置名
---@param level number 难度等级
---@return string 副本ID
function DungeonHelper:MakeDungeonId(dungeonName, level)
    return dungeonName .. "_" .. tostring(level)
end

---解析副本ID
---@param dungeonId string 副本ID
---@return string, number 副本名, 难度等级
function DungeonHelper:ParseDungeonId(dungeonId)
    local lastUnderscore = dungeonId:match(".*_")
    if lastUnderscore then
        local name = dungeonId:sub(1, #lastUnderscore - 1)
        local level = tonumber(dungeonId:sub(#lastUnderscore + 1))
        return name, level or 1
    end
    return dungeonId, 1
end

print("[DungeonHelper] 副本辅助模块已加载")
return DungeonHelper
