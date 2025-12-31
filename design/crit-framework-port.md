# Crit Framework 移植设计文档

> 本文档描述将 Dota2 游廊项目 "Crit Framework" 移植到 Unity 的总体设计方案。

---

## 1. 项目概述

### 1.1 源项目信息

| 项目 | 值 |
|------|-----|
| 源项目路径 | `dota_addons/rogue_fight/scripts/vscripts/` |
| 框架名称 | Crit Framework v0.1 |
| 语言 | Lua 5.3 |
| 总文件数 | ~200+ Lua 文件 |

### 1.2 目标项目信息

| 项目 | 值 |
|------|-----|
| 引擎 | Unity 6.3 LTS |
| 渲染管线 | URP |
| 平台 | PC |
| Lua 运行时 | xLua |
| 数据格式 | CSV |

### 1.3 移植原则

1. **Lua 业务代码保持不变** - 只修改兼容性代码
2. **C# 只写支持代码** - 不在 C# 中写业务逻辑
3. **逐层移植，逐步验证** - 按依赖关系从底层开始

---

## 2. 框架架构分析

### 2.1 源框架层次结构

```
critcore/
├── tool/                    # 工具层（最底层）
│   ├── cover.lua            # 覆写函数
│   ├── json.lua             # JSON 解析
│   ├── md5.lua              # MD5 加密
│   ├── math.lua             # 数学扩展
│   ├── string.lua           # 字符串扩展
│   ├── table.lua            # 表格扩展
│   ├── time.lua             # 时间工具
│   └── profiler.lua         # 性能分析
│
├── class/                   # 类层
│   ├── unit.lua             # 单位基类 (CUnitBase)
│   ├── unit_skill.lua       # 单位技能
│   ├── unit_summons.lua     # 召唤物
│   ├── unit_ai.lua          # 单位AI
│   ├── ai_base.lua          # AI基类
│   ├── ai_auto_use_skill.lua # 自动技能AI
│   ├── hero.lua             # 英雄 (CHero)
│   ├── player.lua           # 玩家 (CPlayer)
│   ├── attr.lua             # 属性系统 (CAttr)
│   ├── bag.lua              # 背包
│   ├── item.lua             # 道具
│   ├── dungeon_base.lua     # 副本基类
│   ├── dungeon_room.lua     # 副本房间
│   ├── dungeon_room_script.lua
│   ├── lobby_script_base.lua
│   ├── fitment.lua          # 装备
│   ├── data_base.lua        # 数据基类
│   ├── data_key.lua         # 数据Key
│   ├── data_player.lua      # 玩家数据
│   ├── data_group.lua       # 群组数据
│   └── player_log.lua       # 玩家日志
│
├── static/                  # 静态管理器层
│   ├── units.lua            # 单位管理 (Units)
│   ├── fight.lua            # 战斗系统 (Fight)
│   ├── conf_data.lua        # 配置数据 (ConfData)
│   ├── lobby.lua            # 大厅/网络 (Lobby)
│   ├── flow.lua             # 流程控制 (Flow)
│   ├── net_data.lua         # 网络数据 (NetData)
│   ├── save_data.lua        # 存档数据 (SaveData)
│   ├── reward.lua           # 奖励系统 (Reward)
│   ├── pre_load.lua         # 预加载 (PreLoad)
│   ├── chat.lua             # 聊天 (Chat)
│   ├── map_manager.lua      # 地图管理 (MapManager)
│   ├── script_manager.lua   # 脚本管理
│   └── setting.lua          # 设置
│
├── skill/                   # 技能系统
│   ├── SkillModule.lua      # 技能模块入口
│   ├── SkillManager.lua     # 技能管理器
│   ├── SkillAPI.lua         # 技能API
│   ├── SKillLogic.lua       # 技能逻辑
│   ├── SkillTimeLine.lua    # 技能时间轴
│   ├── lib/                 # 技能库
│   │   ├── Classnew.lua     # OOP类系统
│   │   ├── Define.lua       # 常量定义
│   │   ├── Message.lua      # 消息系统
│   │   ├── Debug.lua        # 调试
│   │   ├── pool.lua         # 对象池
│   │   ├── pool_manager.lua
│   │   ├── LayeredAttributeSystem.lua
│   │   └── ClientParticleManager.lua
│   ├── lineEvent/           # 时间轴事件 (33个)
│   ├── buff/                # Buff系统
│   │   ├── Buff.lua
│   │   ├── BuffManager.lua
│   │   └── buffEvent/       # Buff事件 (42个)
│   └── passive/             # 被动技能
│       ├── PassiveSkill.lua
│       └── PassiveSkillManager.lua
│
└── ai/                      # AI行为树
    └── bt/nodes/            # 行为树节点
```

### 2.2 依赖关系图

```
                    ┌─────────────────┐
                    │   应用层 (app/) │
                    └────────┬────────┘
                             │
                    ┌────────▼────────┐
                    │  技能系统       │
                    │  (skill/)       │
                    └────────┬────────┘
                             │
        ┌────────────────────┼────────────────────┐
        │                    │                    │
┌───────▼───────┐   ┌────────▼────────┐   ┌──────▼──────┐
│    Units      │   │     Fight       │   │  ConfData   │
│  (单位管理)   │   │    (战斗)       │   │  (配置)     │
└───────┬───────┘   └────────┬────────┘   └──────┬──────┘
        │                    │                    │
        └────────────────────┼────────────────────┘
                             │
                    ┌────────▼────────┐
                    │   class/ 类层   │
                    │  (CUnitBase等)  │
                    └────────┬────────┘
                             │
                    ┌────────▼────────┐
                    │   tool/ 工具层  │
                    └────────┬────────┘
                             │
                    ┌────────▼────────┐
                    │  游廊原生API    │
                    │  (需C#桥接)     │
                    └─────────────────┘
```

---

## 3. 需要 C# 桥接的游廊 API

### 3.1 时间相关

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `Time()` | `Time.time` | 游戏运行时间 |
| `FrameTime()` | `Time.deltaTime` | 帧间隔时间 |
| `GetSystemTime()` | `DateTime.Now.ToString()` | 系统时间 |
| `GetSystemTimeMS()` | `DateTimeOffset.Now.ToUnixTimeMilliseconds()` | 毫秒时间戳 |

### 3.2 向量/数学

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `Vector(x,y,z)` | `new Vector3(x,y,z)` | 向量构造 |
| `vec:Length()` | `vec.magnitude` | 向量长度 |
| `vec:Length2D()` | `new Vector2(vec.x,vec.y).magnitude` | 2D长度 |
| `vec:Normalized()` | `vec.normalized` | 归一化 |
| `vec:Dot(other)` | `Vector3.Dot(vec,other)` | 点积 |
| `vec:Cross(other)` | `Vector3.Cross(vec,other)` | 叉积 |
| `RandomInt(min,max)` | `UnityEngine.Random.Range(min,max+1)` | 随机整数 |
| `RandomFloat(min,max)` | `UnityEngine.Random.Range(min,max)` | 随机浮点 |

### 3.3 游戏循环

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `GameRules:GetGameModeEntity():SetThink(name, context)` | MonoBehaviour.Update | 注册更新回调 |

### 3.4 实体/单位

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `CreateUnitByName(name, pos, ...)` | `Instantiate(prefab, pos, rot)` | 创建单位 |
| `Entities:FindByName(nil, name)` | `GameObject.Find(name)` | 查找实体 |
| `EntIndexToHScript(idx)` | 自定义实体ID映射 | 实体索引转对象 |
| `IsValidEntity(ent)` | `ent != null` | 实体有效性 |
| `entity:GetOrigin()` | `transform.position` | 获取位置 |
| `entity:SetOrigin(pos)` | `transform.position = pos` | 设置位置 |
| `entity:GetForwardVector()` | `transform.forward` | 获取朝向 |
| `entity:SetForwardVector(dir)` | `transform.forward = dir` | 设置朝向 |
| `entity:entindex()` | 自定义EntityId | 实体索引 |

### 3.5 粒子/特效

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `ParticleManager:CreateParticle(path, attach, ent)` | VFX/ParticleSystem 实例化 | 创建粒子 |
| `ParticleManager:SetParticleControl(id, cp, vec)` | 自定义属性设置 | 设置控制点 |
| `ParticleManager:DestroyParticle(id, immediate)` | `Destroy(particle)` | 销毁粒子 |
| `ParticleManager:ReleaseParticleIndex(id)` | 对象池回收 | 释放索引 |
| `PATTACH_*` 常量 | 自定义枚举 | 附着类型 |

### 3.6 音效

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `EmitSoundOnEntityForPlayer(sound, ent, pid)` | `AudioSource.PlayOneShot()` | 播放音效 |
| `StopSoundOn(sound, ent)` | `AudioSource.Stop()` | 停止音效 |

### 3.7 导航/地形

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `GridNav:IsTraversable(pos)` | `NavMesh.SamplePosition()` | 可通行检测 |
| `GridNav:IsBlocked(pos)` | 自定义阻挡检测 | 阻挡检测 |
| `GetGroundPosition(pos, ent)` | `Physics.Raycast` 向下 | 获取地面位置 |
| `GetGroundHeight(pos, ent)` | `Physics.Raycast` 向下 | 获取地面高度 |
| `FindClearSpaceForUnit(ent, pos, flag)` | NavMesh 寻找空位 | 寻找空位 |

### 3.8 调试

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `print(...)` | `Debug.Log(...)` | 打印日志 |
| `error(msg)` | `Debug.LogError(msg)` | 错误日志 |
| `GetMapName()` | `SceneManager.GetActiveScene().name` | 地图名 |
| `IsInToolsMode()` | `Application.isEditor` | 编辑器模式 |
| `IsClient()` | 始终 false (单机) | 客户端判断 |

### 3.9 位运算

| 游廊 API | Unity 对应 | 说明 |
|----------|-----------|------|
| `bit.lshift(v, n)` | `v << n` | 左移 |
| `bit.rshift(v, n)` | `v >> n` | 右移 |
| `bit.band(a, b)` | `a & b` | 按位与 |
| `bit.bor(a, b)` | `a \| b` | 按位或 |

---

## 4. Unity 目录结构设计

```
UnityProject/Assets/
├── Plugins/
│   └── XLua/                    # xLua 插件
│
├── Scripts/                     # C# 支持层
│   ├── Framework/               # 框架核心
│   │   ├── LuaManager.cs        # Lua虚拟机管理
│   │   ├── GameLoop.cs          # 游戏主循环
│   │   └── GameEntry.cs         # 游戏入口
│   │
│   ├── Bridge/                  # Lua桥接层
│   │   ├── DotaApiBridge.cs     # 游廊API总桥接
│   │   ├── TimeBridge.cs        # 时间桥接
│   │   ├── VectorBridge.cs      # 向量桥接
│   │   ├── EntityBridge.cs      # 实体桥接
│   │   ├── ParticleBridge.cs    # 粒子桥接
│   │   ├── AudioBridge.cs       # 音效桥接
│   │   ├── NavBridge.cs         # 导航桥接
│   │   └── BitBridge.cs         # 位运算桥接
│   │
│   ├── Services/                # Unity服务层
│   │   ├── EntityService.cs     # 实体管理服务
│   │   ├── ResourceService.cs   # 资源加载服务
│   │   ├── ConfigService.cs     # CSV配置服务
│   │   ├── VFXService.cs        # 特效服务
│   │   └── AudioService.cs      # 音频服务
│   │
│   └── Entity/                  # Unity实体层
│       ├── GameEntity.cs        # 游戏实体基类
│       └── EntityIdManager.cs   # 实体ID管理
│
├── LuaScripts/                  # Lua 脚本（移植）
│   ├── critcore/                # 核心框架
│   │   ├── tool/
│   │   ├── class/
│   │   ├── static/
│   │   ├── skill/
│   │   ├── ai/
│   │   └── start.lua
│   │
│   ├── confdata/                # 配置数据
│   │
│   └── app/                     # 应用层（按需移植）
│
├── Resources/
│   ├── Config/                  # CSV 配置表
│   ├── Prefabs/                 # 预制体
│   │   └── Units/               # 单位预制体
│   ├── Effects/                 # 特效
│   └── Audio/                   # 音效
│
└── StreamingAssets/
    └── LuaScripts/              # 热更新Lua（可选）
```

---

## 5. 移植阶段规划

### Phase 1: 基础设施（预计 1-2 周）

#### 1.1 xLua 集成
- [ ] 下载并导入 xLua 包
- [ ] 配置 xLua 生成器
- [ ] 创建 LuaManager.cs
- [ ] 验证：简单 Lua 脚本能执行

#### 1.2 基础桥接层
- [ ] TimeBridge.cs - 时间相关
- [ ] VectorBridge.cs - 向量相关
- [ ] BitBridge.cs - 位运算
- [ ] 验证：Lua 能调用这些 C# 方法

#### 1.3 CSV 配置系统
- [ ] CSV 解析器
- [ ] 配置服务 ConfigService.cs
- [ ] CSV → Lua 表生成工具
- [ ] 验证：ConfData:GetLine 能读取数据

### Phase 2: 核心框架移植（预计 2-3 周）

#### 2.1 工具层 (tool/)
- [ ] 移植 cover.lua
- [ ] 移植 json.lua
- [ ] 移植 math.lua
- [ ] 移植 string.lua
- [ ] 移植 table.lua
- [ ] 移植 time.lua
- [ ] 验证：工具函数正常工作

#### 2.2 消息系统
- [ ] 移植 Message.lua
- [ ] 移植 MessageConst.lua
- [ ] 验证：消息发送接收正常

#### 2.3 类系统
- [ ] 移植 Classnew.lua
- [ ] 验证：类创建和继承正常

### Phase 3: 实体系统移植（预计 2-3 周）

#### 3.1 实体桥接
- [ ] EntityBridge.cs
- [ ] EntityIdManager.cs
- [ ] GameEntity.cs
- [ ] 验证：实体创建、查询、销毁

#### 3.2 单位类层
- [ ] 移植 unit.lua (CUnitBase)
- [ ] 移植 attr.lua (CAttr)
- [ ] 移植 hero.lua (CHero)
- [ ] 验证：单位能创建并获取属性

#### 3.3 静态管理器
- [ ] 移植 units.lua (Units)
- [ ] 移植 conf_data.lua (ConfData)
- [ ] 移植 fight.lua (Fight)
- [ ] 验证：单位管理、战斗结算正常

### Phase 4: 技能系统移植（预计 2-3 周）

#### 4.1 技能核心
- [ ] 移植 SkillModule.lua
- [ ] 移植 SkillManager.lua
- [ ] 移植 SkillAPI.lua
- [ ] 移植 SKillLogic.lua
- [ ] 移植 SkillTimeLine.lua
- [ ] 验证：技能能释放

#### 4.2 Buff 系统
- [ ] 移植 Buff.lua
- [ ] 移植 BuffManager.lua
- [ ] 移植所有 buffEvent/
- [ ] 验证：Buff 能添加和生效

#### 4.3 时间轴事件
- [ ] 移植所有 lineEvent/
- [ ] 验证：时间轴事件正常触发

#### 4.4 被动技能
- [ ] 移植 passive/
- [ ] 验证：被动技能正常触发

### Phase 5: 表现层移植（预计 1-2 周）

#### 5.1 粒子系统
- [ ] ParticleBridge.cs
- [ ] VFXService.cs
- [ ] 验证：技能特效正常显示

#### 5.2 音效系统
- [ ] AudioBridge.cs
- [ ] AudioService.cs
- [ ] 验证：技能音效正常播放

#### 5.3 动画系统
- [ ] AnimationBridge.cs
- [ ] 验证：单位动画正常播放

### Phase 6: 集成测试（预计 1 周）

- [ ] 完整技能释放测试
- [ ] Buff 效果测试
- [ ] 战斗结算测试
- [ ] 性能测试

---

## 6. 验收标准

### 6.1 Phase 1 验收
- [ ] Lua 脚本能在 Unity 中执行
- [ ] print() 能输出到 Unity Console
- [ ] Vector 能在 Lua 中创建和运算
- [ ] CSV 配置能读取

### 6.2 Phase 2 验收
- [ ] 所有 tool/ 函数正常工作
- [ ] 消息系统能发送接收
- [ ] 类能正常创建和继承

### 6.3 Phase 3 验收
- [ ] 能创建游戏单位
- [ ] 单位有属性系统
- [ ] Units:GetUnitByInsid() 能查询单位
- [ ] Fight:ApplyDamage() 能造成伤害

### 6.4 Phase 4 验收
- [ ] 技能能正常释放
- [ ] 时间轴事件按时触发
- [ ] Buff 能添加和产生效果
- [ ] 被动技能能触发

### 6.5 Phase 5 验收
- [ ] 技能特效正常显示
- [ ] 技能音效正常播放
- [ ] 单位动画正常播放

### 6.6 Phase 6 验收
- [ ] 完整战斗流程可运行
- [ ] 无明显性能问题
- [ ] 无内存泄漏

---

## 7. 风险与对策

| 风险 | 级别 | 对策 |
|------|------|------|
| xLua 与 Unity 版本兼容性 | 中 | 使用最新 xLua 版本，提前测试 |
| 游廊 API 映射不完整 | 高 | 逐步发现，逐步补充 |
| Lua 性能问题 | 中 | 热点代码用 C# 重写 |
| 粒子系统差异大 | 中 | 可能需要重新制作部分特效 |
| 调试困难 | 中 | 完善日志系统，支持断点 |

---

## 8. 版本记录

| 版本 | 日期 | 变更内容 |
|------|------|----------|
| v0.1 | 2024-12-31 | 创建文档，完成整体规划 |
