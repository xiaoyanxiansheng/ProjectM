--[[critcore/static/units.lua]]
--[[
    单位列表管理 - Phase 3 移植版
]]
Units = Units or {}

-- 优化：大范围查询缓存系统
---@type {[string]: {time: number, result: table}} 缓存键 -> {时间, 结果}
Units.__LargeAreaCache = {}
Units.__LargeAreaCacheTimeout = 0.2  -- 缓存超时时间（秒）
Units.__LargeAreaCacheThreshold = 3000  -- 大于此半径才启用缓存

-- Insid -> Unitid
Units.__InsidToUnitid = {}

---@type {[integer]: {[integer]: CUnitBase}} Unit编号列表
Units.__UnitIds = {}

-- 实体ID -> Insid
Units.__EntityidToInsid = {}

---@type {[integer]: CUnitBase} Insid -> Unit
Units.__Units = {}

-- Insid -> 库名称
Units.__InsidToLib = {}

---@type {[string]: {[integer]: CUnitBase}} 库列表
Units.__Libs = {
    bullet = {}
}

---@type {[integer]: {x: number, y: number}} 此单位处于哪个格子
Units.__InsidToGrid = {}

---@type {[number]: {[number]: {[integer] : {[integer] : CUnitBase}}}} 格子里的单位列表
Units.__Grids = {}

--- 单位的insid
Units.__Index = 1001


---@enum EnumUnitFindType 查找单位类型
EnumUnitFindType = {
    --- 全体
    All = 0,
    --- 英雄(也包含英雄类机器人)
    Hero = 1,
    --- 纯机器人
    Robot = 2,
    --- 建筑
    Building = 3,
    --- 召唤物
    Summons = 4,
    --- 怪物
    Mob = 5,
    --- 特指BOSS类怪物
    MobBoss = 6,
    --- 友方（不包含系统NPC和随从）
    Friend = 7,
    --- 敌方（不包含系统NPC和随从）
    Foe = 8,
}


--[================[创建单位类 - 内部回调]================]
---@param unit CUnitBase 单位
function Units:__onCreateUnit(unit)
    local insid = unit:GetInsid()
    self.__EntityidToInsid[unit:GetEntityIndex()] = insid
    self.__Units[insid] = unit

    local id = unit:GetUnitId()
    self.__InsidToUnitid[insid] = id
    self.__UnitIds[id] = self.__UnitIds[id] or {}
    self.__UnitIds[id][insid] = unit
    
    -- 刷新格子
    self:__RefreshGrid(insid, unit)
end


--[================[单位死亡处理]================]
function Units:__DieUnit(insid, unit, can_respawn)
    -- 如果还能复活
    if not can_respawn then
        -- 从库中删除单位
        local lib = self.__InsidToLib[insid]
        if lib and self.__Libs[lib] then
            self.__Libs[lib][insid] = nil
        end
        self.__InsidToLib[insid] = nil
    end

    -- 删除UID
    local uid = self.__InsidToUnitid[insid]
    if uid and self.__UnitIds[uid] then
        self.__UnitIds[uid][insid] = nil
    end
    self.__InsidToUnitid[insid] = nil

    -- 删除单位列表
    self.__Units[insid] = nil
    
    -- 删除实体映射
    if unit then
        local eid = unit:GetEntityIndex()
        if eid and eid > 0 then
            self.__EntityidToInsid[eid] = nil
        end
    end

    -- 删除格子的数据
    local oldpos = self.__InsidToGrid[insid]
    if oldpos and unit then
        -- 从原来的格子删除
        self:__SetUnitInGrid(oldpos.x, oldpos.y, insid, unit:GetCamp(), nil)
        self.__InsidToGrid[insid] = nil
    end
end


--[================[返回一个新的未使用过的insid]================]
---@return integer
function Units:GetNewInsid()
    self.__Index = self.__Index + 1
    return self.__Index
end


--[================[创建单位]================]
---@param id number 编号
---@param lib string 库名称
---@param count number 数量
---@param position Vector 位置
---@param range number|nil 范围
---@param attrbase number|nil 属性基数
---@param die_callback fun(insid:integer, unit:CUnitBase, atker:CUnitBase|nil)|nil 死亡时的回调函数
---@param owner CUnitBase|nil 归属单位
---@return {[integer]: CUnitBase}
function Units:SpawnUnit(id, lib, count, position, range, attrbase, die_callback, owner)
    local re = {}
    for i = 1, count do
        local pos
        if range and range > 0 then
            pos = Vector(position.x + math.random(-range, range), position.y + math.random(-range, range), position.z)
        else
            pos = position
        end
        local unit = CreateClass_UnitBase(id, pos, die_callback, nil, nil, nil, attrbase, owner)

        local insid = unit:GetInsid()
        self.__InsidToLib[insid] = lib
        self.__Libs[lib] = self.__Libs[lib] or {}
        self.__Libs[lib][insid] = unit
        re[insid] = unit
    end

    return re
end


--[================[刷新格子]================]
---@param insid any
---@param unit CUnitBase
function Units:__RefreshGrid(insid, unit)
    -- 计算单位的格子信息
    local gx, gy = self:__GetGridByPosition(unit:GetPosition())

    -- 和老的对比
    local oldpos = self.__InsidToGrid[insid]
    if oldpos then
        -- 有老的
        if gx == oldpos.x and gy == oldpos.y then
            return
        end

        -- 从原来的格子删除
        self:__SetUnitInGrid(oldpos.x, oldpos.y, insid, unit:GetCamp(), nil)
    end

    -- 添加到新的格子
    self:__SetUnitInGrid(gx, gy, insid, unit:GetCamp(), unit)
    self.__InsidToGrid[insid] = {
        x = gx,
        y = gy,
    }
end


--[================[根据单位返回格子]================]
function Units:__GetGridByPosition(pos)
    local gx = math.round(pos.x / 400)
    local gy = math.round(pos.y / 400)
    return gx, gy
end


--[================[根据格子返回单位列表]================]
---@param x integer
---@param y integer
---@param camp EnumUnitCamp|nil
---@return { [integer]: CUnitBase }
function Units:__GetUnitsByGrid(x, y, camp)

    if self.__Grids[x] and self.__Grids[x][y] then
        if camp then
            return self.__Grids[x][y][camp] or {}
        else
            local re = {}
            for _, units in pairs(self.__Grids[x][y]) do
                for insid, unit in pairs(units) do
                    re[insid] = unit
                end
            end
            return re
        end
    end
    return {}
end


--[================[设置格子单位]================]
---@param x integer
---@param y integer
---@param camp EnumUnitCamp
---@param insid integer
---@param unit CUnitBase|nil
function Units:__SetUnitInGrid(x, y, insid, camp, unit)
    if not self.__Grids[x] then
        self.__Grids[x] = {}
    end
    if not self.__Grids[x][y] then
        self.__Grids[x][y] = {}
    end
    if not self.__Grids[x][y][camp] then
        self.__Grids[x][y][camp] = {}
    end
    self.__Grids[x][y][camp][insid] = unit
end


--[================[根据库名称返回单位列表]================]
---@param lib string
---@return { [integer]: CUnitBase } {insid:单位}
function Units:GetUnitsByLib(lib)
    return self.__Libs[lib] or {}
end


--[================[根据库名称判断是否还有单位]================]
---@param lib string
---@return boolean {insid:单位}
function Units:HasAnyUnitByLib(lib)
    if self.__Libs[lib] then
        for _, unit in pairs(self.__Libs[lib]) do
            return true
        end
    end
    return false
end


--[================[根据库名称返回单位数量]================]
---@param lib string
---@return integer
function Units:GetUnitCountByLib(lib)
    if self.__Libs[lib] then
        return table.nillength(self.__Libs[lib])
    end
    return 0
end


--[================[返回所有单位列表]================]
---@return { [integer]: CUnitBase } {insid:单位}
function Units:GetAllUnits()
    return self.__Units
end


--[================[根据单位ID返回单位列表]================]
---@param unitid number
---@return { [integer]: CUnitBase } {insid:单位}
function Units:GetUnitsByUnitId(unitid)
    return self.__UnitIds[unitid] or {}
end


--[================[根据阵营返回单位列表]================]
---@param camp EnumUnitCamp|nil 阵营，留空表示全部阵营
---@return { [integer]: CUnitBase } {insid:单位}
function Units:GetUnitsByCamp(camp)
    if camp == nil then
        return self:GetAllUnits()
    end
    
    local re = {}
    for x, line in pairs(self.__Grids) do
        for y, camps in pairs(line) do
            for campid, units in pairs(camps) do
                if campid == camp then
                    for insid, unit in pairs(units) do
                        re[insid] = unit
                    end
                end
            end
        end
    end
    return re
end


--[================[根据单位ID返回单位数量]================]
---@param unitid number
---@return integer
function Units:GetUnitCountByUnitId(unitid)
    if self.__UnitIds[unitid] then
        return table.nillength(self.__UnitIds[unitid])
    end
    return 0
end


--[================[根据insid返回单位]================]
---@param insid number
---@return CUnitBase|nil
function Units:GetUnitByInsid(insid)
    return self.__Units[insid]
end


--[================[根据实体ID返回单位]================]
---@param entityid number
---@return CUnitBase|nil
function Units:GetUnitByEntityid(entityid)
    local insid = self.__EntityidToInsid[entityid]
    if insid then
        return self:GetUnitByInsid(insid)
    end
end


--[================[返回实体点的坐标（占位）]================]
---@param name string
---@return Vector
function Units:GetEntityPos(name)
    -- Phase 5 实现：通过 Unity 场景查找
    print("[Warning] Units:GetEntityPos 尚未完全实现: " .. tostring(name))
    return Vector(0, 0, 0)
end


--[================[根据lib移除全部单位]================]
---@param lib string
function Units:RemoveUnitByLib(lib)
    if not self.__Libs[lib] then return end
    for _, unit in pairs(self.__Libs[lib]) do
        unit:Remove()
    end
end


--[================[根据中心点和半径返回单位列表]================]
---@param center_pos Vector 中心点
---@param radius number 半径
---@param camp EnumUnitCamp|nil 阵营，留空表示全部阵营
---@param ismathhull boolean|nil 是否计算碰撞半径
---@return {[integer]:CUnitBase} {insid:单位}
---@param isskillhull boolean|nil 是否计算技能锁定范围
function Units:GetUnitsByArea(center_pos, radius, camp, ismathhull, isskillhull)
    -- 大范围查询缓存
    if radius > self.__LargeAreaCacheThreshold then
        local cache_key = string.format("%d_%d_%d_%s_%s", 
            math.floor(center_pos.x / 500),
            math.floor(center_pos.y / 500), 
            radius, 
            tostring(camp),
            tostring(ismathhull))
        
        local cache = self.__LargeAreaCache[cache_key]
        local now = Time()
        
        if cache and (now - cache.time) < self.__LargeAreaCacheTimeout then
            return cache.result
        end
        
        local result = self:__GetUnitsByAreaImpl(center_pos, radius, camp, ismathhull, isskillhull)
        
        self.__LargeAreaCache[cache_key] = {
            time = now,
            result = result
        }
        
        return result
    end
    
    return self:__GetUnitsByAreaImpl(center_pos, radius, camp, ismathhull, isskillhull)
end


--[================[根据中心点和半径返回单位列表（内部实现）]================]
function Units:__GetUnitsByAreaImpl(center_pos, radius, camp, ismathhull, isskillhull)
    local gx, gy = self:__GetGridByPosition(center_pos)
    local find_area = math.ceil(radius / 400)
    local re = {}

    if ismathhull then
        for x = gx - find_area, gx + find_area do
            for y = gy - find_area, gy + find_area do
                local units = self:__GetUnitsByGrid(x, y, camp)
                for insid, unit in pairs(units) do
                    local diff = center_pos - unit:GetPosition()
                    local dis = math.sqrt(diff.x * diff.x + diff.y * diff.y)
                    dis = dis - (isskillhull and unit:GetSkillHullRadius() or unit:GetHullRadius())
                    if dis < radius then
                        re[insid] = unit
                    end
                end
            end
        end
    else
        local radiusSquared = radius * radius
        for x = gx - find_area, gx + find_area do
            for y = gy - find_area, gy + find_area do
                local units = self:__GetUnitsByGrid(x, y, camp)
                for insid, unit in pairs(units) do
                    local diff = center_pos - unit:GetPosition()
                    local disSquared = diff.x * diff.x + diff.y * diff.y
                    if disSquared < radiusSquared then
                        re[insid] = unit
                    end
                end
            end
        end
    end
    return re
end


--[================[根据指定玩家以及条件筛选符合条件的目标]================]
---@param units {[integer]:CUnitBase} 单位列表
---@param nominator CUnitBase 依据人
---@param condition EnumUnitFindType 查询条件
---@return {[integer]:CUnitBase} {insid:单位}
function Units:FiltraUnitsByCondition(units, nominator, condition)
    if condition == EnumUnitFindType.All then
        return units
    end
    local re = {}
    for insid, unit in pairs(units) do
        if condition == EnumUnitFindType.Hero then
            if unit:GetType() == EnumUnitType.Hero then
                re[insid] = unit
            end
        elseif condition == EnumUnitFindType.Building then
            if unit:IsBuilding() then
                re[insid] = unit
            end
        elseif condition == EnumUnitFindType.Summons then
            if unit:GetOwner() then
                re[insid] = unit
            end
        elseif condition == EnumUnitFindType.Mob then
            if unit:GetCamp() == EnumUnitCamp.Monster then
                re[insid] = unit
            end
        elseif condition == EnumUnitFindType.MobBoss then
            if unit:GetCamp() == EnumUnitCamp.Monster and unit:IsBoss() then
                re[insid] = unit
            end
        elseif condition == EnumUnitFindType.Friend then
            if unit:GetCamp() == nominator:GetCamp() and unit:GetCamp() ~= EnumUnitCamp.Neutrality then
                re[insid] = unit
            end
        elseif condition == EnumUnitFindType.Foe then
            if unit:GetCamp() ~= nominator:GetCamp() and unit:GetCamp() ~= EnumUnitCamp.Neutrality then
                re[insid] = unit
            end
        end
    end
    return re
end


print("[Phase 3] units.lua 加载完成")
