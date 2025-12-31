--[[critcore/class/attr.lua]]
--[=[
    属性基础类，在需要增加属性的系统挂载本类的实例
    Phase 3 移植版 - 从 Dota2 Arcade 移植到 Unity
]=]

-- 使用已移植的 OOP 系统
require("critcore.skill.lib.Classnew")

---@class CAttr
CAttr = Classnew("CAttr")

local _Max_Index = 0

--[================[创建一个Attr类]================]
---@param printname string 打印名称
---@param readdefault boolean|nil 是否读取默认属性
---@param targetlimit number|nil 限制目标类型，0表示无限制，1表示加给自己，2表示加给同玩家的所有单位，3表示加给房间所有人
---@param changecallback fun()|nil 当属性改变时的回调函数
---@return CAttr
function CreateClass_Attr(printname, readdefault, targetlimit, changecallback)
    return CAttr(printname, readdefault, targetlimit, changecallback)
end

-- 静态属性：计算结果时预处理的id
CAttr.__StaticMathResultPreId = nil

--[================[构造函数]================]
---@param printname string 打印名称
---@param readdefault boolean|nil 是否读取默认属性
---@param targetlimit number|nil 限制目标类型，0表示无限制，1表示加给自己，2表示加给同玩家的所有单位，3表示加给房间所有人
---@param changecallback fun()|nil 当属性改变时的回调函数
function CAttr:constructor(printname, readdefault, targetlimit, changecallback)
    -- 打印名称
    self.__PrintName = printname

    -- 是否读取默认属性
    self.__ReadDefault = readdefault or false

    -- 限制目标类型，1表示加给自己，2表示加给同玩家的所有单位，3表示加给房间所有人，0表示无限制
    self.__TargetLimit = targetlimit or 0

    -- 事件：有属性发生改变
    ---@type fun()|nil
    self.__EventChangeCallBack = changecallback

    -- 实例ID
    _Max_Index = _Max_Index + 1
    -- 实例ID
    self.__Index = _Max_Index

    -- 子对象列表
    ---@type {[number]:CAttr}
    self.__SubAttrObject = {}
    
    -- 父对象列表
    ---@type {[number]:CAttr}
    self.__ParentAttrObject = {}
    
    -- 属性列表
    ---@type {id:number, value:number, zone:number, target:number}[]
    self.__Data = {}
    
    -- 缓存属性列表，已汇总
    ---@type {id:number, value:number, zone:number, target:number}[]
    self.__Cache = {}
    
    -- 缓存计算结果
    ---@type {[number]:number}
    self.__MathResult = {}
    
    -- 战斗力
    self.__FightingCapacity = 0
    
    -- 修改标记
    self.__IsChange = true

    -- 合并主属性
    self.__MergeMainAttr = 0

    -- 预处理ID
    if not CAttr.__StaticMathResultPreId then
        CAttr.__StaticMathResultPreId = {}
        local success, conf = pcall(function()
            return ConfData:GetTable("Attr")
        end)
        if success and conf then
            for id, msg in pairs(conf) do
                if msg.Default and msg.Default > 0 then
                    table.insert(CAttr.__StaticMathResultPreId, id)
                end
            end
        end
    end
end

--[================[设置合并主属性]================]
---@param id any
function CAttr:SetMergeMainAttr(id)
    self.__MergeMainAttr = id
end

CAttr.__AttrTypes = {}
--[================[返回指定类型的属性列表]================]
---@param attrtype any
---@return {}
function CAttr.GetAttrsByType(attrtype)
    if CAttr.__AttrTypes and CAttr.__AttrTypes[attrtype] then
        return CAttr.__AttrTypes[attrtype]
    end
    local success, conf = pcall(function()
        return ConfData:GetTable("Attr")
    end)
    if not success then
        return {}
    end
    local list = {}
    for k, v in pairs(conf) do
        if v.Type == attrtype then
            table.insert(list, v)
        end
    end
    CAttr.__AttrTypes[attrtype] = list
    return list
end


--[================[打印属性结构]================]
function CAttr:Print()
    print("------------------------开始打印属性结构------------------------")
    -- Phase 3: 移除对 Flow:GetDungeon() 的依赖
    self:__Print(0)
    print("----------------------------打印结束----------------------------")
end
function CAttr:__Print(tab)
    local rep = string.rep("----", tab)
    local math_list = self:GetMathList()
    local math_list_str = ''
    for k, v in pairs(math_list) do
        if v > 0 then
            math_list_str = math_list_str .. k .. "=" .. v .. ", "
        end
    end
    math_list_str = math_list_str .. " ||| "
    for k, v in pairs(self.__Data) do
        math_list_str = math_list_str .. "[".. v.id .. "=" .. v.value .. "," .. v.zone .. "," .. v.target .. "], "
    end
    print(rep .. "[" .. self.__Index .. "." .. self.__TargetLimit .. "]" .. self.__PrintName .. " : {" .. math_list_str .. "}")
    for k, v in pairs(self.__SubAttrObject) do
        v:__Print(tab + 1)
    end
end



--[================[返回属性引用结构]================]
function CAttr:GetAttrTable()
    local have = {}
    return self:__GetAttrTable(have)
end
function CAttr:__GetAttrTable(have)
    if have[self.__Index] then
        return {
            name = self.__PrintName,
            error = 'Repeat',
        }
    end
    have[self.__Index] = true
    local t = {
        name = self.__PrintName,
        attrs = {},
        sub = {},
    }
    for k, v in pairs(self.__Cache) do
        t.attrs[k] = v
    end
    for k, v in pairs(self.__SubAttrObject) do
        t.sub[k] = v:__GetAttrTable(have)
    end
    return t
end



--[================[修改标记]================]
function CAttr:__ChangeTip()
    self.__IsChange = true
    for k, v in pairs(self.__ParentAttrObject) do
        v:__ChangeTip()
    end
    -- 触发事件
    if self.__EventChangeCallBack then
        self.__EventChangeCallBack()
    end
end


--[================[释放内存]================]
function CAttr:Destroy()
    self:UnAllBind()
    self:UnRegAllSubAttr()
    -- Phase 3: 简化 table.Destroy
    for k in pairs(self) do
        self[k] = nil
    end
end


--[================[释放所有子对象绑定注册]================]
function CAttr:UnRegAllSubAttr()
    for k, v in pairs(self.__SubAttrObject) do
        v.__ParentAttrObject[self.__Index] = nil
    end
    self.__SubAttrObject = {}
    self:__ChangeTip()
end


--[================[绑定到此父对象上，本对象的属性值改变时，此对象同时发生改变]================]
---@param obj CAttr 对象
function CAttr:Bind(obj)
    obj.__SubAttrObject[self.__Index] = self
    self.__ParentAttrObject[obj.__Index] = obj
    obj:__ChangeTip()
end


--[================[解除与全部父对象的绑定]================]
function CAttr:UnAllBind()
    for _, v in pairs(self.__ParentAttrObject) do
        v.__SubAttrObject[self.__Index] = nil
        v:__ChangeTip()
    end
    self.__ParentAttrObject = {}
end


--[================[读取默认属性]================]
function CAttr:ReadDefaultAttr()
    local success, conf = pcall(function()
        return ConfData:GetTable("Attr")
    end)
    if not success then
        return
    end
    for k, v in pairs(conf) do
        --添加default
        if v.Default and v.Default > 0 then
            table.insert(self.__Data, {
                id = k,
                value = v.Default,
                zone = 0,
                target = 1,
            })
        end
    end

    -- 修改标记
    self:__ChangeTip()
end


--[================[清除指定ID的属性]================]
---@param attrid integer 属性表id
---@param zone integer|nil 乘区
function CAttr:ClearById(attrid, zone)
    for k, attr in pairs(self.__Data) do
        if attr.id == attrid then
            if (not zone) or (attr.zone == zone) then
                self.__Data[k] = nil
            end
        end
    end
    
    -- 修改标记
    self:__ChangeTip()
end


--[================[向列表中添加一条属性]================]
---@param attrid integer 属性表id
---@param value number 增加的值
---@param zone number|nil 乘区，0表示相加，非0表示不同的乘区
---@param target integer|nil 目标，0=所有，1=加给自己，2=加给队伍，3=加给房间
function CAttr:AddAttr(attrid, value, zone, target)
    table.insert(self.__Data, {
        id = attrid,
        value = value,
        zone = zone or 0,
        target = target or 1,
    })

    -- 修改标记
    self:__ChangeTip()
end


--[================[根据数组添加一条属性]================]
---@param arr any
---@param times number|nil 倍率，缺省为1
function CAttr:AddAttrByArr(arr, times)
    self:AddAttr(arr[1], arr[2] * (times or 1), arr[3], arr[4])

    -- 修改标记
    self:__ChangeTip()
end


--[================[根据二维数组添加属性]================]
---@param map any
---@param times number|nil 倍率，缺省为1
function CAttr:AddAttrByMap(map, times)
    for _, v in pairs(map) do
        self:AddAttrByArr(v, times)
    end
end


--[================[根据二维数组添加属性，并进行属性倍率相乘]================]
---@param map any
---@param muls {[integer]:number}|nil 倍率{id:倍率}
function CAttr:AddAttrMulByMap(map, muls)
    muls = muls or {}
    for _, v in pairs(map) do
        table.insert(self.__Data, {
            id = v[1],
            value = v[2] * (muls[v[1]] or 1),
            zone = v[3] or 0,
            target = v[4] or 1,
        })
    end
    
    -- 修改标记
    self:__ChangeTip()
end


--[================[通过json字符串直接设置属性]================]
---@param str string
function CAttr:AddAttrByJsonStr(str)
    local t = JSON:decode(str)
    if type(t) == "table" then
        self:AddAttrByMap(t)
    end
end


--[================[清除所有属性]================]
function CAttr:Clear()
    self.__Data = {}

    -- 修改标记
    self:__ChangeTip()
end


--[================[设置属性]================]
---@param index integer 序号
---@param attrid integer 属性表id
---@param value number 增加的值
---@param zero number|nil 乘区，0表示相加，非0表示不同的乘区
---@param target integer|nil 目标，0=所有，1=加给自己，2=加给队伍，3=加给房间
function CAttr:SetAttrTo(index, attrid, value, zero, target)
    self.__Data[index] = {
        id = attrid,
        value = value,
        zone = zero or 0,
        target = target or 1,
    };

    -- 修改标记
    self:__ChangeTip()
end


--[================[设置指定位置的属性值]================]
---@param index integer 序号
---@param value number 增加的值
function CAttr:SetValueTo(index, value)
    self.__Data[index].value = value

    -- 修改标记
    self:__ChangeTip()
end


--[================[返回属性的数组副本]================]
---@return { id: number, value: number, zone: number, target: number}[]
function CAttr:GetList()
    self:_Summary()
    return self.__Cache
end


--[================[返回属性的计算结果]================]
---@return { [number]: number }
function CAttr:GetMathList()
    self:_Summary()
    return self.__MathResult
end


--[================[返回指定属性的计算结果]================]
---@param id integer ID
---@return number
function CAttr:GetValue(id)
    self:_Summary()
    id = tonumber(id) or 0
    return self.__MathResult[id] or 0
end


--[================[返回指定属性的计算结果]================]
---@param id integer ID
---@param zone integer|nil 乘区
---@return number
function CAttr:SumAndGetValue(id, zone)
    self:_Summary()
    id = tonumber(id) or 0
    zone = tonumber(zone) or 0
    local sum = 0
    for _, v in pairs(self.__Cache) do
        if v.id == id and v.zone == zone then
            sum = sum + v.value
        end
    end
    return sum
end


--[================[返回战斗力]================]
---@return number
function CAttr:GetFight()
    self:_Summary()
    return self._FightingCapacity
end


--[================[汇总属性]================]
---@param noReturn boolean|nil 不要执行ReturnAttr
function CAttr:_Summary(noReturn)
    if not self.__IsChange then
        return
    end
    local sumlist = {}    -- 值
    local valuelist = {}
    local ratiolist = {}

    -- 遍历自己的data
    self:_Summary_AddInTable(self.__Data, sumlist, valuelist, ratiolist)

    -- 遍历所有子对象的data
    for sk, sv in pairs(self.__SubAttrObject) do
        local tmp = sv:GetList()
        self:_Summary_AddInTable(tmp, sumlist, valuelist, ratiolist)
    end

    -- 把值加进缓存
    self.__Cache = {}
    for target, t1 in pairs(sumlist) do
        for zone, t2 in pairs(t1) do
            for id, value in pairs(t2) do
                table.insert(self.__Cache, {
                    target = target,
                    zone = zone,
                    id = id,
                    value = value,
                })
            end
        end
    end

    -- 预处理id
    if CAttr.__StaticMathResultPreId then
        for _, id in pairs(CAttr.__StaticMathResultPreId) do
            if not valuelist[id] then
                valuelist[id] = 0
            end
        end
    end

    -- 计算结果 汇总全部同ID的属性并计算成最终结果
    self.__MathResult = {}
    local success, conf = pcall(function()
        return ConfData:GetTable("Attr")
    end)
    if not success then
        conf = {}
    end
    self._FightingCapacity = 0
    for k, v in pairs(valuelist) do
        local attrConf = conf[k]
        local defaultVal = 0
        local powerParam = 0
        if attrConf then
            defaultVal = attrConf.Default or 0
            powerParam = attrConf.PowerParam or 0
        end
        local value = v + (self.__ReadDefault and defaultVal or 0)
        -- 遍历乘区
        for _, r in pairs(ratiolist) do
            if r[k] then
                value = value * (1 + r[k] / 10000)
            end
        end
        -- 计算战力
        self.__MathResult[k] = value
        self._FightingCapacity = self._FightingCapacity + math.max(value * powerParam, 0)
    end
    self._FightingCapacity = math.floor(self._FightingCapacity)

    -- 重置标记并更新属性
    self.__IsChange = false
end


--[================[汇总属性之从table中取出数据]================]
function CAttr:_Summary_AddInTable(t, sumlist, valuelist, ratiolist)
    for k, v in pairs(t) do
        -- 只累加满足筛选条件的
        if self.__TargetLimit == 0 or v.target == self.__TargetLimit then

            -- 如果这是模式属性，在条件满足时，直接累加到目标属性上
            local ids = {v.id}

            -- 是否要合并主属性
            if self.__MergeMainAttr > 0 then
                if v.id == 11 then
                    ids = {self.__MergeMainAttr}
                elseif v.id == 12 then
                    ids = {1, 2, 3}
                end
            end

            for _, id in pairs(ids) do

                if id > 0 then
                    -- 累加sumlist
                    sumlist[v.target] = sumlist[v.target] or {}
                    sumlist[v.target][v.zone] = sumlist[v.target][v.zone] or {}
                    sumlist[v.target][v.zone][id] = (sumlist[v.target][v.zone][id] or 0) + v.value

                    -- 累计值
                    if v.zone <= 0 then
                        if not valuelist[id] then
                            valuelist[id] = 0
                        end
                        valuelist[id] = valuelist[id] + v.value
                    else
                        ratiolist[v.zone] = ratiolist[v.zone] or {}
                        if not ratiolist[v.zone][id] then
                            ratiolist[v.zone][id] = 0
                        end
                        ratiolist[v.zone][id] = ratiolist[v.zone][id] + v.value
                    end
                end

            end
        end
    end
end

print("[Phase 3] attr.lua 加载完成")
