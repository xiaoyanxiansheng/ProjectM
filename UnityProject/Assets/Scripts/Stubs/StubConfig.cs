using System.Collections.Generic;
using System.Text;
using UnityEngine;

namespace CritFramework
{
    /// <summary>
    /// Stub 系统全局配置
    /// 用于在缺少资源/API时使系统能够正常运行逻辑测试
    /// </summary>
    public static class StubConfig
    {
        // ========== 全局开关 ==========
        
        /// <summary>
        /// 调试模式：开启后所有资源/API 使用 Stub
        /// </summary>
        public static bool DebugMode = true;

        // ========== 分类开关 ==========
        
        /// <summary>
        /// 资源占位：粒子、音效、动画等
        /// </summary>
        public static bool StubResources = true;
        
        /// <summary>
        /// 战斗API占位：FindUnitsInRadius、ApplyDamage等
        /// </summary>
        public static bool StubCombat = true;
        
        /// <summary>
        /// 是否打印 Stub 调用日志
        /// </summary>
        public static bool LogStubCalls = true;

        // ========== 日志收集 ==========
        
        private static HashSet<string> _missingResources = new HashSet<string>();
        private static HashSet<string> _stubApiCalls = new HashSet<string>();
        private static Dictionary<string, int> _resourceCallCounts = new Dictionary<string, int>();
        private static Dictionary<string, int> _apiCallCounts = new Dictionary<string, int>();

        /// <summary>
        /// 记录缺失的资源
        /// </summary>
        /// <param name="category">资源类别（Effect/Sound/Animation）</param>
        /// <param name="path">资源路径</param>
        public static void LogMissingResource(string category, string path)
        {
            string key = $"[{category}] {path}";
            _missingResources.Add(key);
            
            // 统计调用次数
            if (!_resourceCallCounts.ContainsKey(key))
                _resourceCallCounts[key] = 0;
            _resourceCallCounts[key]++;
            
            if (LogStubCalls)
            {
                Debug.Log($"[Stub:Resource] {category}: {path}");
            }
        }

        /// <summary>
        /// 记录 Stub API 调用
        /// </summary>
        /// <param name="apiName">API名称</param>
        /// <param name="args">参数摘要</param>
        public static void LogStubApiCall(string apiName, string args = "")
        {
            string key = string.IsNullOrEmpty(args) ? apiName : $"{apiName}({args})";
            _stubApiCalls.Add(apiName); // 只记录API名，不记录参数
            
            // 统计调用次数
            if (!_apiCallCounts.ContainsKey(apiName))
                _apiCallCounts[apiName] = 0;
            _apiCallCounts[apiName]++;
            
            if (LogStubCalls)
            {
                Debug.Log($"[Stub:API] {key}");
            }
        }

        /// <summary>
        /// 获取缺失资源数量
        /// </summary>
        public static int MissingResourceCount => _missingResources.Count;

        /// <summary>
        /// 获取 Stub API 调用数量
        /// </summary>
        public static int StubApiCallCount => _stubApiCalls.Count;

        /// <summary>
        /// 导出缺失资源报告
        /// </summary>
        public static void ExportReport()
        {
            var sb = new StringBuilder();
            
            sb.AppendLine("╔════════════════════════════════════════════════════════════╗");
            sb.AppendLine("║                    STUB 系统报告                            ║");
            sb.AppendLine("╠════════════════════════════════════════════════════════════╣");
            
            // 缺失资源
            sb.AppendLine($"║ 缺失资源: {_missingResources.Count} 个");
            sb.AppendLine("╟────────────────────────────────────────────────────────────╢");
            foreach (var resource in _missingResources)
            {
                int count = _resourceCallCounts.ContainsKey(resource) ? _resourceCallCounts[resource] : 0;
                sb.AppendLine($"║   {resource} (调用 {count} 次)");
            }
            
            sb.AppendLine("╠════════════════════════════════════════════════════════════╣");
            
            // Stub API
            sb.AppendLine($"║ Stub API 调用: {_stubApiCalls.Count} 种");
            sb.AppendLine("╟────────────────────────────────────────────────────────────╢");
            foreach (var api in _stubApiCalls)
            {
                int count = _apiCallCounts.ContainsKey(api) ? _apiCallCounts[api] : 0;
                sb.AppendLine($"║   {api} (调用 {count} 次)");
            }
            
            sb.AppendLine("╚════════════════════════════════════════════════════════════╝");
            
            Debug.Log(sb.ToString());
        }

        /// <summary>
        /// 清空统计数据
        /// </summary>
        public static void Clear()
        {
            _missingResources.Clear();
            _stubApiCalls.Clear();
            _resourceCallCounts.Clear();
            _apiCallCounts.Clear();
        }

        /// <summary>
        /// 获取缺失资源列表（用于导出到文件）
        /// </summary>
        public static IEnumerable<string> GetMissingResources()
        {
            return _missingResources;
        }

        /// <summary>
        /// 获取 Stub API 列表
        /// </summary>
        public static IEnumerable<string> GetStubApis()
        {
            return _stubApiCalls;
        }
    }
}
