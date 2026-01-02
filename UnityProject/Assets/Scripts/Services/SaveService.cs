using System.IO;
using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 存档服务 - 提供本地数据持久化
    /// </summary>
    /// <remarks>
    /// 使用 JSON 格式存储数据到本地文件
    /// </remarks>
    public class SaveService : MonoBehaviour
    {
        #region Singleton
        
        public static SaveService Instance { get; private set; }
        
        #endregion
        
        #region Fields
        
        private string _savePath;
        
        #endregion
        
        #region Unity Lifecycle
        
        private void Awake()
        {
            if (Instance == null)
            {
                Instance = this;
                // 如果是根对象才调用 DontDestroyOnLoad
                if (transform.parent == null)
                {
                    DontDestroyOnLoad(gameObject);
                }
                Initialize();
            }
            else
            {
                Destroy(gameObject);
            }
        }
        
        private void OnDestroy()
        {
            if (Instance == this)
            {
                Instance = null;
            }
        }
        
        #endregion
        
        #region Public Methods
        
        /// <summary>
        /// 注册到 Lua 环境
        /// </summary>
        public static void Register(LuaEnv luaEnv)
        {
            luaEnv.DoString(@"
                -- SaveData 模块桥接
                SaveData = SaveData or {}
                
                function SaveData:Save(key, data)
                    local jsonStr = ''
                    if type(data) == 'table' then
                        -- 简单序列化
                        jsonStr = self:TableToJson(data)
                    else
                        jsonStr = tostring(data)
                    end
                    CS.CritFramework.SaveService.Instance:Save(key, jsonStr)
                end
                
                function SaveData:Load(key)
                    local jsonStr = CS.CritFramework.SaveService.Instance:Load(key)
                    if jsonStr and jsonStr ~= '' then
                        return self:JsonToTable(jsonStr)
                    end
                    return nil
                end
                
                function SaveData:Delete(key)
                    CS.CritFramework.SaveService.Instance:Delete(key)
                end
                
                function SaveData:HasKey(key)
                    return CS.CritFramework.SaveService.Instance:HasKey(key)
                end
                
                -- 简单的 Table 转 JSON（仅支持基础类型）
                function SaveData:TableToJson(t)
                    if json and json.encode then
                        return json.encode(t)
                    end
                    -- 简化版：使用已有的 json 库
                    local result = '{'
                    local first = true
                    local dq = string.char(34) -- 双引号
                    for k, v in pairs(t) do
                        if not first then result = result .. ',' end
                        first = false
                        if type(k) == 'number' then
                            result = result .. dq .. tostring(k) .. dq .. ':'
                        else
                            result = result .. dq .. k .. dq .. ':'
                        end
                        if type(v) == 'table' then
                            result = result .. self:TableToJson(v)
                        elseif type(v) == 'string' then
                            result = result .. dq .. v .. dq
                        elseif type(v) == 'boolean' then
                            result = result .. (v and 'true' or 'false')
                        else
                            result = result .. tostring(v)
                        end
                    end
                    result = result .. '}'
                    return result
                end
                
                -- 简单的 JSON 转 Table
                function SaveData:JsonToTable(jsonStr)
                    if json and json.decode then
                        return json.decode(jsonStr)
                    end
                    -- 使用已有的 json 库
                    return nil
                end
                
                print('[SaveData] Lua 模块初始化完成')
            ");
            
            Debug.Log("[SaveService] Lua 桥接注册完成");
        }
        
        /// <summary>
        /// 保存数据
        /// </summary>
        public void Save(string key, string jsonData)
        {
            if (string.IsNullOrEmpty(key))
            {
                Debug.LogWarning("[SaveService] 保存失败: key 为空");
                return;
            }
            
            string filePath = GetFilePath(key);
            
            try
            {
                // 确保目录存在
                string directory = Path.GetDirectoryName(filePath);
                if (!Directory.Exists(directory))
                {
                    Directory.CreateDirectory(directory);
                }
                
                File.WriteAllText(filePath, jsonData);
                
                if (StubConfig.DebugMode && StubConfig.LogStubCalls)
                {
                    Debug.Log($"[SaveService] 保存成功: {key}");
                }
            }
            catch (System.Exception ex)
            {
                Debug.LogError($"[SaveService] 保存失败: {key}, 错误: {ex.Message}");
            }
        }
        
        /// <summary>
        /// 加载数据
        /// </summary>
        public string Load(string key)
        {
            if (string.IsNullOrEmpty(key))
            {
                Debug.LogWarning("[SaveService] 加载失败: key 为空");
                return string.Empty;
            }
            
            string filePath = GetFilePath(key);
            
            try
            {
                if (File.Exists(filePath))
                {
                    string content = File.ReadAllText(filePath);
                    
                    if (StubConfig.DebugMode && StubConfig.LogStubCalls)
                    {
                        Debug.Log($"[SaveService] 加载成功: {key}");
                    }
                    
                    return content;
                }
            }
            catch (System.Exception ex)
            {
                Debug.LogError($"[SaveService] 加载失败: {key}, 错误: {ex.Message}");
            }
            
            return string.Empty;
        }
        
        /// <summary>
        /// 删除数据
        /// </summary>
        public void Delete(string key)
        {
            if (string.IsNullOrEmpty(key))
            {
                return;
            }
            
            string filePath = GetFilePath(key);
            
            try
            {
                if (File.Exists(filePath))
                {
                    File.Delete(filePath);
                    Debug.Log($"[SaveService] 删除成功: {key}");
                }
            }
            catch (System.Exception ex)
            {
                Debug.LogError($"[SaveService] 删除失败: {key}, 错误: {ex.Message}");
            }
        }
        
        /// <summary>
        /// 检查是否存在
        /// </summary>
        public bool HasKey(string key)
        {
            if (string.IsNullOrEmpty(key))
            {
                return false;
            }
            
            return File.Exists(GetFilePath(key));
        }
        
        /// <summary>
        /// 清除所有存档
        /// </summary>
        public void ClearAll()
        {
            try
            {
                if (Directory.Exists(_savePath))
                {
                    Directory.Delete(_savePath, true);
                    Directory.CreateDirectory(_savePath);
                    Debug.Log("[SaveService] 清除所有存档");
                }
            }
            catch (System.Exception ex)
            {
                Debug.LogError($"[SaveService] 清除失败: {ex.Message}");
            }
        }
        
        #endregion
        
        #region Private Methods
        
        private void Initialize()
        {
            _savePath = Path.Combine(Application.persistentDataPath, "SaveData");
            
            if (!Directory.Exists(_savePath))
            {
                Directory.CreateDirectory(_savePath);
            }
            
            Debug.Log($"[SaveService] 初始化完成, 存档路径: {_savePath}");
        }
        
        private string GetFilePath(string key)
        {
            // 清理 key 中的非法字符
            string safeKey = key.Replace("/", "_").Replace("\\", "_").Replace(":", "_");
            return Path.Combine(_savePath, safeKey + ".json");
        }
        
        #endregion
    }
}
