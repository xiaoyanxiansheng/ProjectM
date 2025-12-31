---@diagnostic disable: lowercase-global

--[[ 
类创建模块
负责提供面向对象编程的基础设施
包括类的定义、继承和实例化功能
提供对象克隆和元表操作的支持
作为技能系统的基础组件，为其他模块提供类型系统
支持构造函数和方法继承
允许通过New方法创建类的实例
维护类的层次结构和命名
支持super引用访问父类方法和属性
--]]

---@param object any
---@return any
function clone(object)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        
        -- 检查是否是通过Classnew初始化的对象
        -- 如果对象有class属性且class有__cname属性，说明是通过Classnew创建的
        if object.class and object.class.__cname 
            and object.class.__cname ~= "DoSkillData" 
            and object.class.__cname ~= "DoBuffData"
            and object.class.__cname ~= "DoSettlementDataNew"
            and object.class.__cname ~= "DoPassiveSkillData" then
            lookup_table[object] = object
            return object
        end
        
        local new_table = {}
        lookup_table[object] = new_table
        for key, value in pairs(object) do
            new_table[_copy(key)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
    end
    return _copy(object)
end

---@class Classnew
---@field super Classnew
---@field New Classnew
---@field public __cname string
---@generic T : Classnew , V : Classnew
---@param super T|nil
---@param classname string
---@return V
function Classnew(classname, super)
    local cls = {}

    if super then
        cls = clone(super)
        cls.super = super
    else
        cls = {ctor = function(...) end}
    end

    cls.__cname = classname
    cls.__index = cls

    function cls.New(...)
        local instance = setmetatable({}, cls)
        instance.class = cls
---@diagnostic disable-next-line: undefined-field, need-check-nil
        instance:ctor(...)
        return instance
    end

    return cls
end