--[[
	GameConfig

	字段列表:
		Key {string} Key
		desc {string} 备注
		Value {auto} 值
		MapValue {map{[auto] = auto}} 值
		Map2Value {map{[auto] = array(...), ...}} 值
		ArrValue {array(auto, auto...)} 值
		Arr2Value {array(array(auto, auto...), ...)} 值

]]
return {
	["CreateHeroSelection"] = {
		["Key"] = "CreateHeroSelection",
		["desc"] = "创建英雄时的选择",
		["ArrValue"] = {14101,14201,14301}
	},
	["InitPet"] = {
		["Key"] = "InitPet",
		["desc"] = "初始圣灵ID",
		["Value"] = 2201
	},
	["RenameCost"] = {
		["Key"] = "RenameCost",
		["desc"] = "改名字消耗",
		["MapValue"] = {
			[211] = 100
		}
	},
	["FortuneLibra"] = {
		["Key"] = "FortuneLibra",
		["desc"] = "N2解锁气运玩法",
		["Value"] = 2
	},
	["FirstFailReward"] = {
		["Key"] = "FirstFailReward",
		["desc"] = "首次失败奖励",
		["Arr2Value"] = {{4010001,35}}
	},
	["InspirationGuideArrows"] = {
		["Key"] = "InspirationGuideArrows",
		["desc"] = "显示灵光点引导箭头",
		["Value"] = 1
	},
	["MainCitySpawnNpc"] = {
		["Key"] = "MainCitySpawnNpc",
		["desc"] = "主城刷NPC",
		["ArrValue"] = {1,2,3,4,5,6,7,9}
	},
	["MainCityRespawn"] = {
		["Key"] = "MainCityRespawn",
		["desc"] = "主城复活点",
		["Value"] = "camp_player_start"
	},
	["MainCityDoor"] = {
		["Key"] = "MainCityDoor",
		["desc"] = "主城传送门的NPCID",
		["Value"] = 19
	},
	["MainCityHeroAttr"] = {
		["Key"] = "MainCityHeroAttr",
		["desc"] = "主城英雄的额外属性",
		["Arr2Value"] = {{51,800},{54,3000},{55,3000}}
	},
	["MainCitySelectModel"] = {
		["Key"] = "MainCitySelectModel",
		["desc"] = "主城选择模式的NPCID",
		["Value"] = 4
	},
	["MainRogueTransferName"] = {
		["Key"] = "MainRogueTransferName",
		["desc"] = "传送门刷怪点名称",
		["Value"] = "abysm_transfer_{id}_{f}"
	},
	["MainRogueTransferSpawnName"] = {
		["Key"] = "MainRogueTransferSpawnName",
		["desc"] = "传送门出生点名称",
		["Value"] = "start_fight_{id}_{f}"
	},
	["MainRogueTransferSpawnId"] = {
		["Key"] = "MainRogueTransferSpawnId",
		["desc"] = "传送门刷怪的Spawnid",
		["Value"] = 8
	},
	["MainRogueTransferArea"] = {
		["Key"] = "MainRogueTransferArea",
		["desc"] = "离传送门多远可以触发传送",
		["Value"] = 250
	},
	["MainRogueTransferSpeed"] = {
		["Key"] = "MainRogueTransferSpeed",
		["desc"] = "每1名玩家传送门条速度",
		["Value"] = 0.1
	},
	["MainRogueTransferAllPlayerSpeed"] = {
		["Key"] = "MainRogueTransferAllPlayerSpeed",
		["desc"] = "全部玩家到位时传送门条速度",
		["Value"] = 5
	},
	["MainRogueTransferMaxValue"] = {
		["Key"] = "MainRogueTransferMaxValue",
		["desc"] = "传送门条总长度",
		["Value"] = 20
	},
	["MainRogueIdleBuff"] = {
		["Key"] = "MainRogueIdleBuff",
		["desc"] = "空闲时的Buff",
		["Value"] = 2000010
	},
	["MainRogueSelectHeroCountDwon"] = {
		["Key"] = "MainRogueSelectHeroCountDwon",
		["desc"] = "选择英雄倒计时",
		["Value"] = 60
	},
	["RoundNpcSellCount"] = {
		["Key"] = "RoundNpcSellCount",
		["desc"] = "急回收物品种类数量",
		["Value"] = 10
	},
	["RoundNpcLotteryCost"] = {
		["Key"] = "RoundNpcLotteryCost",
		["desc"] = "抽奖商店抽奖消耗（几连抽|道具ID|消耗数量）",
		["Map2Value"] = {
			[1] = {111,10000},
			[10] = {111,100000},
			[100] = {111,1000000}
		}
	},
	["RoundNpcShopRefreshCost"] = {
		["Key"] = "RoundNpcShopRefreshCost",
		["desc"] = "神秘商人刷新消耗",
		["MapValue"] = {
			[111] = 2000
		}
	},
	["RoundNpcShopCount"] = {
		["Key"] = "RoundNpcShopCount",
		["desc"] = "神秘商人物品数量",
		["Value"] = 5
	},
	["RoundNpcRemakeSoulCost"] = {
		["Key"] = "RoundNpcRemakeSoulCost",
		["desc"] = "重铸魂器消耗",
		["MapValue"] = {
			[111] = 20000
		}
	},
	["RoundRemakeInspiration"] = {
		["Key"] = "RoundRemakeInspiration",
		["desc"] = "重置灵光点消耗",
		["MapValue"] = {
			[111] = 500
		}
	},
	["BagShareUpper"] = {
		["Key"] = "BagShareUpper",
		["desc"] = "共享背包上限",
		["Value"] = 10
	},
	["BagSelfUpper"] = {
		["Key"] = "BagSelfUpper",
		["desc"] = "自己背包上限",
		["Value"] = 99
	},
	["BagSoulUpper"] = {
		["Key"] = "BagSoulUpper",
		["desc"] = "魂魄背包上限",
		["Value"] = 1
	},
	["BagFateUpper"] = {
		["Key"] = "BagFateUpper",
		["desc"] = "气运背包上限",
		["Value"] = 1
	},
	["BagMsgHideCountDown"] = {
		["Key"] = "BagMsgHideCountDown",
		["desc"] = "物品获得展示倒计时",
		["Value"] = 1
	},
	["Quality_Color_0"] = {
		["Key"] = "Quality_Color_0",
		["desc"] = "品质的颜色值",
		["Value"] = "#aaaaaa"
	},
	["Quality_Color_1"] = {
		["Key"] = "Quality_Color_1",
		["desc"] = "品质的颜色值",
		["Value"] = "#ffffff"
	},
	["Quality_Color_2"] = {
		["Key"] = "Quality_Color_2",
		["desc"] = "品质的颜色值",
		["Value"] = "#aaffaa"
	},
	["Quality_Color_3"] = {
		["Key"] = "Quality_Color_3",
		["desc"] = "品质的颜色值",
		["Value"] = "#aaaaff"
	},
	["Quality_Color_4"] = {
		["Key"] = "Quality_Color_4",
		["desc"] = "品质的颜色值",
		["Value"] = "#ffaaff"
	},
	["Quality_Color_5"] = {
		["Key"] = "Quality_Color_5",
		["desc"] = "品质的颜色值",
		["Value"] = "#ffffaa"
	},
	["Quality_Color_6"] = {
		["Key"] = "Quality_Color_6",
		["desc"] = "品质的颜色值",
		["Value"] = "#ffaaaa"
	},
	["Quality_Color_7"] = {
		["Key"] = "Quality_Color_7",
		["desc"] = "品质的颜色值",
		["Value"] = "#aabbcc"
	},
	["FatePromotionCount"] = {
		["Key"] = "FatePromotionCount",
		["desc"] = "气运晋升次数上限",
		["Value"] = 6
	},
	["WarehouseEquipMax"] = {
		["Key"] = "WarehouseEquipMax",
		["desc"] = "装备仓库-上限",
		["Value"] = 200
	},
	["WarehouseMaterialMax"] = {
		["Key"] = "WarehouseMaterialMax",
		["desc"] = "材料仓库-上限",
		["Value"] = 200
	},
	["WarehouseFragmentMax"] = {
		["Key"] = "WarehouseFragmentMax",
		["desc"] = "碎片仓库-上限",
		["Value"] = 200
	},
	["WarehouseCurioMax"] = {
		["Key"] = "WarehouseCurioMax",
		["desc"] = "法宝仓库-上限",
		["Value"] = 200
	},
	["WarehouseOtherMax"] = {
		["Key"] = "WarehouseOtherMax",
		["desc"] = "其他仓库-上限",
		["Value"] = 200
	},
	["PlayerRespawn"] = {
		["Key"] = "PlayerRespawn",
		["desc"] = "死亡复活默认时间(s)",
		["Value"] = 10
	},
	["PlayerInspirationCount"] = {
		["Key"] = "PlayerInspirationCount",
		["desc"] = "灵光点随机数量",
		["Value"] = 7
	},
	["PlayerInspirationType"] = {
		["Key"] = "PlayerInspirationType",
		["desc"] = "灵光点随机类型",
		["ArrValue"] = {1,2,11,12,21,22,31,32,33}
	},
	["SkillUpper"] = {
		["Key"] = "SkillUpper",
		["desc"] = "技能上限",
		["Value"] = 1
	},
	["SkillShiftTime"] = {
		["Key"] = "SkillShiftTime",
		["desc"] = "组合技能自动切回时间(s)",
		["Value"] = 3
	},
	["SkillSplitString"] = {
		["Key"] = "SkillSplitString",
		["desc"] = "技能等级间隔字符",
		["Value"] = "/"
	},
	["SkillInitialHitRate"] = {
		["Key"] = "SkillInitialHitRate",
		["desc"] = "技能初始命中率",
		["Value"] = 3000
	},
	["SkillDefaultSound"] = {
		["Key"] = "SkillDefaultSound",
		["desc"] = "技能的缺省音效"
	},
	["AttrMaxHpId"] = {
		["Key"] = "AttrMaxHpId",
		["desc"] = "血上限属性ID",
		["Value"] = 21
	},
	["AttrSpeedId"] = {
		["Key"] = "AttrSpeedId",
		["desc"] = "移动速度属性ID",
		["Value"] = 51
	},
	["AttrAttackTimeId"] = {
		["Key"] = "AttrAttackTimeId",
		["desc"] = "攻击时间属性ID",
		["Value"] = 52
	},
	["AttrAttackRangeId"] = {
		["Key"] = "AttrAttackRangeId",
		["desc"] = "攻击范围属性ID",
		["Value"] = 53
	},
	["AttrDayViewId"] = {
		["Key"] = "AttrDayViewId",
		["desc"] = "白天视野属性ID",
		["Value"] = 54
	},
	["AttrNightViewId"] = {
		["Key"] = "AttrNightViewId",
		["desc"] = "夜晚视野属性ID",
		["Value"] = 55
	},
	["AttrViewId"] = {
		["Key"] = "AttrViewId",
		["desc"] = "夜晚视野属性ID",
		["Value"] = 56
	},
	["AttrRespawnTimeId"] = {
		["Key"] = "AttrRespawnTimeId",
		["desc"] = "重生时长缩减属性ID",
		["Value"] = 61
	},
	["AttrCDTimeId"] = {
		["Key"] = "AttrCDTimeId",
		["desc"] = "冷却缩减属性ID",
		["Value"] = 62
	},
	["AttrSkillLevelId"] = {
		["Key"] = "AttrSkillLevelId",
		["desc"] = "技能等级上限属性ID",
		["Value"] = 63
	},
	["AttrSkillRangeAddId"] = {
		["Key"] = "AttrSkillRangeAddId",
		["desc"] = "技能施法距离属性ID",
		["Value"] = 66
	},
	["AttrCustomDynamicAttr"] = {
		["Key"] = "AttrCustomDynamicAttr",
		["desc"] = "自定义动态属性（key|上限属性id…key|id）（不需要定义hp）",
		["MapValue"] = {
			["mp"] = 31,
			["shield"] = 0
		}
	},
	["AuctionItemId"] = {
		["Key"] = "AuctionItemId",
		["desc"] = "竞拍消耗的道具ID",
		["Value"] = 231
	},
	["AuctionRoundTime"] = {
		["Key"] = "AuctionRoundTime",
		["desc"] = "局内竞拍时间(s)",
		["Value"] = 120
	},
	["AuctionRoundTimeKeep"] = {
		["Key"] = "AuctionRoundTimeKeep",
		["desc"] = "局内顶价时，如果低于此时间重置到此时间(s)",
		["Value"] = 15
	},
	["AuctionRoundRaise"] = {
		["Key"] = "AuctionRoundRaise",
		["desc"] = "局内最低抬价比例",
		["Value"] = 1.1
	},
	["AuctionPage"] = {
		["Key"] = "AuctionPage",
		["desc"] = "竞拍每页显示数量",
		["Value"] = 20
	},
	["AuctionRaise"] = {
		["Key"] = "AuctionRaise",
		["desc"] = "局外最低抬价比例",
		["Value"] = 1.1
	},
	["HeroHolyOpenStar"] = {
		["Key"] = "HeroHolyOpenStar",
		["desc"] = "英雄圣器开放星级",
		["Value"] = 6
	},
	["HeroCurioOpenStar"] = {
		["Key"] = "HeroCurioOpenStar",
		["desc"] = "英雄珍宝开放星级",
		["Value"] = 9
	},
	["HeroMax"] = {
		["Key"] = "HeroMax",
		["desc"] = "最大英雄数量",
		["Value"] = 200
	},
	["EquipStarAttrCount"] = {
		["Key"] = "EquipStarAttrCount",
		["desc"] = "星级的属性条数",
		["Arr2Value"] = {{0,1},{1,2},{2,4},{3,6},{4,7},{5,8}}
	},
	["EquipSynergyLevelNeedStar"] = {
		["Key"] = "EquipSynergyLevelNeedStar",
		["desc"] = "每一级需要的星星数",
		["Value"] = 1
	},
	["EquipSynergyLevelMax"] = {
		["Key"] = "EquipSynergyLevelMax",
		["desc"] = "最高套装等级",
		["Value"] = 60
	},
	["EquipUIShowAttrs"] = {
		["Key"] = "EquipUIShowAttrs",
		["desc"] = "装备界面显示的属性",
		["ArrValue"] = {525,526,527,528,181}
	},
	["FreeSuccessOdds"] = {
		["Key"] = "FreeSuccessOdds",
		["desc"] = "免费次数额外成功率",
		["Value"] = 0.3
	},
	["D"] = {
		["Key"] = "D"
	},
	["SkillFlyHeight"] = {
		["Key"] = "SkillFlyHeight",
		["desc"] = "技能击飞最大高度",
		["Value"] = 500
	},
	["AttackDamageParams_1_0"] = {
		["Key"] = "AttackDamageParams_1_0",
		["desc"] = "普攻伤害参数：力量-近战（必须填到Arr2Value）",
		["Arr2Value"] = {{1,0,1}}
	},
	["AttackDamageParams_1_1"] = {
		["Key"] = "AttackDamageParams_1_1",
		["desc"] = "普攻伤害参数：力量-远程（必须填到Arr2Value）",
		["Arr2Value"] = {{1,0,1}}
	},
	["AttackDamageParams_2_0"] = {
		["Key"] = "AttackDamageParams_2_0",
		["desc"] = "普攻伤害参数：敏捷-近战（必须填到Arr2Value）",
		["Arr2Value"] = {{1,0,1}}
	},
	["AttackDamageParams_2_1"] = {
		["Key"] = "AttackDamageParams_2_1",
		["desc"] = "普攻伤害参数：敏捷-远程（必须填到Arr2Value）",
		["Arr2Value"] = {{1,0,1}}
	},
	["AttackDamageParams_3_0"] = {
		["Key"] = "AttackDamageParams_3_0",
		["desc"] = "普攻伤害参数：智力-近战（必须填到Arr2Value）",
		["Arr2Value"] = {{1,0,1}}
	},
	["AttackDamageParams_3_1"] = {
		["Key"] = "AttackDamageParams_3_1",
		["desc"] = "普攻伤害参数：智力-远程（必须填到Arr2Value）",
		["Arr2Value"] = {{1,0,1}}
	},
	["DailyActiveTaskLabs"] = {
		["Key"] = "DailyActiveTaskLabs",
		["desc"] = "日常任务随机库(库ID|随机个数)",
		["MapValue"] = {
			[101] = 1,
			[102] = 2,
			[103] = 2,
			[104] = 1,
			[105] = 1,
			[106] = 3
		}
	},
	["WeeklyActiveTaskLabs"] = {
		["Key"] = "WeeklyActiveTaskLabs",
		["desc"] = "周常任务随机库(库ID|随机个数)",
		["MapValue"] = {
			[201] = 1,
			[202] = 1,
			[203] = 1,
			[204] = 1,
			[205] = 1,
			[211] = 5,
			[212] = 10
		}
	},
	["LotteryWishCd"] = {
		["Key"] = "LotteryWishCd",
		["desc"] = "许愿CD(秒)",
		["Value"] = 86400
	},
	["LotteryRewardOdds"] = {
		["Key"] = "LotteryRewardOdds",
		["desc"] = "奖池表",
		["Arr2Value"] = {{12101,670},{12201,670},{12301,670},{14101,1500},{14201,1500},{14301,1500},{15101,42},{15103,42},{15201,42},{15203,42},{15301,42},{15303,42}}
	},
	["MaxMailCount"] = {
		["Key"] = "MaxMailCount",
		["desc"] = "最大邮件数量",
		["Value"] = 200
	},
	["CheckInMaxSave"] = {
		["Key"] = "CheckInMaxSave",
		["desc"] = "签到奖励最大积攒数量",
		["Value"] = 30
	},
	["CheckInRechargeId"] = {
		["Key"] = "CheckInRechargeId",
		["desc"] = "签到特权充值ID",
		["Value"] = 21001
	},
	["CheckInRechargeDay"] = {
		["Key"] = "CheckInRechargeDay",
		["desc"] = "签到特权充值时长（天）",
		["Value"] = 30
	},
	["PetExpeditionRefreshCount"] = {
		["Key"] = "PetExpeditionRefreshCount",
		["desc"] = "宠物远征刷新数量",
		["Value"] = 5
	},
	["PetExpeditionMaxTaskRunning"] = {
		["Key"] = "PetExpeditionMaxTaskRunning",
		["desc"] = "宠物远征运行数量上限",
		["Value"] = 30
	},
	["PetExpeditionRefreshCD"] = {
		["Key"] = "PetExpeditionRefreshCD",
		["desc"] = "宠物远征免费刷新CD（秒）",
		["Value"] = 21600
	},
	["PetExpeditionRefreshCost"] = {
		["Key"] = "PetExpeditionRefreshCost",
		["desc"] = "宠物远征刷新消耗",
		["MapValue"] = {
			[4110001] = 1
		}
	},
	["SmashEggsCost"] = {
		["Key"] = "SmashEggsCost",
		["desc"] = "砸蛋消耗",
		["MapValue"] = {
			[5810101] = 1
		}
	},
	["SmashEggsHp"] = {
		["Key"] = "SmashEggsHp",
		["desc"] = "砸蛋血量",
		["Value"] = 2
	},
	["SmashEggsBoomReward"] = {
		["Key"] = "SmashEggsBoomReward",
		["desc"] = "砸蛋炸弹安慰奖",
		["MapValue"] = {
			[5810104] = 1
		}
	},
	["VipExpCoefficient"] = {
		["Key"] = "VipExpCoefficient",
		["desc"] = "1RMB=多少VIP经验",
		["Value"] = 10
	},
	["VipCheckInExp"] = {
		["Key"] = "VipCheckInExp",
		["desc"] = "签到VIP经验",
		["Value"] = 10
	}
}
