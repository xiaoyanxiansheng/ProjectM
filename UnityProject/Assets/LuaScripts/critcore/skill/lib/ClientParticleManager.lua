--[[critcore/skill/lib/ClientParticleManager.lua]]
-- 客户端粒子管理器 - Phase 4 占位版
-- Phase 5 将通过 C# 桥接实现真实粒子效果

ClientParticleManager = ClientParticleManager or {}

-- 存储特效
ClientParticleManager.particles = {}
ClientParticleManager._nextId = 1

---创建粒子特效（占位）
---@param particlePath string 粒子路径
---@param attachType number 附着类型
---@param entity table|nil 附着实体
---@param playerID number|nil 玩家ID
---@return number 粒子ID
function ClientParticleManager:CreateParticle(particlePath, attachType, entity, playerID)
    local uniqueID = self._nextId
    self._nextId = self._nextId + 1
    
    self.particles[uniqueID] = {
        path = particlePath,
        attachType = attachType,
        entity = entity,
        playerID = playerID,
        active = true
    }
    
    -- Phase 5: 调用 C# 创建真实粒子
    -- CS.CritFramework.ParticleBridge.CreateParticle(uniqueID, particlePath, attachType, entity)
    
    print("[ClientParticleManager] CreateParticle:", uniqueID, particlePath)
    
    return uniqueID
end

---设置粒子控制点（占位）
---@param uniqueID number 粒子ID
---@param controlPoint number 控制点索引
---@param position Vector 位置
---@param playerID number|nil 玩家ID
function ClientParticleManager:SetParticleControl(uniqueID, controlPoint, position, playerID)
    local particle = self.particles[uniqueID]
    if not particle or not particle.active then
        return
    end
    
    -- Phase 5: 调用 C# 设置粒子位置
    -- CS.CritFramework.ParticleBridge.SetParticleControl(uniqueID, controlPoint, position)
end

---销毁粒子特效（占位）
---@param uniqueID number 粒子ID
---@param immediate boolean 是否立即销毁
---@param playerID number|nil 玩家ID
function ClientParticleManager:DestroyParticle(uniqueID, immediate, playerID)
    local particle = self.particles[uniqueID]
    if not particle then
        return
    end
    
    particle.active = false
    
    -- Phase 5: 调用 C# 销毁粒子
    -- CS.CritFramework.ParticleBridge.DestroyParticle(uniqueID, immediate)
    
    print("[ClientParticleManager] DestroyParticle:", uniqueID)
end

---释放粒子索引
---@param uniqueID number 粒子ID
---@param playerID number|nil 玩家ID
function ClientParticleManager:ReleaseParticleIndex(uniqueID, playerID)
    self:DestroyParticle(uniqueID, true, playerID)
    self.particles[uniqueID] = nil
end

---清理所有粒子
function ClientParticleManager:Clear()
    for id, _ in pairs(self.particles) do
        self:DestroyParticle(id, true)
    end
    self.particles = {}
end

print("[Phase 4] ClientParticleManager.lua 加载完成")
