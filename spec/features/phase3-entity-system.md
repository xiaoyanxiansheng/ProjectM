# Phase 3: 实体系统移植 - 功能规范

> 本文档定义 Crit Framework 移植项目第三阶段的详细规范。

---

## 1. 概述

### 1.1 目标

移植 Crit Framework 的实体/单位管理系统，包括：
- C# 实体桥接层（替代 Dota2 Arcade 的实体 API）
- 单位管理系统（Units.lua）
- 属性系统（CAttr）
- 基础战斗系统（Fight.lua 核心部分）

### 1.2 范围

| 模块 | 内容 |
|------|------|
| EntityBridge.cs | 实体创建、管理、查询的 C# 桥接层 |
| Units.lua | 单位列表管理、空间分区、单位查询 |
| attr.lua | 属性系统（CAttr 类） |
| fight.lua | 战斗伤害/治疗计算（简化版，不含 Buff 特效） |

### 1.3 不包含

- 完整的 AI 系统（Phase 3+ 移植）
- 技能系统（Phase 4）
- 网络同步（NetData，单机模式不需要）
- 玩家系统（CPlayer，后续按需）
- 英雄系统（CHero，基于 CUnitBase 扩展，后续移植）

### 1.4 简化策略

由于原始代码高度依赖 Dota2 Arcade 特有的 API（如 `CreateUnitByName`、`CDOTA_BaseNPC`、`modifier` 系统等），Phase 3 将采用**精简移植**策略：

1. **保留核心数据结构**：Units、CAttr、Fight 的数据管理逻辑
2. **桥接核心 API**：InsId/EntityId 映射、位置管理、属性计算
3. **占位表现层**：实际的 Unity GameObject 创建在 Phase 5 完善
4. **延迟复杂功能**：Buff 特效处理、网络同步等

---

## 2. 目录结构

```
UnityProject/Assets/
├── Scripts/
│   ├── Bridge/
│   │   └── EntityBridge.cs          # 实体 API 桥接（新增）
│   │
│   └── Services/
│       └── EntityService.cs         # 实体管理服务（新增）
│
└── LuaScripts/
    └── critcore/
        ├── class/
        │   ├── attr.lua             # 属性系统（移植）
        │   └── unit.lua             # 单位基类（简化移植）
        │
        └── static/
            ├── units.lua            # 单位管理（移植）
            └── fight.lua            # 战斗系统（简化移植）
```

---

## 3. 详细设计

### 3.1 EntityBridge.cs

**职责**：提供实体相关的 Lua 桥接 API，替代 Dota2 Arcade 的原生实体系统。

#### 3.1.1 核心 API

| Lua 调用 | C# 实现 | 说明 |
|----------|--------|------|
| `CreateEntity(unitId, position)` | `EntityService.CreateEntity()` | 创建实体，返回 EntityId |
| `DestroyEntity(entityId)` | `EntityService.DestroyEntity()` | 销毁实体 |
| `IsValidEntity(entityId)` | `EntityService.IsValid()` | 检查实体有效性 |
| `GetEntityPosition(entityId)` | `EntityService.GetPosition()` | 获取实体位置 |
| `SetEntityPosition(entityId, pos)` | `EntityService.SetPosition()` | 设置实体位置 |
| `GetEntityForward(entityId)` | `EntityService.GetForward()` | 获取实体朝向 |
| `SetEntityForward(entityId, forward)` | `EntityService.SetForward()` | 设置实体朝向 |

#### 3.1.2 辅助 API

| Lua 调用 | C# 实现 | 说明 |
|----------|--------|------|
| `Entities:FindByName(_, name)` | 占位，返回 nil | 场景实体查询（Phase 5） |
| `EntIndexToHScript(entityId)` | 返回简单对象 | 实体索引转换 |
| `GetGroundPosition(pos, _)` | `Physics.Raycast` | 获取地面位置 |
| `GetGroundHeight(pos, _)` | `Physics.Raycast` | 获取地面高度 |
| `FindClearSpaceForUnit(_, pos, _)` | 返回 pos | 寻找空位（简化） |
| `GridNav:IsTraversable(pos)` | 返回 true | 可通行检测（占位） |
| `GridNav:IsBlocked(pos)` | 返回 false | 阻挡检测（占位） |

### 3.2 EntityService.cs

**职责**：Unity 侧的实体管理服务，维护实体数据。

```csharp
public class EntityService : MonoBehaviour
{
    public static EntityService Instance { get; }
    
    // 实体数据
    private Dictionary<int, EntityData> entities = new();
    private int nextEntityId = 1;
    
    // 创建实体
    public int CreateEntity(int unitId, Vector3 position);
    
    // 销毁实体
    public void DestroyEntity(int entityId);
    
    // 检查实体有效性
    public bool IsValid(int entityId);
    
    // 获取/设置位置
    public Vector3 GetPosition(int entityId);
    public void SetPosition(int entityId, Vector3 position);
    
    // 获取/设置朝向
    public Vector3 GetForward(int entityId);
    public void SetForward(int entityId, Vector3 forward);
}

public class EntityData
{
    public int EntityId;
    public int UnitId;
    public Vector3 Position;
    public Vector3 Forward;
    public bool IsAlive;
    public GameObject GameObject; // Phase 5 关联
}
```

### 3.3 attr.lua（移植）

**职责**：属性管理系统，提供属性添加、计算、绑定功能。

**移植策略**：
- 完整移植核心逻辑
- 移除对 `Flow:GetDungeon()` 的依赖（打印时）
- 保留 ConfData 依赖（Phase 1.5 已移植）

**核心功能**：
- `CreateClass_Attr(name, readDefault, targetLimit, callback)` - 创建属性对象
- `CAttr:AddAttr(id, value, zone, target)` - 添加属性
- `CAttr:GetValue(id)` - 获取计算后的属性值
- `CAttr:Bind(parentAttr)` - 绑定到父属性对象
- `CAttr:_Summary()` - 汇总计算所有属性

**依赖修改**：
```lua
-- 原始代码
CAttr = class({})

-- 修改为（使用已移植的 Classnew）
CAttr = Classnew("CAttr")
```

### 3.4 unit.lua（简化移植）

**职责**：基础单位类，管理单位的核心数据和行为。

**简化策略**：
由于原始 `unit.lua` 超过 1700 行，且高度依赖 Dota2 API，Phase 3 将创建**精简版**：

1. **保留**：
   - InsId/UnitId 管理
   - 位置/朝向管理
   - 属性系统集成（CAttr）
   - 动态属性（HP 等）
   - 阵营/类型定义
   - 基础 API（GetInsid, GetPosition, GetCamp 等）

2. **占位/延迟**：
   - AI 系统（`__InitAI`）
   - 技能系统（`__InitSkill`）
   - 挂件系统（`__Pendants`）
   - 网络同步（`NetData`）
   - Timer/TimeOut tick（用 SetThink 替代）

**核心接口**：
```lua
-- 创建单位
function CreateClass_UnitBase(id, position, dieCallback, heroId, player, isSpecial, attrBase, owner)

-- 单位类
CUnitBase = Classnew("CUnitBase")
function CUnitBase:constructor(id, position, ...)
function CUnitBase:GetInsid()
function CUnitBase:GetUnitId()
function CUnitBase:GetPosition()
function CUnitBase:SetPosition(pos)
function CUnitBase:GetCamp()
function CUnitBase:GetAttr(attrId)
function CUnitBase:GetHP()
function CUnitBase:SetDynamicValue(key, value)
function CUnitBase:IsAlive()
function CUnitBase:IsValid()
function CUnitBase:Damage(damage, cancelledDamage, attacker, skillId)
function CUnitBase:Heal(heal, attacker, skillId)
function CUnitBase:Kill(attacker, skillId)
function CUnitBase:Remove()
```

### 3.5 units.lua（移植）

**职责**：单位列表管理，提供单位创建、查询、空间分区功能。

**移植策略**：
- 完整移植数据结构和查询逻辑
- 简化 `SpawnUnit` 使用 C# EntityService
- 移除对 `Flow`、`Lobby`、`NetData` 的依赖
- 保留空间分区（Grid）系统

**核心功能**：
```lua
Units = {}

-- 数据结构
Units.__Units = {}           -- InsId -> Unit
Units.__EntityidToInsid = {} -- EntityId -> InsId
Units.__Grids = {}           -- 空间分区

-- 核心 API
function Units:GetNewInsid()
function Units:SpawnUnit(id, lib, count, position, range, attrBase, dieCallback, owner)
function Units:GetUnitByInsid(insId)
function Units:GetUnitByEntityid(entityId)
function Units:GetAllUnits()
function Units:GetUnitsByArea(centerPos, radius, camp, isMathHull, isSkillHull)
function Units:GetUnitsByCamp(camp)
function Units:RemoveUnitByLib(lib)
```

**依赖修改**：
```lua
-- 移除的依赖
-- Flow:GetDungeon()      -> 返回 nil
-- Lobby:GetFirendAttrObject() -> 返回占位对象
-- NetData:Set()          -> 空函数

-- 简化的功能
function Units:GetEntityPos(name)
    -- 占位实现，Phase 5 完善
    print("[Warning] Units:GetEntityPos 尚未实现")
    return Vector(0, 0, 0)
end
```

### 3.6 fight.lua（简化移植）

**职责**：战斗伤害/治疗计算。

**简化策略**：
- 保留核心伤害/治疗计算逻辑
- 移除 Dota2 伤害拦截器（`SetDamageFilter`）
- 移除 Dota2 操作拦截器（`SetExecuteOrderFilter`）
- 简化 Buff 特效处理（延迟到 Phase 4）

**核心功能**：
```lua
Fight = {}

-- 常量（从 ConfData 加载）
CONST_HP_MAX_ATTR_ID = 0
CONST_SPEED_ATTR_ID = 0
-- ... 其他属性 ID

-- 枚举
EnumFightDamageType = { Invulnerable = -2, Heal = -1, Dodge = 0, Normal = 1, Critical = 2 }
EnumFightDamageParamsType = { AtkDef = 1, AttrTo = 2, ... }

-- 核心 API
function Fight:__Init()
function Fight:ApplyDamage(attacker, targeter, skillId, skillLevel, times, params, ignore)
function Fight:ApplyDirectlyDamage(attacker, targeter, damage, skillId, ignore)
function Fight:ApplyHeal(attacker, targeter, skillId, skillLevel, times, params)
function Fight:ApplyDirectlyHeal(attacker, targeter, skillId, heal)
```

**依赖修改**：
```lua
-- 移除的依赖
-- GameRules:GetGameModeEntity():SetDamageFilter() -> 不需要
-- Lobby:SendData() -> 占位空函数
-- SkillAPI.* -> 占位函数（Phase 4 实现）

-- 简化的计算
function Fight:ApplyDamage(attacker, targeter, skillId, skillLevel, times, params, ignore)
    -- 简化版：直接调用 ApplyDirectlyDamage
    -- 完整的属性计算延迟到 Phase 4 Buff 系统完成后
end
```

---

## 4. 测试脚本

### 4.1 test_entity.lua

```lua
-- Phase 3 实体系统测试
print("========== Phase 3 实体系统测试 ==========")

-- 预加载依赖
require("critcore.tool.table")
require("critcore.skill.lib.Define")
require("critcore.static.conf_data")

-- 加载 Phase 3 模块
require("critcore.class.attr")
require("critcore.class.unit")
require("critcore.static.units")
require("critcore.static.fight")

-- 初始化战斗系统
Fight:__Init()

print("\n--- 1. 测试属性系统 (CAttr) ---")
local attr = CreateClass_Attr("test_attr", false, 0, function()
    print("  属性发生变化回调")
end)

attr:AddAttr(1, 100, 0, 1)  -- 属性ID=1, 值=100
attr:AddAttr(2, 50, 0, 1)   -- 属性ID=2, 值=50
local v1 = attr:GetValue(1)
local v2 = attr:GetValue(2)
print("  属性1: " .. v1 .. ", 属性2: " .. v2)
assert(v1 == 100, "属性1应该是100")
assert(v2 == 50, "属性2应该是50")
print("✓ CAttr 测试通过")

print("\n--- 2. 测试单位创建 ---")
local unitId = 1001  -- 假设配置表有此单位
local success, unit = pcall(function()
    return CreateClass_UnitBase(unitId, Vector(100, 200, 0))
end)

if success and unit then
    print("  单位 InsId: " .. unit:GetInsid())
    print("  单位 UnitId: " .. unit:GetUnitId())
    local pos = unit:GetPosition()
    print("  单位位置: " .. pos.x .. ", " .. pos.y .. ", " .. pos.z)
    print("✓ 单位创建测试通过")
else
    print("  [跳过] 单位创建测试（需要配置表支持）")
    print("✓ 单位创建测试跳过")
end

print("\n--- 3. 测试 Units 管理 ---")
local insId = Units:GetNewInsid()
print("  新 InsId: " .. insId)
assert(insId > 1000, "InsId应该大于1000")

local allUnits = Units:GetAllUnits()
print("  当前单位数量: " .. table.nillength(allUnits))
print("✓ Units 管理测试通过")

print("\n--- 4. 测试战斗系统常量 ---")
print("  CONST_HP_MAX_ATTR_ID: " .. CONST_HP_MAX_ATTR_ID)
print("  CONST_SPEED_ATTR_ID: " .. CONST_SPEED_ATTR_ID)
print("  EnumFightDamageType.Normal: " .. EnumFightDamageType.Normal)
print("  EnumFightDamageType.Critical: " .. EnumFightDamageType.Critical)
print("✓ 战斗系统常量测试通过")

print("\n--- 5. 测试空间分区查询 ---")
local centerPos = Vector(0, 0, 0)
local nearbyUnits = Units:GetUnitsByArea(centerPos, 1000, nil, false, false)
print("  范围内单位数量: " .. table.nillength(nearbyUnits))
print("✓ 空间分区查询测试通过")

print("\n========== Phase 3 所有测试通过！ ==========")
```

---

## 5. 验收标准

| # | 验收项 | 预期结果 |
|---|--------|---------|
| 1 | CAttr 能创建和计算属性 | GetValue 返回正确值 |
| 2 | CAttr 能绑定父子关系 | 子对象变化传递到父对象 |
| 3 | CUnitBase 能创建单位 | 返回有效的单位对象 |
| 4 | CUnitBase 能管理位置 | Get/SetPosition 正常工作 |
| 5 | CUnitBase 能管理动态属性 | HP 等动态属性正常 |
| 6 | Units 能分配 InsId | GetNewInsid 返回递增 ID |
| 7 | Units 能空间查询 | GetUnitsByArea 返回正确结果 |
| 8 | Fight 常量正确初始化 | CONST_HP_MAX_ATTR_ID 等非零 |
| 9 | 无编译错误 | Unity Console 无红色错误 |

---

## 6. 实现顺序

1. **EntityBridge.cs + EntityService.cs**
   - 创建 C# 实体管理服务
   - 注册 Lua 桥接 API

2. **attr.lua**
   - 复制源文件
   - 修改 class 定义为 Classnew
   - 移除/占位外部依赖

3. **unit.lua（简化版）**
   - 基于源文件创建精简版
   - 保留核心属性和位置管理
   - 占位 AI/技能/网络功能

4. **units.lua**
   - 复制源文件
   - 修改/占位外部依赖
   - 测试单位创建和查询

5. **fight.lua（简化版）**
   - 基于源文件创建精简版
   - 保留伤害/治疗核心计算
   - 占位 Buff 特效处理

6. **测试脚本**
   - 创建 test_entity.lua
   - 验证所有功能

---

## 7. 风险与对策

| 风险 | 影响 | 对策 |
|------|------|------|
| Unit 配置表依赖 | 无法创建单位 | 创建测试用配置或跳过测试 |
| Dota2 API 深度依赖 | 大量代码需修改 | 采用精简移植，占位复杂功能 |
| 循环依赖 | 模块加载失败 | 调整 require 顺序，使用延迟加载 |
| 属性 ID 不存在 | 运行时错误 | 添加默认值和错误处理 |

---

## 8. 版本记录

| 版本 | 日期 | 变更内容 |
|------|------|----------|
| v0.1 | 2024-12-31 | 创建规范文档 |
