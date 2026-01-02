# Phase 9: 战斗系统集成

> 本文档描述战斗系统的完整集成方案，包括技能释放、伤害结算、Buff 系统。

---

## 1. 目标

将已移植的 Crit Framework 战斗模块集成到游戏流程中：
- 技能释放流程
- 伤害结算系统
- Buff 系统验证
- 单位死亡处理

---

## 2. 依赖

| 依赖项 | 状态 | 说明 |
|--------|------|------|
| Phase 4 技能系统 | ✅ 已移植 | SkillModule、SkillManager、SkillAPI |
| Phase 8 副本系统 | ✅ 已完成 | 怪物生成、房间管理 |
| Units | ✅ 已完成 | 单位管理 |
| Fight | ✅ 已完成 | 伤害计算 |

---

## 3. 核心模块

### 3.1 BattleInit.lua (战斗初始化)

```lua
-- 位置: critcore/static/battle_init.lua
BattleInit = {}

-- 战斗状态
BattleState = {
    READY = 0,       -- 准备中
    FIGHTING = 1,    -- 战斗中
    PAUSED = 2,      -- 暂停
    ENDED = 3,       -- 结束
}

-- 核心方法
BattleInit:Init()                    -- 初始化战斗系统
BattleInit:Start()                   -- 开始战斗
BattleInit:CreatePlayerHero(...)     -- 创建玩家英雄
BattleInit:CreateMonster(...)        -- 创建怪物
BattleInit:CastSkill(slot)           -- 释放技能
BattleInit:GetPlayerHero()           -- 获取玩家英雄
BattleInit:OnUnitDeath(insId)        -- 单位死亡回调
```

### 3.2 技能释放流程

```lua
-- 技能释放入口
function BattleInit:CastSkill(skillSlot)
    local hero = self:GetPlayerHero()
    local skillId = hero:GetSkillBySlot(skillSlot)
    local target = self:GetCurrentTarget()
    
    -- 构建技能数据
    local doSkillData = DoSkillData.New()
    doSkillData.CasterInsId = hero:GetInsid()
    doSkillData.TargetInsId = target and target:GetInsid() or 0
    doSkillData.SkillId = skillId
    doSkillData.SkillLevel = hero:GetSkillLevel(skillId) or 1
    doSkillData.Position = target and target:GetPosition() or hero:GetPosition()
    
    -- 调用技能API
    return SkillAPI.DoSkill(doSkillData)
end
```

### 3.3 伤害结算

```lua
-- Fight:ApplyDirectlyDamage(attacker, target, damage, skillId)
-- 直接造成伤害，触发死亡检测

-- CUnitBase:Damage(damage, cancelled, attacker, skillId)
-- 扣除 HP，HP <= 0 时调用 Kill()

-- CUnitBase:Kill(attacker, skillId)
-- 标记死亡，通知 Units 移除，销毁 Unity 实体
```

---

## 4. CUnitBase 扩展

### 4.1 技能槽位管理

```lua
-- 学习技能
function CUnitBase:LearnSkill(slot, skillId)
    self.__SkillSlots = self.__SkillSlots or {}
    self.__SkillSlots[slot] = skillId
end

-- 获取槽位技能
function CUnitBase:GetSkillBySlot(slot)
    return self.__SkillSlots and self.__SkillSlots[slot]
end

-- 获取所有技能
function CUnitBase:GetAllSkills()
    return self.__SkillSlots or {}
end
```

### 4.2 Dota2 API 兼容

```lua
-- 位置获取（兼容 Dota2 API）
function CUnitBase:GetAbsOrigin()
    return self.__Position
end
```

---

## 5. 实现步骤

| 步骤 | 内容 | 验收标准 |
|------|------|----------|
| 9.1.1 | 创建 BattleInit.lua | 战斗系统能初始化 |
| 9.1.2 | 创建玩家英雄 CUnitBase | 英雄有技能槽位 |
| 9.1.3 | 创建怪物 CUnitBase | 怪物有 HP 属性 |
| 9.1.4 | 实现技能释放 | SkillAPI.DoSkill 返回成功 |
| 9.2.1 | 验证伤害结算 | Fight:ApplyDirectlyDamage 生效 |
| 9.2.2 | 验证 HP 减少 | 怪物 HP 正确减少 |
| 9.2.3 | 验证死亡流程 | 怪物死亡后被移除 |
| 9.3.1 | 验证 Buff 添加 | SkillAPI.AddEntityBuff 成功 |
| 9.3.2 | 验证 Buff 效果 | 属性修改生效 |
| 9.3.3 | 验证 Buff 移除 | 时间到期或手动移除 |

---

## 6. 测试方法

### 6.1 编辑器菜单测试

```
Tools/CritFramework/Test Combat/
├── 释放技能1-4          # 测试技能释放
├── 直接伤害测试         # 测试 Fight:ApplyDirectlyDamage
├── 添加攻击力Buff       # 测试 Buff 添加
├── 移除所有Buff         # 测试 Buff 移除
├── 打印战斗状态         # 打印当前状态
└── 打印英雄Buff列表     # 打印 Buff 列表
```

### 6.2 测试流程

```
1. Play Mode 运行游戏
2. 选择英雄 → 选择副本 → 开始副本
3. 使用菜单项测试各功能
4. 观察 Console 日志输出
```

---

## 7. 验收标准

- [x] 技能释放成功（SkillAPI.DoSkill 返回非 nil）
- [x] 伤害结算正确（HP 减少）
- [x] 单位死亡处理（从 Units 移除，销毁实体）
- [x] Buff 添加成功（GetEntityBuffs 返回正确数量）
- [x] Buff 移除成功（RemoveEntityBuff 生效）

---

## 8. 已完成工作

| 任务 | 状态 | 说明 |
|------|------|------|
| BattleInit.lua 创建 | ✅ | 战斗系统入口 |
| 技能释放流程 | ✅ | DoSkillData 正确构建 |
| 伤害结算 | ✅ | Fight:ApplyDirectlyDamage 工作正常 |
| HP 属性初始化 | ✅ | CONST_HP_MAX_ATTR_ID 从配置读取 |
| 单位死亡 | ✅ | Kill() → 移除 → 销毁实体 |
| Buff 添加/移除 | ✅ | SkillAPI.AddEntityBuff/RemoveEntityBuff |

---

## 9. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建文档 |
| v0.2 | 2024-12-31 | 标记已完成的工作 |
