using System;
using UnityEngine;
using UnityEngine.SceneManagement;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// Dota2 游廊 API 桥接层
    /// 将游廊的 Lua API 映射到 Unity 实现
    /// </summary>
    public static class DotaApiBridge
    {
        /// <summary>
        /// 注册所有桥接 API 到 Lua 环境
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            var global = luaEnv.Global;

            // ========== 时间相关 ==========
            global.Set("Time", new Func<float>(() => UnityEngine.Time.time));
            global.Set("FrameTime", new Func<float>(() => UnityEngine.Time.deltaTime));
            global.Set("GetSystemTime", new Func<string>(() => DateTime.Now.ToString("HH:mm:ss")));
            global.Set("GetSystemTimeMS", new Func<long>(() => DateTimeOffset.Now.ToUnixTimeMilliseconds()));

            // ========== 随机数 ==========
            global.Set("RandomInt", new Func<int, int, int>((min, max) => UnityEngine.Random.Range(min, max + 1)));
            global.Set("RandomFloat", new Func<float, float, float>((min, max) => UnityEngine.Random.Range(min, max)));

            // ========== 调试相关 ==========
            global.Set("GetMapName", new Func<string>(() => SceneManager.GetActiveScene().name));
            global.Set("IsInToolsMode", new Func<bool>(() => Application.isEditor));
            global.Set("IsClient", new Func<bool>(() => false)); // 单机模式，始终返回 false

            // ========== 注册 Vector 函数和元表 ==========
            RegisterVector(luaEnv);

            // ========== 注册 bit 库 ==========
            RegisterBitLib(luaEnv);

            // ========== 注册 GameRules 占位 ==========
            RegisterGameRules(luaEnv);

            // ========== 重写 print 函数 ==========
            RegisterPrint(luaEnv);

            // ========== 注册扩展桥接层 ==========
            // Phase 3: 实体桥接
            EntityBridge.Register(luaEnv);

            // Phase 5: 表现层桥接
            ParticleBridge.Register(luaEnv);
            AudioBridge.Register(luaEnv);
            AnimationBridge.Register(luaEnv);

            Debug.Log("[DotaApiBridge] API 桥接注册完成");
        }

        /// <summary>
        /// 注册 Vector 函数和元表
        /// </summary>
        private static void RegisterVector(LuaEnv luaEnv)
        {
            string vectorScript = @"
-- Vector 元表
local VectorMeta = {}
VectorMeta.__index = VectorMeta

-- 向量加法
function VectorMeta.__add(a, b)
    return Vector(a.x + b.x, a.y + b.y, a.z + b.z)
end

-- 向量减法
function VectorMeta.__sub(a, b)
    return Vector(a.x - b.x, a.y - b.y, a.z - b.z)
end

-- 标量乘法
function VectorMeta.__mul(a, b)
    if type(a) == 'number' then
        return Vector(a * b.x, a * b.y, a * b.z)
    elseif type(b) == 'number' then
        return Vector(a.x * b, a.y * b, a.z * b)
    else
        -- 向量点乘（返回标量）
        return a.x * b.x + a.y * b.y + a.z * b.z
    end
end

-- 取反
function VectorMeta.__unm(v)
    return Vector(-v.x, -v.y, -v.z)
end

-- 相等判断
function VectorMeta.__eq(a, b)
    return a.x == b.x and a.y == b.y and a.z == b.z
end

-- 转字符串
function VectorMeta.__tostring(v)
    return string.format('Vector(%f, %f, %f)', v.x, v.y, v.z)
end

-- 向量长度
function VectorMeta:Length()
    return math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
end

-- 2D 长度（忽略 z）
function VectorMeta:Length2D()
    return math.sqrt(self.x * self.x + self.y * self.y)
end

-- 归一化
function VectorMeta:Normalized()
    local len = self:Length()
    if len < 0.00001 then
        return Vector(0, 0, 0)
    end
    return Vector(self.x / len, self.y / len, self.z / len)
end

-- 点积
function VectorMeta:Dot(other)
    return self.x * other.x + self.y * other.y + self.z * other.z
end

-- 叉积
function VectorMeta:Cross(other)
    return Vector(
        self.y * other.z - self.z * other.y,
        self.z * other.x - self.x * other.z,
        self.x * other.y - self.y * other.x
    )
end

-- Vector 构造函数
function Vector(x, y, z)
    local v = {
        x = x or 0,
        y = y or 0,
        z = z or 0
    }
    setmetatable(v, VectorMeta)
    return v
end

-- 保存元表供其他地方使用
_G.VectorMeta = VectorMeta
";
            luaEnv.DoString(vectorScript, "VectorBridge");
        }

        /// <summary>
        /// 注册 bit 位运算库
        /// </summary>
        private static void RegisterBitLib(LuaEnv luaEnv)
        {
            string bitScript = @"
bit = {}

function bit.lshift(v, n)
    return math.floor(v * (2 ^ n))
end

function bit.rshift(v, n)
    return math.floor(v / (2 ^ n))
end

function bit.band(a, b)
    local result = 0
    local bitval = 1
    while a > 0 and b > 0 do
        if a % 2 == 1 and b % 2 == 1 then
            result = result + bitval
        end
        bitval = bitval * 2
        a = math.floor(a / 2)
        b = math.floor(b / 2)
    end
    return result
end

function bit.bor(a, b)
    local result = 0
    local bitval = 1
    while a > 0 or b > 0 do
        if a % 2 == 1 or b % 2 == 1 then
            result = result + bitval
        end
        bitval = bitval * 2
        a = math.floor(a / 2)
        b = math.floor(b / 2)
    end
    return result
end

function bit.bnot(a)
    -- 32位取反
    return 0xFFFFFFFF - a
end

function bit.bxor(a, b)
    local result = 0
    local bitval = 1
    while a > 0 or b > 0 do
        local aa = a % 2
        local bb = b % 2
        if aa ~= bb then
            result = result + bitval
        end
        bitval = bitval * 2
        a = math.floor(a / 2)
        b = math.floor(b / 2)
    end
    return result
end
";
            luaEnv.DoString(bitScript, "BitBridge");
        }

        /// <summary>
        /// 注册 GameRules 占位对象
        /// </summary>
        private static void RegisterGameRules(LuaEnv luaEnv)
        {
            string gameRulesScript = @"
-- GameModeEntity 占位对象
local GameModeEntity = {}

function GameModeEntity:SetThink(name, context)
    -- 调用 C# 的 LuaManager.RegisterThink
    CS.CritFramework.LuaManager.Instance:RegisterThink(name, context)
end

-- GameRules 占位对象
GameRules = {}

function GameRules:GetGameModeEntity()
    return GameModeEntity
end

-- 其他常用占位
function GameRules:SetCustomGameSetupTimeout(timeout) end
function GameRules:SetCustomGameSetupAutoLaunchDelay(delay) end
function GameRules:SetHeroSelectionTime(time) end
function GameRules:SetStrategyTime(time) end
function GameRules:SetShowcaseTime(time) end
function GameRules:SetPreGameTime(time) end
function GameRules:SetTimeOfDay(time) end
function GameRules:SetCustomGameAllowMusicAtGameStart(allow) end
function GameRules:SetCustomGameAllowHeroPickMusic(allow) end
function GameRules:SetCustomGameAllowBattleMusic(allow) end
function GameRules:EnableCustomGameSetupAutoLaunch(enable) end
function GameRules:SetSafeToLeave(safe) end
function GameRules:SetSameHeroSelectionEnabled(enable) end
function GameRules:SetFirstBloodActive(active) end
function GameRules:SetHideKillMessageHeaders(hide) end
";
            luaEnv.DoString(gameRulesScript, "GameRulesBridge");
        }

        /// <summary>
        /// 重写 print 函数，输出到 Unity Console
        /// </summary>
        private static void RegisterPrint(LuaEnv luaEnv)
        {
            string printScript = @"
local oldPrint = print
function print(...)
    local args = {...}
    local str = ''
    for i, v in ipairs(args) do
        if i > 1 then str = str .. '\t' end
        str = str .. tostring(v)
    end
    CS.UnityEngine.Debug.Log('[Lua] ' .. str)
end

-- error 函数增强
local oldError = error
function error(msg, level)
    CS.UnityEngine.Debug.LogError('[Lua Error] ' .. tostring(msg))
    oldError(msg, level)
end
";
            luaEnv.DoString(printScript, "PrintBridge");
        }
    }
}
