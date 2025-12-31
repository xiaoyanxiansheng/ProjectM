--[[critcore/tool/string.lua]]

--[================================================================[
    使用指定字符将字符串分隔成一个数组

    @param sep string 分隔的字符串
    @return string[] 分隔后的数组
]================================================================]
function string.split_lite(str, sep)
    local splits = {}

    if sep == nil then
        -- return table with whole str
        table.insert(splits, str)
    elseif sep == "" then
        -- return table with each single character
        local len = #str
        for i = 1, len do
            table.insert(splits, str:sub(i, i))
        end
    else
        -- normal split use gmatch
        local pattern = "[^" .. sep .. "]+"
        ---@diagnostic disable-next-line: param-type-mismatch
        for str in string.gmatch(str, pattern) do
            table.insert(splits, str)
        end
    end

    return splits
end


---批量替换文本
---@param str string
---@param replace {[string]: string|number}
function string.getReplace(str, replace)
    if not replace then
        return str
    end
    for k, v in pairs(replace) do
        str = string.gsub(str, '{'..k..'}', v)
    end
    return str
end


-- 文本转换为url安全
function string.urlEncode(str)
    if not str then return "" end
    
    -- 预处理：替换换行符和控制字符
    str = str:gsub("[\r\n]+", "<br>")  -- 将所有换行符替换为空格
    str = str:gsub("%c", " ")       -- 将所有控制字符替换为空格
    
    local result = {}
    for i = 1, #str do
        local char = str:sub(i, i)
        local byte = char:byte()
        -- 保留字母数字和部分安全字符（-_.~）
        if (byte >= 48 and byte <= 57) or    -- 0-9
           (byte >= 65 and byte <= 90) or    -- A-Z
           (byte >= 97 and byte <= 122) or   -- a-z
           byte == 45 or byte == 95 or       -- -_
           byte == 46 or byte == 126 then    -- .~
            table.insert(result, char)
        else
            -- 特殊字符编码为 %XX 格式
            table.insert(result, string.format("%%%02X", byte))
        end
    end
    return table.concat(result)
end