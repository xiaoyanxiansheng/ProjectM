using UnityEngine;
using UnityEditor;
using TMPro;
using System.IO;

namespace CritFramework.Editor
{
    /// <summary>
    /// 中文字体创建器 - 从系统字体创建支持中文的 TMP 字体
    /// </summary>
    public class ChineseFontCreator
    {
        [MenuItem("Tools/CritFramework/Create Chinese Font Asset")]
        public static void CreateChineseFontAsset()
        {
            // 从项目中加载字体文件
            string[] fontPaths = new string[]
            {
                "Assets/Fonts/msyh.ttc",    // 微软雅黑
                "Assets/Fonts/msyh.ttf",
                "Assets/Fonts/simhei.ttf",  // 黑体
                "Assets/Fonts/simsun.ttc",  // 宋体
            };

            Font sourceFont = null;
            string usedFontPath = "";

            foreach (var fontPath in fontPaths)
            {
                sourceFont = AssetDatabase.LoadAssetAtPath<Font>(fontPath);
                if (sourceFont != null)
                {
                    usedFontPath = fontPath;
                    Debug.Log($"[ChineseFontCreator] 找到字体文件: {fontPath}");
                    break;
                }
            }

            if (sourceFont == null)
            {
                Debug.LogError("[ChineseFontCreator] 未找到字体文件！请将中文字体文件放入 Assets/Fonts/ 目录。");
                return;
            }

            // 创建字体目录
            string fontFolder = "Assets/Fonts";
            if (!AssetDatabase.IsValidFolder(fontFolder))
            {
                AssetDatabase.CreateFolder("Assets", "Fonts");
            }

            // 创建 TMP 字体资产
            string fontAssetPath = $"{fontFolder}/ChineseFont SDF.asset";
            
            // 使用 TMP 的动态字体功能
            TMP_FontAsset fontAsset = TMP_FontAsset.CreateFontAsset(sourceFont);
            
            if (fontAsset != null)
            {
                fontAsset.name = "ChineseFont SDF";
                
                // 设置为动态字体（运行时生成字形）
                fontAsset.atlasPopulationMode = AtlasPopulationMode.Dynamic;
                
                // 保存资产（重要：需要把材质/Atlas 贴图作为子资产一起保存，否则会出现 m_AtlasTextures 未赋值的问题）
                if (AssetDatabase.LoadAssetAtPath<TMP_FontAsset>(fontAssetPath) != null)
                {
                    AssetDatabase.DeleteAsset(fontAssetPath);
                }

                AssetDatabase.CreateAsset(fontAsset, fontAssetPath);

                if (fontAsset.material != null)
                {
                    fontAsset.material.name = $"{fontAsset.name} Material";
                    AssetDatabase.AddObjectToAsset(fontAsset.material, fontAsset);
                }

                if (fontAsset.atlasTextures != null)
                {
                    for (int i = 0; i < fontAsset.atlasTextures.Length; i++)
                    {
                        Texture2D tex = fontAsset.atlasTextures[i];
                        if (tex == null) continue;
                        tex.name = $"{fontAsset.name} Atlas {i}";
                        AssetDatabase.AddObjectToAsset(tex, fontAsset);
                    }
                }

                EditorUtility.SetDirty(fontAsset);
                AssetDatabase.SaveAssets();
                AssetDatabase.Refresh();
                
                Debug.Log($"[ChineseFontCreator] 中文字体创建成功: {fontAssetPath}");
                Debug.Log($"[ChineseFontCreator] 使用的字体文件: {usedFontPath}");
                
                // 设置为 TMP 默认字体
                SetAsDefaultFont(fontAsset);
            }
            else
            {
                Debug.LogError("[ChineseFontCreator] 创建 TMP 字体资产失败！");
            }
        }

        private static void SetAsDefaultFont(TMP_FontAsset fontAsset)
        {
            // 获取 TMP Settings
            string settingsPath = "Assets/TextMesh Pro/Resources/TMP Settings.asset";
            TMP_Settings settings = AssetDatabase.LoadAssetAtPath<TMP_Settings>(settingsPath);
            
            if (settings != null)
            {
                // 通过 SerializedObject 修改默认字体
                SerializedObject so = new SerializedObject(settings);
                SerializedProperty defaultFontProp = so.FindProperty("m_defaultFontAsset");
                
                if (defaultFontProp != null)
                {
                    defaultFontProp.objectReferenceValue = fontAsset;
                    so.ApplyModifiedProperties();
                    Debug.Log("[ChineseFontCreator] 已设置为 TMP 默认字体");
                }
            }
            else
            {
                Debug.LogWarning("[ChineseFontCreator] 未找到 TMP Settings，请手动设置默认字体");
            }
        }

        [MenuItem("Tools/CritFramework/Fix TMP Font References")]
        public static void FixTMPFontReferences()
        {
            // 获取 TMP 默认字体
            TMP_FontAsset defaultFont = TMP_Settings.defaultFontAsset;
            
            if (defaultFont == null)
            {
                // 尝试加载 LiberationSans SDF
                defaultFont = Resources.Load<TMP_FontAsset>("Fonts & Materials/LiberationSans SDF");
            }

            if (defaultFont == null)
            {
                Debug.LogError("[ChineseFontCreator] 无法找到默认字体！");
                return;
            }

            int fixedCount = 0;
            
            // 查找场景中所有 TMP 组件
            var tmpComponents = Object.FindObjectsByType<TextMeshProUGUI>(FindObjectsSortMode.None);
            foreach (var tmp in tmpComponents)
            {
                bool fontMissing = tmp.font == null;
                bool fontBroken = !fontMissing && (tmp.font.atlasTextures == null || tmp.font.atlasTextures.Length == 0);

                if (fontMissing || fontBroken)
                {
                    tmp.font = defaultFont;
                    EditorUtility.SetDirty(tmp);
                    fixedCount++;
                }
            }

            Debug.Log($"[ChineseFontCreator] 修复了 {fixedCount} 个 TMP 组件的字体引用，使用: {defaultFont.name}");
            
            if (fixedCount > 0)
            {
                UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(
                    UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene());
            }
        }

        [MenuItem("Tools/CritFramework/Apply Chinese Font to All TMP")]
        public static void ApplyChineseFontToAll()
        {
            // 加载中文字体
            TMP_FontAsset chineseFont = AssetDatabase.LoadAssetAtPath<TMP_FontAsset>("Assets/Fonts/ChineseFont SDF.asset");
            
            if (chineseFont == null)
            {
                Debug.LogError("[ChineseFontCreator] 请先创建中文字体！使用 Tools/CritFramework/Create Chinese Font Asset");
                return;
            }

            // 查找场景中所有 TMP 组件
            var tmpTexts = Object.FindObjectsByType<TMPro.TextMeshProUGUI>(FindObjectsSortMode.None);
            int count = 0;

            foreach (var tmp in tmpTexts)
            {
                if (tmp.font != chineseFont)
                {
                    tmp.font = chineseFont;
                    EditorUtility.SetDirty(tmp);
                    count++;
                }
            }

            Debug.Log($"[ChineseFontCreator] 已将 {count} 个 TMP 组件设置为中文字体");
            
            // 标记场景已修改
            UnityEditor.SceneManagement.EditorSceneManager.MarkSceneDirty(
                UnityEditor.SceneManagement.EditorSceneManager.GetActiveScene());
        }
    }
}
