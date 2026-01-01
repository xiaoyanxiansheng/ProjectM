--[[critcore/skill/lib/ClientParticleManager.lua]]
-- 客户端粒子管理器 - Phase 5 实现版
-- 通过 C# 桥接实现真实粒子效果

ClientParticleManager = ClientParticleManager or {}

-- 存储特效（用于本地追踪）
ClientParticleManager.particles = {}

---创建粒子特效
---@param particlePath string 粒子路径
---@param attachType number 附着类型
---@param entity table|nil 附着实体
---@param playerID number|nil 玩家ID
---@return number 粒子ID
function ClientParticleManager:CreateParticle(particlePath, attachType, entity, playerID)
    -- 通过 ParticleManager（由 ParticleBridge 注册）创建粒子
    local particleId = ParticleManager:CreateParticle(particlePath, attachType or 0, entity)
    
    -- 本地追踪
    self.particles[particleId] = {
        path = particlePath,
        attachType = attachType,
        entity = entity,
        playerID = playerID,
        active = true
    }
    
    return particleId
end

---设置粒子控制点
---@param particleId number 粒子ID
---@param controlPoint number 控制点索引
---@param position Vector 位置
---@param playerID number|nil 玩家ID
function ClientParticleManager:SetParticleControl(particleId, controlPoint, position, playerID)
    local particle = self.particles[particleId]
    if not particle or not particle.active then
        return
    end
    
    -- 通过 ParticleManager 设置控制点
    ParticleManager:SetParticleControl(particleId, controlPoint, position)
end

---设置粒子控制点绑定实体
---@param particleId number 粒子ID
---@param controlPoint number 控制点索引
---@param entity table|number 实体
---@param attachType number 附着类型
---@param attachPoint string|nil 附着点
---@param offset Vector|nil 偏移
function ClientParticleManager:SetParticleControlEnt(particleId, controlPoint, entity, attachType, attachPoint, offset)
    local particle = self.particles[particleId]
    if not particle or not particle.active then
        return
    end
    
    -- 通过 ParticleManager 设置控制点实体
    ParticleManager:SetParticleControlEnt(particleId, controlPoint, entity, attachType, attachPoint, offset)
end

---销毁粒子特效
---@param particleId number 粒子ID
---@param immediate boolean 是否立即销毁
---@param playerID number|nil 玩家ID
function ClientParticleManager:DestroyParticle(particleId, immediate, playerID)
    local particle = self.particles[particleId]
    if not particle then
        return
    end
    
    particle.active = false
    
    -- 通过 ParticleManager 销毁粒子
    ParticleManager:DestroyParticle(particleId, immediate or false)
end

---释放粒子索引
---@param particleId number 粒子ID
---@param playerID number|nil 玩家ID
function ClientParticleManager:ReleaseParticleIndex(particleId, playerID)
    -- 通过 ParticleManager 释放
    ParticleManager:ReleaseParticleIndex(particleId)
    self.particles[particleId] = nil
end

---清理所有粒子
function ClientParticleManager:Clear()
    for id, _ in pairs(self.particles) do
        self:DestroyParticle(id, true)
    end
    self.particles = {}
end

print("[Phase 5] ClientParticleManager.lua 加载完成（C# 桥接版）")
