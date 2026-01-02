using System;
using UnityEngine;
using XLua;

namespace CritFramework
{
    /// <summary>
    /// 简化UI服务 - 通过控制台/按键触发流程
    /// </summary>
    /// <remarks>
    /// 用于测试流程，不做复杂界面
    /// </remarks>
    public class SimpleUIService : MonoBehaviour
    {
        #region Singleton
        
        public static SimpleUIService Instance { get; private set; }
        
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
                -- SimpleUI 模块
                SimpleUI = SimpleUI or {}
                
                function SimpleUI:ShowMessage(msg)
                    CS.CritFramework.SimpleUIService.Instance:ShowMessage(msg)
                end
                
                function SimpleUI:ShowTip(msg)
                    CS.CritFramework.SimpleUIService.Instance:ShowTip(msg)
                end
                
                function SimpleUI:ShowConfirm(msg, callback)
                    -- 简化：直接确认
                    print('[UI] 确认: ' .. msg)
                    if callback then callback(true) end
                end
                
                function SimpleUI:ShowSelection(title, options, callback)
                    -- 简化：打印选项，默认选第一个
                    print('[UI] ' .. title)
                    for i, opt in ipairs(options) do
                        print('  ' .. i .. '. ' .. opt)
                    end
                    print('  -> 自动选择: 1')
                    if callback then callback(1) end
                end
                
                print('[SimpleUI] Lua 模块初始化完成')
            ");
            
            Debug.Log("[SimpleUIService] Lua 桥接注册完成");
        }
        
        /// <summary>
        /// 显示消息
        /// </summary>
        public void ShowMessage(string msg)
        {
            Debug.Log($"<color=cyan>[UI] {msg}</color>");
        }
        
        /// <summary>
        /// 显示提示
        /// </summary>
        public void ShowTip(string msg)
        {
            Debug.Log($"<color=yellow>[Tip] {msg}</color>");
        }
        
        /// <summary>
        /// 显示确认框（简化版：直接调用回调）
        /// </summary>
        public void ShowConfirm(string msg, Action<bool> callback)
        {
            Debug.Log($"<color=green>[Confirm] {msg} -> 自动确认</color>");
            callback?.Invoke(true);
        }
        
        /// <summary>
        /// 显示选择（简化版：默认选第一个）
        /// </summary>
        public void ShowSelection(string title, string[] options, Action<int> callback)
        {
            Debug.Log($"<color=magenta>[Selection] {title}</color>");
            for (int i = 0; i < options.Length; i++)
            {
                Debug.Log($"  {i + 1}. {options[i]}");
            }
            Debug.Log("  -> 自动选择: 1");
            callback?.Invoke(0);
        }
        
        #endregion
    }
}
