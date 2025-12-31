--[[critcore/class/unit.lua]]
--[=[
    基础单位类 - Phase 3 精简版
    保留核心功能，移除 Dota2 API 依赖
]=]

-- 加载依赖
require("critcore.skill.lib.Classnew")
require("critcore.class.attr")

---@class CUnitBase
CUnitBase = Classnew("CUnitBase")

---@enum EnumUnitCamp 单位的阵营
EnumUnitCamp = {
    -- 中立阵营
    Neutrality = 0,
    -- 与玩家同一阵营
    Player = 1,
    -- 与怪物同一阵营
    Monster = 2,
}

---@enum EnumUnitType 单位的类型
EnumUnitType = {
    -- 普通单位
    Other = 0,
    -- 英雄
    Hero = 1,
}

--[================[创建单位类]================]
---@param id number 编号
---@param position Vector 位置
---@param die_callback fun(insid:integer, unit:CUnitBase, atker:CUnitBase|nil)|nil 死亡时的回调函数
---@param heroid integer|nil 是英雄
---@param player any|nil 主人
---@param isspecial boolean|nil 是特殊单位
---@param attrbase number|nil 属性基数
---@param owner CUnitBase|nil 归属单位
---@return CUnitBase
function CreateClass_UnitBase(id, position, die_callback, heroid, player, isspecial, attrbase, owner)
    return CUnitBase(id, position, die_callback, heroid, player, isspecial, attrbase, owner)
end

--[================[构造函数]================]
---@param id number 编号
---@param position Vector 位置
---@param die_callback fun(insid:integer, unit:CUnitBase, atker:CUnitBase|nil)|nil 死亡时的回调函数
---@param heroid integer|nil 是英雄
---@param player any|nil 主人
---@param isspecial boolean|nil 是特殊单位
---@param attrbase number|nil 属性基数
---@param owner CUnitBase|nil 归属单位
function CUnitBase:constructor(id, position, die_callback, heroid, player, isspecial, attrbase, owner)
    -- 实例ID（从 Units 管理器获取）
    self.__Index = Units:GetNewInsid()

    -- 单位ID
    self.__UnitId = id

    ---@type EnumUnitType 类型
    self.__Type = EnumUnitType.Other
    if heroid then
        self.__HeroId = heroid
        self.__Type = EnumUnitType.Hero
    end

    -- 读取配置表
    local success, conf = pcall(function()
        return ConfData:CheckAndGetLine("Unit", id)
    end)
    if success and conf then
        self.__Conf = conf
    else
        -- 创建默认配置
        self.__Conf = {
            Camp = EnumUnitCamp.Neutrality,
            MainAttr = 1,
            BaseAttrs = {},
            ModelAttrs = {},
        }
        print("[Warning] 单位配置不存在: " .. id .. "，使用默认配置")
    end

    -- 位置
    self.__Position = position or Vector(0, 0, 0)
    self.__SpawnPosition = self.__Position

    -- 朝向
    self.__Forward = Vector(0, 1, 0)

    -- 是否有效
    self.__IsValid = true

    -- 是否存活
    self.__IsAlive = true

    -- 复活时间
    self.__RespawnTime = 0

    ---@type CUnitBase|nil 归属单位
    self.__Owner = owner

    ---@type any|nil 归属玩家（Phase 3 简化）
    self.__Player = player

    ---死亡回调
    self.__DieBackCall = die_callback

    ---@type boolean 是不是特殊单位
    self.__IsSpecial = isspecial or false

    -- 创建 C# 实体（获取 EntityId）
    self.__EntityId = CreateEntity(self.__UnitId, self.__Position)

    -- 单位属性
    self.__Attr = CreateClass_Attr("unit_" .. id .. '_' .. self.__Index, true, 0, function()
        self.__AttrResultCache = {}
        self.__AttrConvertCache = {}
        self.__AttrChanged = true
    end)
    
    -- 合并主属性
    if self.__Conf.MainAttr then
        self.__Attr:SetMergeMainAttr(self.__Conf.MainAttr)
    end
    
    -- 按照属性模块增加属性
    if not heroid and self.__Conf.BaseAttrs then
        self.__Attr:AddAttrByMap(self.__Conf.BaseAttrs)
    end
    if self.__Conf.ModelAttrs then
        self.__Attr:AddAttrByMap(self.__Conf.ModelAttrs, attrbase or 1)
    end

    -- 属性缓存
    self.__AttrConvertCache = {}
    self.__AttrResultCache = {}
    self.__AttrChanged = true

    ---@type {[string]: {value: number, attrid: integer}} 动态属性
    self.__DynamicAttr = {}

    --- 动态属性是否被改变过
    self.__DynamicAttrChanged = true

    -- 最后战斗时间
    self.__LastFightTime = 0

    -- 增加基础的动态属性
    self:SetDynamicBindAttr('hp', CONST_HP_MAX_ATTR_ID or 0)

    -- 设置动态属性到最大值
    self:SetAllDynamicAttrToMax()

    -- 注册到 Units 管理器
    Units:__onCreateUnit(self)

    print("[CUnitBase] 创建单位: InsId=" .. self.__Index .. ", UnitId=" .. id)
end


--[================[返回单位的InsID]================]
---@return number
function CUnitBase:GetInsid()
    return self.__Index
end


--[================[返回单位的Dota实体ID]================]
---@return number
function CUnitBase:GetEntityIndex()
    return self.__EntityId or 0
end


--[================[返回单位的单位ID]================]
---@return number
function CUnitBase:GetUnitId()
    return self.__UnitId
end


--[================[返回单位的当前坐标]================]
---@return Vector
function CUnitBase:GetPosition()
    return self.__Position
end


--[================[设置单位的当前坐标]================]
---@param pos Vector
function CUnitBase:SetPosition(pos)
    self.__Position = pos
    -- 同步到 C# EntityService
    if self.__EntityId then
        SetEntityPosition(self.__EntityId, pos)
    end
end


--[================[设置单位的当前坐标，并移至安全位置]================]
---@param pos Vector
function CUnitBase:SetSafePosition(pos)
    self:SetPosition(pos)
end


--[================[返回单位的当前朝向]================]
---@return Vector
function CUnitBase:GetForwardVector()
    return self.__Forward
end


--[================[设置朝向]================]
function CUnitBase:SetFaceAngle(angle)
    -- 简化实现：角度转向量
    local rad = math.rad(angle or 0)
    self.__Forward = Vector(math.sin(rad), math.cos(rad), 0)
    if self.__EntityId then
        SetEntityForward(self.__EntityId, self.__Forward)
    end
end


--[================[返回单位的阵营]================]
---@return EnumUnitCamp
function CUnitBase:GetCamp()
    return self.__Conf.Camp or EnumUnitCamp.Neutrality
end


--[================[返回单位的敌对阵营]================]
function CUnitBase:GetFoeCamp()
    if not self.__FoeCamp then
        if self:GetCamp() == EnumUnitCamp.Monster then
            self.__FoeCamp = EnumUnitCamp.Player
        else
            self.__FoeCamp = EnumUnitCamp.Monster
        end
    end
    return self.__FoeCamp
end


--[================[返回单位的类型]================]
---@return EnumUnitType
function CUnitBase:GetType()
    return self.__Type
end


--[================[返回属性对象]================]
---@return CAttr
function CUnitBase:GetAttrObject()
    return self.__Attr
end


--[================[返回主属性]================]
---@return integer
function CUnitBase:GetMainAttr()
    return self.__Conf.MainAttr or 1
end


--[================[返回单位的属性，已计算]================]
---@param attrid integer
---@return number
function CUnitBase:GetAttr(attrid)
    local id = tonumber(attrid) or 0
    if id == 0 then
        return 0
    end
    
    if self.__AttrResultCache[id] then
        return self.__AttrResultCache[id]
    end
    
    local value = self.__Attr:GetValue(id)
    self.__AttrResultCache[id] = value
    return value
end


--[================[设置动态属性绑定]================]
---@param key string
---@param bindattr integer 绑定的属性ID
function CUnitBase:SetDynamicBindAttr(key, bindattr)
    key = string.lower(key)
    self.__DynamicAttr[key] = {
        value = 0,
        attrid = bindattr or 0
    }
    self.__DynamicAttrChanged = true
end


--[================[返回动态属性值]================]
---@param key string
function CUnitBase:GetDynamicAttr(key)
    local msg = self.__DynamicAttr[string.lower(key)]
    if msg then
        return msg.value
    end
    return 0
end


--[================[返回动态属性上限]================]
---@param key string
function CUnitBase:GetDynamicAttrMax(key)
    local msg = self.__DynamicAttr[string.lower(key)]
    if msg then
        if msg.attrid == 0 then
            return 0
        end
        return self:GetAttr(msg.attrid)
    end
    return 0
end


--[================[设置动态属性到最大值]================]
---@param key string
function CUnitBase:SetDynamicAttrToMax(key)
    local msg = self.__DynamicAttr[string.lower(key)]
    if msg then
        if msg.attrid == 0 then
            return
        end
        msg.value = self:GetAttr(msg.attrid)
        self.__DynamicAttrChanged = true
    end
end


--[================[设置全部动态属性到最大值]================]
function CUnitBase:SetAllDynamicAttrToMax()
    for k, v in pairs(self.__DynamicAttr) do
        if v.attrid ~= 0 then
            self.__DynamicAttr[k].value = self:GetAttr(v.attrid)
        end
    end
    self.__DynamicAttrChanged = true
end


--[================[设置动态属性的值]================]
---@param key string
---@param value number
function CUnitBase:SetDynamicValue(key, value)
    key = string.lower(key)
    local msg = self.__DynamicAttr[key]

    if msg then
        if msg.attrid ~= 0 then
            value = math.min(value, self:GetAttr(msg.attrid))
        end
        if msg.value == value then return false end
        msg.value = value
        self.__DynamicAttrChanged = true
    end
end


--[================[计算动态属性的值]================]
---@param key string
---@param add number 加法
---@param mul number|nil 乘法
function CUnitBase:MathDynamicValue(key, add, mul)
    key = string.lower(key)
    local msg = self.__DynamicAttr[key]

    if msg then
        local value = msg.value * (mul or 1) + (add or 0)
        if msg.attrid ~= 0 then
            value = math.min(value, self:GetAttr(msg.attrid))
        end
        value = math.max(value, 0)
        if value == msg.value then return false end
        msg.value = value
        self.__DynamicAttrChanged = true
    end
end


--[================[返回单位的最大生命]================]
---@return number
function CUnitBase:GetAttr_MaxHP()
    return self:GetDynamicAttrMax('hp')
end


--[================[返回单位的当前生命]================]
---@return number
function CUnitBase:GetHP()
    return self:GetDynamicAttr('hp')
end


--[================[返回单位是否还活着]================]
---@return boolean
function CUnitBase:IsAlive()
    return self.__IsAlive
end


--[================[返回单位是否有效]================]
---@return boolean
function CUnitBase:IsValid()
    return self.__IsValid and (not self.__IsRemove)
end


--[================[是否处于战斗状态]================]
---@return boolean
function CUnitBase:IsFighting()
    return (Time() - self.__LastFightTime) < 5
end


--[================[返回单位的归属]================]
---@return CUnitBase|nil
function CUnitBase:GetOwner()
    return self.__Owner
end


--[================[设置单位的归属]================]
---@param unit CUnitBase
function CUnitBase:SetOwner(unit)
    self.__Owner = unit
    if unit.__Player then
        self.__Player = unit.__Player
    end
end


--[================[返回单位归属的玩家]================]
function CUnitBase:GetPlayer()
    return self.__Player
end


--[================[返回单位的碰撞半径]================]
---@return number
function CUnitBase:GetHullRadius()
    return self.__Conf.HullRadius or 32
end


--[================[返回单位的技能碰撞半径]================]
---@return number
function CUnitBase:GetSkillHullRadius()
    return self.__Conf.SkillHull or self:GetHullRadius()
end


--[================[是不是Boss]================]
---@return boolean
function CUnitBase:IsBoss()
    return (self.__Conf.IsBoss or 0) >= 2
end


--[================[是不是精英]================]
---@return boolean
function CUnitBase:IsElite()
    return self.__Conf.IsBoss == 1
end


--[================[是不是建筑]================]
---@return boolean
function CUnitBase:IsBuilding()
    return self.__Conf.IsBuilding or false
end


--[================[是否无敌]================]
---@return boolean
function CUnitBase:IsInvulnerable()
    return self.__Conf.Camp == EnumUnitCamp.Neutrality or self.__IsInvulnerable
end


--[================[设置无敌状态]================]
---@param invulnerable boolean
function CUnitBase:SetInvulnerable(invulnerable)
    self.__IsInvulnerable = invulnerable
end


--[================[造成伤害]================]
---@param damage number
---@param cancelled_damage number 已取消的伤害
---@param attacker CUnitBase
---@param skillid integer
---@return boolean die
function CUnitBase:Damage(damage, cancelled_damage, attacker, skillid)
    -- 扣血
    local hp = math.ceil(self:GetDynamicAttr('hp') - damage)
    self:SetDynamicValue('hp', math.max(hp, 0))

    -- 战斗状态
    self.__LastFightTime = Time()
    if attacker then
        attacker.__LastFightTime = Time()
    end

    if hp < 1 then
        self:Kill(attacker, skillid)
        return true
    end
    
    return false
end


--[================[治疗]================]
---@param heal number
---@param attacker CUnitBase
---@param skillid integer
function CUnitBase:Heal(heal, attacker, skillid)
    self:MathDynamicValue('hp', heal)
end


--[================[杀死单位]================]
---@param attacker CUnitBase|nil 攻击者
---@param skillid integer|nil 技能
function CUnitBase:Kill(attacker, skillid)
    if not self.__IsAlive then return end

    -- 死亡状态
    self.__IsAlive = false
    self.__IsValid = false

    -- 从 Units 移除
    Units:__DieUnit(self.__Index, self, false)

    -- 触发死亡回调
    if self.__DieBackCall then
        self.__DieBackCall(self.__Index, self, attacker)
    end

    -- 销毁 C# 实体
    if self.__EntityId then
        DestroyEntity(self.__EntityId)
    end

    print("[CUnitBase] 单位死亡: InsId=" .. self.__Index)
end


--[================[直接移除此单位]================]
function CUnitBase:Remove()
    if self.__IsRemove then return end
    
    self.__IsValid = false
    self.__IsAlive = false
    self.__IsRemove = true
    
    Units:__DieUnit(self.__Index, self, false)
    
    -- 销毁 C# 实体
    if self.__EntityId then
        DestroyEntity(self.__EntityId)
    end

    print("[CUnitBase] 单位移除: InsId=" .. self.__Index)
end


--[================[占位函数 - Phase 4+ 实现]================]

-- 技能相关（Phase 4）
function CUnitBase:GetSkillLevel(skillId) return 0 end
function CUnitBase:GetSkillUsingId() return nil end
function CUnitBase:IsSkillUsing() return false end
function CUnitBase:BreakSkill() end
function CUnitBase:AddBuff(buffId, level) end
function CUnitBase:GetCustomBuffState(types) return {} end
function CUnitBase:MinusAllSkillCD(skillId, ratio) end

-- AI 相关（Phase 3+）
function CUnitBase:Stop() end
function CUnitBase:GoToPosition(pos, range) end
function CUnitBase:CheckAllowMove() return true end
function CUnitBase:IsInViewRange(target) return true end
function CUnitBase:GetViewFriend() return {} end

-- 范围查询
function CUnitBase:GetUnitsByArea(radius, camp)
    return Units:GetUnitsByArea(self:GetPosition(), radius, camp)
end


print("[Phase 3] unit.lua 加载完成")
