--[[critcore/skill/SkillModule.lua]]
--- 技能模块 - Phase 4 移植版
--- 负责管理游戏中的技能系统，包括技能释放、Buff效果和被动技能

-- 引入基础库
require("critcore.skill.lib.Classnew")
require("critcore.skill.lib.Define")
require("critcore.skill.lib.Message")
require("critcore.skill.lib.Debug")
require("critcore.skill.lib.pool_manager")

-- 引入技能相关组件
require("critcore.skill.lib.LayeredAttributeSystem")
require("critcore.skill.SkillManager")
require("critcore.skill.buff.BuffManager")
require("critcore.skill.passive.PassiveSkillManager")
require("critcore.skill.SkillAPI")

---@type SKillManager 技能管理器实例
---@diagnostic disable-next-line: assign-type-mismatch
SkillManagerInstance = nil
---@type BuffManager Buff管理器实例
---@diagnostic disable-next-line: assign-type-mismatch
BuffManagerInstance = nil
---@type PassiveSkillManager 被动技能管理器实例
---@diagnostic disable-next-line: assign-type-mismatch
PassiveSkillManagerInstance = nil

--- 技能模块主体
SkillModule = {}

local _M = SkillModule

--- 初始化技能模块
function _M.Init()
    -- 创建各个管理器实例
    SkillManagerInstance = SkillManager.New()
    BuffManagerInstance = BuffManager.New()
    PassiveSkillManagerInstance = PassiveSkillManager.New()
    PassiveSkillManagerInstance:Setup()

    -- 使用已移植的 SetThink 注册更新循环
    SetThink("SkillModule_Update", function()
        return _M.Update()
    end, "SkillModule", 0)
    
    print("[SkillModule] 技能模块初始化完成")
end

-- 清空技能模块
function _M.Clear()
    if SkillManagerInstance then
        SkillManagerInstance:Clear()
    end
    if BuffManagerInstance then
        BuffManagerInstance:Clear()
    end
    if PassiveSkillManagerInstance then
        PassiveSkillManagerInstance:Clear()
    end
    print("[SkillModule] 技能模块已清空")
end

--- 技能模块的更新函数
---@return number 返回下一次调用的时间间隔
function _M.Update()
    -- 获取当前帧时间间隔
    local delta = FrameTime()
    
    -- 更新各个管理器
    if SkillManagerInstance then
        SkillManagerInstance:Update(delta)
    end
    if BuffManagerInstance then
        BuffManagerInstance:Update(delta)
    end
    if PassiveSkillManagerInstance then
        PassiveSkillManagerInstance:Update(delta)
    end

    -- 返回下一帧的更新间隔
    return delta
end

print("[Phase 4] SkillModule.lua 加载完成")
