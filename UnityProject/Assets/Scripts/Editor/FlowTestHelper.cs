using UnityEngine;
using UnityEditor;
using CritFramework;

namespace CritFramework.Editor
{
    /// <summary>
    /// 流程测试辅助工具
    /// </summary>
    public static class FlowTestHelper
    {
        /// <summary>
        /// 获取运行时的 LuaManager 实例
        /// </summary>
        private static LuaManager GetLuaManager()
        {
            if (!Application.isPlaying) return null;
            
            // 在 Play Mode 中查找实例
            var luaManager = Object.FindFirstObjectByType<LuaManager>();
            if (luaManager == null)
            {
                // 尝试通过 GameObject 名称查找
                var go = GameObject.Find("[LuaManager]");
                if (go != null)
                {
                    luaManager = go.GetComponent<LuaManager>();
                }
            }
            return luaManager;
        }

        [MenuItem("Tools/CritFramework/Test Flow/进入选角")]
        public static void TestSelectHero()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                // 进入选角界面（不选择具体英雄）
                lua.DoString(@"
                    if Flow then
                        Flow:SelectHero()
                    end
                ", "TestSelectHero");
                Debug.Log("[FlowTest] 触发选角流程");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 选角失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Flow/确认选角(12101)")]
        public static void TestConfirmHero()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                // 选择英雄 12101（艾丽斯）
                lua.DoString(@"
                    if Flow then
                        Flow:SelectHero(12101)
                        print('[FlowTest] 选择英雄 12101 (艾丽斯)')
                    end
                ", "TestConfirmHero");
                Debug.Log("[FlowTest] 确认选择英雄 12101");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 确认选角失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Flow/进入选副本")]
        public static void TestSelectDungeon()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                // 进入选副本界面
                lua.DoString(@"
                    if Flow then
                        Flow:SelectDungeon()
                    end
                ", "TestSelectDungeon");
                Debug.Log("[FlowTest] 触发选副本流程");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 选副本失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Flow/Start Dungeon")]
        public static void TestStartDungeon()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                // 选择副本 main_rogue_1 并开始
                lua.DoString(@"
                    if Flow then
                        Flow:SelectDungeon('main_rogue_1')
                        Flow:StartDungeon()
                    end
                ", "TestStartDungeon");
                Debug.Log("[FlowTest] 选择并开始副本 main_rogue_1");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 开始副本失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Flow/Kill All Monsters (Units系统)")]
        public static void TestKillAllMonsters()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString(@"
                    -- 杀死 Units 系统中的所有怪物（与 BattleInit 同步）
                    if Units then
                        local monsters = Units:GetUnitsByLib('dungeon_monster')
                        local count = 0
                        for insid, monster in pairs(monsters or {}) do
                            if monster:IsAlive() then
                                -- 调用 Kill 方法触发死亡流程
                                monster:Kill(nil, 0)
                                count = count + 1
                                print('[FlowTest] 杀死怪物 InsId=' .. insid)
                            end
                        end
                        print('[FlowTest] 共杀死 ' .. count .. ' 个怪物')
                    else
                        print('[FlowTest] Units 系统未初始化')
                    end
                    
                    -- 同时更新简化版副本的怪物状态
                    if Flow and Flow:GetDungeon() then
                        Flow:GetDungeon():KillAllMonsters()
                    end
                ", "TestKillAll");
                Debug.Log("[FlowTest] 击杀所有怪物");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 击杀怪物失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Flow/打印副本状态")]
        public static void TestPrintDungeonState()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString(@"
                    print('=== 副本状态 ===')
                    if Flow then
                        print('游戏状态: ' .. Flow:GetStateName())
                        
                        local dungeon = Flow:GetDungeon()
                        if dungeon then
                            print('副本ID: ' .. tostring(dungeon:GetDungeonId()))
                            print('副本状态: ' .. tostring(dungeon:GetState()))
                            print('当前房间: ' .. tostring(dungeon.__CurrentRoomIndex or 0))
                            print('房间总数: ' .. tostring(#(dungeon.__Rooms or {})))
                            
                            -- 检查 Units 系统中的怪物
                            if Units then
                                local monsters = Units:GetUnitsByLib('dungeon_monster')
                                local aliveCount = 0
                                local totalCount = 0
                                for insid, monster in pairs(monsters or {}) do
                                    totalCount = totalCount + 1
                                    if monster:IsAlive() then
                                        aliveCount = aliveCount + 1
                                    end
                                end
                                print('怪物(Units): 存活=' .. aliveCount .. ', 总数=' .. totalCount)
                            end
                            
                            -- 简化版副本怪物
                            local simpleAlive = dungeon.GetAliveMonsterCount and dungeon:GetAliveMonsterCount() or 0
                            print('怪物(简化版): 存活=' .. simpleAlive)
                        else
                            print('没有副本')
                        end
                    else
                        print('Flow 未初始化')
                    end
                    print('================')
                ", "TestPrintDungeonState");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 打印副本状态失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Flow/返回大厅")]
        public static void TestBackToLobby()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString(@"
                    if Flow then
                        Flow:ReturnToLobby()
                    end
                ", "TestBackToLobby");
                Debug.Log("[FlowTest] 触发返回大厅");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 返回大厅失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Combat/释放技能1")]
        public static void TestCastSkill1()
        {
            TestCastSkill(1);
        }

        [MenuItem("Tools/CritFramework/Test Combat/释放技能2")]
        public static void TestCastSkill2()
        {
            TestCastSkill(2);
        }

        [MenuItem("Tools/CritFramework/Test Combat/释放技能3")]
        public static void TestCastSkill3()
        {
            TestCastSkill(3);
        }

        [MenuItem("Tools/CritFramework/Test Combat/释放技能4")]
        public static void TestCastSkill4()
        {
            TestCastSkill(4);
        }

        private static void TestCastSkill(int slot)
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString($@"
                    if BattleInit and BattleInit.CastSkill then
                        local result = BattleInit:CastSkill({slot})
                        print('[FlowTest] 释放技能槽位 {slot}, 结果: ' .. tostring(result))
                    else
                        print('[FlowTest] BattleInit 未初始化')
                    end
                ", $"TestCastSkill{slot}");
                Debug.Log($"[FlowTest] 测试释放技能 {slot}");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 释放技能失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Combat/直接伤害测试")]
        public static void TestDirectDamage()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString(@"
                    if BattleInit and Fight then
                        local hero = BattleInit:GetPlayerHero()
                        if not hero then
                            print('[FlowTest] 没有英雄单位')
                            return
                        end
                        
                        -- 查找一个怪物
                        local target = nil
                        if Units then
                            local monsters = Units:GetUnitsByLib('dungeon_monster')
                            for insid, monster in pairs(monsters or {}) do
                                if monster:IsAlive() then
                                    target = monster
                                    break
                                end
                            end
                        end
                        
                        if not target then
                            print('[FlowTest] 没有存活的怪物')
                            return
                        end
                        
                        -- 获取怪物当前 HP
                        local hpBefore = target:GetHP() or 100
                        print('[FlowTest] 怪物 ' .. target:GetInsid() .. ' 当前HP: ' .. hpBefore)
                        
                        -- 直接调用伤害系统
                        local damage = 50
                        print('[FlowTest] 尝试造成 ' .. damage .. ' 点伤害...')
                        
                        -- 调用 Fight:ApplyDirectlyDamage
                        if Fight and Fight.ApplyDirectlyDamage then
                            Fight:ApplyDirectlyDamage(hero, target, damage, 0, nil)
                        elseif target.Damage then
                            target:Damage(damage, 0, hero, 0)
                        else
                            print('[FlowTest] 没有可用的伤害方法')
                        end
                        
                        -- 获取怪物当前 HP
                        local hpAfter = target:GetHP() or 0
                        print('[FlowTest] 怪物 ' .. target:GetInsid() .. ' 伤害后HP: ' .. hpAfter)
                        print('[FlowTest] 实际伤害: ' .. (hpBefore - hpAfter))
                        print('[FlowTest] 怪物存活: ' .. tostring(target:IsAlive()))
                    else
                        print('[FlowTest] BattleInit 或 Fight 未初始化')
                    end
                ", "TestDirectDamage");
                Debug.Log("[FlowTest] 直接伤害测试完成");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 直接伤害测试失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Combat/打印战斗状态")]
        public static void TestPrintBattleState()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString(@"
                    print('=== 战斗状态 ===')
                    if BattleInit then
                        print('战斗系统已初始化: ' .. tostring(BattleInit.__Initialized))
                        print('战斗状态: ' .. tostring(BattleInit.__State))
                        
                        local hero = BattleInit:GetPlayerHero()
                        if hero then
                            print('英雄 InsId: ' .. hero:GetInsid())
                            print('英雄位置: ' .. tostring(hero:GetPosition()))
                            print('英雄技能: ')
                            for slot, skillId in pairs(hero:GetAllSkills()) do
                                print('  槽位 ' .. slot .. ' = 技能 ' .. skillId)
                            end
                        else
                            print('没有英雄单位')
                        end
                        
                        if Units then
                            local monsters = Units:GetUnitsByLib('dungeon_monster')
                            local count = 0
                            for insid, monster in pairs(monsters or {}) do
                                count = count + 1
                                print('怪物 ' .. insid .. ': 存活=' .. tostring(monster:IsAlive()))
                            end
                            print('怪物总数: ' .. count)
                        end
                    else
                        print('BattleInit 未加载')
                    end
                    print('================')
                ", "TestPrintBattleState");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 打印状态失败: {e.Message}");
            }
        }

        // ==================== Buff 测试 ====================

        [MenuItem("Tools/CritFramework/Test Combat/添加攻击力Buff(10002)")]
        public static void TestAddBuff10002()
        {
            TestAddBuff(10002);
        }

        [MenuItem("Tools/CritFramework/Test Combat/添加控制Buff(10001)")]
        public static void TestAddBuff10001()
        {
            TestAddBuff(10001);
        }

        private static void TestAddBuff(int buffId)
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString($@"
                    if BattleInit and SkillAPI then
                        local hero = BattleInit:GetPlayerHero()
                        if not hero then
                            print('[FlowTest] 没有英雄单位')
                            return
                        end
                        
                        local insId = hero:GetInsid()
                        local buffId = {buffId}
                        local buffLevel = 1
                        
                        print('[FlowTest] 添加 Buff: InsId=' .. insId .. ', BuffId=' .. buffId)
                        
                        -- 添加前打印属性
                        local attrBefore = hero:GetAttr(1) or 0
                        print('[FlowTest] 添加前攻击力: ' .. attrBefore)
                        
                        -- 添加 Buff
                        SkillAPI.AddEntityBuff(insId, buffId, buffLevel, 1)
                        
                        -- 添加后打印属性
                        local attrAfter = hero:GetAttr(1) or 0
                        print('[FlowTest] 添加后攻击力: ' .. attrAfter)
                        
                        -- 打印当前 Buff 列表
                        local buffs = SkillAPI.GetEntityBuffs(insId, 0)
                        print('[FlowTest] 当前 Buff 数量: ' .. #buffs)
                        for _, buff in ipairs(buffs) do
                            print('[FlowTest]   Buff: ' .. buff.buffid .. ', 层数: ' .. buff.stack)
                        end
                    else
                        print('[FlowTest] BattleInit 或 SkillAPI 未初始化')
                    end
                ", $"TestAddBuff{buffId}");
                Debug.Log($"[FlowTest] 测试添加 Buff {buffId}");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 添加 Buff 失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Combat/移除所有Buff")]
        public static void TestRemoveAllBuffs()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString(@"
                    if BattleInit and SkillAPI then
                        local hero = BattleInit:GetPlayerHero()
                        if not hero then
                            print('[FlowTest] 没有英雄单位')
                            return
                        end
                        
                        local insId = hero:GetInsid()
                        
                        -- 获取并移除所有 Buff
                        local buffs = SkillAPI.GetEntityBuffs(insId, 0)
                        print('[FlowTest] 移除 ' .. #buffs .. ' 个 Buff')
                        
                        for _, buff in ipairs(buffs) do
                            SkillAPI.RemoveEntityBuff(insId, buff.buffid)
                            print('[FlowTest]   移除 Buff: ' .. buff.buffid)
                        end
                        
                        -- 验证
                        buffs = SkillAPI.GetEntityBuffs(insId, 0)
                        print('[FlowTest] 剩余 Buff 数量: ' .. #buffs)
                    else
                        print('[FlowTest] BattleInit 或 SkillAPI 未初始化')
                    end
                ", "TestRemoveAllBuffs");
                Debug.Log("[FlowTest] 测试移除所有 Buff");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 移除 Buff 失败: {e.Message}");
            }
        }

        [MenuItem("Tools/CritFramework/Test Combat/打印英雄Buff列表")]
        public static void TestPrintBuffList()
        {
            if (!Application.isPlaying)
            {
                Debug.LogError("请先运行游戏");
                return;
            }

            var lua = GetLuaManager();
            if (lua == null)
            {
                Debug.LogError("[FlowTest] 找不到 LuaManager");
                return;
            }

            try
            {
                lua.DoString(@"
                    if BattleInit and SkillAPI then
                        local hero = BattleInit:GetPlayerHero()
                        if not hero then
                            print('[FlowTest] 没有英雄单位')
                            return
                        end
                        
                        local insId = hero:GetInsid()
                        print('=== 英雄 Buff 列表 (InsId=' .. insId .. ') ===')
                        
                        -- 打印属性
                        print('攻击力(1): ' .. (hero:GetAttr(1) or 0))
                        print('HP(21): ' .. (hero:GetHP() or 0))
                        
                        -- 打印 Buff 列表
                        local buffs = SkillAPI.GetEntityBuffs(insId, 0)
                        if #buffs == 0 then
                            print('没有 Buff')
                        else
                            for _, buff in ipairs(buffs) do
                                local config = GetBuffLine(buff.buffid)
                                local name = config and ('增益=' .. config.GainOrDeBuff) or '未知'
                                print('  Buff ' .. buff.buffid .. ': 等级=' .. buff.bufflevel .. ', 层数=' .. buff.stack .. ', ' .. name)
                            end
                        end
                        print('================')
                    else
                        print('[FlowTest] BattleInit 或 SkillAPI 未初始化')
                    end
                ", "TestPrintBuffList");
            }
            catch (System.Exception e)
            {
                Debug.LogError($"[FlowTest] 打印 Buff 列表失败: {e.Message}");
            }
        }
    }
}
