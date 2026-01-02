--[[critcore/static/conf_data.lua]]
--[=[
    配置数据类
]=]

-- 加载 table 扩展
require("critcore.tool.table")

ConfData = {
    _system_conf = nil,

    _game_conf = {},
}


---检查表是否存在
---@param table_name any
function ConfData:_CheckTable(table_name)
    if not self._game_conf[table_name] then
        local moduleName = "confdata." .. table_name
        local success, result = pcall(require, moduleName)
        if success then
            self._game_conf[table_name] = result
        else
            error("配置表 " .. table_name .. " 不存在: " .. tostring(result))
        end
    end
end

function ConfData:ClearTable(tableName)
    local moduleName = "confdata." .. tableName
    self._game_conf[tableName] = nil
    package.loaded[moduleName] = nil
end

---清除配置缓存
function ConfData:ClearCache()
    self._game_conf = {}
end


--[================[返回配置的值]================]
---@param table_name string 表名称，当表不存在时会发生错误
---@param key string|number ID或Key，当Key不存在时返回nil
---@param header string 表头名称，当Header不存在时返回nil
---@param default any 缺省值
---@return any
function ConfData:Get(table_name, key, header, default)
    self:_CheckTable(table_name)
    if not self._game_conf[table_name] then
        error("配置表 " .. table_name .. " 不存在")
    end
    local line = table.AutoGet(self._game_conf[table_name], key)
    if not line then
        return default
    end
    return line[header] or default
end


--[================[返回配置的值，并检查错误]================]
---@param table_name string 表名称，当表不存在时会发生错误
---@param key string|number ID或Key，当Key不存在时抛出错误
---@param header string 表头名称，当Header不存在时抛出错误
---@return any
function ConfData:CheckAndGet(table_name, key, header)
    self:_CheckTable(table_name)
    if not self._game_conf[table_name] then
        error("配置表 " .. table_name .. " 不存在")
    end
    local line = table.AutoGet(self._game_conf[table_name], key)
    if not line then
        error("配置表 " .. table_name .. " 中的key [" .. key .. "] 不存在")
    end
    if line[header] == nil then
        error("配置表 " .. table_name .. " 中的key [" .. key .. "] 必须包含 [" .. header .. "] 字段")
    end
    return line[header]
end


--[================[返回配置的一行]================]
---@param table_name string 表名称，当表不存在时会发生错误
---@param key string|number ID或Key，当Key不存在时返回nil
---@return table|nil
function ConfData:GetLine(table_name, key)
    self:_CheckTable(table_name)
    if not self._game_conf[table_name] then
        return nil
    end
    return table.AutoGet(self._game_conf[table_name], key)
end


--[================[返回配置的一行，并检查错误]================]
---@param table_name string 表名称，当表不存在时会发生错误
---@param key string|number ID或Key，当Key不存在时抛出错误
---@return table
function ConfData:CheckAndGetLine(table_name, key)
    self:_CheckTable(table_name)
    if not self._game_conf[table_name] then
        error("配置表 " .. table_name .. " 不存在")
    end
    local line = table.AutoGet(self._game_conf[table_name], key)
    if not line then
        error("配置表 " .. table_name .. " 中的key[" .. key .. "]不存在")
    end
    return line
end


--[================[返回一整个表]================]
---@param table_name string 表名称，当表不存在时会发生错误
---@return table
function ConfData:GetTable(table_name)
    self:_CheckTable(table_name)
    if not self._game_conf[table_name] then
        error("配置表 " .. table_name .. " 不存在")
    end
    return self._game_conf[table_name]
end


--[================[根据过滤条件返回表格]================]
---@param table_name string 表名称，当表不存在时会发生错误
---@param filter_callback fun(line:table):boolean 过滤回调函数，返回false表示过滤
function ConfData:GetFiltrate(table_name, filter_callback)
    self:_CheckTable(table_name)
    if not self._game_conf[table_name] then
        error("配置表 " .. table_name .. " 不存在")
    end
    local result = {}
    for key, line in pairs(self._game_conf[table_name]) do
        if filter_callback(line) then
            result[key] = line
        end
    end
    return result
end


--[================[返回游戏全局配置]================]
---@param key string Key，当Key不存在时返回nil
---@return any
function ConfData:GetGameConfig(key)
    -- 获取配置表名称
    local tableName = self:GetSystemConfig('GameConfigTableName')
    if not tableName then
        -- print("[ConfData] GameConfigTableName 未配置，跳过 " .. key)
        return nil
    end
    
    -- 尝试获取配置行（不报错）
    local line = self:GetLine(tableName, key)
    if not line then
        return nil
    end
    
    if line.Value then
        return line.Value
    end
    if line.MapValue then
        return line.MapValue
    end
    if line.Map2Value then
        return line.Map2Value
    end
    if line.ArrValue then
        return line.ArrValue
    end
    if line.Arr2Value then
        return line.Arr2Value
    end
    return nil
end


--[================[返回游戏系统配置]================]
---@param key string Key
---@return any
function ConfData:GetSystemConfig(key)
    -- Unity 版本使用本地默认配置，不依赖 app.config.config
    if not self._system_conf then
        self._system_conf = {
            -- 配置表相关
            GameConfigTableName = "GameConfig",
            
            -- 技能系统相关
            SkillDefaultSound = nil,  -- 禁用默认音效
            
            -- 其他配置可以按需添加
        }
    end
    return self._system_conf[key]
end