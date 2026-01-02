--[[critcore/skill/lib/Define.lua]]
-- Phase 2 精简版 - 仅包含可移植的定义

Bit = bit
bitlshift = bit.lshift

-- ============ table 扩展 ============

---@param t table|nil 要搜索的表
---@param value any 要查找的值
---@param param1 string|nil 如果查找的是表中的表的属性，指定第一层属性名
---@param param2 string|nil 如果查找的是表中的表的表的属性，指定第二层属性名
---@return integer 找到值的索引，未找到返回0
function table.ContainValue(t, value, param1, param2)
    local containIndex = 0
    if t then
        for i, v in pairs(t) do
            if not param1 then
                if v == value then
                    containIndex = i
                    break
                end
            elseif not param2 then
                if v[param1] == value then
                    containIndex = i
                    break
                end
            else
                if v[param1][param2] == value then
                    containIndex = i
                    break
                end
            end
        end
    end
    return containIndex
end

-- 将一个表的所有元素插入到另一个表中
---@param t table 目标表
---@param r table 源表
---@param key string|nil 如果源表是表，指定key
function table.InsertRange(t, r, key)
    if t == nil or r == nil then
        return
    end
    if key then
        for _, value in ipairs(r) do
            table.insert(t, value[key])
        end
    else
        for _, value in ipairs(r) do
            table.insert(t, value)
        end
    end
end

-- 计算表中非nil元素的数量
---@param t table 要计算的表
---@return integer 非nil元素的数量
function table.nillength(t)
    local n = 0
    for k, v in pairs(t) do
        if v ~= nil then
            n = n + 1
        end
    end
    return n
end

-- 表中所有元素的线性插值
---@param t table 结果表
---@param t0 table 起始表
---@param t1 table 结束表
---@param l number 插值系数
function table.Lerp(t, t0, t1, l)
    for k, v0 in pairs(t0) do
        local v1 = t1[k]
        t[k] = Lerp(v0, v1, l)
    end
end

-- ============ 数学工具 ============

-- 定义浮点数最小精度
math.epsilon = 1.401298e-45

-- 四舍五入函数
---@param x number 要四舍五入的数
---@return number 四舍五入结果
function math.round(x)
    return math.floor(x + 0.5)
end

-- 线性插值函数
---@param a number 起始值
---@param b number 结束值
---@param t number 插值系数(0-1)
---@return number 插值结果
function Lerp(a, b, t)
    t = math.max(0, math.min(1, t))
    return a + (b - a) * t
end

-- 线性插值函数（不限制t范围）
---@param a number 起始值
---@param b number 结束值
---@param t number 插值系数(0-1)
---@return number 插值结果
function Lerp2(a, b, t)
    return a + (b - a) * t
end

-- ============ Vector 向量类（Dota2 API 兼容）============

---@class Vector
---@field x number
---@field y number
---@field z number
local VectorMeta = {}
VectorMeta.__index = VectorMeta

---创建向量
---@param x number|nil
---@param y number|nil
---@param z number|nil
---@return Vector
function Vector(x, y, z)
    local v = setmetatable({}, VectorMeta)
    v.x = x or 0
    v.y = y or 0
    v.z = z or 0
    return v
end

---向量加法
function VectorMeta:__add(other)
    return Vector(self.x + other.x, self.y + other.y, self.z + other.z)
end

---向量减法
function VectorMeta:__sub(other)
    return Vector(self.x - other.x, self.y - other.y, self.z - other.z)
end

---向量乘法（标量）
function VectorMeta:__mul(scalar)
    if type(scalar) == "number" then
        return Vector(self.x * scalar, self.y * scalar, self.z * scalar)
    else
        return Vector(self.x * scalar.x, self.y * scalar.y, self.z * scalar.z)
    end
end

---向量除法（标量）
function VectorMeta:__div(scalar)
    return Vector(self.x / scalar, self.y / scalar, self.z / scalar)
end

---向量相等
function VectorMeta:__eq(other)
    return self.x == other.x and self.y == other.y and self.z == other.z
end

---向量取反
function VectorMeta:__unm()
    return Vector(-self.x, -self.y, -self.z)
end

---向量转字符串
function VectorMeta:__tostring()
    return string.format("Vector(%.2f, %.2f, %.2f)", self.x, self.y, self.z)
end

---向量长度
---@return number
function VectorMeta:Length()
    return math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
end

---向量长度平方（避免开方运算）
---@return number
function VectorMeta:LengthSqr()
    return self.x * self.x + self.y * self.y + self.z * self.z
end

---2D向量长度（忽略z）
---@return number
function VectorMeta:Length2D()
    return math.sqrt(self.x * self.x + self.y * self.y)
end

---归一化
---@return Vector
function VectorMeta:Normalized()
    local len = self:Length()
    if len > 0 then
        return self / len
    end
    return Vector(0, 0, 0)
end

---点积
---@param other Vector
---@return number
function VectorMeta:Dot(other)
    return self.x * other.x + self.y * other.y + self.z * other.z
end

---叉积
---@param other Vector
---@return Vector
function VectorMeta:Cross(other)
    return Vector(
        self.y * other.z - self.z * other.y,
        self.z * other.x - self.x * other.z,
        self.x * other.y - self.y * other.x
    )
end

-- ============ 时间工具 ============

-- 获取当前时间
---@return number 当前时间(秒)
function GetCurTime()
    return Time()
end

-- ============ 表达式执行 ============

-- 表达式缓存
Expressions = {}

-- 执行表达式并缓存结果
---@param expression string 表达式字符串
---@param T table 表达式参数
---@return any 表达式执行结果
function DoExpression(expression, T)
    if not Expressions[expression] then
        local func = load("return function(T) return " .. expression .. " end")
        if func == nil then
            print("[Warning] DoExpression error: ", expression)
            return 0
        else
            Expressions[expression] = func()
        end
    end
    return Expressions[expression](T)
end

-- ============ 配置表访问（依赖 ConfData，Phase 1.5 已移植）============

-- 获取配置表行数据
---@param name string 配置表名称
---@param id integer 配置ID
---@return any 配置行数据
function GetConfDataLine(name, id)
    local line = ConfData:GetLine(name, id)
    if not line then
        error(string.format("配置表 %s 中没有 Id %s", name, id))
    end
    return line
end

-- 根据等级获取配置数据
---@param t table 配置数据表
---@param level integer 等级
---@return any 对应等级的配置数据
function GetConfDataLevel(t, level)
    if not t then
        return nil
    end
    if level <= #t then
        return t[level]
    end
    return t[#t]
end

---@return SkillTableLine
function GetSkillLine(id)
    return GetConfDataLine("Skill", id)
end

---@return BuffTableLine
function GetBuffLine(id)
    return GetConfDataLine("SkillBuff", id)
end

---@return PassiveTableLine
function GetPassiveSkillLine(id)
    return GetConfDataLine("SkillPassive", id)
end

---@return SettlementLine
function GetSettlementLine(id)
    return GetConfDataLine("SkillSettlement", id)
end

---@return HitShowTableLine
function GetHitShowLine(id)
    return GetConfDataLine("SkillHitShow", id)
end

function GetBulletLine(id)
    return GetConfDataLine("SkillBullet", id)
end

-- ============ 占位函数（Phase 3+ 实现）============

-- 实体相关（Phase 9 实现）
function GetEntityByInsId(insId)
    if Units and Units.GetUnitByInsid then
        return Units:GetUnitByInsid(insId)
    end
    return nil
end

function EntityIdToInsId(entityId)
    if Units and Units.GetUnitByEntityid then
        local unit = Units:GetUnitByEntityid(entityId)
        return unit and unit:GetInsid() or nil
    end
    return nil
end

function GetEntityPosition(insId)
    local unit = GetEntityByInsId(insId)
    if unit then
        return unit:GetPosition()
    end
    return Vector(0, 0, 0)
end

function SetEntityPosition(insId, pos)
    -- print("[Warning] SetEntityPosition 尚未实现 (Phase 3)")
end

function SetEntityForwardVector(entityId, direction)
    -- print("[Warning] SetEntityForwardVector 尚未实现 (Phase 3)")
end

function IsEntityValid(insId)
    -- print("[Warning] IsEntityValid 尚未实现 (Phase 3)")
    return false
end

function GetEntitySkillLevel(entityId, skillId)
    -- print("[Warning] GetEntitySkillLevel 尚未实现 (Phase 3)")
    return 1
end

-- 特效/音效相关（Phase 5）
function PlayFx(path, p, pos)
    -- print("[Warning] PlayFx 尚未实现 (Phase 5)")
    return 0
end

function UpdateFxPosition(particle, p, pos)
    -- print("[Warning] UpdateFxPosition 尚未实现 (Phase 5)")
end

function StopFx(particle, immediately)
    -- print("[Warning] StopFx 尚未实现 (Phase 5)")
end

function PlaySound(path, entityId)
    -- print("[Warning] PlaySound 尚未实现 (Phase 5)")
end

function PlayAnimation(targetId, name, time)
    -- print("[Warning] PlayAnimation 尚未实现 (Phase 5)")
end

-- 位置相关（Phase 3）
function SetEntityValidPosition(insId, position)
    -- print("[Warning] SetEntityValidPosition 尚未实现 (Phase 3)")
end

function GetEntityValidPosition(insId, position)
    -- print("[Warning] GetEntityValidPosition 尚未实现 (Phase 3)")
    return nil
end

function GetPositionFixHeight(position, fixHeight)
    -- print("[Warning] GetPositionFixHeight 尚未实现 (Phase 3)")
    return position
end

function SetFindClearSpaceForUnit(insId)
    -- print("[Warning] SetFindClearSpaceForUnit 尚未实现 (Phase 3)")
end

-- 战斗相关（Phase 3）
function FightApplyDamage(attacker, targeter, skill_id, skill_level, times, params)
    -- print("[Warning] FightApplyDamage 尚未实现 (Phase 3)")
end

-- ============ 枚举定义 ============

-- Buff事件表 和角色状态强绑定
---@type table<string, integer>
BuffEvent = {
    State                   = 0,
    CantMagic               = bitlshift(1,0),
    CantCantMagic           = bitlshift(1,3),
    Displacement            = bitlshift(1,1),
    CantDisplacement        = bitlshift(1,2),
    CantCantDisplacement    = bitlshift(1,24),
    CantSlowSpeed           = bitlshift(1,4),
    DamageRebound           = bitlshift(1,5),
    SkillDamageRebound      = bitlshift(1,30),
    Revive                  = bitlshift(1,6),
    ContinueSkill           = bitlshift(1,7),
    CantDamage              = bitlshift(1,8),
    CantSelect              = bitlshift(1,9),
    Attr                    = bitlshift(1,10),
    CantNormalAttack        = bitlshift(1,11),
    CantCantNormalAttack    = bitlshift(1,23),
    HealthDamage            = bitlshift(1,12),
    DoSkill                 = bitlshift(1,13),
    ReduceSkillCD           = bitlshift(1,14),
    HitCountDamange         = bitlshift(1,15),
    BreakSkill              = bitlshift(1,16),
    DeBuffCountDamage       = bitlshift(1,17),
    Fear                    = bitlshift(1,18),
    EffectShare             = bitlshift(1,19),
    HealthLock              = bitlshift(1,20),
    NoDraw                  = bitlshift(1,21),
    MsgTranslateBuff        = bitlshift(1,22),
    Shield                  = bitlshift(1,25),
    NearEntity              = bitlshift(1,26),
    DamageHPMP              = bitlshift(1,27),
    Ignore                  = bitlshift(1,28),
    CantRecover             = bitlshift(1,29),
    AttackDamageTimes       = 5,
    InRange                 = 3,
}

-- Buff事件表 每个Buff都需要一个 里面集合多个BuffEvent
---@type table<string, integer>
BuffEventCollect = {
    SlowSpeed           = BuffEvent.SlowSpeed or 0,
    SuperArmor          = 0,
    Stun                = BuffEvent.CantMagic + BuffEvent.Displacement,
    Invincible          = 0,
    HpShield            = 0,
    Freeze              = 0,
    Frozen              = 0,
    Displacement        = BuffEvent.Displacement,
}

-- Buff的叠加方式
BuffOverlayType = {
    Stack = 1,
    Override = 2,
    Ignore = 3,
    TypeDependent = 4
}

-- 被动技能触发类型
PassiveTriggerType = {
    All = 0,
    HP = 1,
    Crit = 2,
    MoveSpeed = 4,
}

-- 被动技能触发叠加类型
PassiveTriggerOverlayType = {
    AND = 1,
    OR = 2
}

-- 技能时间线事件
ESkillEventType = {
    PreWarning = 0,
    Animation = 1,
    Buff = 2,
    Bullet = 3,
    SettlementObject = 4,
    Sound = 5,
    Particle = 6,
    CameraShake = 7,
    Displacement = 8,
    EnterCD = 9,
    TurnToTarget = 10,
    State = 11,
    DoSkill = 12,
    Summon = 13,
    BulletRange = 14,
    TargetSelect = 15,
    CanBreakSkill = 16,
    TransferDebuff = 17,
    BuffTogether = 18,
    Passive = 19,
    PositionNew = 20,
    SettlementObjectNew = 21,
    ParticleNew = 22,
    TargetSelectNew = 23,
    DisplacementNew = 24,
    BulletNew = 25,
    BulletRangeNew = 26,
    BuffNew = 27,
    TurnToSkill = 28,
    SummonNew = 29,
    EventEnd = 99
}

---@type table<string, integer>
SettlementType = {
    Single = 0,
    Fan = 1,
    Circle = 2,
    Rectangle = 3,
    Bullet = 4,
    Accurately = 5,
}

---@class SettlementCampType
SettlementCampType = {
    None = 0,
    SAME_CAMP = 1,
    DIF_CAMP = 2,
}

-- 结算跟随类型(技能位置定义)
SettlementFlollowType = {
    Position = 1,
    Caster = 2,
    Target = 3,
    Agent = 4,
    DynCaster = 5,
    DynTarget = 6,
    DynAgent = 7,
    StartPosition = 8,
    DynPosition = 9,
}

-- 结算朝向类型
SettlementForwardType = {
    None = 0,
    CasterForward = 1,
    StartTargetForward = 2,
    DynamicCasterForward = 3
}
