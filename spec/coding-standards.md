# 代码规范

> 本文档定义项目的代码风格约束，AI 生成代码时必须严格遵循。

---

## 命名规范

### 类型命名（PascalCase）

| 类型 | 规则 | 示例 |
|------|------|------|
| 类 | PascalCase | `RoomManager`, `SkillBase` |
| 接口 | I + PascalCase | `ISkillEffect`, `IDamageable` |
| 枚举 | PascalCase | `SkillType`, `RoomState` |
| 枚举值 | PascalCase | `SkillType.Melee`, `RoomState.Active` |
| 结构体 | PascalCase | `DamageInfo`, `RoomData` |

### 成员命名

| 成员类型 | 规则 | 示例 |
|----------|------|------|
| 公共字段 | PascalCase | `public int Health;` |
| 私有字段 | _camelCase | `private int _currentHp;` |
| 属性 | PascalCase | `public int MaxHp { get; set; }` |
| 方法 | PascalCase | `public void TakeDamage()` |
| 参数 | camelCase | `void SetHp(int newValue)` |
| 局部变量 | camelCase | `var currentTarget = ...` |
| 常量 | UPPER_SNAKE | `public const int MAX_LEVEL = 99;` |

### 文件命名

| 类型 | 规则 | 示例 |
|------|------|------|
| C# 脚本 | 与类名一致 | `RoomManager.cs` |
| 数据模型 | XxxData | `SkillData.cs` |
| 接口 | IXxx | `IDamageable.cs` |
| 枚举 | XxxType/XxxState | `SkillType.cs` |
| 配置 | XxxConfig | `GameConfig.cs` |

---

## 代码结构

### 类内成员顺序

```csharp
public class ExampleClass : MonoBehaviour
{
    // 1. 常量
    public const int MAX_COUNT = 10;
    
    // 2. 静态成员
    public static ExampleClass Instance { get; private set; }
    
    // 3. 序列化字段（Inspector 可见）
    [SerializeField] private int _initialValue;
    [SerializeField] private GameObject _prefab;
    
    // 4. 私有字段
    private int _currentValue;
    private List<GameObject> _objects;
    
    // 5. 公共属性
    public int CurrentValue => _currentValue;
    
    // 6. Unity 生命周期方法（按执行顺序）
    private void Awake() { }
    private void OnEnable() { }
    private void Start() { }
    private void Update() { }
    private void FixedUpdate() { }
    private void OnDisable() { }
    private void OnDestroy() { }
    
    // 7. 公共方法
    public void DoSomething() { }
    
    // 8. 私有方法
    private void HandleInternal() { }
}
```

### 区域划分（可选）

```csharp
public class LargeClass : MonoBehaviour
{
    #region Constants
    // ...
    #endregion
    
    #region Fields
    // ...
    #endregion
    
    #region Unity Lifecycle
    // ...
    #endregion
    
    #region Public Methods
    // ...
    #endregion
    
    #region Private Methods
    // ...
    #endregion
}
```

---

## 注释规范

### 文件头注释（所有新文件必须）

```csharp
/// <summary>
/// 房间管理器 - 负责房间的生成、切换和销毁
/// </summary>
/// <remarks>
/// 依赖: DataManager, EventCenter
/// 配置: rooms.csv
/// </remarks>
public class RoomManager : MonoBehaviour
```

### 方法注释（公共方法必须）

```csharp
/// <summary>
/// 加载指定房间
/// </summary>
/// <param name="roomId">房间ID，对应 rooms.csv 中的 id 列</param>
/// <returns>是否加载成功</returns>
public bool LoadRoom(int roomId)
```

### 行内注释

```csharp
// 计算伤害衰减（距离每增加1单位，伤害减少10%）
float damageMultiplier = 1f - (distance * 0.1f);
```

---

## 格式规范

### 大括号

```csharp
// ✅ 正确：大括号独占一行（Allman 风格）
public void Method()
{
    if (condition)
    {
        // ...
    }
}

// ❌ 错误：K&R 风格
public void Method() {
    if (condition) {
        // ...
    }
}
```

### 空格与缩进

- 使用 **4 空格缩进**（不用 Tab）
- 二元运算符两侧加空格：`a + b`
- 逗号后加空格：`Method(a, b, c)`
- 括号内不加空格：`Method(value)` 而非 `Method( value )`

### 空行

```csharp
public class Example
{
    private int _value;
    
    // 字段与方法之间空一行
    public void MethodA()
    {
        // ...
    }
    
    // 方法之间空一行
    public void MethodB()
    {
        // ...
    }
}
```

---

## Unity 特定规范

### SerializeField 使用

```csharp
// ✅ 推荐：私有字段 + SerializeField
[SerializeField] private GameObject _prefab;

// ❌ 避免：公共字段暴露
public GameObject prefab;
```

### GetComponent 缓存

```csharp
// ✅ 正确：在 Awake 缓存
private Rigidbody _rb;

private void Awake()
{
    _rb = GetComponent<Rigidbody>();
}

private void FixedUpdate()
{
    _rb.AddForce(Vector3.up);
}

// ❌ 错误：每帧获取
private void FixedUpdate()
{
    GetComponent<Rigidbody>().AddForce(Vector3.up);
}
```

### 协程命名

```csharp
// 协程方法以 Coroutine 或 Co_ 前缀/后缀
private IEnumerator SpawnEnemiesCoroutine()
{
    // ...
}
```

---

## 禁止事项清单

| 禁止 | 原因 | 替代方案 |
|------|------|----------|
| `GameObject.Find()` | 性能差，耦合高 | 引用注入或事件 |
| `SendMessage()` | 字符串调用，无类型安全 | 直接调用或事件 |
| 硬编码字符串路径 | 易出错，难维护 | 常量或配置 |
| `public` 字段 | 破坏封装 | 属性或 SerializeField |
| 魔法数字 | 难以理解和维护 | 常量或 CSV 配置 |
| `async void` | 异常无法捕获 | `async Task` |

---

## 版本记录

| 版本 | 日期 | 变更内容 |
|------|------|----------|
| v0.1 | 2024-12-30 | 初始规范定义 |

