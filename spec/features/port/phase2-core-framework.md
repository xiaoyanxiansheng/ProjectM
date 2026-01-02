# Phase 2: 核心框架移植规范

> 状态：待确认
> 依赖：Phase 1 ✓, Phase 1.5 ✓

---

## 1. 概述

### 1.1 目标

移植 Crit Framework 的核心 Lua 模块，包括：
- OOP 类系统 (Classnew)
- 工具函数库 (tool/)
- 消息系统 (Message)
- 常量定义 (Define)

### 1.2 范围

**包含：**
- `critcore/skill/lib/Classnew.lua` - OOP 类系统
- `critcore/skill/lib/Message.lua` - 消息系统
- `critcore/skill/lib/MessageConst.lua` - 消息常量
- `critcore/skill/lib/Define.lua` - 常量定义（部分）
- `critcore/tool/math.lua` - 数学扩展
- `critcore/tool/string.lua` - 字符串扩展
- `critcore/tool/time.lua` - 时间工具
- `critcore/tool/json.lua` - JSON 解析
- `critcore/tool/cover.lua` - 覆写函数（部分）

**不包含（延后到后续阶段）：**
- `pool.lua` / `pool_manager.lua` - 对象池（Phase 3）
- `Debug.lua` - 调试命令（依赖游廊Convars，Phase 4+）
- `cover.lua` 中的特效/网络函数（Phase 5）
- `LayeredAttributeSystem.lua` - 分层属性（Phase 3）
- `ClientParticleManager.lua` - 粒子管理（Phase 5）

---

## 2. 目录结构

```
Assets/LuaScripts/
├── critcore/
│   ├── tool/
│   │   ├── table.lua          ✓ 已移植
│   │   ├── math.lua           待移植
│   │   ├── string.lua         待移植
│   │   ├── time.lua           待移植
│   │   ├── json.lua           待移植
│   │   └── cover.lua          待移植（部分）
│   │
│   └── skill/
│       └── lib/
│           ├── Classnew.lua       待移植
│           ├── Message.lua        待移植
│           ├── MessageConst.lua   待移植
│           └── Define.lua         待移植（部分）
│
└── test/
    ├── test_bridge.lua        ✓ 已完成
    ├── test_confdata.lua      ✓ 已完成
    └── test_core.lua          待创建
```

---

## 3. 移植详情

### 3.1 Classnew.lua（可直接移植）

**文件**：`critcore/skill/lib/Classnew.lua`

**分析**：纯 Lua 实现，无外部依赖，可直接复制。

**功能**：
- `clone(object)` - 深拷贝对象
- `Classnew(classname, super)` - 创建类，支持继承
- `cls.New(...)` - 实例化对象

### 3.2 Message.lua + MessageConst.lua（可直接移植）

**文件**：
- `critcore/skill/lib/Message.lua`
- `critcore/skill/lib/MessageConst.lua`

**分析**：依赖 `table.ContainValue`（在 Define.lua 中定义）

**功能**：
- `BeginMessage(msgName)` - 创建消息
- `SendMessage(msg)` - 发送消息
- `RegisterMessage(msgName, callback, context)` - 注册消息监听
- `RemoveMessage(msgName, callback)` - 移除监听
- `DispatchMessage(msg)` - 分发消息

### 3.3 Define.lua（部分移植）

**文件**：`critcore/skill/lib/Define.lua`

**分析**：包含多种内容，需分类处理：

| 内容 | 是否移植 | 说明 |
|------|---------|------|
| `Bit = bit` | ✓ | Phase 1 已桥接 |
| `table.ContainValue` | ✓ | 纯 Lua |
| `table.InsertRange` | ✓ | 纯 Lua |
| `table.nillength` | ✓ | 纯 Lua |
| `table.Lerp` | ✓ | 纯 Lua |
| `Lerp` / `Lerp2` | ✓ | 纯 Lua |
| `math.epsilon` | ✓ | 纯 Lua |
| `DoExpression` | ✓ | 纯 Lua |
| `PlayFx` / `StopFx` | ✗ | 依赖 ParticleManager（Phase 5）|
| `PlaySound` | ✗ | 依赖 EmitSoundOnEntityForPlayer（Phase 5）|
| `PlayAnimation` | ✗ | 依赖 StartGestureWithFadeAndPlaybackRate（Phase 5）|
| `GetEntityByInsId` | ✗ | 依赖 Units（Phase 3）|
| `GetEntityPosition` | ✗ | 依赖 Units（Phase 3）|
| `SetEntityPosition` | ✗ | 依赖 Units（Phase 3）|
| `GetConfDataLine` | ✓ | 依赖 ConfData（已移植）|
| `GetSkillLine` 等 | ✓ | 依赖 ConfData（已移植）|
| `BuffEvent` 枚举 | ✓ | 依赖 bit（已桥接）|
| `BuffEventCollect` | ✓ | 纯 Lua |
| 各种 Type 枚举 | ✓ | 纯 Lua |
| `FightApplyDamage` | ✗ | 依赖 Fight（Phase 3）|

**策略**：创建精简版 Define.lua，只包含可移植部分，其他用占位函数。

### 3.4 tool/math.lua（部分移植）

**分析**：

| 函数 | 是否移植 | 说明 |
|------|---------|------|
| `math.round` | ✓ | 纯 Lua |
| `math.get_random_point_by_radius` | ✓ | 依赖 Vector（已桥接）|
| `math.two_vector_angle` | ✓ | 纯 Lua 数学计算 |
| `math.is_line_pass_blocked` | ✗ | 依赖 GridNav（Phase 3）|
| `math.is_point_in_polygon` | ✓ | 纯 Lua |

**策略**：移植可用函数，`is_line_pass_blocked` 用占位函数。

### 3.5 tool/string.lua（可直接移植）

**分析**：纯 Lua 实现

**功能**：
- `string.split_lite(str, sep)` - 字符串分割
- `string.getReplace(str, replace)` - 批量替换
- `string.urlEncode(str)` - URL 编码

### 3.6 tool/time.lua（可直接移植）

**分析**：纯 Lua 实现

**功能**：
- `TimestampToWeekday` - 时间戳转星期
- `TimestampToWeekCount` - 时间戳转周数
- `TimestampIsSameWeek` - 判断同一周
- `TimestampIsSameDay` - 判断同一天
- `TimestampIsSameMonth` - 判断同一月
- `TimestampToDateString` - 时间戳转日期字符串
- `TimestampToDatetime` - 时间戳转年月日时分秒

### 3.7 tool/json.lua（可直接移植）

**分析**：通用 JSON 库，纯 Lua 实现

### 3.8 tool/cover.lua（部分移植）

**分析**：

| 函数 | 是否移植 | 说明 |
|------|---------|------|
| `ErrToLog` | ✗ | 依赖 CreateHTTPRequest（不需要）|
| `debug.traceback` 覆写 | ✗ | 依赖 NetData（Phase 3+）|
| `error` 覆写 | 部分 | 简化版本 |
| `ToolError` | ✓ | 简化实现 |
| `print` 覆写 | ✗ | Phase 1 已桥接 |
| `TryCall` | ✓ | 纯 Lua |
| `If` | ✓ | 纯 Lua |
| `SetParticle` | ✗ | 依赖 ParticleManager（Phase 5）|

---

## 4. 实现文件

### 4.1 Classnew.lua

直接复制源文件，无需修改。

### 4.2 Message.lua

直接复制源文件，确保 `require` 路径正确。

```lua
-- 修改 require 路径
require("critcore.skill.lib.MessageConst")
```

### 4.3 MessageConst.lua

直接复制源文件，无需修改。

### 4.4 Define.lua（精简版）

```lua
-- critcore/skill/lib/Define.lua
-- Phase 2 精简版 - 仅包含可移植的定义

Bit = bit
bitlshift = bit.lshift

-- table 扩展
function table.ContainValue(t, value, param1, param2)
    -- ... 保持原实现
end

function table.InsertRange(t, r, key)
    -- ... 保持原实现
end

function table.nillength(t)
    -- ... 保持原实现
end

function table.Lerp(t, t0, t1, l)
    -- ... 保持原实现
end

-- 数学工具
math.epsilon = 1.401298e-45

function Lerp(a, b, t)
    t = math.max(0, math.min(1, t))
    return a + (b - a) * t
end

function Lerp2(a, b, t)
    return a + (b - a) * t
end

-- 时间工具
function GetCurTime()
    return Time()
end

-- 表达式执行
Expressions = {}
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

-- 配置表访问（依赖 ConfData，Phase 1.5 已移植）
function GetConfDataLine(name, id)
    local line = ConfData:GetLine(name, id)
    if not line then
        error(string.format("配置表 %s 中没有 Id %s", name, id))
    end
    return line
end

function GetConfDataLevel(t, level)
    if not t then return nil end
    if level <= #t then
        return t[level]
    end
    return t[#t]
end

function GetSkillLine(id)
    return GetConfDataLine("Skill", id)
end

function GetBuffLine(id)
    return GetConfDataLine("SkillBuff", id)
end

function GetPassiveSkillLine(id)
    return GetConfDataLine("SkillPassive", id)
end

function GetSettlementLine(id)
    return GetConfDataLine("SkillSettlement", id)
end

function GetHitShowLine(id)
    return GetConfDataLine("SkillHitShow", id)
end

function GetBulletLine(id)
    return GetConfDataLine("SkillBullet", id)
end

-- ============ 占位函数（Phase 3+ 实现）============

-- 实体相关（Phase 3）
function GetEntityByInsId(insId)
    print("[Warning] GetEntityByInsId 尚未实现 (Phase 3)")
    return nil
end

function EntityIdToInsId(entityId)
    print("[Warning] EntityIdToInsId 尚未实现 (Phase 3)")
    return nil
end

function GetEntityPosition(insId)
    print("[Warning] GetEntityPosition 尚未实现 (Phase 3)")
    return Vector(0, 0, 0)
end

function SetEntityPosition(insId, pos)
    print("[Warning] SetEntityPosition 尚未实现 (Phase 3)")
end

function SetEntityForwardVector(entityId, direction)
    print("[Warning] SetEntityForwardVector 尚未实现 (Phase 3)")
end

function IsEntityValid(insId)
    print("[Warning] IsEntityValid 尚未实现 (Phase 3)")
    return false
end

function GetEntitySkillLevel(entityId, skillId)
    print("[Warning] GetEntitySkillLevel 尚未实现 (Phase 3)")
    return 1
end

-- 特效/音效相关（Phase 5）
function PlayFx(path, p, pos)
    print("[Warning] PlayFx 尚未实现 (Phase 5)")
    return 0
end

function UpdateFxPosition(particle, p, pos)
    print("[Warning] UpdateFxPosition 尚未实现 (Phase 5)")
end

function StopFx(particle, immediately)
    print("[Warning] StopFx 尚未实现 (Phase 5)")
end

function PlaySound(path, entityId)
    print("[Warning] PlaySound 尚未实现 (Phase 5)")
end

function PlayAnimation(targetId, name, time)
    print("[Warning] PlayAnimation 尚未实现 (Phase 5)")
end

-- 位置相关（Phase 3）
function SetEntityValidPosition(insId, position)
    print("[Warning] SetEntityValidPosition 尚未实现 (Phase 3)")
end

function GetEntityValidPosition(insId, position)
    print("[Warning] GetEntityValidPosition 尚未实现 (Phase 3)")
    return nil
end

function GetPositionFixHeight(position, fixHeight)
    print("[Warning] GetPositionFixHeight 尚未实现 (Phase 3)")
    return position
end

function SetFindClearSpaceForUnit(insId)
    print("[Warning] SetFindClearSpaceForUnit 尚未实现 (Phase 3)")
end

-- 战斗相关（Phase 3）
function FightApplyDamage(attacker, targeter, skill_id, skill_level, times, params)
    print("[Warning] FightApplyDamage 尚未实现 (Phase 3)")
end

-- ============ 枚举定义 ============

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

BuffOverlayType = {
    Stack = 1,
    Override = 2,
    Ignore = 3,
    TypeDependent = 4
}

PassiveTriggerType = {
    All = 0,
    HP = 1,
    Crit = 2,
    MoveSpeed = 4,
}

PassiveTriggerOverlayType = {
    AND = 1,
    OR = 2
}

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

SettlementType = {
    Single = 0,
    Fan = 1,
    Circle = 2,
    Rectangle = 3,
    Bullet = 4,
    Accurately = 5,
}

SettlementCampType = {
    None = 0,
    SAME_CAMP = 1,
    DIF_CAMP = 2,
}

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

SettlementForwardType = {
    None = 0,
    CasterForward = 1,
    StartTargetForward = 2,
    DynamicCasterForward = 3
}
```

### 4.5 tool/math.lua（精简版）

```lua
-- critcore/tool/math.lua
-- Phase 2 精简版

math.round = function(n)
    local d = n - math.floor(n)
    if d < 0.5 then
        return math.floor(n)
    else
        return math.ceil(n)
    end
end

math.get_random_point_by_radius = function(o, r)
    local angle = math.random(1, 360)
    local x = r * math.cos(angle)
    local y = r * math.sin(angle)
    return o + Vector(x, y, 0)
end

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
math.is_line_pass_blocked = function(line_start, line_end)
    print("[Warning] math.is_line_pass_blocked 尚未实现 (Phase 3)")
    return false
end

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
```

### 4.6 tool/cover.lua（精简版）

```lua
-- critcore/tool/cover.lua
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
function If(cond, truere, falsere)
    if cond then
        return truere
    end
    return falsere
end

-- 特效占位（Phase 5 实现）
function SetParticle(key, unit, pos, player)
    print("[Warning] SetParticle 尚未实现 (Phase 5)")
    return 0
end
```

---

## 5. 测试脚本

### test/test_core.lua

```lua
-- test/test_core.lua
-- Phase 2 核心框架测试

print("========== Phase 2 核心框架测试 ==========")

-- 1. 测试 Classnew OOP 系统
print("\n--- 1. 测试 Classnew ---")
require("critcore.skill.lib.Classnew")

-- 创建基类
local Animal = Classnew("Animal")
function Animal:ctor(name)
    self.name = name
end
function Animal:speak()
    return self.name .. " makes a sound"
end

-- 创建子类
local Dog = Classnew("Dog", Animal)
function Dog:ctor(name, breed)
    Dog.super.ctor(self, name)
    self.breed = breed
end
function Dog:speak()
    return self.name .. " barks!"
end

-- 测试
local animal = Animal.New("Generic")
local dog = Dog.New("Buddy", "Golden Retriever")

assert(animal.name == "Generic", "Animal name failed")
assert(animal:speak() == "Generic makes a sound", "Animal speak failed")
assert(dog.name == "Buddy", "Dog name failed")
assert(dog.breed == "Golden Retriever", "Dog breed failed")
assert(dog:speak() == "Buddy barks!", "Dog speak failed")
assert(dog.class.__cname == "Dog", "Dog classname failed")
print("✓ Classnew OOP 系统测试通过")

-- 2. 测试 clone 函数
print("\n--- 2. 测试 clone ---")
local original = {a = 1, b = {c = 2}}
local cloned = clone(original)
cloned.a = 10
cloned.b.c = 20
assert(original.a == 1, "clone shallow copy failed")
assert(original.b.c == 2, "clone deep copy failed")
print("✓ clone 函数测试通过")

-- 3. 测试消息系统
print("\n--- 3. 测试消息系统 ---")
require("critcore.skill.lib.Message")

local received = nil
local function onTestMessage(msg)
    received = msg.params.value
end

RegisterMessage(MsgConst.SKill_DO_START, onTestMessage, nil)

local msg = BeginMessage(MsgConst.SKill_DO_START)
msg.params = {value = 42}
SendMessage(msg)

assert(received == 42, "Message system failed")
print("✓ 消息系统测试通过")

RemoveMessage(MsgConst.SKill_DO_START, onTestMessage)

-- 4. 测试 Define 中的工具函数
print("\n--- 4. 测试 Define 工具函数 ---")
require("critcore.skill.lib.Define")

-- table.ContainValue
local t = {{id = 1}, {id = 2}, {id = 3}}
assert(table.ContainValue(t, 2, "id", nil) == 2, "table.ContainValue failed")

-- Lerp
assert(Lerp(0, 100, 0.5) == 50, "Lerp failed")
assert(Lerp2(0, 100, 0.5) == 50, "Lerp2 failed")

-- DoExpression
local T = {a = 10, b = 20}
assert(DoExpression("T.a + T.b", T) == 30, "DoExpression failed")

-- BuffEvent 枚举
assert(BuffEvent.CantMagic == 1, "BuffEvent.CantMagic failed")
assert(BuffEvent.Displacement == 2, "BuffEvent.Displacement failed")
print("✓ Define 工具函数测试通过")

-- 5. 测试 math 扩展
print("\n--- 5. 测试 math 扩展 ---")
require("critcore.tool.math")

assert(math.round(1.4) == 1, "math.round down failed")
assert(math.round(1.5) == 2, "math.round up failed")

local v1 = Vector(1, 0, 0)
local v2 = Vector(0, 1, 0)
local angle = math.two_vector_angle(v1, v2)
assert(math.abs(angle - 90) < 0.01, "math.two_vector_angle failed")

local polygon = {Vector(0,0,0), Vector(4,0,0), Vector(4,4,0), Vector(0,4,0)}
assert(math.is_point_in_polygon(Vector(2,2,0), polygon) == true, "point in polygon failed")
assert(math.is_point_in_polygon(Vector(5,5,0), polygon) == false, "point outside polygon failed")
print("✓ math 扩展测试通过")

-- 6. 测试 string 扩展
print("\n--- 6. 测试 string 扩展 ---")
require("critcore.tool.string")

local parts = string.split_lite("a,b,c", ",")
assert(#parts == 3, "string.split_lite count failed")
assert(parts[1] == "a", "string.split_lite value failed")

local replaced = string.getReplace("Hello {name}!", {name = "World"})
assert(replaced == "Hello World!", "string.getReplace failed")
print("✓ string 扩展测试通过")

-- 7. 测试 time 工具
print("\n--- 7. 测试 time 工具 ---")
require("critcore.tool.time")

local ts1 = 1735689600  -- 2025-01-01 00:00:00 UTC
local year, month, day = TimestampToDatetime(ts1)
assert(year == 2025 and month == 1 and day == 1, "TimestampToDatetime failed")

local dateStr = TimestampToDateString(ts1)
assert(dateStr == "2025-1-1", "TimestampToDateString failed")
print("✓ time 工具测试通过")

-- 8. 测试 cover 工具函数
print("\n--- 8. 测试 cover 工具函数 ---")
require("critcore.tool.cover")

assert(If(true, "yes", "no") == "yes", "If true failed")
assert(If(false, "yes", "no") == "no", "If false failed")

local result = TryCall(false, function() return 123 end)
assert(result == 123, "TryCall success failed")
print("✓ cover 工具函数测试通过")

print("\n========== Phase 2 所有测试通过！ ==========")
```

---

## 6. 验收标准

| 编号 | 标准 | 验证方法 |
|------|------|---------|
| 2.1 | Classnew 能创建类和继承 | test_core.lua 测试 1 |
| 2.2 | clone 能深拷贝对象 | test_core.lua 测试 2 |
| 2.3 | 消息系统能注册/发送/接收 | test_core.lua 测试 3 |
| 2.4 | Define 中的工具函数正常 | test_core.lua 测试 4 |
| 2.5 | math 扩展函数正常 | test_core.lua 测试 5 |
| 2.6 | string 扩展函数正常 | test_core.lua 测试 6 |
| 2.7 | time 工具函数正常 | test_core.lua 测试 7 |
| 2.8 | cover 工具函数正常 | test_core.lua 测试 8 |

---

## 7. 实现顺序

1. 复制 `Classnew.lua`
2. 复制 `MessageConst.lua`
3. 复制 `Message.lua`（修改 require 路径）
4. 创建精简版 `Define.lua`
5. 创建精简版 `tool/math.lua`
6. 复制 `tool/string.lua`
7. 复制 `tool/time.lua`
8. 复制 `tool/json.lua`
9. 创建精简版 `tool/cover.lua`
10. 创建并运行 `test/test_core.lua`

---

## 8. 风险与对策

| 风险 | 对策 |
|------|------|
| require 路径不一致 | 统一使用 `critcore.xxx` 格式 |
| 依赖未实现的函数 | 使用占位函数，打印警告 |
| BuffEvent 位运算结果不一致 | Phase 1 已验证 bit 库 |
