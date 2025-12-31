# Phase 1: 基础设施 - 功能规范

> 本文档定义 Crit Framework 移植项目第一阶段的详细规范。

---

## 1. 概述

### 1.1 目标

搭建 Unity 项目的 Lua 运行环境和基础桥接层，使 Lua 脚本能够在 Unity 中执行并调用基础 C# 功能。

### 1.2 范围

| 模块 | 内容 |
|------|------|
| xLua 集成 | Lua 虚拟机、脚本加载、执行 |
| 基础桥接 | 时间、向量、位运算、调试 |
| 游戏循环 | Update 驱动 Lua 更新 |

### 1.3 不包含

- CSV 配置系统（移至 Phase 1.5 或 Phase 2）
- 实体系统
- 技能系统

---

## 2. 目录结构

```
UnityProject/Assets/
├── Plugins/
│   └── XLua/                    # xLua 插件（从GitHub下载）
│
├── Scripts/
│   ├── Framework/
│   │   ├── LuaManager.cs        # Lua 虚拟机管理
│   │   └── GameEntry.cs         # 游戏入口
│   │
│   └── Bridge/
│       └── DotaApiBridge.cs     # 游廊 API 桥接（全部集中在一个文件）
│
├── LuaScripts/
│   └── test/
│       └── test_bridge.lua      # 桥接测试脚本
│
└── Editor/
    └── XLua/
        └── XLuaGenConfig.cs     # xLua 生成配置
```

---

## 3. 详细设计

### 3.1 LuaManager.cs

**职责**：管理 Lua 虚拟机生命周期，提供脚本加载和执行功能。

```csharp
// 接口定义
public class LuaManager : MonoBehaviour
{
    public static LuaManager Instance { get; }
    
    // Lua 环境
    public LuaEnv LuaEnv { get; }
    
    // 初始化
    public void Init();
    
    // 执行 Lua 文件
    public object[] DoFile(string filename);
    
    // 执行 Lua 字符串
    public object[] DoString(string luaCode);
    
    // 获取全局变量
    public T GetGlobal<T>(string name);
    
    // 设置全局变量
    public void SetGlobal<T>(string name, T value);
    
    // 每帧调用（驱动 Lua Update）
    public void Tick(float deltaTime);
    
    // 销毁
    public void Dispose();
}
```

**Lua 脚本搜索路径**：
- `Assets/LuaScripts/` - 开发时从 Assets 加载
- 支持 `.lua` 和 `.lua.txt` 后缀

### 3.2 GameEntry.cs

**职责**：游戏入口，初始化 LuaManager 并启动游戏循环。

```csharp
public class GameEntry : MonoBehaviour
{
    void Awake()
    {
        // 初始化 LuaManager
        LuaManager.Instance.Init();
        
        // 注册桥接
        DotaApiBridge.Register(LuaManager.Instance.LuaEnv);
    }
    
    void Update()
    {
        // 驱动 Lua Update
        LuaManager.Instance.Tick(Time.deltaTime);
    }
    
    void OnDestroy()
    {
        LuaManager.Instance.Dispose();
    }
}
```

### 3.3 DotaApiBridge.cs

**职责**：提供游廊 API 的 Unity 实现，注册到 Lua 全局环境。

#### 3.3.1 时间相关

| Lua 调用 | C# 实现 |
|----------|--------|
| `Time()` | `UnityEngine.Time.time` |
| `FrameTime()` | `UnityEngine.Time.deltaTime` |
| `GetSystemTime()` | `DateTime.Now.ToString("HH:mm:ss")` |
| `GetSystemTimeMS()` | `DateTimeOffset.Now.ToUnixTimeMilliseconds()` |

#### 3.3.2 向量相关

| Lua 调用 | C# 实现 |
|----------|--------|
| `Vector(x, y, z)` | 返回 Lua table `{x=x, y=y, z=z}` 并附加元方法 |

**Vector 元方法**：
- `__add` - 向量加法
- `__sub` - 向量减法
- `__mul` - 标量乘法
- `__unm` - 取反
- `Length()` - 长度
- `Length2D()` - 2D 长度（忽略 z）
- `Normalized()` - 归一化
- `Dot(other)` - 点积
- `Cross(other)` - 叉积

#### 3.3.3 位运算

| Lua 调用 | C# 实现 |
|----------|--------|
| `bit.lshift(v, n)` | `v << n` |
| `bit.rshift(v, n)` | `v >> n` |
| `bit.band(a, b)` | `a & b` |
| `bit.bor(a, b)` | `a \| b` |
| `bit.bnot(a)` | `~a` |

#### 3.3.4 调试相关

| Lua 调用 | C# 实现 |
|----------|--------|
| `print(...)` | `Debug.Log(...)` |
| `error(msg)` | `Debug.LogError(msg)` + 抛出异常 |
| `GetMapName()` | `SceneManager.GetActiveScene().name` |
| `IsInToolsMode()` | `Application.isEditor` |
| `IsClient()` | `false`（单机模式） |

#### 3.3.5 随机数

| Lua 调用 | C# 实现 |
|----------|--------|
| `RandomInt(min, max)` | `UnityEngine.Random.Range(min, max + 1)` |
| `RandomFloat(min, max)` | `UnityEngine.Random.Range(min, max)` |

#### 3.3.6 游戏循环占位

| Lua 调用 | C# 实现 |
|----------|--------|
| `GameRules` | 返回占位对象 |
| `GameRules:GetGameModeEntity()` | 返回占位对象 |
| `GameRules:GetGameModeEntity():SetThink(name, context)` | 注册 Lua 函数到 Update 循环 |

---

## 4. 测试脚本

### 4.1 test_bridge.lua

```lua
-- 测试桥接层
print("========== 桥接测试开始 ==========")

-- 测试时间
print("Time(): " .. Time())
print("FrameTime(): " .. FrameTime())
print("GetSystemTime(): " .. GetSystemTime())
print("GetSystemTimeMS(): " .. GetSystemTimeMS())

-- 测试向量
local v1 = Vector(1, 2, 3)
local v2 = Vector(4, 5, 6)
print("v1: " .. v1.x .. ", " .. v1.y .. ", " .. v1.z)
print("v1:Length(): " .. v1:Length())
print("v1:Length2D(): " .. v1:Length2D())

local v3 = v1 + v2
print("v1 + v2: " .. v3.x .. ", " .. v3.y .. ", " .. v3.z)

local v4 = v1:Normalized()
print("v1:Normalized(): " .. v4.x .. ", " .. v4.y .. ", " .. v4.z)

print("v1:Dot(v2): " .. v1:Dot(v2))

local v5 = v1:Cross(v2)
print("v1:Cross(v2): " .. v5.x .. ", " .. v5.y .. ", " .. v5.z)

-- 测试位运算
print("bit.lshift(1, 4): " .. bit.lshift(1, 4))
print("bit.rshift(16, 2): " .. bit.rshift(16, 2))
print("bit.band(15, 9): " .. bit.band(15, 9))
print("bit.bor(8, 4): " .. bit.bor(8, 4))

-- 测试调试
print("GetMapName(): " .. GetMapName())
print("IsInToolsMode(): " .. tostring(IsInToolsMode()))
print("IsClient(): " .. tostring(IsClient()))

-- 测试随机数
print("RandomInt(1, 10): " .. RandomInt(1, 10))
print("RandomFloat(0, 1): " .. RandomFloat(0, 1))

-- 测试游戏循环
local TestModule = {}
TestModule.tickCount = 0

function TestModule.Update()
    TestModule.tickCount = TestModule.tickCount + 1
    if TestModule.tickCount <= 5 then
        print("TestModule.Update tick: " .. TestModule.tickCount)
    end
    return FrameTime()  -- 返回下次调用间隔
end

GameRules:GetGameModeEntity():SetThink("Update", TestModule)

print("========== 桥接测试结束 ==========")
```

---

## 5. 验收标准

| # | 验收项 | 预期结果 |
|---|--------|---------|
| 1 | Unity 项目能编译通过 | 无编译错误 |
| 2 | xLua 正确集成 | LuaEnv 能创建 |
| 3 | `print()` 输出到 Console | 能看到日志 |
| 4 | `Time()` 返回正确时间 | 返回 float 秒数 |
| 5 | `Vector()` 能创建和运算 | 加减乘除、长度、归一化正常 |
| 6 | `bit` 库能使用 | 位运算结果正确 |
| 7 | `SetThink` 能注册更新 | Update 函数被周期调用 |
| 8 | 无内存泄漏 | 退出时正确释放 |

---

## 6. 测试步骤

1. 打开 Unity 项目
2. 打开场景 `SampleScene`
3. 确保场景中有 `GameEntry` 组件
4. 点击 Play
5. 查看 Console 输出：
   - 应看到 "桥接测试开始"
   - 应看到各项测试结果
   - 应看到 "TestModule.Update tick: 1~5"
6. 停止 Play，确认无报错

---

## 7. 实现顺序

1. 下载并导入 xLua
2. 创建 `LuaManager.cs`
3. 创建 `DotaApiBridge.cs`
4. 创建 `GameEntry.cs`
5. 创建测试脚本 `test_bridge.lua`
6. 配置 xLua 生成器
7. 生成代码并测试

---

## 8. 版本记录

| 版本 | 日期 | 变更内容 |
|------|------|----------|
| v0.1 | 2024-12-31 | 创建规范文档 |
