# Phase 7: 完整游戏流程实现（V2）

> 本文档描述完整可视化游戏流程的实现方案，每一步都需要用户验证。
> **重要：所有数据必须从现有配置表读取，不使用硬编码测试数据。**

---

## 0. 配置表集成

### 0.1 已有配置表清单

| 配置表 | 文件 | 用途 |
|--------|------|------|
| Hero | `confdata/Hero.lua` | 英雄列表、属性、技能 |
| Unit | `confdata/Unit.lua` | 单位（英雄/怪物）基础数据 |
| Dungeon | `confdata/Dungeon.lua` | 副本列表、难度 |
| DungeonRoom | `confdata/DungeonRoom.lua` | 房间配置、刷怪脚本 |
| Skill | `confdata/Skill.lua` | 技能数据、CD、效果 |
| lang/cn | `confdata/lang/cn.lua` | 中文文本 |
| Item | `confdata/Item.lua` | 道具数据 |
| Award | `confdata/Award.lua` | 奖励配置 |

### 0.2 关键配置表结构

#### Hero.lua 英雄表
```lua
[12101] = {
    ["ID"] = 12101,
    ["UnitId"] = 101,        -- 关联 Unit 表
    ["Quality"] = 2,         -- 品质
    ["InitStar"] = 1,        -- 初始星级
    ["StarAttrParams"] = {}, -- 升星属性
}
```

#### Dungeon.lua 副本表
```lua
["main_rogue"] = {
    ["DungeonName"] = "main_rogue",
    ["Title"] = "L0636gs",   -- 语言key -> "常规副本"
    ["Diffs"] = {
        [1] = { ["Level"] = 1, ["Name"] = "Ltf3yn9g" },
        [2] = { ["Level"] = 2, ["Name"] = "Lk80mm0e" },
        ...
    }
}
```

#### Unit.lua 单位表
```lua
[101] = {
    ["ID"] = 101,
    ["KvName"] = "npc_hero_101",  -- 模型
    ["Camp"] = 1,                  -- 阵营
    ["MainAttr"] = 1,              -- 主属性
    ["BaseAttrs"] = {{54,200}},    -- 基础属性
    ["SkillLibs"] = {{101,102}},   -- 技能库
}
```

### 0.3 配置数据读取方式

通过已有的 `ConfData` 模块读取（位于 `critcore/static/conf_data.lua`）：

```lua
-- ConfData API：
-- GetTable(table_name) - 获取整张表
-- GetLine(table_name, key) - 获取一行
-- Get(table_name, key, header, default) - 获取一个字段
-- GetFiltrate(table_name, filter_callback) - 带过滤获取

-- 读取英雄表
local heroTable = ConfData:GetTable("Hero")          -- 整张表
local hero12101 = ConfData:GetLine("Hero", 12101)    -- 一行
local unitId = ConfData:Get("Hero", 12101, "UnitId", 0) -- 一个字段

-- 读取副本表
local dungeonTable = ConfData:GetTable("Dungeon")
local mainRogue = dungeonTable["main_rogue"]

-- 读取语言（注意：lang/cn 需要用斜杠路径）
local langCn = ConfData:GetTable("lang/cn")
local text = langCn["L0636gs"]  -- "常规副本"

-- 带过滤查询
local highQualityHeroes = ConfData:GetFiltrate("Hero", function(line)
    return line.Quality and line.Quality >= 3
end)
```

---

## 1. 目标

实现一个可运行、可视化的完整游戏流程：

```
[1] 启动加载 → [2] 进入大厅 → [3] 选择角色 → [4] 选择副本 
                                                    ↓
    [9] 返回大厅 ← [8] 结算界面 ← [7] 战斗流程 ← [5/6] 进入副本
```

### 实施原则

| 原则 | 说明 |
|------|------|
| 逐步验证 | 每一步用户确认后才进行下一步 |
| 可视化 | 每个流程都有对应的 UI（简化版） |
| 完整流程 | 必须能完整跑通整个循环 |
| 逻辑正确 | Lua 逻辑层与 Unity 表现层协调工作 |

---

## 2. 实施步骤概览

| 步骤 | 内容 | 产出 |
|------|------|------|
| **Step 1** | 创建真实场景 + 必要组件 | 场景文件、基础 GameObject |
| **Step 2** | 加载流程（Loading） | LoadingUI、加载条、进度显示 |
| **Step 3** | 大厅流程（Lobby） | LobbyUI、进入按钮、玩家信息 |
| **Step 4** | 选角流程（Select Hero） | SelectHeroUI、角色列表、确认按钮 |
| **Step 5** | 选副本流程（Select Dungeon） | SelectDungeonUI、副本列表、开始按钮 |
| **Step 6** | 进入副本流程（Enter Dungeon） | DungeonUI、房间显示、怪物列表 |
| **Step 7** | 战斗流程（Battle） | BattleHUD、技能按钮、血条、伤害数字 |
| **Step 8** | 结算流程（Settlement） | SettlementUI、奖励显示、返回按钮 |
| **Step 9** | 返回大厅 | 流程闭环验证 |

---

## 3. Step 1: 创建真实场景

### 3.1 场景结构

```
SampleScene (或新建 GameScene)
├── [Managers]              # 管理器容器
│   ├── GameEntry           # 游戏入口
│   ├── Services            # 服务组件
│   └── UIManager           # UI 管理
│
├── [Cameras]               # 相机
│   ├── MainCamera          # 主相机
│   └── UICamera            # UI 相机（可选）
│
├── [Lights]                # 灯光
│   └── Directional Light
│
├── [World]                 # 游戏世界
│   ├── Ground              # 地面
│   └── SpawnPoints         # 生成点
│
└── [UI]                    # UI Canvas
    ├── Canvas (Screen Space)
    │   ├── LoadingPanel    # 加载界面
    │   ├── LobbyPanel      # 大厅界面
    │   ├── SelectHeroPanel # 选角界面
    │   ├── SelectDungeonPanel # 选副本界面
    │   ├── DungeonPanel    # 副本界面
    │   ├── BattleHUD       # 战斗 HUD
    │   └── SettlementPanel # 结算界面
    └── EventSystem
```

### 3.2 必要组件

| 组件 | 说明 |
|------|------|
| GameEntry | 游戏入口，初始化 Lua |
| LuaManager | Lua 虚拟机 |
| SaveService | 存档服务 |
| SimpleUIService | UI 服务 |
| UIManager | UI 面板管理（新增） |
| GameFlowController | 流程控制（新增，接管 F 键） |

### 3.3 验收标准

- [ ] 场景结构正确
- [ ] 所有管理器组件存在
- [ ] 运行无报错
- [ ] 控制台显示 "游戏启动..."

---

## 4. Step 2: 加载流程

### 4.1 LoadingPanel 设计

```
┌────────────────────────────────────────────────────┐
│                                                    │
│                    游戏名称                         │
│                                                    │
│            ████████████░░░░░░░░  60%               │
│                   加载中...                         │
│                                                    │
└────────────────────────────────────────────────────┘
```

### 4.2 实现内容

| 内容 | 说明 |
|------|------|
| LoadingPanel.prefab | UI Prefab |
| LoadingUI.cs | 控制脚本 |
| 进度条 | Slider 组件 |
| 加载文字 | Text 组件 |
| 模拟加载 | 2-3 秒加载动画 |

### 4.3 流程逻辑

```
游戏启动 → 显示 LoadingPanel → 模拟加载进度 → 加载完成 → 隐藏 Loading → 进入大厅
```

### 4.4 验收标准

- [ ] 启动后显示加载界面
- [ ] 进度条从 0 到 100%
- [ ] 加载完成后自动进入大厅

---

## 5. Step 3: 大厅流程

### 5.1 LobbyPanel 设计

```
┌────────────────────────────────────────────────────┐
│  玩家名称: TestPlayer          货币: 1000          │
├────────────────────────────────────────────────────┤
│                                                    │
│                     大  厅                          │
│                                                    │
│              ┌─────────────────┐                   │
│              │    开始游戏      │                   │
│              └─────────────────┘                   │
│                                                    │
│              ┌─────────────────┐                   │
│              │    设置         │                   │
│              └─────────────────┘                   │
│                                                    │
└────────────────────────────────────────────────────┘
```

### 5.2 实现内容

| 内容 | 说明 |
|------|------|
| LobbyPanel.prefab | UI Prefab |
| LobbyUI.cs | 控制脚本 |
| 玩家信息 | 名称、货币显示 |
| 开始游戏按钮 | 进入选角 |
| 设置按钮 | 预留 |

### 5.3 验收标准

- [ ] 显示大厅界面
- [ ] 显示玩家信息
- [ ] 点击"开始游戏"进入选角

---

## 6. Step 4: 选角流程

### 6.1 SelectHeroPanel 设计

```
┌────────────────────────────────────────────────────┐
│                   选择角色                          │
├────────────────────────────────────────────────────┤
│                                                    │
│    ┌──────┐    ┌──────┐    ┌──────┐               │
│    │ 英雄1 │    │ 英雄2 │    │ 英雄3 │   ...       │
│    │  ☆   │    │  ☆   │    │  ☆   │               │
│    └──────┘    └──────┘    └──────┘               │
│                                                    │
│   已选择: 英雄1                                     │
│                                                    │
│              ┌─────────────────┐                   │
│              │     确认选择     │                   │
│              └─────────────────┘                   │
│                                                    │
│   [返回]                                           │
└────────────────────────────────────────────────────┘
```

### 6.2 实现内容

| 内容 | 说明 |
|------|------|
| SelectHeroPanel.prefab | UI Prefab |
| SelectHeroUI.cs | 控制脚本 |
| 英雄列表 | **从 Hero.lua 配置表读取** |
| 已选显示 | 当前选中的英雄 |
| 确认按钮 | 进入选副本 |
| 返回按钮 | 返回大厅 |

### 6.2.1 数据来源

```lua
-- 从配置表获取英雄列表
local function GetHeroList()
    local heroes = {}
    local heroTable = ConfData:GetTable("Hero")
    local unitTable = ConfData:GetTable("Unit")
    local langCn = ConfData:GetTable("lang/cn")
    
    for heroId, heroData in pairs(heroTable) do
        if type(heroId) == "number" then  -- 跳过非数字键
            local unitId = heroData.UnitId
            local unitData = unitTable[unitId]
            if unitData then
                -- Unit 表的名称字段可能是语言 key
                local nameKey = unitData.Name or unitData.KvName
                local displayName = langCn[nameKey] or nameKey or ("英雄" .. heroId)
                
                table.insert(heroes, {
                    id = heroId,
                    unitId = unitId,
                    name = displayName,
                    quality = heroData.Quality or 1,
                    star = heroData.InitStar or 1,
                })
            end
        end
    end
    
    -- 按品质排序
    table.sort(heroes, function(a, b) return a.quality > b.quality end)
    return heroes
end
```

### 6.3 验收标准

- [ ] 显示英雄列表
- [ ] 可以选择英雄
- [ ] 选中状态有视觉反馈
- [ ] 点击确认进入选副本

---

## 7. Step 5: 选副本流程

### 7.1 SelectDungeonPanel 设计

```
┌────────────────────────────────────────────────────┐
│                   选择副本                          │
├────────────────────────────────────────────────────┤
│                                                    │
│    ┌──────────────────────────────┐               │
│    │ 副本1: 新手教程               │               │
│    │ 难度: ★☆☆  推荐等级: 1        │               │
│    └──────────────────────────────┘               │
│                                                    │
│    ┌──────────────────────────────┐               │
│    │ 副本2: 暗黑森林               │               │
│    │ 难度: ★★☆  推荐等级: 5        │               │
│    └──────────────────────────────┘               │
│                                                    │
│              ┌─────────────────┐                   │
│              │     进入副本     │                   │
│              └─────────────────┘                   │
│                                                    │
│   [返回]                                           │
└────────────────────────────────────────────────────┘
```

### 7.2 数据来源

```lua
-- 从配置表获取副本列表
local function GetDungeonList()
    local dungeons = {}
    local dungeonTable = ConfData:GetTable("Dungeon")
    local langCn = ConfData:GetTable("lang/cn")
    
    for dungeonName, dungeonData in pairs(dungeonTable) do
        if type(dungeonName) == "string" then  -- 副本名是字符串键
            local title = langCn[dungeonData.Title] or dungeonName
            local diffs = {}
            
            -- 遍历难度列表
            if dungeonData.Diffs then
                for diffLevel, diffData in pairs(dungeonData.Diffs) do
                    table.insert(diffs, {
                        level = diffData.Level or diffLevel,
                        name = langCn[diffData.Name] or ("难度" .. diffLevel),
                        precondition = diffData.Precondition,
                    })
                end
                -- 按难度等级排序
                table.sort(diffs, function(a, b) return a.level < b.level end)
            end
            
            table.insert(dungeons, {
                name = dungeonName,
                title = title,
                diffs = diffs,
            })
        end
    end
    return dungeons
end
```

### 7.3 验收标准

- [ ] 显示副本列表（从 Dungeon.lua 读取）
- [ ] 显示副本名称（从 lang/cn.lua 读取）
- [ ] 可以选择副本和难度
- [ ] 点击进入开始副本

---

## 8. Step 6: 进入副本流程

### 8.1 DungeonPanel 设计

```
┌────────────────────────────────────────────────────┐
│  副本: 新手教程       房间: 1/3      时间: 00:30   │
├────────────────────────────────────────────────────┤
│                                                    │
│   怪物列表:                                        │
│     - 小怪 x 3  (存活: 3)                          │
│                                                    │
│                                                    │
│                                                    │
│                                                    │
│                                                    │
│                                                    │
└────────────────────────────────────────────────────┘
```

### 8.2 验收标准

- [ ] 显示副本信息
- [ ] 显示当前房间
- [ ] 显示怪物列表

---

## 9. Step 7: 战斗流程

### 9.1 BattleHUD 设计

```
┌────────────────────────────────────────────────────┐
│  HP: ████████░░ 80%    MP: ██████████ 100%        │
├────────────────────────────────────────────────────┤
│                                                    │
│                 (战斗区域)                          │
│                                                    │
│                                                    │
│                                                    │
├────────────────────────────────────────────────────┤
│                                                    │
│    [技能1]   [技能2]   [技能3]   [技能4]           │
│                                                    │
│    [杀死怪物 - 测试用]    [通关房间 - 测试用]       │
│                                                    │
└────────────────────────────────────────────────────┘
```

### 9.2 数据来源

```lua
-- 从配置表获取英雄技能
local function GetHeroSkills(heroId)
    local skills = {}
    local heroData = ConfData:GetLine("Hero", heroId)
    if not heroData then return skills end
    
    local unitData = ConfData:GetLine("Unit", heroData.UnitId)
    if not unitData then return skills end
    
    local skillTable = ConfData:GetTable("Skill")
    local langCn = ConfData:GetTable("lang/cn")
    
    -- 从 Unit.SkillLibs 获取技能列表
    if unitData.SkillLibs then
        for _, skillLib in ipairs(unitData.SkillLibs) do
            for _, skillId in ipairs(skillLib) do
                local skillData = skillTable[skillId]
                if skillData then
                    table.insert(skills, {
                        id = skillId,
                        cd = skillData.Cd and skillData.Cd[1] or 1,
                        mpCost = skillData.MPCost and skillData.MPCost[1] or 0,
                        castTime = skillData.CastTime or 0,
                        maxLevel = skillData.Maxlevel or 1,
                    })
                end
            end
        end
    end
    return skills
end

-- 从配置表获取房间怪物
local function GetRoomMonsters(roomId)
    local monsters = {}
    local roomData = ConfData:GetLine("DungeonRoom", roomId)
    if not roomData then return monsters end
    
    local unitTable = ConfData:GetTable("Unit")
    local langCn = ConfData:GetTable("lang/cn")
    
    if roomData.Scripts then
        for _, script in pairs(roomData.Scripts) do
            if script.TypeName == "spawn_npc" and script.Params and script.Params[1] then
                for _, unitId in ipairs(script.Params[1]) do
                    local unitData = unitTable[unitId]
                    if unitData then
                        local nameKey = unitData.Name or unitData.KvName
                        table.insert(monsters, {
                            id = unitId,
                            name = langCn[nameKey] or nameKey or ("怪物" .. unitId),
                            isBoss = unitData.IsBoss and unitData.IsBoss > 0,
                            camp = unitData.Camp,
                        })
                    end
                end
            end
        end
    end
    return monsters
end

-- 从配置表获取 DungeonRoom 列表（用于副本流程）
local function GetDungeonRooms(difficulty, layer)
    local rooms = {}
    local roomTable = ConfData:GetTable("DungeonRoom")
    
    for roomId, roomData in pairs(roomTable) do
        if type(roomId) == "number" then
            -- 检查难度和层数是否匹配
            local diffMatch = true
            local layerMatch = true
            
            if roomData.Difficulty then
                local minDiff, maxDiff = roomData.Difficulty[1], roomData.Difficulty[2]
                diffMatch = difficulty >= minDiff and difficulty <= maxDiff
            end
            
            if roomData.Layer then
                layerMatch = false
                for _, l in ipairs(roomData.Layer) do
                    if l == layer then
                        layerMatch = true
                        break
                    end
                end
            end
            
            if diffMatch and layerMatch then
                table.insert(rooms, {
                    id = roomId,
                    type = roomData.Type,
                    weight = roomData.Weight or 0,
                    terrainId = roomData.TerrainId,
                })
            end
        end
    end
    return rooms
end
```

### 9.3 验收标准

- [ ] 显示英雄血条（基于 Unit.BaseAttrs）
- [ ] 显示技能按钮（从 Skill.lua 读取）
- [ ] 显示技能 CD（从配置表读取）
- [ ] 点击技能有反馈
- [ ] 怪物从 DungeonRoom 配置生成

---

## 10. Step 8: 结算流程

### 10.1 SettlementPanel 设计

```
┌────────────────────────────────────────────────────┐
│                                                    │
│                   副本通关！                        │
│                                                    │
│              用时: 01:30                           │
│                                                    │
│              获得奖励:                             │
│                金币: +100                          │
│                经验: +50                           │
│                                                    │
│              ┌─────────────────┐                   │
│              │     返回大厅     │                   │
│              └─────────────────┘                   │
│                                                    │
└────────────────────────────────────────────────────┘
```

### 10.2 数据来源

```lua
-- 从配置表获取副本奖励
local function GetDungeonReward(dungeonName, diffLevel)
    local rewards = {}
    local awardTable = ConfData:GetTable("Award")
    local itemTable = ConfData:GetTable("Item")
    local langCn = ConfData:GetTable("lang/cn")
    
    -- Award 表结构示例:
    -- [awardId] = { Items = {{itemId, count}, ...}, ... }
    -- 根据副本难度查找对应奖励
    for awardId, awardData in pairs(awardTable) do
        if type(awardId) == "number" then
            -- 检查是否匹配当前副本（需要根据实际 Award 表结构调整）
            if awardData.Dungeon == dungeonName or awardData.DiffLevel == diffLevel then
                if awardData.Items then
                    for _, itemInfo in ipairs(awardData.Items) do
                        local itemId = itemInfo[1]
                        local count = itemInfo[2] or 1
                        local itemData = itemTable[itemId]
                        local nameKey = itemData and itemData.Name
                        
                        table.insert(rewards, {
                            itemId = itemId,
                            count = count,
                            name = langCn[nameKey] or nameKey or ("物品" .. itemId),
                        })
                    end
                end
            end
        end
    end
    
    -- 默认奖励（如果没有配置）
    if #rewards == 0 then
        rewards = {
            { name = "金币", count = 100 + diffLevel * 50 },
            { name = "经验", count = 50 + diffLevel * 25 },
        }
    end
    return rewards
end

-- 获取通关时间奖励加成
local function GetTimeBonus(clearTime, targetTime)
    if clearTime <= targetTime * 0.5 then
        return 1.5  -- 150% 奖励
    elseif clearTime <= targetTime then
        return 1.2  -- 120% 奖励
    else
        return 1.0  -- 100% 奖励
    end
end
```

### 10.3 验收标准

- [ ] 显示结算界面
- [ ] 显示用时
- [ ] 显示奖励（从 Award.lua 或默认值）
- [ ] 点击返回进入大厅

---

## 11. Step 9: 返回大厅

### 验收标准

- [ ] 成功返回大厅
- [ ] 可以再次开始游戏
- [ ] 流程完整闭环

---

## 12. 技术实现

### 12.1 UIManager.cs

```csharp
// UI 面板管理器
public class UIManager : MonoBehaviour
{
    public static UIManager Instance;
    
    // 面板引用
    public GameObject LoadingPanel;
    public GameObject LobbyPanel;
    public GameObject SelectHeroPanel;
    public GameObject SelectDungeonPanel;
    public GameObject DungeonPanel;
    public GameObject BattleHUD;
    public GameObject SettlementPanel;
    
    // 显示指定面板，隐藏其他
    public void ShowPanel(string panelName);
    public void HideAll();
}
```

### 12.2 各 UI 脚本

| 脚本 | 职责 |
|------|------|
| LoadingUI.cs | 控制加载进度 |
| LobbyUI.cs | 大厅按钮事件 |
| SelectHeroUI.cs | 英雄选择逻辑 |
| SelectDungeonUI.cs | 副本选择逻辑 |
| DungeonUI.cs | 副本信息显示 |
| BattleHUD.cs | 战斗 HUD 控制 |
| SettlementUI.cs | 结算显示 |

---

## 13. 执行计划

| 序号 | 步骤 | 预计时间 | 验收后进行下一步 |
|------|------|----------|------------------|
| 1 | 创建场景 + 组件 | 1小时 | ✓ |
| 2 | 加载界面 | 1小时 | ✓ |
| 3 | 大厅界面 | 1小时 | ✓ |
| 4 | 选角界面 | 1小时 | ✓ |
| 5 | 选副本界面 | 1小时 | ✓ |
| 6 | 副本界面 | 1小时 | ✓ |
| 7 | 战斗 HUD | 2小时 | ✓ |
| 8 | 结算界面 | 1小时 | ✓ |
| 9 | 完整测试 | 1小时 | ✓ |

---

## 14. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建设计文档 |
| v2.0 | 2024-12-31 | 重构为可视化流程验证方案 |
| v2.1 | 2024-12-31 | 添加配置表集成方案，使用真实配置数据 |
