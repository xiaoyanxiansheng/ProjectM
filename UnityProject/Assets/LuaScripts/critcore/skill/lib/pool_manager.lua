--[[
    简化版对象池管理器 - 只负责注册、销毁和统计
    作者: AI Assistant
    日期: 2024
]]

local Pool = require("critcore.skill.lib.pool")

USE_POOL = true

---@class PoolManager 简化版对象池管理器
local PoolManager = {}
PoolManager.__index = PoolManager

-- 单例实例
local _instance = nil

--[[
    获取PoolManager单例实例
    @return PoolManager 返回管理器实例
]]
function PoolManager:GetInstance()
    if not _instance then
        _instance = {
            _pools = {},        -- 存储所有池子 {poolName = pool}
            _totalPools = 0     -- 总池子数量
        }
        setmetatable(_instance, PoolManager)
        print("PoolManager instance created")
    end
    return _instance
end

--[[
    注册一个池子到管理器
    @param poolName string 池子名称（唯一标识）
    @param pool Pool 池子实例
    @return boolean 注册是否成功
]]
function PoolManager:RegisterPool(poolName, pool)
    if type(poolName) ~= "string" or poolName == "" then
        error("PoolManager:RegisterPool() - poolName must be a non-empty string")
    end
    
    if self._pools[poolName] then
        return
    end
    
    self._pools[poolName] = pool
    self._totalPools = self._totalPools + 1
    
    print(string.format("Pool '%s' registered", poolName))
    return true
end

--[[
    创建并注册一个新的池子（便捷方法）
    @param poolName string 池子名称
    @param handle any 句柄
    @param createFunc function 创建对象的工厂函数
    @param backFunc function 重置对象的函数（可选）
    @param initSize number 初始化大小（可选）
    @param maxSize number 池子最大容量（可选）
    @return Pool 返回创建的池子实例
]]
function PoolManager:CreateAndRegister(poolName, handle, createFunc , initSize, maxSize)
    local pool = Pool:New(poolName, handle, createFunc, maxSize)
    pool:Initialize(initSize)
    self:RegisterPool(poolName, pool)
    return pool
end

--[[
    获取指定名称的池子
    @param poolName string 池子名称
    @return Pool|nil 返回池子实例，如果不存在则返回nil
]]
function PoolManager:GetPool(poolName)
    return self._pools[poolName]
end

--[[
    检查池子是否存在
    @param poolName string 池子名称
    @return boolean 池子是否存在
]]
function PoolManager:HasPool(poolName)
    return self._pools[poolName] ~= nil
end

--[[
    从管理器中移除并销毁池子
    @param poolName string 池子名称
    @return boolean 销毁是否成功
]]
function PoolManager:DestroyPool(poolName)
    local pool = self._pools[poolName]
    if not pool then
        print(string.format("Warning: Pool '%s' not found", poolName))
        return false
    end
    
    -- 销毁池子
    pool:Destroy()
    self._pools[poolName] = nil
    self._totalPools = self._totalPools - 1
    
    print(string.format("Pool '%s' destroyed", poolName))
    return true
end

--[[
    获取所有池子名称
    @return table 所有池子名称列表
]]
function PoolManager:GetAllPoolNames()
    local names = {}
    for poolName, _ in pairs(self._pools) do
        table.insert(names, poolName)
    end
    return names
end

--[[
    销毁所有池子
]]
function PoolManager:DestroyAll()
    local destroyedCount = 0
    
    -- 创建池子名称副本
    local poolNames = {}
    for poolName, _ in pairs(self._pools) do
        table.insert(poolNames, poolName)
    end
    
    for _, poolName in ipairs(poolNames) do
        if self:DestroyPool(poolName) then
            destroyedCount = destroyedCount + 1
        end
    end
    
    print(string.format("Destroyed all %d pools", destroyedCount))
end

--[[
    打印所有池子的详细统计信息
]]
function PoolManager:PrintAllPoolStats()
    print("=== All Pools Statistics ===")
    
    for poolName, pool in pairs(self._pools) do
        print(string.format("\n--- Pool '%s' ---", poolName))
        pool:PrintStats()
    end
    
    print("\n")
end

--[[
    重置PoolManager（主要用于测试）
]]
function PoolManager:Reset()
    self:DestroyAll()
    _instance = nil
    print("PoolManager reset")
end

PoolManagerInstance = PoolManager:GetInstance()