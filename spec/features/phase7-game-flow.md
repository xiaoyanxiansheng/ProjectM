# Phase 7: 完整游戏流程移植设计文档

> 本文档描述完整游戏流程的移植方案，包括玩家系统、副本系统、流程控制等。

---

## 1. 目标

### 1.1 完整游戏流程

```
┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐
│ 游戏启动 │───▶│ 进入大厅 │───▶│ 选择英雄 │───▶│ 选择副本 │
└─────────┘    └─────────┘    └─────────┘    └─────────┘
                                                   │
      ┌────────────────────────────────────────────┘
      ▼
┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐
│ 进入副本 │───▶│  战斗   │───▶│  结算   │───▶│ 返回大厅 │
└─────────┘    └─────────┘    └─────────┘    └─────────┘
```

### 1.2 实施原则

| 原则 | 说明 |
|------|------|
| 流程完整移植 | Lua 流程代码完整移植，保持原有逻辑 |
| 数据完整移植 | 配置表、存档数据完整支持 |
| 界面简化 | UI 只做最简调用接口，不做复杂界面 |
| 单机适配 | 网络相关 API 使用 Stub |

---

## 2. 模块清单

### 2.1 需要移植的 Lua 模块

| 优先级 | 模块 | 源文件 | 行数 | 说明 |
|--------|------|--------|------|------|
| P0 | Flow | flow.lua | ~450 | 流程控制核心 |
| P0 | CPlayer | player.lua | ~1500 | 玩家类 |
| P0 | CHero | hero.lua | ~500 | 英雄类（继承CUnitBase） |
| P0 | CDungeonBase | dungeon_base.lua | ~1000 | 副本基类 |
| P0 | CDungeonRoom | dungeon_room.lua | ~800 | 房间类 |
| P1 | Lobby | lobby.lua | ~300 | 大厅管理 |
| P1 | CBag | bag.lua | ~400 | 背包系统 |
| P1 | CItem | item.lua | ~300 | 道具系统 |
| P1 | Reward | reward.lua | ~200 | 奖励结算 |
| P2 | SaveData | save_data.lua | ~300 | 存档管理 |
| P2 | DataPlayer | data_player.lua | ~500 | 玩家数据 |
| P2 | DataBase | data_base.lua | ~200 | 数据基类 |

### 2.2 需要补充的 C# 模块

| 模块 | 说明 |
|------|------|
| GameFlowBridge | 流程控制桥接 |
| PlayerBridge | 玩家系统桥接 |
| SaveService | 本地存档服务 |
| SimpleUIService | 简化UI服务（控制台/按钮触发） |
| SpawnService | 单位生成服务 |

### 2.3 需要的配置表

| 配置表 | 说明 |
|--------|------|
| hero | 英雄表 |
| unit | 单位/怪物表 |
| dungeon | 副本表 |
| dungeon_room | 副本房间表 |
| item | 道具表 |
| reward | 奖励表 |

---

## 3. 详细设计

### 3.1 Flow 流程控制

```lua
-- 游戏状态枚举
GameState = {
    INIT = 0,           -- 初始化
    LOBBY = 1,          -- 大厅
    SELECT_HERO = 2,    -- 选英雄
    SELECT_DUNGEON = 3, -- 选副本
    IN_DUNGEON = 4,     -- 副本中
    SETTLEMENT = 5,     -- 结算
}

-- Flow 核心方法
Flow:Init()                    -- 初始化
Flow:EnterLobby()              -- 进入大厅
Flow:SelectHero(heroId)        -- 选择英雄
Flow:SelectDungeon(dungeonId)  -- 选择副本
Flow:StartDungeon()            -- 开始副本
Flow:EndDungeon(result)        -- 结束副本
Flow:ReturnToLobby()           -- 返回大厅
Flow:GetState()                -- 获取当前状态
```

### 3.2 CPlayer 玩家类（简化版）

```lua
-- 玩家核心数据
CPlayer = {
    __index = 0,           -- 玩家索引
    __Uid = 0,             -- 玩家唯一ID
    __Name = "",           -- 玩家名称
    __Hero = nil,          -- 当前英雄
    __Bag = nil,           -- 背包
    __Money = {},          -- 货币
    __SaveData = {},       -- 存档数据
}

-- 核心方法
CPlayer:GetHero()              -- 获取英雄
CPlayer:SetHero(hero)          -- 设置英雄
CPlayer:GetBag()               -- 获取背包
CPlayer:AddMoney(type, amount) -- 添加货币
CPlayer:GetMoney(type)         -- 获取货币
CPlayer:Save()                 -- 保存数据
CPlayer:Load()                 -- 加载数据
```

### 3.3 CHero 英雄类

```lua
-- 继承 CUnitBase
CHero = class({}, nil, CUnitBase)

-- 英雄特有属性
CHero.__HeroId = 0             -- 英雄配置ID
CHero.__Player = nil           -- 所属玩家
CHero.__SkillShortcut = {}     -- 技能快捷栏
CHero.__SaveAttr = nil         -- 存档属性

-- 核心方法
CHero:GetHeroId()              -- 获取英雄ID
CHero:GetPlayer()              -- 获取所属玩家
CHero:LearnSkill(skillId)      -- 学习技能
CHero:GetSkillList()           -- 获取技能列表
```

### 3.4 CDungeonBase 副本基类

```lua
-- 副本状态
DungeonState = {
    INIT = 0,       -- 初始化
    RUNNING = 1,    -- 进行中
    PAUSED = 2,     -- 暂停
    VICTORY = 3,    -- 胜利
    FAILED = 4,     -- 失败
}

-- 副本核心数据
CDungeonBase = {
    __Name = "",           -- 副本名称
    __Difficulty = 1,      -- 难度
    __Time = 0,            -- 计时
    __State = 0,           -- 状态
    __Rooms = {},          -- 房间列表
    __CurrentRoom = nil,   -- 当前房间
    __Participants = {},   -- 参与者
}

-- 核心方法
CDungeonBase:Start()           -- 开始副本
CDungeonBase:Tick(dt)          -- 每帧更新
CDungeonBase:EnterRoom(roomId) -- 进入房间
CDungeonBase:OnRoomClear()     -- 房间通关
CDungeonBase:Victory()         -- 副本胜利
CDungeonBase:Fail()            -- 副本失败
CDungeonBase:End()             -- 结束副本
```

### 3.5 CDungeonRoom 房间类

```lua
-- 房间状态
RoomState = {
    INIT = 0,       -- 初始化
    ACTIVE = 1,     -- 激活
    CLEARED = 2,    -- 已通关
}

-- 房间核心数据
CDungeonRoom = {
    __RoomId = 0,          -- 房间ID
    __State = 0,           -- 状态
    __Monsters = {},       -- 怪物列表
    __Boss = nil,          -- Boss
}

-- 核心方法
CDungeonRoom:Activate()        -- 激活房间
CDungeonRoom:SpawnMonsters()   -- 生成怪物
CDungeonRoom:OnMonsterDeath()  -- 怪物死亡
CDungeonRoom:CheckClear()      -- 检查通关
CDungeonRoom:Clear()           -- 房间通关
```

### 3.6 C# SaveService

```csharp
namespace CritFramework
{
    public class SaveService : MonoBehaviour
    {
        public static SaveService Instance { get; private set; }
        
        private string SavePath => Application.persistentDataPath + "/save.json";
        
        // 保存数据
        public void Save(string key, string jsonData)
        {
            // 写入本地文件
        }
        
        // 加载数据
        public string Load(string key)
        {
            // 读取本地文件
        }
        
        // 删除存档
        public void Delete(string key)
        {
            // 删除文件
        }
    }
}
```

### 3.7 C# SimpleUIService（简化UI）

```csharp
namespace CritFramework
{
    /// <summary>
    /// 简化UI服务 - 通过控制台命令/按钮触发流程
    /// </summary>
    public class SimpleUIService : MonoBehaviour
    {
        // 显示消息（Debug.Log）
        public void ShowMessage(string msg) 
        {
            Debug.Log($"[UI] {msg}");
        }
        
        // 显示选择（返回索引）
        public void ShowSelection(string title, string[] options, Action<int> callback)
        {
            // 简化：直接选择第一个
            Debug.Log($"[UI] {title}: 自动选择 {options[0]}");
            callback?.Invoke(0);
        }
        
        // 显示确认框
        public void ShowConfirm(string msg, Action onConfirm)
        {
            Debug.Log($"[UI] 确认: {msg}");
            onConfirm?.Invoke();
        }
    }
}
```

---

## 4. 实施步骤

### Phase 7.1: 流程框架（2-3天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 移植 flow.lua（简化版） | 状态切换正常 |
| 2 | 创建 GameFlowBridge.cs | Lua 调用成功 |
| 3 | 创建 GameState 枚举和事件 | 状态变化有日志 |
| 4 | 测试：Init → Lobby | 流程正确 |

### Phase 7.2: 玩家系统（2-3天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 移植 player.lua（简化版） | 编译通过 |
| 2 | 移植 lobby.lua（简化版） | 编译通过 |
| 3 | 创建 PlayerBridge.cs | Lua 调用成功 |
| 4 | 测试：创建玩家 | 玩家数据正确 |

### Phase 7.3: 英雄系统（2-3天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 移植 hero.lua | 编译通过 |
| 2 | 关联 CUnitBase | 继承正确 |
| 3 | 英雄配置表 | 配置加载成功 |
| 4 | 测试：创建英雄 | 英雄属性正确 |

### Phase 7.4: 副本系统（3-4天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 移植 dungeon_base.lua | 编译通过 |
| 2 | 移植 dungeon_room.lua | 编译通过 |
| 3 | 副本/房间配置表 | 配置加载成功 |
| 4 | 怪物生成逻辑 | 怪物正常生成 |
| 5 | 测试：进入副本 | 流程正确 |

### Phase 7.5: 战斗流程（2-3天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 英雄技能释放 | 技能可用 |
| 2 | 怪物AI（简化） | 怪物会攻击 |
| 3 | 伤害结算 | 血量减少 |
| 4 | 死亡处理 | 死亡事件触发 |

### Phase 7.6: 结算系统（1-2天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 移植 reward.lua | 编译通过 |
| 2 | 胜利/失败判定 | 判定正确 |
| 3 | 奖励发放 | 奖励到账 |
| 4 | 返回大厅 | 流程闭环 |

### Phase 7.7: 存档系统（2天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 SaveService.cs | 读写正常 |
| 2 | 移植 save_data.lua | 编译通过 |
| 3 | 玩家数据持久化 | 重启后数据在 |
| 4 | 英雄数据持久化 | 重启后英雄在 |

### Phase 7.8: 完整流程测试（2天）

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 完整流程串联 | 流程跑通 |
| 2 | 多次循环测试 | 无内存泄漏 |
| 3 | 边界情况测试 | 无崩溃 |

---

## 5. 配置表结构

### 5.1 hero 英雄表

```lua
-- confdata/hero.lua
return {
    [1001] = {
        id = 1001,
        name = "测试英雄",
        unit_id = 2001,         -- 对应单位ID
        init_skills = {101, 102, 103},  -- 初始技能
        init_attrs = {
            hp = 1000,
            attack = 100,
            defense = 50,
        }
    },
}
```

### 5.2 dungeon 副本表

```lua
-- confdata/dungeon.lua
return {
    [1] = {
        id = 1,
        name = "测试副本",
        rooms = {1, 2, 3},      -- 房间列表
        difficulty = 1,
    },
}
```

### 5.3 dungeon_room 房间表

```lua
-- confdata/dungeon_room.lua
return {
    [1] = {
        id = 1,
        name = "第一关",
        monsters = {
            {unit_id = 3001, count = 3},  -- 小怪
        },
        boss = nil,
    },
    [2] = {
        id = 2,
        name = "第二关",
        monsters = {
            {unit_id = 3001, count = 5},
        },
        boss = nil,
    },
    [3] = {
        id = 3,
        name = "Boss关",
        monsters = {},
        boss = {unit_id = 3002},  -- Boss
    },
}
```

---

## 6. 简化UI方案

### 6.1 控制台命令触发

```csharp
// 通过 Debug Console 或按键触发
public class GameFlowCommands : MonoBehaviour
{
    void Update()
    {
        // F1: 进入大厅
        if (Input.GetKeyDown(KeyCode.F1)) 
            LuaManager.Instance.CallGlobal("Flow:EnterLobby");
        
        // F2: 选择英雄1001
        if (Input.GetKeyDown(KeyCode.F2)) 
            LuaManager.Instance.CallGlobal("Flow:SelectHero", 1001);
        
        // F3: 选择副本1
        if (Input.GetKeyDown(KeyCode.F3)) 
            LuaManager.Instance.CallGlobal("Flow:SelectDungeon", 1);
        
        // F4: 开始副本
        if (Input.GetKeyDown(KeyCode.F4)) 
            LuaManager.Instance.CallGlobal("Flow:StartDungeon");
        
        // 1-4: 释放技能
        if (Input.GetKeyDown(KeyCode.Alpha1)) 
            LuaManager.Instance.CallGlobal("Flow:CastSkill", 1);
    }
}
```

### 6.2 自动流程测试

```lua
-- test/test_full_flow.lua
-- 自动化完整流程测试

function AutoTestFullFlow()
    print("========== 开始完整流程测试 ==========")
    
    -- 1. 进入大厅
    Flow:EnterLobby()
    print("[1] 进入大厅")
    
    -- 2. 选择英雄
    Flow:SelectHero(1001)
    print("[2] 选择英雄 1001")
    
    -- 3. 选择副本
    Flow:SelectDungeon(1)
    print("[3] 选择副本 1")
    
    -- 4. 开始副本
    Flow:StartDungeon()
    print("[4] 开始副本")
    
    -- 5. 模拟战斗（通过时间模拟）
    -- ...
    
    print("========== 流程测试完成 ==========")
end
```

---

## 7. 目录结构

```
Assets/LuaScripts/
├── critcore/
│   ├── class/
│   │   ├── player.lua          # 玩家类
│   │   ├── hero.lua            # 英雄类
│   │   ├── dungeon_base.lua    # 副本基类
│   │   ├── dungeon_room.lua    # 房间类
│   │   ├── bag.lua             # 背包类
│   │   └── item.lua            # 道具类
│   │
│   └── static/
│       ├── flow.lua            # 流程控制
│       ├── lobby.lua           # 大厅管理
│       ├── reward.lua          # 奖励系统
│       └── save_data.lua       # 存档管理
│
├── confdata/
│   ├── hero.lua                # 英雄配置
│   ├── dungeon.lua             # 副本配置
│   ├── dungeon_room.lua        # 房间配置
│   └── unit.lua                # 单位配置（补充怪物）
│
└── test/
    └── test_full_flow.lua      # 完整流程测试

Assets/Scripts/
├── Services/
│   ├── SaveService.cs          # 存档服务
│   ├── SimpleUIService.cs      # 简化UI
│   └── SpawnService.cs         # 单位生成
│
└── Bridge/
    ├── GameFlowBridge.cs       # 流程桥接
    └── PlayerBridge.cs         # 玩家桥接
```

---

## 8. 验收标准

### 8.1 流程验收

- [ ] 游戏启动 → 进入大厅
- [ ] 大厅 → 选择英雄
- [ ] 选择英雄 → 选择副本
- [ ] 选择副本 → 进入副本
- [ ] 副本中 → 战斗（释放技能）
- [ ] 战斗 → 打死怪物
- [ ] 怪物全清 → 进入下一房间
- [ ] Boss 死亡 → 副本胜利
- [ ] 结算 → 返回大厅
- [ ] 可重复进入副本

### 8.2 数据验收

- [ ] 玩家数据正确保存
- [ ] 英雄数据正确保存
- [ ] 重启后数据恢复正常

### 8.3 稳定性验收

- [ ] 连续运行 10 次完整流程无报错
- [ ] 无内存泄漏
- [ ] 无 Lua 运行时错误

---

## 9. 预估时间

| 阶段 | 内容 | 预估 |
|------|------|------|
| 7.1 | 流程框架 | 2-3天 |
| 7.2 | 玩家系统 | 2-3天 |
| 7.3 | 英雄系统 | 2-3天 |
| 7.4 | 副本系统 | 3-4天 |
| 7.5 | 战斗流程 | 2-3天 |
| 7.6 | 结算系统 | 1-2天 |
| 7.7 | 存档系统 | 2天 |
| 7.8 | 完整测试 | 2天 |
| **总计** | | **16-22天** |

---

## 10. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建设计文档 |
