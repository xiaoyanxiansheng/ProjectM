--[[critcore/tool/cover.lua]]
-- Phase 2 精简版

-- 错误日志（简化版，不发送到服务器）
_G.ErrToLog = function(errmsg)
    print("[Error Log]", errmsg)
end

-- 工具模式错误（简化版）
function ToolError(msg, level)
    if IsInToolsMode() then
        error(msg, (level or 1) + 1)
    end
end

-- 尝试调用函数
---@param force_error boolean 是否强制抛出异常
---@param func fun():any 要调用的函数
function TryCall(force_error, func)
    if force_error or IsInToolsMode() then
        return func()
    else
        local status, result = pcall(func)
        if status then
            return result
        end
        return nil
    end
end

-- 仿 if 函数
---@generic T
---@generic Y
---@param cond any 条件
---@param truere T 条件为真时返回
---@param falsere Y 条件为假是返回
---@return T|Y
function If(cond, truere, falsere)
    if cond then
        return truere
    end
    return falsere
end

-- 特效占位（Phase 5 实现）
---@param key any
---@param unit any
---@param pos Vector|nil
---@param player any
---@return integer
function SetParticle(key, unit, pos, player)
    -- print("[Warning] SetParticle 尚未实现 (Phase 5)")
    return 0
end
