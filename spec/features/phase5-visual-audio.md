# Phase 5: 表现层移植设计文档

> 本阶段实现 Lua 技能系统与 Unity 表现层（粒子、音效、动画）的 C# 桥接。

---

## 1. 概述

### 1.1 目标

将 Phase 4 中占位的表现层调用（粒子、音效、动画）连接到实际的 Unity 系统。

### 1.2 原则

1. **Lua 层接口不变** - 只实现 C# 桥接
2. **资源异步加载** - 支持 Addressables 或 Resources
3. **对象池复用** - 粒子、音效对象池化

---

## 2. 需要桥接的游廊 API

### 2.1 粒子系统

| 游廊 API | 说明 | Phase 4 状态 |
|----------|------|--------------|
| `ParticleManager:CreateParticle(path, attach, ent)` | 创建粒子 | 占位 print |
| `ParticleManager:SetParticleControl(id, cp, vec)` | 设置控制点 | 占位 |
| `ParticleManager:SetParticleControlEnt(id, cp, ent, attach, offset)` | 控制点绑定实体 | 占位 |
| `ParticleManager:DestroyParticle(id, immediate)` | 销毁粒子 | 占位 |
| `ParticleManager:ReleaseParticleIndex(id)` | 释放索引 | 占位 |

**附着类型 PATTACH_***:
- `PATTACH_ABSORIGIN` - 绝对位置
- `PATTACH_ABSORIGIN_FOLLOW` - 跟随绝对位置
- `PATTACH_CUSTOMORIGIN` - 自定义位置
- `PATTACH_POINT_FOLLOW` - 跟随挂点
- `PATTACH_WORLDORIGIN` - 世界原点

### 2.2 音效系统

| 游廊 API | 说明 | Phase 4 状态 |
|----------|------|--------------|
| `EmitSoundOn(sound, entity)` | 在实体上播放音效 | 无 |
| `EmitSoundOnLocationWithCaster(pos, sound, caster)` | 在位置播放音效 | 无 |
| `StopSoundOn(sound, entity)` | 停止音效 | 无 |
| `StartSoundEvent(sound, entity)` | 开始音效事件 | 无 |

### 2.3 动画系统

| 游廊 API | 说明 | Phase 4 状态 |
|----------|------|--------------|
| `entity:StartGesture(activity)` | 播放手势动画 | 无 |
| `entity:FadeGesture(activity)` | 淡出动画 | 无 |
| `entity:SetSequence(sequence)` | 设置序列 | 无 |
| `PlayAnimation(entity, name, rate)` | 播放动画 | LineEventAnimation 占位 |

---

## 3. C# 架构设计

### 3.1 目录结构

```
Assets/Scripts/
├── Bridge/                      # 桥接层
│   ├── ParticleBridge.cs        # 粒子桥接（注册到 Lua）
│   ├── AudioBridge.cs           # 音效桥接
│   └── AnimationBridge.cs       # 动画桥接
│
├── Services/                    # 服务层
│   ├── VFXService.cs            # VFX 服务（实际实现）
│   ├── AudioService.cs          # 音效服务
│   └── AnimatorService.cs       # 动画服务
│
└── Entity/
    └── GameEntity.cs            # 扩展：添加 Animator、AudioSource 引用
```

### 3.2 类关系

```
Lua 层                          C# 桥接层                      C# 服务层
┌─────────────────┐            ┌─────────────────┐            ┌─────────────────┐
│ ClientParticle  │ ────────▶ │ ParticleBridge  │ ────────▶ │   VFXService    │
│ Manager.lua     │            │   (静态类)      │            │   (单例)        │
└─────────────────┘            └─────────────────┘            └─────────────────┘
                                      │
                                      ▼
                               ┌─────────────────┐
                               │ Unity VFX/      │
                               │ ParticleSystem  │
                               └─────────────────┘
```

---

## 4. 详细实现

### 4.1 ParticleBridge.cs

```csharp
// Assets/Scripts/Bridge/ParticleBridge.cs
using UnityEngine;
using XLua;

namespace CritFramework
{
    [LuaCallCSharp]
    public static class ParticleBridge
    {
        /// <summary>
        /// 创建粒子特效
        /// </summary>
        /// <param name="effectPath">特效资源路径</param>
        /// <param name="attachType">附着类型</param>
        /// <param name="entityId">实体ID（可选）</param>
        /// <returns>粒子实例ID</returns>
        public static int CreateParticle(string effectPath, int attachType, int entityId)
        {
            return VFXService.Instance.CreateParticle(effectPath, attachType, entityId);
        }

        /// <summary>
        /// 设置粒子控制点位置
        /// </summary>
        public static void SetParticleControl(int particleId, int controlPoint, float x, float y, float z)
        {
            VFXService.Instance.SetParticleControl(particleId, controlPoint, new Vector3(x, y, z));
        }

        /// <summary>
        /// 设置粒子控制点绑定实体
        /// </summary>
        public static void SetParticleControlEnt(int particleId, int controlPoint, int entityId, 
            int attachType, float offsetX, float offsetY, float offsetZ)
        {
            VFXService.Instance.SetParticleControlEnt(particleId, controlPoint, entityId, 
                attachType, new Vector3(offsetX, offsetY, offsetZ));
        }

        /// <summary>
        /// 销毁粒子
        /// </summary>
        public static void DestroyParticle(int particleId, bool immediate)
        {
            VFXService.Instance.DestroyParticle(particleId, immediate);
        }

        /// <summary>
        /// 释放粒子索引（回收到池）
        /// </summary>
        public static void ReleaseParticleIndex(int particleId)
        {
            VFXService.Instance.ReleaseParticle(particleId);
        }
    }
}
```

### 4.2 VFXService.cs

```csharp
// Assets/Scripts/Services/VFXService.cs
using UnityEngine;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// VFX 服务 - 管理所有粒子特效
    /// </summary>
    public class VFXService : MonoBehaviour
    {
        public static VFXService Instance { get; private set; }

        // 粒子实例管理
        private Dictionary<int, ParticleInstance> _activeParticles = new();
        private int _nextParticleId = 1;

        // 对象池
        private Dictionary<string, Queue<GameObject>> _particlePools = new();
        private Transform _poolRoot;

        // 附着类型常量
        public const int PATTACH_ABSORIGIN = 0;
        public const int PATTACH_ABSORIGIN_FOLLOW = 1;
        public const int PATTACH_CUSTOMORIGIN = 2;
        public const int PATTACH_POINT_FOLLOW = 3;
        public const int PATTACH_WORLDORIGIN = 4;

        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
                _poolRoot = new GameObject("VFX_Pool").transform;
                _poolRoot.SetParent(transform);
            }
            else
            {
                Destroy(gameObject);
            }
        }

        /// <summary>
        /// 创建粒子特效
        /// </summary>
        public int CreateParticle(string effectPath, int attachType, int entityId)
        {
            int particleId = _nextParticleId++;
            
            // 从池中获取或加载
            GameObject vfxObj = GetFromPool(effectPath);
            if (vfxObj == null)
            {
                // 从 Resources 加载
                GameObject prefab = Resources.Load<GameObject>($"Effects/{effectPath}");
                if (prefab == null)
                {
                    Debug.LogWarning($"[VFXService] 特效不存在: {effectPath}");
                    return -1;
                }
                vfxObj = Instantiate(prefab);
            }

            vfxObj.SetActive(true);

            // 创建实例记录
            var instance = new ParticleInstance
            {
                Id = particleId,
                GameObject = vfxObj,
                EffectPath = effectPath,
                AttachType = attachType,
                EntityId = entityId,
                ParticleSystem = vfxObj.GetComponent<ParticleSystem>()
            };

            // 根据附着类型处理
            ApplyAttachment(instance);

            _activeParticles[particleId] = instance;

            // 播放
            instance.ParticleSystem?.Play();

            return particleId;
        }

        /// <summary>
        /// 设置控制点位置
        /// </summary>
        public void SetParticleControl(int particleId, int controlPoint, Vector3 position)
        {
            if (!_activeParticles.TryGetValue(particleId, out var instance))
                return;

            // 控制点0通常是位置
            if (controlPoint == 0)
            {
                instance.GameObject.transform.position = position;
            }
            
            // 存储控制点供后续使用
            instance.ControlPoints[controlPoint] = position;
        }

        /// <summary>
        /// 销毁粒子
        /// </summary>
        public void DestroyParticle(int particleId, bool immediate)
        {
            if (!_activeParticles.TryGetValue(particleId, out var instance))
                return;

            if (immediate)
            {
                instance.ParticleSystem?.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
                ReleaseParticle(particleId);
            }
            else
            {
                instance.ParticleSystem?.Stop(true, ParticleSystemStopBehavior.StopEmitting);
                // 延迟回收
                StartCoroutine(DelayRelease(particleId, 2f));
            }
        }

        /// <summary>
        /// 释放粒子回池
        /// </summary>
        public void ReleaseParticle(int particleId)
        {
            if (!_activeParticles.TryGetValue(particleId, out var instance))
                return;

            _activeParticles.Remove(particleId);
            ReturnToPool(instance.EffectPath, instance.GameObject);
        }

        private void ApplyAttachment(ParticleInstance instance)
        {
            var entityBridge = EntityBridge.GetEntity(instance.EntityId);
            if (entityBridge == null) return;

            switch (instance.AttachType)
            {
                case PATTACH_ABSORIGIN:
                    instance.GameObject.transform.position = entityBridge.transform.position;
                    break;

                case PATTACH_ABSORIGIN_FOLLOW:
                    instance.GameObject.transform.SetParent(entityBridge.transform);
                    instance.GameObject.transform.localPosition = Vector3.zero;
                    break;

                case PATTACH_WORLDORIGIN:
                    instance.GameObject.transform.position = Vector3.zero;
                    break;
            }
        }

        private GameObject GetFromPool(string path)
        {
            if (_particlePools.TryGetValue(path, out var pool) && pool.Count > 0)
            {
                return pool.Dequeue();
            }
            return null;
        }

        private void ReturnToPool(string path, GameObject obj)
        {
            obj.SetActive(false);
            obj.transform.SetParent(_poolRoot);

            if (!_particlePools.ContainsKey(path))
                _particlePools[path] = new Queue<GameObject>();

            _particlePools[path].Enqueue(obj);
        }

        private System.Collections.IEnumerator DelayRelease(int particleId, float delay)
        {
            yield return new WaitForSeconds(delay);
            ReleaseParticle(particleId);
        }

        /// <summary>
        /// 粒子实例数据
        /// </summary>
        private class ParticleInstance
        {
            public int Id;
            public GameObject GameObject;
            public string EffectPath;
            public int AttachType;
            public int EntityId;
            public ParticleSystem ParticleSystem;
            public Dictionary<int, Vector3> ControlPoints = new();
        }
    }
}
```

### 4.3 AudioBridge.cs

```csharp
// Assets/Scripts/Bridge/AudioBridge.cs
using UnityEngine;
using XLua;

namespace CritFramework
{
    [LuaCallCSharp]
    public static class AudioBridge
    {
        /// <summary>
        /// 在实体上播放音效
        /// </summary>
        public static void EmitSoundOn(string soundName, int entityId)
        {
            AudioService.Instance.PlaySound(soundName, entityId);
        }

        /// <summary>
        /// 在位置播放音效
        /// </summary>
        public static void EmitSoundOnLocation(float x, float y, float z, string soundName)
        {
            AudioService.Instance.PlaySoundAtPosition(soundName, new Vector3(x, y, z));
        }

        /// <summary>
        /// 停止音效
        /// </summary>
        public static void StopSoundOn(string soundName, int entityId)
        {
            AudioService.Instance.StopSound(soundName, entityId);
        }
    }
}
```

### 4.4 AudioService.cs

```csharp
// Assets/Scripts/Services/AudioService.cs
using UnityEngine;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// 音效服务
    /// </summary>
    public class AudioService : MonoBehaviour
    {
        public static AudioService Instance { get; private set; }

        // 音效缓存
        private Dictionary<string, AudioClip> _clipCache = new();
        
        // 实体上的活跃音效
        private Dictionary<int, Dictionary<string, AudioSource>> _entitySounds = new();

        // 全局音效池
        private Queue<AudioSource> _audioSourcePool = new();
        private Transform _poolRoot;

        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
                _poolRoot = new GameObject("Audio_Pool").transform;
                _poolRoot.SetParent(transform);
            }
            else
            {
                Destroy(gameObject);
            }
        }

        /// <summary>
        /// 在实体上播放音效
        /// </summary>
        public void PlaySound(string soundName, int entityId)
        {
            var entity = EntityBridge.GetEntity(entityId);
            if (entity == null)
            {
                Debug.LogWarning($"[AudioService] 实体不存在: {entityId}");
                return;
            }

            AudioClip clip = LoadClip(soundName);
            if (clip == null) return;

            // 获取或创建 AudioSource
            AudioSource source = GetOrCreateSourceForEntity(entityId, soundName);
            source.transform.position = entity.transform.position;
            source.clip = clip;
            source.Play();
        }

        /// <summary>
        /// 在位置播放音效
        /// </summary>
        public void PlaySoundAtPosition(string soundName, Vector3 position)
        {
            AudioClip clip = LoadClip(soundName);
            if (clip == null) return;

            // 使用池化的 AudioSource
            AudioSource source = GetPooledSource();
            source.transform.position = position;
            source.clip = clip;
            source.Play();

            // 播放完毕后回收
            StartCoroutine(ReturnToPoolAfterPlay(source, clip.length + 0.1f));
        }

        /// <summary>
        /// 停止音效
        /// </summary>
        public void StopSound(string soundName, int entityId)
        {
            if (!_entitySounds.TryGetValue(entityId, out var sounds))
                return;

            if (sounds.TryGetValue(soundName, out var source))
            {
                source.Stop();
            }
        }

        private AudioClip LoadClip(string soundName)
        {
            if (_clipCache.TryGetValue(soundName, out var cached))
                return cached;

            AudioClip clip = Resources.Load<AudioClip>($"Audio/{soundName}");
            if (clip == null)
            {
                Debug.LogWarning($"[AudioService] 音效不存在: {soundName}");
                return null;
            }

            _clipCache[soundName] = clip;
            return clip;
        }

        private AudioSource GetOrCreateSourceForEntity(int entityId, string soundName)
        {
            if (!_entitySounds.ContainsKey(entityId))
                _entitySounds[entityId] = new Dictionary<string, AudioSource>();

            var sounds = _entitySounds[entityId];
            
            if (!sounds.TryGetValue(soundName, out var source))
            {
                var entity = EntityBridge.GetEntity(entityId);
                source = entity.gameObject.AddComponent<AudioSource>();
                source.spatialBlend = 1f; // 3D 音效
                sounds[soundName] = source;
            }

            return source;
        }

        private AudioSource GetPooledSource()
        {
            if (_audioSourcePool.Count > 0)
            {
                var source = _audioSourcePool.Dequeue();
                source.gameObject.SetActive(true);
                return source;
            }

            var go = new GameObject("PooledAudioSource");
            go.transform.SetParent(_poolRoot);
            var newSource = go.AddComponent<AudioSource>();
            newSource.spatialBlend = 1f;
            return newSource;
        }

        private System.Collections.IEnumerator ReturnToPoolAfterPlay(AudioSource source, float delay)
        {
            yield return new WaitForSeconds(delay);
            source.gameObject.SetActive(false);
            _audioSourcePool.Enqueue(source);
        }
    }
}
```

### 4.5 AnimationBridge.cs

```csharp
// Assets/Scripts/Bridge/AnimationBridge.cs
using UnityEngine;
using XLua;

namespace CritFramework
{
    [LuaCallCSharp]
    public static class AnimationBridge
    {
        /// <summary>
        /// 播放动画
        /// </summary>
        public static void PlayAnimation(int entityId, string animName, float rate)
        {
            AnimatorService.Instance.PlayAnimation(entityId, animName, rate);
        }

        /// <summary>
        /// 停止动画
        /// </summary>
        public static void StopAnimation(int entityId, string animName)
        {
            AnimatorService.Instance.StopAnimation(entityId, animName);
        }

        /// <summary>
        /// 设置动画速度
        /// </summary>
        public static void SetAnimationSpeed(int entityId, float speed)
        {
            AnimatorService.Instance.SetAnimationSpeed(entityId, speed);
        }

        /// <summary>
        /// 播放手势动画（叠加层）
        /// </summary>
        public static void StartGesture(int entityId, string gestureName)
        {
            AnimatorService.Instance.PlayGesture(entityId, gestureName);
        }

        /// <summary>
        /// 淡出手势动画
        /// </summary>
        public static void FadeGesture(int entityId, string gestureName)
        {
            AnimatorService.Instance.FadeGesture(entityId, gestureName);
        }
    }
}
```

### 4.6 AnimatorService.cs

```csharp
// Assets/Scripts/Services/AnimatorService.cs
using UnityEngine;
using System.Collections.Generic;

namespace CritFramework
{
    /// <summary>
    /// 动画服务
    /// </summary>
    public class AnimatorService : MonoBehaviour
    {
        public static AnimatorService Instance { get; private set; }

        // 缓存实体的 Animator
        private Dictionary<int, Animator> _entityAnimators = new();

        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
            }
            else
            {
                Destroy(gameObject);
            }
        }

        /// <summary>
        /// 播放动画
        /// </summary>
        public void PlayAnimation(int entityId, string animName, float rate)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            animator.speed = rate > 0 ? rate : 1f;
            animator.Play(animName, 0, 0f);
        }

        /// <summary>
        /// 停止动画
        /// </summary>
        public void StopAnimation(int entityId, string animName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            // 过渡到 Idle
            animator.CrossFade("Idle", 0.1f);
        }

        /// <summary>
        /// 设置动画速度
        /// </summary>
        public void SetAnimationSpeed(int entityId, float speed)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            animator.speed = speed;
        }

        /// <summary>
        /// 播放手势动画（上半身叠加）
        /// </summary>
        public void PlayGesture(int entityId, string gestureName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            // 在叠加层播放（假设层1是手势层）
            if (animator.layerCount > 1)
            {
                animator.Play(gestureName, 1, 0f);
            }
            else
            {
                animator.Play(gestureName, 0, 0f);
            }
        }

        /// <summary>
        /// 淡出手势动画
        /// </summary>
        public void FadeGesture(int entityId, string gestureName)
        {
            Animator animator = GetAnimator(entityId);
            if (animator == null) return;

            if (animator.layerCount > 1)
            {
                animator.CrossFade("Empty", 0.2f, 1);
            }
        }

        private Animator GetAnimator(int entityId)
        {
            if (_entityAnimators.TryGetValue(entityId, out var cached))
                return cached;

            var entity = EntityBridge.GetEntity(entityId);
            if (entity == null)
            {
                Debug.LogWarning($"[AnimatorService] 实体不存在: {entityId}");
                return null;
            }

            var animator = entity.GetComponentInChildren<Animator>();
            if (animator == null)
            {
                Debug.LogWarning($"[AnimatorService] 实体没有 Animator: {entityId}");
                return null;
            }

            _entityAnimators[entityId] = animator;
            return animator;
        }

        /// <summary>
        /// 清理实体动画缓存
        /// </summary>
        public void RemoveEntity(int entityId)
        {
            _entityAnimators.Remove(entityId);
        }
    }
}
```

---

## 5. Lua 层对接

### 5.1 更新 ClientParticleManager.lua

```lua
-- 将占位实现替换为 C# 桥接调用
function ClientParticleManager:CreateParticle(particlePath, attachType, entity, playerID)
    local entityId = entity and entity:GetInsid() or 0
    local particleId = CS.CritFramework.ParticleBridge.CreateParticle(particlePath, attachType, entityId)
    return particleId
end

function ClientParticleManager:SetParticleControl(particleId, controlPoint, position)
    CS.CritFramework.ParticleBridge.SetParticleControl(particleId, controlPoint, position.x, position.y, position.z)
end

function ClientParticleManager:DestroyParticle(particleId, immediate)
    CS.CritFramework.ParticleBridge.DestroyParticle(particleId, immediate or false)
end
```

### 5.2 更新 LineEventSound 占位

```lua
function LineEventSound:Start()
    local soundName = self._config.sound or "default_sound"
    local entityId = self._skillTimeLine:GetCasterInsId()
    CS.CritFramework.AudioBridge.EmitSoundOn(soundName, entityId)
end
```

### 5.3 更新 LineEventAnimation 占位

```lua
function LineEventAnimation:Start()
    local animName = self._config.animation or "attack"
    local rate = self._config.rate or 1.0
    local entityId = self._skillTimeLine:GetCasterInsId()
    CS.CritFramework.AnimationBridge.PlayAnimation(entityId, animName, rate)
end
```

---

## 6. XLua 配置更新

### 6.1 添加到 GenConfig.cs

```csharp
[LuaCallCSharp]
public static List<Type> LuaCallCSharpList = new List<Type>()
{
    // 已有...
    
    // Phase 5 桥接
    typeof(CritFramework.ParticleBridge),
    typeof(CritFramework.AudioBridge),
    typeof(CritFramework.AnimationBridge),
};
```

---

## 7. 实施步骤

### 7.1 Phase 5.1: 粒子系统

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 VFXService.cs | 编译通过 |
| 2 | 创建 ParticleBridge.cs | 编译通过 |
| 3 | 更新 XLua 生成配置 | 生成 Wrap |
| 4 | 更新 ClientParticleManager.lua | 调用成功 |
| 5 | 创建测试特效预制体 | 显示正常 |

### 7.2 Phase 5.2: 音效系统

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 AudioService.cs | 编译通过 |
| 2 | 创建 AudioBridge.cs | 编译通过 |
| 3 | 更新 LineEventSound.lua | 调用成功 |
| 4 | 添加测试音效 | 播放正常 |

### 7.3 Phase 5.3: 动画系统

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建 AnimatorService.cs | 编译通过 |
| 2 | 创建 AnimationBridge.cs | 编译通过 |
| 3 | 更新 LineEventAnimation.lua | 调用成功 |
| 4 | 测试单位动画 | 播放正常 |

### 7.4 Phase 5.4: 集成测试

| 步骤 | 内容 | 验证 |
|------|------|------|
| 1 | 创建测试技能配置 | 配置读取 |
| 2 | 完整技能释放测试 | 全部表现正常 |
| 3 | 性能测试 | 无明显卡顿 |

---

## 8. 资源规范

### 8.1 特效资源

- 路径：`Resources/Effects/{effectPath}`
- 格式：Prefab (含 ParticleSystem)
- 命名：与原 Dota2 粒子路径对应

### 8.2 音效资源

- 路径：`Resources/Audio/{soundName}`
- 格式：AudioClip (.wav, .ogg)
- 命名：与原 Dota2 音效名对应

### 8.3 动画资源

- 路径：单位 Prefab 内的 Animator
- 控制器：每个单位一个 AnimatorController
- 动画名：attack, idle, run, skill_1 等

---

## 9. 验收标准

- [ ] 粒子特效能正确创建和销毁
- [ ] 粒子能跟随实体移动
- [ ] 音效能在实体和位置播放
- [ ] 动画能正确播放和过渡
- [ ] 资源能正确加载和缓存
- [ ] 对象池正常工作
- [ ] 无内存泄漏

---

## 10. 版本记录

| 版本 | 日期 | 变更 |
|------|------|------|
| v0.1 | 2024-12-31 | 创建设计文档 |
