--[[
	Lottery

	字段列表:
		ID* {int} ID
		TimeId* {int} 时间ID
		Type* {int} 类型
		Reward* {array(array(int, int...), ...)} 常规库
		MustReward* {array(array(int, int...), ...)} 必出库
		MustQuality {int} 必出品质
		GenuineMustCount* {int} 真实必出次数
		CheckType {string} 必出验证类型
		CheckQuality {int} 必出验证品质
		CostFirst1* {map{[auto] = auto}} 抽1次优先消耗
		CostSecond1* {map{[auto] = auto}} 抽1次其次消耗
		CostFirst10* {map{[auto] = auto}} 抽10次优先消耗
		CostSecond10* {map{[auto] = auto}} 抽10次其次消耗
		ViceReward {array(array(int, int...), ...)} 每抽额外奖励
		WishCost {map{[auto] = auto}} 许愿消耗
		ViewReward {bool} 奖池预览
		RechargeIds {array(int, int...)} 充值ID列表
		ViewUpHero {int} 展示UP英雄
		ViewUpPet {array(int, int...)} 展示UP宠物
		ViewMustCount {lang} 必出描述

]]
return {
	[1] = {
		["ID"] = 1,
		["TimeId"] = 0,
		["Type"] = 0,
		["Reward"] = {{0,201001}},
		["MustReward"] = {{0,201002}},
		["MustQuality"] = 5,
		["GenuineMustCount"] = 45,
		["CheckType"] = "convert_hero",
		["CheckQuality"] = 5,
		["CostFirst1"] = {
			[4030011] = 1
		},
		["CostSecond1"] = {
			[211] = 250
		},
		["CostFirst10"] = {
			[4030011] = 10
		},
		["CostSecond10"] = {
			[211] = 2250
		},
		["ViceReward"] = {{213,1}},
		["WishCost"] = {
			[4030001] = 1
		},
		["ViewReward"] = true,
		["ViewMustCount"] = "L3036gs"
	},
	[1001] = {
		["ID"] = 1001,
		["TimeId"] = 30001,
		["Type"] = 1,
		["Reward"] = {{0,201011}},
		["MustReward"] = {{0,201012}},
		["MustQuality"] = 5,
		["GenuineMustCount"] = 100,
		["CheckType"] = "t_pet",
		["CheckQuality"] = 5,
		["CostFirst1"] = {
			[4030012] = 1
		},
		["CostSecond1"] = {
			[211] = 600
		},
		["CostFirst10"] = {
			[4030012] = 10
		},
		["CostSecond10"] = {
			[211] = 5400
		},
		["ViceReward"] = {{214,1}},
		["RechargeIds"] = {30101,30102,30103,30104,30105},
		["ViewUpPet"] = {2502,2503,2505},
		["ViewMustCount"] = "Lp836gs"
	}
}
