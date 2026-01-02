# Stub 系统设计文档

> 本文档描述如何在缺少 Dota2 资源和特定 API 的情况下，使移植后的系统能够正常运行逻辑测试。

---

## 1. 问题分析

### 1.1 可移植内容

| 类别 | 说明 |
|------|------|
| Lua 逻辑代码 | 技能、Buff、被动、战斗逻辑 |
| CSV/Lua 配置表 | 技能表、Buff表、单位表等 |
| 框架结构 | Classnew、消息系统、对象池 |

### 1.2 不可移植内容

| 类别 | 示例 | 数量 |
|------|------|------|
| **粒子特效** | particles/hero/xxx | 大量 |
| **音效** | sounds/hero/xxx | 大量 |
| **动画** | ACT_DOTA_xxx | 大量 |
| **模型** | models/heroes/xxx | 大量 |
| **Dota2 特定 API** | FindUnitsInRadius, ApplyDamage | ~20个 |
| **网络 API** | CustomNetTables, Lobby | ~10个 |

### 1.3 目标

1. **逻辑可运行** - 不因资源/API缺失而中断
2. **日志可追踪** - 所有 Stub 调用都有日志
3. **清单可导出** - 运行后生成"缺失资源/API清单"
4. **渐进可替换** - Stub → 替代资源 → 真实资源

---

## 2. 架构设计

### 2.1 总体架构

```
┌─────────────────────────────────────────────────────────────────┐
│                         Lua 业务层                               │
│   (SkillManager, BuffManager, PassiveSkillManager, Fight...)    │
└───────────────────────────────┬─────────────────────────────────┘
                                │
┌───────────────────────────────▼─────────────────────────────────┐
│                         C# 桥接层                                │
│   ParticleBridge | AudioBridge | AnimationBridge | CombatBridge │
└───────────────────────────────┬─────────────────────────────────┘
                                │
                    ┌───────────▼───────────┐
                    │     StubConfig        │ ← 全局开关
                    │   (DebugMode = true)  │
                    └───────────┬───────────┘
                                │
        ┌───────────────────────┼───────────────────────┐
        │                       │                       │
┌───────▼───────┐      ┌────────▼────────┐     ┌───────▼───────┐
│ResourceService│      │  CombatService  │     │ NetworkStubs  │
│ (资源加载)    │      │ (战斗查找)      │     │ (网络占位)    │
└───────┬───────┘      └────────┬────────┘     └───────┬───────┘
        │                       │                       │
        ▼                       ▼                       ▼
  [DebugMode?]           [DebugMode?]            [始终Stub]
   ├─ON → Stub            ├─ON → Stub              └→ 打印日志
   └─OFF → 真实加载       └─OFF → 真实物理检测
```

### 2.2 目录结构

```
Assets/Scripts/
├── Stubs/                          # Stub 系统
│   ├── StubConfig.cs               # 全局配置 + 日志收集
│   └── StubReport.cs               # 报告生成器
│
├── Services/
│   ├── ResourceService.cs          # 统一资源管理 (新增)
│   ├── CombatService.cs            # 战斗查找服务 (新增)
│   ├── VFXService.cs               # (修改：使用 ResourceService)
│   ├── AudioService.cs             # (修改：使用 ResourceService)
│   └── AnimatorService.cs          # (修改：使用 ResourceService)
│
├── Bridge/
│   ├── CombatBridge.cs             # 战斗 API 桥接 (新增)
│   ├── NetworkBridge.cs            # 网络 API Stub (新增)
│   └── DotaConstantsBridge.cs      # Dota2 常量 (新增)
```

---

## 3. 详细设计

### 3.1 StubConfig.cs

```csharp
namespace CritFramework
{
    /// <summary>
    /// Stub 系统全局配置
    /// </summary>
    public static class StubConfig
    {
        // ========== 全局开关 ==========
        /// <summary>
        /// 调试模式：开启后所有资源/API 使用 Stub
        /// </summary>
        public static bool DebugMode = true;
        
        // ========== 分类开关 ==========
        public static bool StubResources = true;    // 资源占位
        public static bool StubCombat = true;       // 战斗API占位
        public static bool LogStubCalls = true;     // 是否打印Stub调用
        
        // ========== 日志收集 ==========
        private static HashSet<string> _missingResources = new();
        private static HashSet<string> _stubApiCalls = new();
        
        public static void LogMissingResource(string category, string path)
        {
            _missingResources.Add($"[{category}] {path}");
            if (LogStubCalls)
                Debug.Log($"[Stub:Resource] {category}: {path}");
        }
        
        public static void LogStubApiCall(string apiName, string args)
        {
            _stubApiCalls.Add($"{apiName}({args})");
            if (LogStubCalls)
                Debug.Log($"[Stub:API] {apiName}({args})");
        }
        
        /// <summary>
        /// 导出缺失资源报告
        /// </summary>
        public static void ExportReport()
        {
            Debug.Log("=== 缺失资源清单 ===");
            foreach (var r in _missingResources) Debug.Log(r);
            
            Debug.Log("=== Stub API 调用清单 ===");
            foreach (var a in _stubApiCalls) Debug.Log(a);
        }
    }
}
```

### 3.2 ResourceService.cs

```csharp
namespace CritFramework
{
    /// <summary>
    /// 统一资源加载服务
    /// </summary>
    public class ResourceService : MonoBehaviour
    {
        public static ResourceService Instance { get; private set; }
        
        /// <summary>
        /// 加载资源
        /// </summary>
        public T Load<T>(string path, string category) where T : UnityEngine.Object
        {
            // 记录请求
            StubConfig.LogMissingResource(category, path);
            
            // 调试模式：不加载真实资源
            if (StubConfig.DebugMode && StubConfig.StubResources)
            {
                return null;
            }
            
            // 正式模式：尝试加载
            return Resources.Load<T>(path);
        }
        
        /// <summary>
        /// 检查资源是否存在（不加载）
        /// </summary>
        public bool Exists(string path)
        {
            if (StubConfig.DebugMode) return false;
            return Resources.Load(path) != null;
        }
    }
}
```

### 3.3 CombatService.cs

```csharp
namespace CritFramework
{
    /// <summary>
    /// 战斗查找服务
    /// </summary>
    public class CombatService : MonoBehaviour
    {
        public static CombatService Instance { get; private set; }
        
        /// <summary>
        /// 范围内查找单位
        /// </summary>
        public List<int> FindUnitsInRadius(
            int teamNumber,
            Vector3 position,
            float radius,
            int targetTeam,
            int targetType,
            int targetFlags,
            int order,
            bool canGrowCache)
        {
            StubConfig.LogStubApiCall("FindUnitsInRadius", 
                $"pos={position}, radius={radius}");
            
            if (StubConfig.DebugMode && StubConfig.StubCombat)
            {
                // Stub 模式：返回空列表
                return new List<int>();
            }
            
            // 真实模式：使用 Unity Physics
            var results = new List<int>();
            var colliders = Physics.OverlapSphere(position, radius);
            foreach (var col in colliders)
            {
                var entity = col.GetComponent<GameEntity>();
                if (entity != null)
                {
                    // TODO: 过滤队伍、类型等
                    results.Add(entity.EntityId);
                }
            }
            return results;
        }
        
        /// <summary>
        /// 造成伤害
        /// </summary>
        public void ApplyDamage(int attackerInsId, int victimInsId, 
            float damage, int damageType, int damageFlags, int abilityId)
        {
            StubConfig.LogStubApiCall("ApplyDamage", 
                $"attacker={attackerInsId}, victim={victimInsId}, damage={damage}");
            
            // Stub 模式：只打印，不处理
            // 真实模式：调用 Lua Fight:ApplyDamage
        }
    }
}
```

### 3.4 CombatBridge.cs (Lua API)

```csharp
namespace CritFramework
{
    public static class CombatBridge
    {
        public static void Register(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- FindUnitsInRadius(teamNum, pos, radius, targetTeam, targetType, 
                --                   targetFlags, order, canGrowCache)
                function FindUnitsInRadius(teamNum, pos, radius, targetTeam, 
                    targetType, targetFlags, order, canGrowCache)
                    local position = CS.UnityEngine.Vector3(pos.x, pos.y, pos.z)
                    local result = CS.CritFramework.CombatService.Instance:FindUnitsInRadius(
                        teamNum or 0, position, radius or 0, 
                        targetTeam or 0, targetType or 0, targetFlags or 0,
                        order or 0, canGrowCache or false)
                    
                    -- 转换为 Lua table
                    local units = {}
                    for i = 0, result.Count - 1 do
                        local insId = result[i]
                        local unit = Units:GetUnitByInsid(insId)
                        if unit then table.insert(units, unit) end
                    end
                    return units
                end
                
                -- ApplyDamage(damageTable)
                function ApplyDamage(damageTable)
                    local attacker = damageTable.attacker
                    local victim = damageTable.victim
                    local damage = damageTable.damage or 0
                    local damageType = damageTable.damage_type or 0
                    local damageFlags = damageTable.damage_flags or 0
                    local abilityId = damageTable.ability and damageTable.ability.abilityId or 0
                    
                    local attackerId = attacker and attacker:GetInsid() or 0
                    local victimId = victim and victim:GetInsid() or 0
                    
                    CS.CritFramework.CombatService.Instance:ApplyDamage(
                        attackerId, victimId, damage, damageType, damageFlags, abilityId)
                end
            ");
        }
    }
}
```

### 3.5 NetworkBridge.cs (网络 Stub)

```csharp
namespace CritFramework
{
    public static class NetworkBridge
    {
        public static void Register(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- ========== CustomNetTables (本地 Table 替代) ==========
                CustomNetTables = {}
                CustomNetTables._data = {}
                
                function CustomNetTables:SetTableValue(tableName, key, value)
                    self._data[tableName] = self._data[tableName] or {}
                    self._data[tableName][key] = value
                    print('[Stub:NetTable] Set', tableName, key)
                end
                
                function CustomNetTables:GetTableValue(tableName, key)
                    if not self._data[tableName] then return nil end
                    return self._data[tableName][key]
                end
                
                function CustomNetTables:GetAllTableValues(tableName)
                    return self._data[tableName] or {}
                end
                
                -- ========== CustomGameEventManager (单机直接调用) ==========
                CustomGameEventManager = {}
                
                function CustomGameEventManager:Send_ServerToPlayer(player, eventName, data)
                    print('[Stub:Event] ServerToPlayer', eventName)
                    -- 单机模式：直接触发本地处理
                end
                
                function CustomGameEventManager:Send_ServerToAllClients(eventName, data)
                    print('[Stub:Event] ServerToAllClients', eventName)
                end
                
                function CustomGameEventManager:Send_ServerToTeam(teamId, eventName, data)
                    print('[Stub:Event] ServerToTeam', teamId, eventName)
                end
                
                -- ========== Lobby (单玩家) ==========
                Lobby = Lobby or {}
                Lobby._localPlayer = nil
                
                function Lobby:GetAllPlayers()
                    -- 单机模式：返回单个玩家
                    if self._localPlayer then
                        return { self._localPlayer }
                    end
                    return {}
                end
                
                function Lobby:GetLocalPlayer()
                    return self._localPlayer
                end
                
                function Lobby:SetLocalPlayer(player)
                    self._localPlayer = player
                end
                
                -- ========== Convars (控制台命令占位) ==========
                Convars = {}
                Convars._commands = {}
                
                function Convars:RegisterCommand(name, callback, help, flags)
                    self._commands[name] = { callback = callback, help = help }
                    print('[Stub:Convar] Register', name)
                end
                
                function Convars:GetCommandClient(name, ...)
                    -- 占位：直接执行
                    local cmd = self._commands[name]
                    if cmd and cmd.callback then
                        cmd.callback(nil, ...)
                    end
                end
            ");
        }
    }
}
```

### 3.6 DotaConstantsBridge.cs (常量定义)

```csharp
namespace CritFramework
{
    public static class DotaConstantsBridge
    {
        public static void Register(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- ========== 队伍常量 ==========
                DOTA_TEAM_GOODGUYS = 2
                DOTA_TEAM_BADGUYS = 3
                DOTA_TEAM_NEUTRALS = 4
                
                -- ========== 单位目标类型 ==========
                DOTA_UNIT_TARGET_TEAM_FRIENDLY = 1
                DOTA_UNIT_TARGET_TEAM_ENEMY = 2
                DOTA_UNIT_TARGET_TEAM_BOTH = 3
                
                DOTA_UNIT_TARGET_HERO = 1
                DOTA_UNIT_TARGET_CREEP = 2
                DOTA_UNIT_TARGET_BUILDING = 4
                DOTA_UNIT_TARGET_ALL = 63
                
                -- ========== 查找顺序 ==========
                FIND_ANY_ORDER = 0
                FIND_CLOSEST = 1
                FIND_FARTHEST = 2
                
                -- ========== 伤害类型 ==========
                DAMAGE_TYPE_PHYSICAL = 1
                DAMAGE_TYPE_MAGICAL = 2
                DAMAGE_TYPE_PURE = 4
                
                -- ========== 修改器属性 ==========
                MODIFIER_ATTRIBUTE_NONE = 0
                MODIFIER_ATTRIBUTE_PERMANENT = 1
                MODIFIER_ATTRIBUTE_MULTIPLE = 2
                MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE = 4
                
                -- ========== 修改器状态 ==========
                MODIFIER_STATE_STUNNED = 'MODIFIER_STATE_STUNNED'
                MODIFIER_STATE_ROOTED = 'MODIFIER_STATE_ROOTED'
                MODIFIER_STATE_SILENCED = 'MODIFIER_STATE_SILENCED'
                MODIFIER_STATE_INVISIBLE = 'MODIFIER_STATE_INVISIBLE'
                MODIFIER_STATE_INVULNERABLE = 'MODIFIER_STATE_INVULNERABLE'
                MODIFIER_STATE_NO_UNIT_COLLISION = 'MODIFIER_STATE_NO_UNIT_COLLISION'
            ");
        }
    }
}
```

---

## 4. 实施步骤

### 4.1 Phase Stub-1: 基础设施

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 Stubs/StubConfig.cs | 编译通过 |
| 2 | 创建 Services/ResourceService.cs | 编译通过 |
| 3 | 修改 VFXService 使用 ResourceService | 测试通过 |
| 4 | 修改 AudioService 使用 ResourceService | 测试通过 |

### 4.2 Phase Stub-2: 战斗系统

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 Services/CombatService.cs | 编译通过 |
| 2 | 创建 Bridge/CombatBridge.cs | Lua 调用成功 |
| 3 | 测试 FindUnitsInRadius | 返回空列表 + 日志 |

### 4.3 Phase Stub-3: 网络/常量

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 Bridge/NetworkBridge.cs | 编译通过 |
| 2 | 创建 Bridge/DotaConstantsBridge.cs | 常量可用 |
| 3 | 更新 DotaApiBridge 调用新桥接 | 测试通过 |

### 4.4 Phase Stub-4: 集成测试

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 test/test_stub.lua | 所有 Stub 功能测试 |
| 2 | 运行完整技能流程 | 逻辑通过，无报错 |
| 3 | 导出 StubReport | 生成缺失清单 |

---

## 5. 使用方式

### 5.1 开发阶段

```csharp
// GameEntry.cs
void Awake()
{
    // 开启调试模式
    StubConfig.DebugMode = true;
    StubConfig.LogStubCalls = true;
    
    // 初始化...
}
```

### 5.2 运行结束导出报告

```csharp
void OnDestroy()
{
    // 导出缺失资源清单
    StubConfig.ExportReport();
}
```

### 5.3 渐进式替换

```csharp
// 当某个资源准备好后，可以单独关闭该资源的 Stub
StubConfig.StubResources = false;  // 资源准备好了
StubConfig.StubCombat = true;      // 战斗还用 Stub
```

---

## 6. 验收标准

- [ ] StubConfig 全局开关工作正常
- [ ] 资源请求被记录到日志
- [ ] FindUnitsInRadius 返回空列表 + 日志
- [ ] ApplyDamage 打印日志不报错
- [ ] CustomNetTables 本地存储工作
- [ ] Lobby:GetAllPlayers() 返回单玩家
- [ ] 所有 Dota2 常量可用
- [ ] 导出报告功能正常

---

## 7. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建设计文档 |
