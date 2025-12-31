--[[critcore/skill/lib/Debug.lua]]
-- 技能系统调试工具 - Phase 4 简化版
-- 移除了 Dota2 控制台命令，保留核心调试功能

------------------------ 调试开关 ------------------------
DebugSkillLog = 0  -- 0=关闭, 1=开启
DebugSkillRange = 0  -- 0=关闭伤害范围显示

DebugSKillLogLayer = {
    Common = 0,
    All = 1,
    Warning = 2
}

local ShowDebugSKillLogLayer = DebugSKillLogLayer.All

------------------------ 调试输出 ------------------------

---技能调试日志
---@param layer number 日志层级
---@param ... any 日志内容
function DebugSKillLog(layer, ...)
    if DebugSkillLog == 0 then
        return
    end

    if layer == DebugSKillLogLayer.Common and ShowDebugSKillLogLayer == DebugSKillLogLayer.All 
        or ShowDebugSKillLogLayer == DebugSKillLogLayer.All 
        or layer == DebugSKillLogLayer.Warning 
        or layer == DebugSKillLogLayer.All then
        
        local ps = {...}
        local p = {"[DebugSkill]", Time()}
        
        for _, value in ipairs(ps) do
            if type(value) == "table" and value.__cname == nil then 
                if value.x and value.y and value.z then 
                    table.insert(p, string.format("{x:%.2f y:%.2f z:%.2f}", value.x, value.y, value.z))
                else
                    for _, v in ipairs(value) do
                        table.insert(p, v)
                    end
                end
            else
                table.insert(p, value)
            end
        end
        
        if layer == DebugSKillLogLayer.Warning then
            print("[Warning]", unpack(p))
        else
            print(unpack(p))
        end
    end
end

---技能数据调试日志
---@param layer number 日志层级
---@param s string 前缀
---@param data table 技能数据
---@param ... any 额外内容
function DebugSKillLog_DoSkillData(layer, s, data, ...)
    if DebugSkillLog == 0 then
        return
    end

    local printdata = clone(data)
    printdata.ParentSkill = nil
    printdata.class = nil
    if printdata.DoSkillData then
        printdata.DoSkillData.class = nil
        printdata.DoSkillData.ParentSkill = nil
    end
    DebugSKillLog(layer, s, table.tostring(printdata, nil, nil), ...)
end

------------------------ 调试绘制（占位）------------------------

---绘制扇形区域（占位）
function DrawDebugFan(position, radius, angle, forward, duration, c)
    if DebugSkillRange == 0 then
        return
    end
    -- Phase 5: 使用 Unity Debug.DrawLine 实现
    print("[Debug] DrawDebugFan", position, radius, angle)
end

---绘制环形扇区（占位）
function DrawDebugFanRing(position, radius, innerRadius, angle, forward, duration, c)
    if DebugSkillRange == 0 then
        return
    end
    print("[Debug] DrawDebugFanRing", position, radius, innerRadius, angle)
end

---绘制矩形（占位）
function DrawDebugRectangle(center, width, length, forward, duration, c)
    if DebugSkillRange == 0 then
        return
    end
    print("[Debug] DrawDebugRectangle", center, width, length)
end

---绘制线段（占位）
function DebugDrawLineEX(origin, target, r, g, b, ztest, duration)
    if DebugSkillRange == 0 then
        return
    end
    -- Phase 5: 使用 Unity Debug.DrawLine 实现
end

---旋转向量
---@param vec Vector 向量
---@param angle number 角度（度）
---@return Vector
function RotateVector(vec, angle)
    local radian = math.rad(angle)
    local cosTheta = math.cos(radian)
    local sinTheta = math.sin(radian)
    return Vector(vec.x * cosTheta - vec.y * sinTheta, vec.x * sinTheta + vec.y * cosTheta, vec.z)
end

------------------------ 热重载（简化）------------------------

---重载技能模块（简化版）
function ReloadSkillModule(fileName)
    if fileName == "skill" then
        for moduleName, _ in pairs(package.loaded) do
            if moduleName:match("^critcore.skill") or moduleName:match("^confdata") then
                package.loaded[moduleName] = nil
            end
        end
        
        if ConfData and ConfData._game_conf then
            ConfData._game_conf = {}
        end
        
        local status, module = pcall(require, "critcore.skill.SkillModule")
        if status then
            SkillModule.Init()
            print("[Debug] 技能模块重载成功")
        else
            print("[Debug] 技能模块重载失败: " .. tostring(module))
        end
    else
        local fullPath = fileName
        package.loaded[fullPath] = nil
        local status, module = pcall(require, fullPath)
        
        if status then
            print("[Debug] " .. fileName .. " 重载成功")
        else
            print("[Debug] " .. fileName .. " 重载失败: " .. tostring(module))
        end
    end
end

print("[Phase 4] Debug.lua 加载完成")
