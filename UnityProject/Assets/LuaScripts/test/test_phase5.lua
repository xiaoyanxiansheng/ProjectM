--[[test/test_phase5.lua]]
-- Phase 5 表现层测试脚本
-- 测试粒子、音效、动画桥接功能

print("========== Phase 5 表现层测试 ==========")

-- ==================== 1. 测试 ParticleManager ====================
print("[1] 测试 ParticleManager...")

-- 检查 ParticleManager 是否存在
if ParticleManager then
    print("    ✓ ParticleManager 存在")
    
    -- 测试创建粒子（路径不存在也不会报错，只是没有实际效果）
    local particleId = ParticleManager:CreateParticle("test_particle", PATTACH_ABSORIGIN, nil)
    if particleId and particleId > 0 then
        print("    ✓ CreateParticle 返回 ID:", particleId)
        
        -- 测试设置控制点
        ParticleManager:SetParticleControl(particleId, 0, Vector(10, 0, 0))
        print("    ✓ SetParticleControl 调用成功")
        
        -- 测试销毁
        ParticleManager:DestroyParticle(particleId, false)
        print("    ✓ DestroyParticle 调用成功")
    else
        print("    ✗ CreateParticle 失败")
    end
else
    print("    ✗ ParticleManager 不存在")
end

-- ==================== 2. 测试 ClientParticleManager ====================
print("[2] 测试 ClientParticleManager...")

require("critcore.skill.lib.ClientParticleManager")

if ClientParticleManager then
    print("    ✓ ClientParticleManager 存在")
    
    local cpId = ClientParticleManager:CreateParticle("effect/test", 1, nil, nil)
    if cpId then
        print("    ✓ ClientParticleManager:CreateParticle 返回 ID:", cpId)
        ClientParticleManager:SetParticleControl(cpId, 0, Vector(5, 5, 5))
        print("    ✓ SetParticleControl 调用成功")
        ClientParticleManager:DestroyParticle(cpId, true)
        print("    ✓ DestroyParticle 调用成功")
    end
else
    print("    ✗ ClientParticleManager 不存在")
end

-- ==================== 3. 测试音效 API ====================
print("[3] 测试音效 API...")

if EmitSoundOn then
    print("    ✓ EmitSoundOn 函数存在")
    
    -- 测试播放音效（路径不存在也不会报错）
    local soundId = EmitSoundOn("test_sound", 0)
    print("    ✓ EmitSoundOn 调用成功, 返回:", tostring(soundId))
else
    print("    ✗ EmitSoundOn 函数不存在")
end

if EmitSoundOnLocationWithCaster then
    print("    ✓ EmitSoundOnLocationWithCaster 函数存在")
    EmitSoundOnLocationWithCaster(Vector(0, 0, 0), "test_sound_2", nil)
    print("    ✓ EmitSoundOnLocationWithCaster 调用成功")
else
    print("    ✗ EmitSoundOnLocationWithCaster 函数不存在")
end

if StopSoundOn then
    print("    ✓ StopSoundOn 函数存在")
    StopSoundOn("test_sound", 0)
    print("    ✓ StopSoundOn 调用成功")
else
    print("    ✗ StopSoundOn 函数不存在")
end

-- ==================== 4. 测试动画 API ====================
print("[4] 测试动画 API...")

if PlayAnimation then
    print("    ✓ PlayAnimation 函数存在")
    PlayAnimation(0, "Idle", 1.0)
    print("    ✓ PlayAnimation 调用成功")
else
    print("    ✗ PlayAnimation 函数不存在")
end

if StopAnimation then
    print("    ✓ StopAnimation 函数存在")
else
    print("    ✗ StopAnimation 函数不存在")
end

if SetAnimationSpeed then
    print("    ✓ SetAnimationSpeed 函数存在")
else
    print("    ✗ SetAnimationSpeed 函数不存在")
end

if StartGesture then
    print("    ✓ StartGesture 函数存在")
else
    print("    ✗ StartGesture 函数不存在")
end

-- ==================== 5. 测试 Activity 常量 ====================
print("[5] 测试 Activity 常量...")

if ACT_DOTA_IDLE then
    print("    ✓ ACT_DOTA_IDLE =", ACT_DOTA_IDLE)
else
    print("    ✗ ACT_DOTA_IDLE 不存在")
end

if ACT_DOTA_ATTACK then
    print("    ✓ ACT_DOTA_ATTACK =", ACT_DOTA_ATTACK)
else
    print("    ✗ ACT_DOTA_ATTACK 不存在")
end

-- ==================== 6. 测试 PATTACH 常量 ====================
print("[6] 测试 PATTACH 常量...")

if PATTACH_ABSORIGIN ~= nil then
    print("    ✓ PATTACH_ABSORIGIN =", PATTACH_ABSORIGIN)
else
    print("    ✗ PATTACH_ABSORIGIN 不存在")
end

if PATTACH_ABSORIGIN_FOLLOW ~= nil then
    print("    ✓ PATTACH_ABSORIGIN_FOLLOW =", PATTACH_ABSORIGIN_FOLLOW)
else
    print("    ✗ PATTACH_ABSORIGIN_FOLLOW 不存在")
end

if PATTACH_WORLDORIGIN ~= nil then
    print("    ✓ PATTACH_WORLDORIGIN =", PATTACH_WORLDORIGIN)
else
    print("    ✗ PATTACH_WORLDORIGIN 不存在")
end

-- ==================== 7. 测试 C# 服务访问 ====================
print("[7] 测试 C# 服务访问...")

local success, err = pcall(function()
    local vfxService = CS.CritFramework.VFXService.Instance
    if vfxService then
        print("    ✓ VFXService.Instance 可访问")
        local count = vfxService:GetActiveParticleCount()
        print("    ✓ ActiveParticleCount:", count)
    end
end)
if not success then
    print("    ✗ VFXService 访问失败:", err)
end

local success2, err2 = pcall(function()
    local audioService = CS.CritFramework.AudioService.Instance
    if audioService then
        print("    ✓ AudioService.Instance 可访问")
    end
end)
if not success2 then
    print("    ✗ AudioService 访问失败:", err2)
end

local success3, err3 = pcall(function()
    local animService = CS.CritFramework.AnimatorService.Instance
    if animService then
        print("    ✓ AnimatorService.Instance 可访问")
    end
end)
if not success3 then
    print("    ✗ AnimatorService 访问失败:", err3)
end

-- ==================== 8. 测试 LineEvent 表现层 ====================
print("[8] 测试 LineEvent 表现层...")

require("critcore.skill.lib.Classnew")
require("critcore.skill.lib.Define")
require("critcore.skill.lib.Debug")
require("critcore.skill.lineEvent.SkillLineEvent")
require("critcore.skill.lineEvent.LineEventStubs")

if LineEventSound then
    print("    ✓ LineEventSound 存在")
    if LineEventSound.OnInvoke then
        print("    ✓ LineEventSound:OnInvoke 方法存在")
    end
else
    print("    ✗ LineEventSound 不存在")
end

if LineEventAnimation then
    print("    ✓ LineEventAnimation 存在")
    if LineEventAnimation.OnInvoke then
        print("    ✓ LineEventAnimation:OnInvoke 方法存在")
    end
else
    print("    ✗ LineEventAnimation 不存在")
end

if LineEventParticle then
    print("    ✓ LineEventParticle 存在")
    if LineEventParticle.OnInvoke then
        print("    ✓ LineEventParticle:OnInvoke 方法存在")
    end
    if LineEventParticle.OnEnd then
        print("    ✓ LineEventParticle:OnEnd 方法存在")
    end
else
    print("    ✗ LineEventParticle 不存在")
end

print("========== Phase 5 测试完成 ==========")
