# Phase 8: 副本系统集成

> 本文档描述副本系统的完整实现方案，包括副本流程、房间管理、怪物生成。

---

## 1. 目标

实现完整的副本系统，包括：
- 副本创建与初始化
- 房间管理与切换
- 怪物生成与管理
- 副本通关逻辑

---

## 2. 依赖

| 依赖项 | 状态 | 说明 |
|--------|------|------|
| Phase 7 游戏流程 | ✅ 已完成 | Flow 状态机、UI 管理 |
| ConfData | ✅ 已完成 | 配置数据读取 |
| Units | ✅ 已完成 | 单位管理 |
| CUnitBase | ✅ 已完成 | 单位基类 |

---

## 3. 核心模块

### 3.1 Dungeon.lua (副本管理器)

```lua
-- 位置: critcore/static/dungeon.lua
Dungeon = {}

-- 副本状态
DungeonState = {
    NONE = 0,        -- 未初始化
    LOADING = 1,     -- 加载中
    RUNNING = 2,     -- 进行中
    CLEARED = 3,     -- 已通关
    FAILED = 4,      -- 失败
}

-- 核心方法
Dungeon:Init(dungeonId, diffLevel)  -- 初始化副本
Dungeon:Start()                      -- 开始副本
Dungeon:EnterRoom(roomIndex)         -- 进入房间
Dungeon:OnRoomCleared()              -- 房间通关
Dungeon:OnDungeonCleared()           -- 副本通关
Dungeon:Cleanup()                    -- 清理副本
```

### 3.2 DungeonRoom.lua (房间管理)

```lua
-- 位置: critcore/class/dungeon_room.lua
DungeonRoom = Classnew("DungeonRoom")

-- 房间状态
RoomState = {
    WAITING = 0,     -- 等待进入
    ACTIVE = 1,      -- 激活中（战斗）
    CLEARED = 2,     -- 已清理
}

-- 核心方法
DungeonRoom:Init(roomConfig)         -- 初始化房间
DungeonRoom:Enter()                  -- 进入房间
DungeonRoom:SpawnMonsters()          -- 生成怪物
DungeonRoom:OnMonsterDeath(insId)    -- 怪物死亡回调
DungeonRoom:CheckClear()             -- 检查是否通关
DungeonRoom:Clear()                  -- 房间通关
```

---

## 4. 数据来源

### 4.1 配置表

| 配置表 | 用途 |
|--------|------|
| Dungeon.lua | 副本列表、难度配置 |
| DungeonRoom.lua | 房间配置、刷怪脚本 |
| Unit.lua | 怪物单位数据 |

### 4.2 读取示例

```lua
-- 获取副本配置
local dungeonConfig = ConfData:GetLine("Dungeon", "main_rogue")

-- 获取房间配置
local roomConfig = ConfData:GetLine("DungeonRoom", roomId)

-- 获取房间刷怪脚本
local scripts = roomConfig.Scripts
for _, script in pairs(scripts) do
    if script.TypeName == "spawn_npc" then
        local unitIds = script.Params[1]  -- 怪物 UnitId 列表
    end
end
```

---

## 5. 流程设计

### 5.1 副本流程

```
选择副本 → 创建副本实例 → 加载房间配置 → 进入第一个房间
                                              ↓
返回大厅 ← 结算界面 ← 副本通关 ← 所有房间通关 ← 当前房间通关
                                              ↓
                                        进入下一个房间
```

### 5.2 房间流程

```
进入房间 → 生成怪物 → 战斗中 → 所有怪物死亡 → 房间通关
                        ↓
                   玩家死亡 → 副本失败
```

---

## 6. 实现步骤

| 步骤 | 内容 | 验收标准 |
|------|------|----------|
| 8.1 | 创建 Dungeon.lua | 能初始化副本，读取配置 |
| 8.2 | 创建 DungeonRoom.lua | 能管理房间状态 |
| 8.3 | 实现怪物生成 | 根据配置生成怪物 |
| 8.4 | 实现房间通关检测 | 怪物全灭后触发通关 |
| 8.5 | 实现副本通关 | 所有房间通关后结束副本 |
| 8.6 | 集成到 Flow | 与游戏流程联动 |

---

## 7. 验收标准

- [ ] 能从配置表读取副本和房间数据
- [ ] 进入副本后能正确生成怪物
- [ ] 杀死所有怪物后房间通关
- [ ] 所有房间通关后副本通关
- [ ] 通关后能返回大厅

---

## 8. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建文档 |
