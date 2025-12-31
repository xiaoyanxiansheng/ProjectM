--[[
    对象池类 - 用于管理和复用对象，减少内存分配开销
    作者: AI Assistant
    日期: 2024
]]

---@class Pool 对象池类
local Pool = {}
Pool.__index = Pool

--[[
    创建一个新的对象池
    @param createFunc function 创建对象的工厂函数
    @param initFunc function 初始化对象的函数（可选）
    @param backFunc function 重置对象的函数（可选）
    @param maxSize number 池子最大容量（可选，默认100）
    @return Pool 返回池子实例
]]
function Pool:New(name, handle, createFunc, maxSize)
    if type(createFunc) ~= "function" then
        error("Pool:New() - createFunc must be a function")
    end
    
    local pool = {
        _name = name,                       -- 池子名称
        _handle = handle,                   -- 句柄
        _createFunc = createFunc,           -- 创建对象的工厂函数
        _maxSize = maxSize or 999999999,    -- 池子最大容量
        _objects = {},                      -- 存储可用对象的数组
        _activeObjects = {},                -- 存储活跃对象的集合
        _size = 0,                          -- 当前池子中对象数量
        _totalCreated = 0,                  -- 总共创建的对象数量
        _totalRecycled = 0                  -- 总共回收的对象数量
    }
    
    setmetatable(pool, Pool)
    return pool
end

--[[
    初始化池子，预创建指定数量的对象
    @param count number 预创建对象的数量
]]
function Pool:Initialize(count)
    -- count = count or 0
    
    -- for i = 1, count do
    --     if self._size >= self._maxSize then
    --         break
    --     end
        
    --     local obj = self._createFunc(self._handle)
    --     if obj then
    --         table.insert(self._objects, obj)
    --         self._size = self._size + 1
    --         self._totalCreated = self._totalCreated + 1
    --     end
    -- end
    
    -- print(string.format("Pool initialized with %d objects", self._size))
end

--[[
    从池子中获取一个对象
    @return object 返回可用的对象，如果池子为空则创建新对象
]]
function Pool:Get(...)
    if not USE_POOL then
        return self._createFunc(self._handle , ...)
    end

    local obj = nil
    
    -- 尝试从池子中获取对象
    if self._size > 0 then
        obj = table.remove(self._objects)
        if obj.initPool then
            obj:initPool(...)
        else
            obj:ctor(...)
        end
        self._size = self._size - 1
    else
        -- 池子为空，创建新对象
        obj = self._createFunc(self._handle , ...)
        self._totalCreated = self._totalCreated + 1
    end
    
    if obj then
        -- 将对象标记为活跃状态
        self._activeObjects[obj] = true
    end
    
    -- self:PrintStats()

    return obj
end

--[[
    将对象回收到池子中
    @param obj object 要回收的对象
    @return boolean 回收是否成功
]]
function Pool:Back(obj)
    if not USE_POOL then
        return true
    end

    if not obj then
        return false
    end
    
    -- 检查对象是否是活跃的
    if not self._activeObjects[obj] then
        return false
    end
    
    -- 从活跃对象中移除
    self._activeObjects[obj] = nil

    -- 如果池子已满，直接丢弃对象
    if self._size >= self._maxSize then
        return true
    end

    if obj.backPool then
        obj:backPool()
    end
    
    -- 将对象放回池子
    table.insert(self._objects, obj)
    self._size = self._size + 1
    self._totalRecycled = self._totalRecycled + 1
    
    -- self:PrintStats()

    return true
end

--[[
    回收所有活跃对象
]]
function Pool:BackAll()
    if not USE_POOL then
        return
    end

    local recycledCount = 0
    
    for obj, _ in pairs(self._activeObjects) do
        if self:Back(obj) then
            recycledCount = recycledCount + 1
        end
    end
    
    print(string.format("Recycled %d active objects", recycledCount))
end

--[[
    清理池子，释放所有对象
]]
function Pool:Clear()
    if not USE_POOL then
        return
    end

    -- 回收所有活跃对象
    self:BackAll()
    
    -- 清空池子
    self._objects = {}
    self._activeObjects = {}
    self._size = 0
    
    print("Pool cleared")
end

--[[
    销毁池子，释放所有资源
]]
function Pool:Destroy()
    if not USE_POOL then
        return
    end

    self:Clear()
    
    -- 清空函数引用
    self._handle = nil
    self._createFunc = nil
    self._initFunc = nil
    self._backFunc = nil
    
    print("Pool destroyed")
end

--[[
    获取池子状态信息
    @return table 包含池子状态的表
]]
function Pool:GetStats()
    local activeCount = 0
    for _ in pairs(self._activeObjects) do
        activeCount = activeCount + 1
    end
    
    return {
        availableCount = self._size,           -- 池子中可用对象数量
        activeCount = activeCount,             -- 活跃对象数量
        maxSize = self._maxSize,               -- 池子最大容量
        totalCreated = self._totalCreated,     -- 总共创建对象数量
        totalRecycled = self._totalRecycled,   -- 总共回收对象数量
    }
end

--[[
    打印池子状态
]]
function Pool:PrintStats()
    local stats = self:GetStats()
    print(string.format("=== %s Statistics ===", self._name))
    print(string.format("Available: %d", stats.availableCount))
    print(string.format("Active: %d", stats.activeCount))
    print(string.format("Total Created: %d", stats.totalCreated))
    print(string.format("Total Recycled: %d", stats.totalRecycled))
    print(string.format("Max Size: %d", stats.maxSize))
    print("=====================")
end

--[[
    检查对象是否是活跃的
    @param obj object 要检查的对象
    @return boolean 对象是否活跃
]]
function Pool:IsActive(obj)
    return self._activeObjects[obj] == true
end

--[[
    设置池子最大容量
    @param maxSize number 新的最大容量
]]
function Pool:SetMaxSize(maxSize)
    if type(maxSize) ~= "number" or maxSize < 0 then
        error("Pool:SetMaxSize() - maxSize must be a positive number")
    end
    
    self._maxSize = maxSize
    
    -- 如果当前池子大小超过新的最大容量，移除多余的对象
    while self._size > self._maxSize do
        table.remove(self._objects)
        self._size = self._size - 1
    end
end

return Pool
