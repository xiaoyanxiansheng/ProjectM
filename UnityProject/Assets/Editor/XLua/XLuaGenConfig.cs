using System;
using System.Collections.Generic;
using UnityEngine;
using XLua;

/// <summary>
/// xLua 代码生成配置
/// 定义哪些类型需要生成 Wrap 代码
/// </summary>
public static class XLuaGenConfig
{
    /// <summary>
    /// 需要生成 Wrap 的类型列表
    /// </summary>
    [LuaCallCSharp]
    public static List<Type> LuaCallCSharpList = new List<Type>()
    {
        // Unity 核心类型
        typeof(UnityEngine.Object),
        typeof(GameObject),
        typeof(Transform),
        typeof(Component),
        typeof(MonoBehaviour),
        typeof(Behaviour),
        
        // 数学类型
        typeof(Vector2),
        typeof(Vector3),
        typeof(Vector4),
        typeof(Quaternion),
        typeof(Color),
        typeof(Mathf),
        
        // 时间
        typeof(Time),
        
        // 调试
        typeof(Debug),
        
        // 场景
        typeof(UnityEngine.SceneManagement.SceneManager),
        typeof(UnityEngine.SceneManagement.Scene),
        
        // 随机
        typeof(UnityEngine.Random),
        
        // 应用
        typeof(Application),
        
        // 自定义框架类
        typeof(CritFramework.LuaManager),
        typeof(CritFramework.GameEntry),
    };

    /// <summary>
    /// 黑名单 - 不生成的成员
    /// </summary>
    [BlackList]
    public static List<List<string>> BlackList = new List<List<string>>()
    {
        // Unity 5.x 及更高版本中已弃用的 API
        new List<string>() { "UnityEngine.MonoBehaviour", "runInEditMode" },
    };

    /// <summary>
    /// C# 静态方法可以作为 Lua 函数使用
    /// </summary>
    [CSharpCallLua]
    public static List<Type> CSharpCallLuaList = new List<Type>()
    {
        typeof(Action),
        typeof(Action<string>),
        typeof(Action<float>),
        typeof(Action<int>),
        typeof(Func<bool>),
        typeof(Func<float>),
        typeof(Func<int>),
        typeof(Func<string>),
        typeof(Func<int, int, int>),
        typeof(Func<float, float, float>),
    };
}
