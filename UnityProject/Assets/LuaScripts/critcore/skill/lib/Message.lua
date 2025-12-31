---@diagnostic disable: undefined-field
--[[ 
消息系统模块
负责管理技能系统中的消息传递机制
包括消息的注册、发送和处理
提供消息队列的管理和分发功能
支持不同类型的消息和处理方式
作为技能系统的核心组件，处理各模块间的通信
允许技能、Buff和其他系统组件之间的事件通知
支持同步和异步消息处理
--]]

require("critcore.skill.lib.MessageConst")

---@class Message @收发消息
local Message = {};


function BeginMessage(msgName)
    ---@class MessageItem
    local msg = {};
    msg.name = msgName;
    msg.params = {}
    return msg;
end

-- 发送消息
---@param msg MessageItem
function SendMessage(msg)
    DispatchMessage(msg);
end

function SendBeginMessage(msgName , msgData)
    local msg = BeginMessage(msgName)
    msg.params = msgData
    SendMessage(msg)
end

-- 注册消息
---@param msgName integer
---@param tCall function
---@param t table|nil
function RegisterMessage(msgName,tCall,t)
    if not Message[msgName] then 
---@diagnostic disable-next-line: inject-field
        Message[msgName] = {};
    end
    local inIndex = table.ContainValue(Message[msgName],tCall,"tCall",nil);
    if inIndex ~= 0 then
        return;
    end
    local msg = {};
    msg.t = t;
    msg.tCall = tCall;
    table.insert(Message[msgName],msg);
end

-- 删除消息
---@param msgName integer
---@param call function
function RemoveMessage(msgName,call)
    if not Message[msgName] then 
        return;
    end
    local inIndex = table.ContainValue(Message[msgName],call,"tCall",nil);
    if inIndex ~= 0 then
        table.remove(Message[msgName],inIndex);
    end
end

function DispatchMessage(msg)
    local registers = Message[msg.name]
    if not registers then 
        return;
    end
    for i,v in ipairs(registers) do
        if (v.t ~= nil) then
            v.tCall(v.t,msg);
        else
            v.tCall(msg);
        end
    end
end
