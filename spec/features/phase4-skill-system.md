# Phase 4: 技能系统移植

## 概述

### 目标
将 Crit Framework 的完整技能系统移植到 Unity，包括：
- 技能释放与管理
- Buff 系统
- 时间线事件系统
- 被动技能系统
- 对象池优化

### 移植原则
1. **Lua 代码保留业务逻辑** - 只改兼容性代码
2. **C# 只写支持代码** - 桥接层和表现层
3. **分层移植** - 先骨架后细节，逐步验证

---

## 源文件分析

### 目录结构
```
critcore/skill/
├── lib/                          # 库文件
│   ├── Classnew.lua              ✅ 已移植
│   ├── Define.lua                ✅ 已移植
│   ├── Message.lua               ✅ 已移植
│   ├── MessageConst.lua          ✅ 已移植
│   ├── pool.lua                  ⏳ 待移植
│   ├── pool_manager.lua          ⏳ 待移植
│   ├── Debug.lua                 ⏳ 待移植
│   ├── LayeredAttributeSystem.lua ⏳ 待移植
│   └── ClientParticleManager.lua ⏳ 简化移植
│
├── SkillModule.lua               ⏳ 待移植（入口）
├── SkillManager.lua              ⏳ 待移植
├── SKillLogic.lua                ⏳ 待移植
├── SkillTimeLine.lua             ⏳ 待移植
├── SkillAPI.lua                  ⏳ 待移植
│
├── buff/                         # Buff 系统
│   ├── Buff.lua                  ⏳ 待移植
│   ├── BuffManager.lua           ⏳ 待移植
│   └── buffEvent/                # 40+ 个事件
│       ├── BuffEvent.lua         ⏳ 待移植（基类）
│       └── BuffEvent*.lua        ⏳ 精简移植
│
├── lineEvent/                    # 时间线事件
│   ├── SkillLineEvent.lua        ⏳ 待移植（基类）
│   └── LineEvent*.lua            ⏳ 精简移植
│
└── passive/                      # 被动技能
    ├── PassiveSkill.lua          ⏳ 待移植
    └── PassiveSkillManager.lua   ⏳ 待移植
```

### 依赖关系
```
SkillModule (入口)
├── SkillManager
│   ├── SkillLogic
│   │   └── SkillTimeLine
│   │       └── LineEvent*
│   └── PoolManager
├── BuffManager
│   ├── Buff
│   │   └── BuffEvent*
│   └── PoolManager
├── PassiveSkillManager
│   └── PassiveSkill
└── SkillAPI (对外接口)
```

---

## 移植计划

### Phase 4.1: 基础设施（预计 0.5 天）

#### 文件列表
| 文件 | 操作 | 说明 |
|------|------|------|
| `lib/pool.lua` | 直接复制 | 对象池 |
| `lib/pool_manager.lua` | 直接复制 | 对象池管理器 |
| `lib/Debug.lua` | 简化移植 | 调试工具 |
| `lib/LayeredAttributeSystem.lua` | 评估是否需要 | 分层属性 |

#### 验收标准
- [ ] PoolManager 单例正常创建
- [ ] Pool 对象获取/回收正常
- [ ] Debug.Log 正常输出

### Phase 4.2: 技能核心骨架（预计 1 天）

#### 文件列表
| 文件 | 操作 | 说明 |
|------|------|------|
| `SkillModule.lua` | 简化移植 | 移除 GameRules 依赖 |
| `SkillManager.lua` | 移植+适配 | 核心管理器 |
| `SKillLogic.lua` | 移植+适配 | 技能逻辑 |
| `SkillTimeLine.lua` | 移植+适配 | 时间轴系统 |
| `SkillAPI.lua` | 移植+适配 | API 接口 |

#### 关键适配点
1. `GameRules:GetGameModeEntity():SetThink` → 使用已移植的 `SetThink`
2. `GetSkillLine(id)` → 使用 `ConfData:GetSkillLine(id)`
3. `GetEntityByInsId` → 使用 `Units:GetUnitByInsid`
4. 粒子/音效调用 → 占位函数

#### 验收标准
- [ ] SkillModule.Init() 正常执行
- [ ] SkillModule.Update() 被定时调用
- [ ] 能创建 SkillLogic 实例

### Phase 4.3: Buff 系统（预计 1 天）

#### 文件列表
| 文件 | 操作 | 优先级 |
|------|------|--------|
| `buff/Buff.lua` | 移植 | 必须 |
| `buff/BuffManager.lua` | 移植 | 必须 |
| `buffEvent/BuffEvent.lua` | 移植 | 必须（基类）|
| `buffEvent/BuffEventAttr.lua` | 移植 | 高（属性加成）|
| `buffEvent/BuffEventDamage.lua` | 移植 | 高（伤害）|
| `buffEvent/BuffEventState.lua` | 移植 | 高（状态）|
| `buffEvent/BuffEventShield.lua` | 移植 | 中（护盾）|
| `buffEvent/BuffEventSlowSpeed.lua` | 移植 | 中（减速）|
| 其他 BuffEvent | 占位 | 低 |

#### 验收标准
- [ ] BuffManager 正常初始化
- [ ] 能添加/移除 Buff
- [ ] Buff 属性加成生效
- [ ] Buff 定时更新

### Phase 4.4: 时间线事件系统（预计 1 天）

#### 文件列表
| 文件 | 操作 | 优先级 |
|------|------|--------|
| `lineEvent/SkillLineEvent.lua` | 移植 | 必须（基类）|
| `lineEvent/LineEventBuff.lua` | 移植 | 高 |
| `lineEvent/LineEventDamage.lua` | 移植 | 高（如果存在）|
| `lineEvent/LineEventSettlementObject.lua` | 移植 | 高（结算）|
| `lineEvent/LineEventTargetSelect.lua` | 移植 | 高（目标选择）|
| `lineEvent/LineEventDisplacement.lua` | 移植 | 中（位移）|
| `lineEvent/LineEventParticle.lua` | 占位 | 低（表现层）|
| `lineEvent/LineEventSound.lua` | 占位 | 低（表现层）|
| 其他 LineEvent | 占位 | 低 |

#### 验收标准
- [ ] SkillTimeLine 能解析事件配置
- [ ] 事件按时间触发
- [ ] 核心事件（Buff、结算）正常执行

### Phase 4.5: 被动技能系统（预计 0.5 天）

#### 文件列表
| 文件 | 操作 |
|------|------|
| `passive/PassiveSkill.lua` | 移植 |
| `passive/PassiveSkillManager.lua` | 移植 |

#### 验收标准
- [ ] PassiveSkillManager 正常初始化
- [ ] 被动技能能注册/触发
- [ ] 被动技能效果生效

### Phase 4.6: C# 桥接层（预计 0.5 天）

#### 新增文件
| 文件 | 功能 |
|------|------|
| `SkillBridge.cs` | 技能表现层桥接 |

#### 桥接 API
```csharp
// 粒子效果（占位）
PlayParticle(entityId, particleName, position, duration)
StopParticle(particleId)

// 音效（占位）
PlaySound(soundName, position)

// 动画（占位）
PlayAnimation(entityId, animationName)
```

---

## 目录结构（Unity 侧）

```
UnityProject/Assets/
├── LuaScripts/
│   └── critcore/
│       └── skill/
│           ├── lib/
│           │   ├── pool.lua
│           │   ├── pool_manager.lua
│           │   ├── Debug.lua
│           │   └── ClientParticleManager.lua
│           ├── buff/
│           │   ├── Buff.lua
│           │   ├── BuffManager.lua
│           │   └── buffEvent/
│           │       ├── BuffEvent.lua
│           │       └── ...
│           ├── lineEvent/
│           │   ├── SkillLineEvent.lua
│           │   └── ...
│           ├── passive/
│           │   ├── PassiveSkill.lua
│           │   └── PassiveSkillManager.lua
│           ├── SkillModule.lua
│           ├── SkillManager.lua
│           ├── SKillLogic.lua
│           ├── SkillTimeLine.lua
│           └── SkillAPI.lua
│
└── Scripts/
    └── Bridge/
        └── SkillBridge.cs
```

---

## 测试脚本设计

### test/test_skill.lua

```lua
-- Phase 4 技能系统测试
print("========== Phase 4 技能系统测试 ==========")

-- 1. 测试对象池
print("\n--- 1. 测试对象池 ---")
local pool = PoolManagerInstance:CreateAndRegister("TestPool", nil, function() return {} end)
local obj1 = pool:Get()
local obj2 = pool:Get()
pool:Back(obj1)
print("✓ 对象池测试通过")

-- 2. 测试技能模块初始化
print("\n--- 2. 测试技能模块初始化 ---")
SkillModule.Init()
assert(SkillManagerInstance, "SkillManager 未创建")
assert(BuffManagerInstance, "BuffManager 未创建")
print("✓ 技能模块初始化测试通过")

-- 3. 测试 Buff 添加
print("\n--- 3. 测试 Buff 添加 ---")
local unit = CreateClass_UnitBase(9999, Vector(0, 0, 0))
-- BuffManagerInstance:AddBuff(unit:GetInsid(), buffId, level, caster)
print("✓ Buff 测试通过")

-- 4. 测试技能释放
print("\n--- 4. 测试技能释放 ---")
-- local skillData = DoSkillData.New(...)
-- SkillManagerInstance:DoSkill(skillData)
print("✓ 技能释放测试通过")

print("\n========== Phase 4 测试完成！ ==========")
```

---

## 风险与对策

| 风险 | 影响 | 对策 |
|------|------|------|
| Buff 事件过多 | 工作量大 | 只移植核心事件，其他占位 |
| LineEvent 依赖表现层 | 无法测试 | 提供占位函数，Phase 5 补充 |
| 配置表字段缺失 | 运行时报错 | 添加默认值和容错处理 |
| 循环依赖 | 加载失败 | 延迟加载或调整顺序 |

---

## 实施顺序

1. **Phase 4.1** - 基础设施
2. **Phase 4.2** - 技能核心骨架
3. **Phase 4.3** - Buff 系统
4. **Phase 4.4** - 时间线事件
5. **Phase 4.5** - 被动技能
6. **Phase 4.6** - C# 桥接
7. **集成测试**

预计总时长：**4-5 天**
