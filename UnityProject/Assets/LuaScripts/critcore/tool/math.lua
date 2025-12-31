--[[critcore/tool/math.lua]]
-- Phase 2 精简版

math.round = function(n)
    local d = n - math.floor(n)
    if d < 0.5 then
        return math.floor(n)
    else
        return math.ceil(n)
    end
end

---根据原点和半径返回一个随机点
---@param o Vector
---@param r number
math.get_random_point_by_radius = function(o, r)
    local angle = math.random(1, 360)
    local x = r * math.cos(math.rad(angle))
    local y = r * math.sin(math.rad(angle))
    return o + Vector(x, y, 0)
end

---计算两个向量的夹角
---@param v1 Vector
---@param v2 Vector
---@return number|nil
math.two_vector_angle = function(v1, v2)
    if not v1 or not v2 or not v1.x or not v1.y or not v2.x or not v2.y then
        return nil
    end
    local dot = v1.x * v2.x + v1.y * v2.y
    local mod1 = math.sqrt(v1.x^2 + v1.y^2)
    local mod2 = math.sqrt(v2.x^2 + v2.y^2)
    if mod1 == 0 or mod2 == 0 then
        return nil
    end
    local cos_theta = dot / (mod1 * mod2)
    cos_theta = math.max(-1, math.min(1, cos_theta))
    local angle = math.acos(cos_theta)
    local cross = v1.x * v2.y - v1.y * v2.x
    if cross < 0 then
        angle = -angle
    end
    return math.deg(angle)
end

-- 占位函数（Phase 3 实现，依赖 GridNav）
---线段是否经过障碍物
---@param line_start Vector
---@param line_end Vector
math.is_line_pass_blocked = function(line_start, line_end)
    -- print("[Warning] math.is_line_pass_blocked 尚未实现 (Phase 3)")
    return false
end

---计算点是否在多边形内部
---@param point Vector
---@param polygon Vector[]
---@return boolean
math.is_point_in_polygon = function(point, polygon)
    local length = #polygon
    local intersect = 0
    for i = 1, length do
        local p1 = polygon[i]
        local p2 = polygon[i % length + 1]
        if p1.y == p2.y then
            if point.y == p1.y and point.x >= math.min(p1.x, p2.x) and point.x <= math.max(p1.x, p2.x) then
                return true
            end
        else
            local t = (point.y - p1.y) / (p2.y - p1.y)
            if t >= 0 and t <= 1 then
                local x_inter = p1.x + t * (p2.x - p1.x)
                if x_inter == point.x then
                    return true
                end
                if t == 0 then
                    if p1.y > p2.y then
                        intersect = intersect + 1
                    end
                elseif t == 1 then
                    if p1.y < p2.y then
                        intersect = intersect + 1
                    end
                elseif x_inter > point.x then
                    intersect = intersect + 1
                end
            end
        end
    end
    return intersect % 2 == 1
end
