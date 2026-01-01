using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 网络 API 桥接层 (单机 Stub)
    /// 提供 CustomNetTables、CustomGameEventManager、Lobby、Convars 等
    /// </summary>
    public static class NetworkBridge
    {
        /// <summary>
        /// 注册所有网络相关的 Lua API (全部为 Stub)
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            // 注册 CustomNetTables
            RegisterCustomNetTables(luaEnv);

            // 注册 CustomGameEventManager
            RegisterCustomGameEventManager(luaEnv);

            // 注册 Lobby
            RegisterLobby(luaEnv);

            // 注册 Convars
            RegisterConvars(luaEnv);

            // 注册 PlayerResource
            RegisterPlayerResource(luaEnv);

            Debug.Log("[NetworkBridge] 网络 API 桥接已注册 (单机 Stub)");
        }

        /// <summary>
        /// CustomNetTables - 网络同步表 (本地 Table 替代)
        /// </summary>
        private static void RegisterCustomNetTables(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- CustomNetTables: 单机使用本地 Table 存储
                CustomNetTables = CustomNetTables or {}
                CustomNetTables._data = {}
                CustomNetTables._listeners = {}

                function CustomNetTables:SetTableValue(tableName, key, value)
                    self._data[tableName] = self._data[tableName] or {}
                    self._data[tableName][key] = value
                    
                    -- 触发监听器
                    if self._listeners[tableName] then
                        for _, listener in ipairs(self._listeners[tableName]) do
                            pcall(listener, tableName, key, value)
                        end
                    end
                    
                    CS.CritFramework.StubConfig.LogStubApiCall('CustomNetTables:SetTableValue', tableName .. '.' .. tostring(key))
                end

                function CustomNetTables:GetTableValue(tableName, key)
                    if not self._data[tableName] then return nil end
                    return self._data[tableName][key]
                end

                function CustomNetTables:GetAllTableValues(tableName)
                    return self._data[tableName] or {}
                end

                function CustomNetTables:SubscribeNetTableListener(tableName, listener)
                    self._listeners[tableName] = self._listeners[tableName] or {}
                    table.insert(self._listeners[tableName], listener)
                end
            ");
        }

        /// <summary>
        /// CustomGameEventManager - 客户端事件 (单机直接调用)
        /// </summary>
        private static void RegisterCustomGameEventManager(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- CustomGameEventManager: 单机模式下事件不发送
                CustomGameEventManager = CustomGameEventManager or {}
                CustomGameEventManager._handlers = {}

                function CustomGameEventManager:Send_ServerToPlayer(player, eventName, data)
                    CS.CritFramework.StubConfig.LogStubApiCall('CustomGameEventManager:Send_ServerToPlayer', eventName)
                    -- 单机模式：可选择直接触发本地处理
                    self:_TriggerLocal(eventName, data)
                end

                function CustomGameEventManager:Send_ServerToAllClients(eventName, data)
                    CS.CritFramework.StubConfig.LogStubApiCall('CustomGameEventManager:Send_ServerToAllClients', eventName)
                    self:_TriggerLocal(eventName, data)
                end

                function CustomGameEventManager:Send_ServerToTeam(teamId, eventName, data)
                    CS.CritFramework.StubConfig.LogStubApiCall('CustomGameEventManager:Send_ServerToTeam', eventName)
                    self:_TriggerLocal(eventName, data)
                end

                function CustomGameEventManager:RegisterListener(eventName, handler)
                    self._handlers[eventName] = self._handlers[eventName] or {}
                    table.insert(self._handlers[eventName], handler)
                end

                function CustomGameEventManager:_TriggerLocal(eventName, data)
                    local handlers = self._handlers[eventName]
                    if handlers then
                        for _, handler in ipairs(handlers) do
                            pcall(handler, data)
                        end
                    end
                end
            ");
        }

        /// <summary>
        /// Lobby - 大厅系统 (单玩家)
        /// </summary>
        private static void RegisterLobby(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- Lobby: 单机模式下只有一个本地玩家
                Lobby = Lobby or {}
                Lobby._localPlayer = nil
                Lobby._players = {}

                function Lobby:GetAllPlayers()
                    if self._localPlayer then
                        return { self._localPlayer }
                    end
                    return {}
                end

                function Lobby:GetLocalPlayer()
                    return self._localPlayer
                end

                function Lobby:SetLocalPlayer(player)
                    self._localPlayer = player
                    if player then
                        self._players[1] = player
                    end
                end

                function Lobby:GetPlayerCount()
                    return self._localPlayer and 1 or 0
                end

                function Lobby:GetPlayerByIndex(index)
                    if index == 0 or index == 1 then
                        return self._localPlayer
                    end
                    return nil
                end

                function Lobby:IsConnected()
                    return true  -- 单机总是'连接'状态
                end
            ");
        }

        /// <summary>
        /// Convars - 控制台命令 (占位)
        /// </summary>
        private static void RegisterConvars(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- Convars: 控制台命令系统占位
                Convars = Convars or {}
                Convars._commands = {}
                Convars._cvars = {}

                function Convars:RegisterCommand(name, callback, help, flags)
                    self._commands[name] = {
                        callback = callback,
                        help = help or '',
                        flags = flags or 0
                    }
                    CS.CritFramework.StubConfig.LogStubApiCall('Convars:RegisterCommand', name)
                end

                function Convars:GetCommandClient(name, playerEntity, ...)
                    local cmd = self._commands[name]
                    if cmd and cmd.callback then
                        local success, err = pcall(cmd.callback, playerEntity, ...)
                        if not success then
                            print('[Convars] Command error:', name, err)
                        end
                    end
                end

                function Convars:SetInt(name, value)
                    self._cvars[name] = value
                end

                function Convars:GetInt(name, default)
                    return self._cvars[name] or default or 0
                end

                function Convars:SetFloat(name, value)
                    self._cvars[name] = value
                end

                function Convars:GetFloat(name, default)
                    return self._cvars[name] or default or 0.0
                end

                function Convars:SetBool(name, value)
                    self._cvars[name] = value
                end

                function Convars:GetBool(name, default)
                    local v = self._cvars[name]
                    if v == nil then return default or false end
                    return v
                end
            ");
        }

        /// <summary>
        /// PlayerResource - 玩家资源
        /// </summary>
        private static void RegisterPlayerResource(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- PlayerResource: 玩家资源管理
                PlayerResource = PlayerResource or {}
                PlayerResource._data = {}

                function PlayerResource:GetPlayer(playerId)
                    return Lobby:GetLocalPlayer()
                end

                function PlayerResource:GetSelectedHeroID(playerId)
                    local data = self._data[playerId] or {}
                    return data.heroId or 0
                end

                function PlayerResource:SetSelectedHeroID(playerId, heroId)
                    self._data[playerId] = self._data[playerId] or {}
                    self._data[playerId].heroId = heroId
                end

                function PlayerResource:GetTeam(playerId)
                    return DOTA_TEAM_GOODGUYS or 2
                end

                function PlayerResource:GetGold(playerId)
                    local data = self._data[playerId] or {}
                    return data.gold or 0
                end

                function PlayerResource:SetGold(playerId, gold)
                    self._data[playerId] = self._data[playerId] or {}
                    self._data[playerId].gold = gold
                end

                function PlayerResource:ModifyGold(playerId, amount, reliable, reason)
                    local current = self:GetGold(playerId)
                    self:SetGold(playerId, current + amount)
                end
            ");
        }
    }
}
