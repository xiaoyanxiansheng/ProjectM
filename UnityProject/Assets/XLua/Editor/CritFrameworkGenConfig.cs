using System;
using System.Collections.Generic;
using XLua;
using UnityEngine;

namespace CritFramework.XLuaConfig
{
    /// <summary>
    /// Crit Framework XLua 配置
    /// 配置需要在 Lua 中访问的 C# 类型
    /// </summary>
    public static class CritFrameworkGenConfig
    {
        /// <summary>
        /// 可以在 Lua 中调用的 C# 类型
        /// </summary>
        [LuaCallCSharp]
        public static List<Type> LuaCallCSharpList = new List<Type>()
        {
            // Unity 基础类型
            typeof(UnityEngine.Object),
            typeof(GameObject),
            typeof(Transform),
            typeof(Component),
            typeof(Behaviour),
            typeof(MonoBehaviour),
            typeof(ParticleSystem),
            typeof(AudioSource),
            typeof(AudioClip),
            typeof(Animator),
            typeof(AnimatorStateInfo),
            
            // Unity 数学类型
            typeof(Vector2),
            typeof(Vector3),
            typeof(Vector4),
            typeof(Quaternion),
            typeof(Color),
            typeof(Mathf),
            
            // Unity 工具类
            typeof(Debug),
            typeof(Time),
            typeof(Application),
            typeof(Resources),
            typeof(PlayerPrefs),
            
            // Crit Framework 服务
            typeof(CritFramework.EntityService),
            typeof(CritFramework.VFXService),
            typeof(CritFramework.AudioService),
            typeof(CritFramework.AnimatorService),
            typeof(CritFramework.LuaManager),
            typeof(CritFramework.ResourceService),
            typeof(CritFramework.CombatService),
            
            // Crit Framework Stub 系统
            typeof(CritFramework.StubConfig),
            
            // Crit Framework 数据类型
            typeof(CritFramework.EntityData),
            
            // Phase 7: 流程相关
            typeof(CritFramework.SaveService),
            typeof(CritFramework.SimpleUIService),
            typeof(CritFramework.GameFlowBridge),
        };

        /// <summary>
        /// 需要生成适配代码的黑名单
        /// 某些类型的成员可能不需要或会导致问题
        /// </summary>
        [BlackList]
        public static List<List<string>> BlackList = new List<List<string>>()
        {
            new List<string>() { "UnityEngine.Debug", "Log", "System.Object" },
            new List<string>() { "UnityEngine.MonoBehaviour", "runInEditMode" },
        };

        /// <summary>
        /// C# 静态方法调用优化
        /// </summary>
        [CSharpCallLua]
        public static List<Type> CSharpCallLuaList = new List<Type>()
        {
            typeof(Action),
            typeof(Action<float>),
            typeof(Action<string>),
            typeof(Action<int>),
            typeof(Func<float>),
            typeof(Func<bool>),
        };
    }
}
