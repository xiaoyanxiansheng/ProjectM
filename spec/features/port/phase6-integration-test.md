# Phase 6: 集成测试设计文档

> 本文档描述 Crit Framework 移植后的集成测试方案，验证完整战斗流程。

---

## 1. 测试目标

### 1.1 核心验证项

| 验证项 | 说明 |
|--------|------|
| 技能释放流程 | 从触发到伤害结算的完整链路 |
| Buff 系统 | 添加、移除、触发、层数、持续时间 |
| 被动技能 | 条件触发、效果执行 |
| 战斗结算 | 伤害计算、属性修改 |
| 时间轴事件 | 按时间顺序触发各类事件 |
| 消息系统 | 事件广播与监听 |

### 1.2 验收标准

- [ ] 完整技能释放流程无报错
- [ ] Buff 添加/移除/触发正常
- [ ] 被动技能触发正常
- [ ] 伤害计算流程正常
- [ ] 时间轴事件按序触发
- [ ] 无 Lua 运行时错误
- [ ] 无内存泄漏警告

---

## 2. 测试架构

### 2.1 测试层次

```
┌─────────────────────────────────────────────────────────────────┐
│                      test_integration.lua                        │
│                     (集成测试入口)                               │
└───────────────────────────────┬─────────────────────────────────┘
                                │
        ┌───────────────────────┼───────────────────────┐
        │                       │                       │
┌───────▼───────┐      ┌────────▼────────┐     ┌───────▼───────┐
│ test_skill    │      │  test_buff      │     │ test_combat   │
│ (技能测试)    │      │  (Buff测试)     │     │ (战斗测试)    │
└───────────────┘      └─────────────────┘     └───────────────┘
```

### 2.2 测试数据

使用配置表中的真实数据进行测试：
- 技能表：`skill_list`
- Buff表：`buff_list`
- 单位表：`unit`

---

## 3. 测试用例设计

### 3.1 技能系统测试

#### 3.1.1 基础技能释放

```lua
-- 测试项：技能释放基本流程
-- 前置：创建施法者和目标单位
-- 操作：释放一个简单技能
-- 验证：
--   1. SkillManager:CastSkill 返回成功
--   2. 时间轴开始执行
--   3. OnInvoke 事件触发
--   4. OnEnd 事件触发
```

#### 3.1.2 时间轴事件序列

```lua
-- 测试项：时间轴事件按序触发
-- 前置：准备一个包含多个事件的技能
-- 操作：释放技能并等待
-- 验证：
--   1. LineEventDamage 触发
--   2. LineEventSound 触发
--   3. LineEventParticle 触发
--   4. LineEventAnimation 触发
--   5. 事件按 startTime 顺序执行
```

#### 3.1.3 技能冷却

```lua
-- 测试项：技能冷却机制
-- 前置：释放一个有冷却的技能
-- 操作：立即再次释放
-- 验证：
--   1. 第一次释放成功
--   2. 冷却期间释放失败
--   3. 冷却结束后释放成功
```

### 3.2 Buff 系统测试

#### 3.2.1 Buff 添加与移除

```lua
-- 测试项：Buff 生命周期
-- 前置：创建单位
-- 操作：添加一个持续 3 秒的 Buff
-- 验证：
--   1. BuffManager:AddBuff 返回 Buff 实例
--   2. Buff:OnCreate 被调用
--   3. 3 秒后 Buff:OnDestroy 被调用
--   4. Buff 从单位移除
```

#### 3.2.2 Buff 层数堆叠

```lua
-- 测试项：Buff 层数机制
-- 前置：创建单位
-- 操作：多次添加同一个可堆叠 Buff
-- 验证：
--   1. Buff 层数增加
--   2. 达到最大层数后不再增加
--   3. OnStackCountChanged 被调用
```

#### 3.2.3 Buff 事件触发

```lua
-- 测试项：Buff 事件回调
-- 前置：添加一个有 OnAttack 事件的 Buff
-- 操作：让单位进行攻击
-- 验证：
--   1. Buff:OnAttack 被调用
--   2. 传入参数正确（攻击者、目标、伤害）
```

### 3.3 被动技能测试

#### 3.3.1 被动技能触发

```lua
-- 测试项：被动技能激活
-- 前置：创建单位并添加被动技能
-- 操作：触发被动条件（如受到伤害）
-- 验证：
--   1. PassiveSkill:Check 返回 true
--   2. PassiveSkill:OnTrigger 被调用
--   3. 被动效果生效
```

### 3.4 战斗系统测试

#### 3.4.1 伤害计算

```lua
-- 测试项：伤害流程
-- 前置：创建攻击者和目标
-- 操作：调用 ApplyDamage
-- 验证：
--   1. 伤害值正确计算
--   2. 目标生命值减少
--   3. 伤害事件广播
```

#### 3.4.2 属性系统

```lua
-- 测试项：分层属性系统
-- 前置：创建单位
-- 操作：通过不同来源修改属性
-- 验证：
--   1. 基础属性层正确
--   2. Buff 属性层正确
--   3. 最终属性计算正确
```

### 3.5 消息系统测试

```lua
-- 测试项：消息广播与监听
-- 前置：注册消息监听器
-- 操作：发送消息
-- 验证：
--   1. 监听器收到消息
--   2. 消息参数正确
--   3. 取消监听后不再收到
```

---

## 4. 实现方案

### 4.1 测试框架 (Lua)

```lua
-- test/TestFramework.lua
TestFramework = {}
TestFramework.tests = {}
TestFramework.results = {
    passed = 0,
    failed = 0,
    errors = {}
}

function TestFramework:Register(name, testFunc)
    table.insert(self.tests, { name = name, func = testFunc })
end

function TestFramework:Assert(condition, message)
    if not condition then
        error(message or "Assertion failed")
    end
end

function TestFramework:AssertEqual(expected, actual, message)
    if expected ~= actual then
        error(string.format("%s: expected %s, got %s", 
            message or "AssertEqual", tostring(expected), tostring(actual)))
    end
end

function TestFramework:AssertNotNil(value, message)
    if value == nil then
        error(message or "Value is nil")
    end
end

function TestFramework:Run()
    print("========== 开始集成测试 ==========")
    
    for _, test in ipairs(self.tests) do
        local success, err = pcall(test.func)
        if success then
            self.results.passed = self.results.passed + 1
            print(string.format("✓ %s", test.name))
        else
            self.results.failed = self.results.failed + 1
            table.insert(self.results.errors, {
                name = test.name,
                error = err
            })
            print(string.format("✗ %s: %s", test.name, err))
        end
    end
    
    print("========== 测试结果 ==========")
    print(string.format("通过: %d, 失败: %d", 
        self.results.passed, self.results.failed))
    
    return self.results.failed == 0
end
```

### 4.2 测试辅助函数

```lua
-- test/TestHelper.lua
TestHelper = {}

-- 创建模拟单位
function TestHelper:CreateMockUnit(config)
    config = config or {}
    local insId = Units:GetNewInsid()
    
    -- 创建最小化单位数据
    local unit = {
        insid = insId,
        unitId = config.unitId or 1001,
        teamId = config.teamId or DOTA_TEAM_GOODGUYS,
        position = config.position or Vector(0, 0, 0),
        hp = config.hp or 1000,
        maxHp = config.maxHp or 1000,
        attack = config.attack or 100,
        
        GetInsid = function(self) return self.insid end,
        GetTeamNumber = function(self) return self.teamId end,
        GetAbsOrigin = function(self) return self.position end,
        GetHealth = function(self) return self.hp end,
        GetMaxHealth = function(self) return self.maxHp end,
        SetHealth = function(self, v) self.hp = v end,
        IsAlive = function(self) return self.hp > 0 end,
    }
    
    -- 注册到 Units
    Units.unitPool[insId] = unit
    
    return unit
end

-- 清理测试单位
function TestHelper:CleanupUnits()
    Units.unitPool = {}
    Units.insid = 0
end

-- 模拟等待（用于时间轴测试）
function TestHelper:SimulateTime(seconds)
    -- 通过多次调用 Update 模拟时间流逝
    local frames = math.ceil(seconds * 60) -- 假设 60fps
    for i = 1, frames do
        if SkillManager and SkillManager.Update then
            SkillManager:Update(1/60)
        end
        if BuffManager and BuffManager.Update then
            BuffManager:Update(1/60)
        end
    end
end
```

### 4.3 集成测试入口

```lua
-- test/test_integration.lua

-- 加载测试框架
require("test.TestFramework")
require("test.TestHelper")

-- 加载各模块测试
require("test.tests.test_skill_basic")
require("test.tests.test_buff_lifecycle")
require("test.tests.test_combat_damage")
require("test.tests.test_message_system")

-- 运行所有测试
local success = TestFramework:Run()

-- 输出最终结果
if success then
    print("========== 所有测试通过 ✓ ==========")
else
    print("========== 存在失败测试 ✗ ==========")
end
```

---

## 5. 实施步骤

### 5.1 Phase Test-1: 测试框架

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 TestFramework.lua | 编译通过 |
| 2 | 创建 TestHelper.lua | 编译通过 |
| 3 | 创建 test_integration.lua 入口 | 可运行 |

### 5.2 Phase Test-2: 基础测试

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 测试消息系统 | 广播/监听正常 |
| 2 | 测试单位创建 | MockUnit 可用 |
| 3 | 测试属性系统 | 属性读写正常 |

### 5.3 Phase Test-3: 技能测试

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 测试技能管理器初始化 | SkillManager 可用 |
| 2 | 测试技能释放 | CastSkill 返回成功 |
| 3 | 测试时间轴事件 | 事件按序触发 |

### 5.4 Phase Test-4: Buff/被动测试

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 测试 Buff 添加/移除 | 生命周期正常 |
| 2 | 测试 Buff 层数 | 堆叠机制正常 |
| 3 | 测试被动技能 | 触发机制正常 |

### 5.5 Phase Test-5: 战斗测试

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 测试伤害计算 | 数值正确 |
| 2 | 测试完整战斗流程 | 流程无报错 |

---

## 6. 目录结构

```
Assets/LuaScripts/test/
├── TestFramework.lua           # 测试框架
├── TestHelper.lua              # 测试辅助
├── test_integration.lua        # 集成测试入口
│
└── tests/                      # 测试用例
    ├── test_skill_basic.lua    # 技能基础测试
    ├── test_buff_lifecycle.lua # Buff 生命周期测试
    ├── test_combat_damage.lua  # 战斗伤害测试
    └── test_message_system.lua # 消息系统测试
```

---

## 7. 验收清单

### 7.1 测试覆盖

- [ ] 消息系统测试通过
- [ ] 单位创建测试通过
- [ ] 属性系统测试通过
- [ ] 技能释放测试通过
- [ ] 时间轴事件测试通过
- [ ] Buff 生命周期测试通过
- [ ] Buff 层数测试通过
- [ ] 被动技能测试通过
- [ ] 伤害计算测试通过

### 7.2 稳定性

- [ ] 连续运行 10 次无报错
- [ ] 无 Lua 内存泄漏警告
- [ ] Unity Console 无错误日志

---

## 8. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建设计文档 |
