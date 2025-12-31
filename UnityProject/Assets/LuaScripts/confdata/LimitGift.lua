--[[
	LimitGift

	字段列表:
		ID {int} ID
		Condition* {string} 条件
		Target* {int} 条件目标
		Params {array(auto, auto...)} 条件参数
		Dungeon {string} 副本条件
		AllowRepeat {bool} 允许重复触发
		CD {int} 触发CD/s
		Duration* {int} 持续/s
		Recharge* {int} 充值ID

]]
return {
	[1] = {
		["ID"] = 1,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 1,
		["Params"] = {7},
		["Duration"] = 86400,
		["Recharge"] = 40001
	},
	[2] = {
		["ID"] = 2,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 1,
		["Params"] = {10},
		["Duration"] = 86400,
		["Recharge"] = 40002
	},
	[3] = {
		["ID"] = 3,
		["Condition"] = "count_save_lottery",
		["Target"] = 50,
		["Duration"] = 86400,
		["Recharge"] = 40003
	}
}
