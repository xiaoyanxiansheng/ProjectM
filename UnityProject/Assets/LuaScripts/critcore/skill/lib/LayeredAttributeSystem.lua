-- vscripts/critcore/skill/lib/LayeredAttributeSystem.lua

-- 新版 LayeredAttributeSystem
-- 使用原始表 + 伴随表方案，允许完全透明的属性访问
LayeredAttributeSystem = {}

-- 全局缓存
local systemCache = {}  -- 存储已创建的系统实例
local originalValues = {} -- 存储原始值备份

-- 深度复制表格
local function DeepCopy(src)
    if type(src) ~= "table" then return src end
    local copy = {}
    for k, v in pairs(src) do
        if type(v) == "table" then
            copy[k] = DeepCopy(v)
        else
            copy[k] = v
        end
    end
    return copy
end

-- 解析路径字符串到表示路径的数组
local function ParsePath(pathStr)
    if type(pathStr) ~= "string" then
        return {pathStr}  -- 单键直接返回
    end
    
    local result = {}
    for part in pathStr:gmatch("[^%.]+") do
        -- 尝试将数字字符串转为数字
        local num = tonumber(part)
        table.insert(result, num or part)
    end
    return result
end

-- 获取指定路径的值
local function GetValueByPath(tbl, pathStr)
    local path = type(pathStr) == "table" and pathStr or ParsePath(pathStr)
    local current = tbl
    
    for i, key in ipairs(path) do
        if type(current) ~= "table" then
            return nil
        end
        current = current[key]
    end
    
    return current
end

-- 设置指定路径的值
local function SetValueByPath(tbl, pathStr, value)
    local path = type(pathStr) == "table" and pathStr or ParsePath(pathStr)
    local current = tbl
    
    -- 遍历到倒数第二层
    for i = 1, #path - 1 do
        local key = path[i]
        
        -- 如果路径中间的表不存在，则创建
        if current[key] == nil or type(current[key]) ~= "table" then
            current[key] = {}
        end
        
        current = current[key]
    end
    
    -- 设置最终值
    local lastKey = path[#path]
    current[lastKey] = value
    
    return true
end

-- 创建完整路径字符串
local function CreatePathString(path)
    if type(path) == "string" then
        return path
    end
    
    local result = {}
    for _, part in ipairs(path) do
        table.insert(result, tostring(part))
    end
    
    return table.concat(result, ".")
end

-- 创建新的LayeredAttributeSystem实例
function LayeredAttributeSystem.Create(originalTable)
    -- 检查缓存
    if systemCache[originalTable] then
        return systemCache[originalTable]
    end
    
    -- 深度复制原始值作为基准值
    originalValues[originalTable] = DeepCopy(originalTable)
    
    -- 创建修饰符存储
    local modifiers = {}
    
    -- 将修饰符应用到原始表
    local function SyncToOriginal()
        -- 按路径应用所有修饰符
        for pathStr, mod in pairs(modifiers) do
            local origValue = GetValueByPath(originalValues[originalTable], pathStr)
            if type(origValue) == "number" then
                local newValue = (origValue + mod.add) * mod.mul
                SetValueByPath(originalTable, pathStr, newValue)
            end
        end
    end
    
    -- 处理属性路径的便捷函数
    local function ProcessPath(path, ...)
        if type(path) == "table" and select("#", ...) == 0 then
            -- 已经是路径数组
            return CreatePathString(path)
        elseif select("#", ...) > 0 then
            -- 多个参数形式的路径
            local pathArray = {path, ...}
            return CreatePathString(pathArray)
        else
            -- 单个字符串路径
            return tostring(path)
        end
    end
    
    -- 创建系统API
    local system = {
        -- 添加修饰符
        Add = function(path, value)
            
            if not modifiers[path] then
                modifiers[path] = {add = 0, mul = 1}
            end
            
            modifiers[path].add = modifiers[path].add + value
            SyncToOriginal()
            
            return originalTable
        end,
        
        -- 减法修饰符
        Sub = function(path, value)
            
            if not modifiers[path] then
                modifiers[path] = {add = 0, mul = 1}
            end
            
            modifiers[path].add = modifiers[path].add - value
            SyncToOriginal()
            
            return originalTable
        end,
        
        -- 乘法修饰符
        Mul = function(path, value)
            
            if not modifiers[path] then
                modifiers[path] = {add = 0, mul = 1}
            end
            
            modifiers[path].mul = modifiers[path].mul * value
            SyncToOriginal()
            
            return originalTable
        end,
        
        -- 除法修饰符
        Div = function(path, value)
            
            if not modifiers[path] then
                modifiers[path] = {add = 0, mul = 1}
            end
            
            modifiers[path].mul = modifiers[path].mul / value
            SyncToOriginal()
            
            return originalTable
        end,
        
        -- 直接设置值（绕过修饰符系统）
        Set = function(path, value)
            
            -- 设置原始表和原始值备份的值
            SetValueByPath(originalTable, path, value)
            SetValueByPath(originalValues[originalTable], path, value)
            
            -- 清除该路径的修饰符
            modifiers[path] = nil
            
            return originalTable
        end,
        
        -- 重置特定路径的修饰符
        ResetPath = function(path)
            local pathStr = path and ProcessPath(path) or nil
            
            if not pathStr then
                -- 重置所有修饰符
                modifiers = {}
            else
                -- 重置特定路径开头的所有修饰符
                for p in pairs(modifiers) do
---@diagnostic disable-next-line: undefined-field
                    if p:find("^" .. pathStr:gsub("%-", "%%-")) then
                        modifiers[p] = nil
                    end
                end
            end
            
            SyncToOriginal()
            return originalTable
        end,
        
        -- 重置所有修饰符
        Reset = function()
            modifiers = {}
            
            -- 恢复原始值
            for k, v in pairs(originalValues[originalTable]) do
                if type(v) == "table" then
                    originalTable[k] = DeepCopy(v)
                else
                    originalTable[k] = v
                end
            end
            
            return originalTable
        end,
        
        -- 获取当前表（已应用修饰符）
        GetTable = function()
            return originalTable
        end,
        
        -- 获取当前修饰符
        GetModifiers = function()
            return DeepCopy(modifiers)
        end
    }
    
    -- 缓存系统实例
    systemCache[originalTable] = system
    
    -- 返回系统API
    return system
end

function LayeredAttributeSystem.Delete(t)
    systemCache[t] = nil
end

-- 清除所有缓存
function LayeredAttributeSystem.ClearCache()
    systemCache = {}
    originalValues = {}
end

function LayeredAttributeSystem.IsLayeredAttributeSystem(t)
    return systemCache[t] ~= nil
end

-- 全局函数 - 重置所有系统的修饰符
function LayeredAttributeSystem.ResetAll()
    for originalTable, system in pairs(systemCache) do
        system.Reset()
    end
end

-- 全局Set方法
function LayeredAttributeSystem.Set(t, v, ...)
    local skillSystem = systemCache[t]
    if not skillSystem then
        skillSystem = LayeredAttributeSystem.Create(t)
    end
    local key = table.concat({...}, ".")
    skillSystem.Set(key, v)
end

-- 全局Add方法
function LayeredAttributeSystem.Add(t, v, ...)
    local skillSystem = systemCache[t]
    if not skillSystem then
        skillSystem = LayeredAttributeSystem.Create(t)
    end
    local key = table.concat({...}, ".")
    skillSystem.Add(key, v)
end

-- 全局Sub方法
function LayeredAttributeSystem.Sub(t, v, ...)
    local skillSystem = systemCache[t]
    if not skillSystem then
        skillSystem = LayeredAttributeSystem.Create(t)
    end
    local key = table.concat({...}, ".")
    skillSystem.Sub(key, v)
end

-- 全局Mul方法
function LayeredAttributeSystem.Mul(t, v, ...)
    local skillSystem = systemCache[t]
    if not skillSystem then
        skillSystem = LayeredAttributeSystem.Create(t)
    end
    local key = table.concat({...}, ".")
    skillSystem.Mul(key, v)
end

-- 全局Div方法
function LayeredAttributeSystem.Div(t, v, ...)
    local skillSystem = systemCache[t]
    if not skillSystem then
        skillSystem = LayeredAttributeSystem.Create(t)
    end
    local key = table.concat({...}, ".")
    skillSystem.Div(key, v)
end

-- -- 示例代码 - 与原示例相似
-- local tableConfig = {
--     [1110071] = {
--         ["id"] = 1110071,
--         ["Quality"] = 4,
--         ["HidePassiveId"] = 1110071,
--         ["DamageType"] = 2,
--         ["Maxlevel"] = 8,
--         ["Duration"] = {5},
--         ["Radius"] = {200,300,400,500,600,700,800,900},
--         ["Cd"] = {9,8.5,8,7.5,7,6.5,6,5.5,5},
--         ["MPCost"] = {10},
--         ["CastTime"] = 0.1,
--     }
-- }

-- -- 测试例子，注释掉以避免自动运行

-- -- 创建属性系统
-- local originalTable = tableConfig[1110071]
-- local skillSystem = LayeredAttributeSystem.Create(originalTable)

-- -- 使用系统API修改属性
-- -- skillSystem.Mul("Duration.1", 2)
-- -- skillSystem.Add("Duration.1", 5)
-- local duration = originalTable.Duration
-- print(#duration)

-- LayeredAttributeSystem.Mul(originalTable, 2,"Duration",1)
-- LayeredAttributeSystem.Add(originalTable, 5,"Duration",1)

-- print("技能持续时间:", originalTable.Duration[1])

-- -- 使用数组索引访问和修改
-- skillSystem.Add("Radius.1", 100)  -- 将第一个半径值增加100

-- -- 打印修改后的值
-- print("技能伤害:", tableConfig[1110071].Damage)  -- 输出: 75
-- print("第一个半径:", tableConfig[1110071].Radius[1])  -- 输出: 300

-- -- 使用原生操作
-- for i, radius in ipairs(tableConfig[1110071].Radius) do
--     print("半径 " .. i .. ":", radius)
-- end

-- -- 重置所有修改
-- skillSystem.Reset()
-- print("重置后的伤害:", tableConfig[1110071].Damage)  -- 输出原始值


