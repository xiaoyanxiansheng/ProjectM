--[[critcore/tool/table.lua]]

--- 表的长度
---@param t any
---@return integer
function table.length(t)
    local n = 0
    for k, v in pairs(t) do
        n = n + 1
    end
    return n
end

--- 表拥有任意元素
function table.have_any(t)
    if not t then
        return false
    end
    if type(t) ~= "table" then
        return false
    end
    for k, v in pairs(t) do
        return true
    end
    return false
end

--- 打印
function table.print(t, n)
    n = n or 1
    if n == 1 then
        print(tostring(t) .." {")
    end
    if t then
        for k, v in pairs(t) do
            local value = v
            local prestr = SpawnText("   ├", n)
            local typestr = type(v)
            if typestr == "table" then
                if n > 3 or k == 'super' or k == '__index' then
                    print(prestr .. " " .. k .. " = #" .. tostring(v))
                else
                    print(prestr .. " " .. k .. " : " .. tostring(v) .. " {")
                    table.print(v, n + 1)
                    print(prestr .. " }")
                end
            else
                if typestr == "number" then
                    print(prestr .. " " .. k .. " = " .. value)
                elseif typestr == "string" then
                    print(prestr .. " " .. k .. " = '" .. value .. "'")
                elseif typestr == "boolean" then
                    print(prestr .. " " .. k .. " = " .. (value and "true" or "false"))
                else
                    print(prestr .. " " .. k .. " = #" .. typestr)
                end
            end
        end
    end
    if n == 1 then
        print("}")
    end
end

--- 生成文本
function SpawnText(t, n)
    local i = 0
    local str = ""
    for i = 1, n do
        str = str .. t
    end
    return str
end


--- 转为字符串
---@param t any
---@param stringkey boolean|nil 是否必须用字符串key
---@return string
function table.tostring(t, stringkey, n)
    n = n or 0
    local buffer = {}
    buffer[#buffer + 1] = "{"

    if t and n < 6 then
        if type(t) == "userdata" then
            buffer[#buffer + 1] = tostring(t)
        elseif type(t) == "table" then
            local isFirst = true
            for k, v in pairs(t) do
                -- 这里略过 super / __index
                if k ~= "super" and k ~= "__index" then
                    if not isFirst then
                        buffer[#buffer + 1] = ","
                    end
                    isFirst = false

                    -- 处理 key
                    local kstr
                    if stringkey or type(k) == "string" then
                        kstr = string.format('"%s"', k)
                    else
                        kstr = "[" .. tostring(k) .. "]"
                    end

                    -- 处理 value
                    local typestr = type(v)
                    if typestr == "table" then
                        buffer[#buffer + 1] = kstr .. ":" .. table.tostring(v, stringkey, n + 1)
                    elseif typestr == "string" then
                        buffer[#buffer + 1] = kstr .. ':"' .. v .. '"'
                    elseif typestr == "number" then
                        buffer[#buffer + 1] = kstr .. ":" .. v
                    elseif typestr == "boolean" then
                        buffer[#buffer + 1] = kstr .. ":" .. (v and "true" or "false")
                    else
                        buffer[#buffer + 1] = kstr .. ':"#' .. typestr .. '"'
                    end
                end
            end
        else
            -- 其他情况，如不是table也不是userdata
            buffer[#buffer + 1] = tostring(t)
        end
    end

    buffer[#buffer + 1] = "}"
    return table.concat(buffer)
end


--- 合并两个table，当key相同时，如果value是数字则相加，否则使用or算法
---@generic T
---@param t1 T
---@param t2 T
---@param keep boolean|nil 是否保持t1的地址不变
---@param recursion integer|nil 递归合并层数
---@return T
function table.merge(t1, t2, keep, recursion)
    recursion = recursion or 0
    local re
    if keep then
        re = t1
    else
        re = {}
        for k, v in pairs(t1) do
            re[k] = v
        end
    end
    for k, v in pairs(t2) do
        if type(v) == "number" then
            re[k] = (re[k] or 0) + v
        elseif type(v) == "table" and recursion > 0 then
            re[k] = table.merge(re[k] or {}, v, keep, recursion - 1)
        else
            re[k] = re[k] or v
        end
    end
    return re
end

--- 随机抽取，不允许重复
---@generic T
---@param t T
---@return T
function table.random_spot(t, n)
    local tmpid = {}
    for k, v in pairs(t) do
        table.insert(tmpid, k)
    end

    -- 抽取
    local re = {}
    for i = 1, n do
        if #tmpid == 0 then return re end
        local index = math.random(#tmpid)
        re[i] = t[tmpid[index]]
        tmpid[index] = tmpid[#tmpid]
        tmpid[#tmpid] = nil
    end

    return re
end

--- 随机抽取，允许重复
---@generic T
---@param t T
---@return T
function table.random(t, n)
    local tmpid = {}
    for k, v in pairs(t) do
        table.insert(tmpid, k)
    end

    local re = {}
    for i = 1, n do
        local index = math.random(#tmpid)
        re[i] = t[tmpid[index]]
    end
    return re
end


--- 随机抽取，允许重复，允许指定权重的key
---@generic T
---@param t T
---@param weight_key any
---@param n any
---@param spot boolean|nil 是否不放回
---@return T
function table.random_weight(t, weight_key, n, spot)
    local re = {}
    local tmp = {}
    for _, v in pairs(t) do
        table.insert(tmp, v)
    end
    for i = 1, n do
        local weightsum = 0
        for _, item in pairs(tmp) do
            weightsum = weightsum + item[weight_key]
        end

        local weightnum = math.random(1, weightsum)
        for k, item in pairs(tmp) do
            if weightnum <= item[weight_key] then
                table.insert(re, item)
                if spot then
                    tmp[k] = nil
                end
                break
            end
            weightnum = weightnum - item[weight_key]
        end
    end

    return re
end



--[[
--- 检查两个table是否相同
---@param maxlayer integer|nil 最大检查层数
---@param iserr boolean|nil 达到最大层数时是否报错
---@return boolean
function table.CheckEqual(t1, t2, maxlayer, iserr)
    return table.__CheckEqual(t1, t2, maxlayer, iserr, 1)
end

--- 检查两个table是否相同
---@param t1 table|nil
---@param t2 table|nil
---@param maxlayer integer|nil 最大检查层数
---@param iserr boolean|nil 达到最大层数时是否报错
---@param l integer 当前层数
function table.__CheckEqual(t1, t2, maxlayer, iserr, l)
    if maxlayer and l > maxlayer then
        if iserr then
            error("表格检查：层数已超过最大限制，最大层数为 " .. maxlayer)
        end
        return false
    end
    if t1 == nil and t2 == nil then
        return true
    end
    if type(t1) ~= "table" or type(t2) ~= "table" then
        return t1 == t2
    end
    for k, v in pairs(t1) do
        local v2 = table.AutoGet(t2, k)
        if v2 == nil then
            return false
        end
        if type(v) == "table" then
            if not table.__CheckEqual(v, v2, maxlayer, iserr, l + 1) then
                return false
            end
        else
            if v ~= v2 then
                return false
            end
        end
    end
    for k, _ in pairs(t2) do
        if table.AutoGet(t1, k) == nil then
            return false
        end
    end
    return true
end

]]


--- 检查两个table是否相同
---@param t1 any
---@param t2 any
---@param maxlayer integer|nil 最大检查层数
---@param iserr boolean|nil 达到最大层数时是否报错
function table.CheckEqual(t1, t2, maxlayer, iserr)
    -- 处理 nil 情况
    if t1 == nil and t2 == nil then
        return true
    end

    -- 类型不同直接返回 false
    if type(t1) ~= type(t2) then
        return false
    end

    -- 非 table 类型直接比较
    if type(t1) ~= "table" then
        return t1 == t2
    end

    -- 检查是否达到最大层级
    if maxlayer and maxlayer <= 0 then
        if iserr then
            error("表格检查：层数已超过最大限制，最大层数为 " .. maxlayer)
        end
        return false
    end

    -- 检查已比较的表格，避免循环引用
    local compared = {}

    local function _compare(a, b, layer)
        -- 检查是否已经比较过这对表格
        if compared[a] and compared[a][b] then
            return true
        end
        if not compared[a] then
            compared[a] = {}
        end
        compared[a][b] = true

        -- 检查键的数量
        local countA, countB = 0, 0
        for k, v in pairs(a) do countA = countA + 1 end
        for k, v in pairs(b) do countB = countB + 1 end
        if countA ~= countB then
            return false
        end

        -- 比较每个键值对
        for k, v in pairs(a) do
            local found = false

            -- 查找对应的键
            for k2, v2 in pairs(b) do
                -- 处理数字和字符串键的等价性
                local keyMatch = false
                if type(k) == "number" and type(k2) == "string" then
                    keyMatch = tostring(k) == k2
                elseif type(k) == "string" and type(k2) == "number" then
                    keyMatch = k == tostring(k2)
                else
                    keyMatch = k == k2
                end

                if keyMatch then
                    -- 递归比较值
                    if type(v) == "table" and type(v2) == "table" then
                        local nextLayer = layer and layer - 1
                        if nextLayer and nextLayer < 0 then
                            -- 达到最大层级，不再深入比较
                            found = true
                        else
                            found = _compare(v, v2, nextLayer)
                        end
                    else
                        found = (v == v2)
                    end
                    break
                end
            end

            if not found then
                return false
            end
        end

        return true
    end

    local nextMaxLayer = maxlayer and maxlayer - 1
    return _compare(t1, t2, nextMaxLayer)
end


--- table中是否包含某个值
function table.isInclude(table, value)
    if value == nil then return false end
    if table and type(table) == "table" then
        for _, v in pairs(table) do
            if v == value then
                return true
            end
        end
    end
    return false
end



--[================[深拷贝]================]
---@generic T
---@param data T
---@return T
function table.DeepCopy(data)
    if type(data) ~= "table" then
        return data
    end
    local re = {}
    for k, v in pairs(data) do
        re[table.DeepCopy(k)] = table.DeepCopy(v)
    end
    return re
end


--[================[浅拷贝]================]
---@generic T
---@param data T
---@return T
function table.ShallowCopy(data)
    if type(data) ~= "table" then
        return data
    end
    local re = {}
    for k, v in pairs(data) do
        re[k] = v
    end
    return re
end

--- 连接两个数组
function table.concatArrays(t1, t2)
    local result = {}
    if t1 ~= nil and type(t1) == "table" then
        for i = 1, #t1 do table.insert(t1[i]) end
    end
    if t2 ~= nil and type(t2) == "table" then
        for i = 1, #t2 do table.insert(t2[i]) end
    end
    return result
end


--[================[返回任意一个元素]================]
---@generic T
---@generic K
---@param data {[K]:T}
---@return T|nil 数组的值
---@return K|nil 数组的Key
function table.GetAnyOne(data)
    if type(data) == "table" then
        for k, v in pairs(data) do
            return v, k
        end
    end
end


--[================[自动转换key的类型进行取值]================]
---@generic T
---@param t {[any]:T}|nil
---@param key string|number
---@return T|nil
function table.AutoGet(t, key)
    if type(t) ~= "table" then return nil end
    if t[key] then
        return t[key]
    end
    if type(key) == "string" then
        return t[tonumber(key)]
    end
    return t[tostring(key)]
end


--[================[自动转换key的类型进行赋值]================]
---@param t any
---@param key any
---@param value any
function table.AutoSet(t, key, value)
    if type(t) ~= "table" then return end
    if t[key] == nil then
        if type(key) == "string" then
            if t[tonumber(key)] ~= nil then
                t[tonumber(key)] = value
                return
            end
        else
            if t[tostring(key)] ~= nil then
                t[tostring(key)] = value
                return
            end
        end
    end
    t[key] = value
end


--[================[尝试把所有字符串key转换为数字key]================]
---@generic T
---@param t T
---@param recursion boolean|nil
---@return T
function table.ConvertKeyStringTointeger(t, recursion)
    if type(t) ~= "table" then return t end

    local re = {}
    for k, v in pairs(t) do
        -- 先递归
        if recursion and type(v) == "table" then
            v = table.ConvertKeyStringTointeger(v, recursion)
        end
        -- key变化
        local newk = k
        if type(k) == "string" then
            local nk = tonumber(k)
            if nk then
                local ik = math.floor(nk)
                if ik == nk and (not t[ik]) then
                    -- 验证通过
                    newk = ik
                end
            end
        end
        re[newk] = v
    end

    return re
end


table.remove_value = function(t, value)
    if type(t) ~= "table" then return end
    for i = #t, 1, -1 do
        if t[i] == value then
            table.remove(t, i)
        end
    end
end


--[================[销毁]================]
---@param t table
function table.Destroy(t)
    for k, v in pairs(t) do
        if v and type(v) == "table" and v.Destroy and type(v.Destroy) == "function" then
            v:Destroy()
        end
        t[k] = nil
    end
end