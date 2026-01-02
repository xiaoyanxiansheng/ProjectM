# Phase 10: 战斗 UI 表现

> 本文档描述战斗相关的 UI 表现，包括血条、伤害数字、技能 CD。

---

## 1. 目标

实现战斗相关的 UI 表现：
- 英雄血条 UI
- 怪物头顶血条
- 伤害数字飘字
- 技能 CD 显示

---

## 2. 依赖

| 依赖项 | 状态 | 说明 |
|--------|------|------|
| Phase 9 战斗系统 | ✅ 已完成 | 伤害结算、HP 变化 |
| Phase 7 UI 系统 | ✅ 已完成 | UIManager、BattleHUD |
| EntityService | ✅ 已完成 | 实体 GameObject 管理 |

---

## 3. UI 模块设计

### 3.1 英雄血条 (HeroHealthBar)

```
┌─────────────────────────────────────┐
│  HP: ████████████░░░░  800/1000     │
│  MP: ██████████████████  100/100    │
└─────────────────────────────────────┘
```

**实现方式**: Screen Space UI (Canvas)

| 组件 | 说明 |
|------|------|
| HeroHealthBar.cs | C# 控制脚本 |
| HP Slider | 血量进度条 |
| HP Text | 血量数值文本 |
| MP Slider | 蓝量进度条（可选） |

**数据来源**:
```lua
-- Lua 侧提供数据
local hp = hero:GetHP()
local maxHp = hero:GetAttr_MaxHP()
```

### 3.2 怪物血条 (MonsterHealthBar)

```
      [怪物名称]
    ████████░░░░
```

**实现方式**: World Space UI (跟随实体)

| 组件 | 说明 |
|------|------|
| MonsterHealthBar.cs | C# 控制脚本 |
| HealthBar Prefab | 血条预制体 |
| Canvas (World Space) | 世界空间画布 |
| Billboard | 始终面向摄像机 |

**挂载方式**:
- 在 EntityService 创建实体时，同时创建血条 UI
- 血条跟随实体位置 + 偏移

### 3.3 伤害数字 (DamageNumber)

```
        -50
          ↗
    怪物位置
```

**实现方式**: 对象池 + 飘字动画

| 组件 | 说明 |
|------|------|
| DamageNumberManager.cs | 管理器 |
| DamageNumber.cs | 单个数字控制 |
| 对象池 | 复用数字 GameObject |
| DOTween/动画 | 飘字动画效果 |

**触发时机**:
```lua
-- Lua 侧在伤害结算后发送消息
SendMessage(MsgConst.SHOW_DAMAGE_NUMBER, {
    position = target:GetPosition(),
    damage = damage,
    isCrit = isCrit,
})
```

### 3.4 技能 CD 显示 (SkillCooldown)

```
┌──────┬──────┬──────┬──────┐
│ [1]  │ [2]  │ [3]  │ [4]  │
│ 技能 │ 技能 │ 技能 │ 技能 │
│      │ 3.5s │      │ CD中 │
└──────┴──────┴──────┴──────┘
```

**实现方式**: BattleHUD 子组件

| 组件 | 说明 |
|------|------|
| SkillSlotUI.cs | 单个技能槽 |
| CD 遮罩 | 扇形/渐变遮罩 |
| CD 文本 | 剩余秒数 |
| 快捷键提示 | 1/2/3/4 |

**数据来源**:
```lua
-- 获取技能 CD
local cdRemain = SkillAPI.GetSkillCdTime(hero:GetInsid(), skillId)
local cdTotal = SkillAPI.GetSkillTotalCd(hero:GetInsid(), skillId)
```

---

## 4. C# 与 Lua 通信

### 4.1 Lua → C# (数据推送)

```csharp
// C# 注册回调
public class BattleUIBridge
{
    // 血量变化
    public static Action<int, float, float> OnHealthChanged;
    
    // 显示伤害数字
    public static Action<Vector3, int, bool> OnShowDamageNumber;
    
    // 技能 CD 更新
    public static Action<int, int, float, float> OnSkillCdUpdate;
}
```

```lua
-- Lua 调用
CS.CritFramework.BattleUIBridge.OnHealthChanged(insId, hp, maxHp)
CS.CritFramework.BattleUIBridge.OnShowDamageNumber(position, damage, isCrit)
```

### 4.2 C# → Lua (请求数据)

```csharp
// C# 调用 Lua 获取数据
public float GetHeroHP()
{
    return LuaManager.CallFunction<float>("GetHeroHP");
}
```

---

## 5. 实现步骤

| 步骤 | 内容 | 产出 |
|------|------|------|
| 10.1 | 英雄血条 UI | HeroHealthBar.cs + UI Prefab |
| 10.2 | 怪物头顶血条 | MonsterHealthBar.cs + Prefab |
| 10.3 | 伤害数字飘字 | DamageNumberManager.cs |
| 10.4 | 技能 CD 显示 | SkillSlotUI.cs |
| 10.5 | Lua 数据桥接 | BattleUIBridge.cs |
| 10.6 | 集成测试 | 完整战斗 UI 验证 |

---

## 6. 验收标准

- [ ] 英雄血条实时显示 HP/MaxHP
- [ ] 受伤时血条正确减少
- [ ] 怪物头顶显示血条
- [ ] 怪物受伤时显示伤害数字
- [ ] 伤害数字有飘字动画
- [ ] 技能按钮显示 CD 倒计时
- [ ] CD 中的技能有视觉遮罩

---

## 7. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建文档 |
