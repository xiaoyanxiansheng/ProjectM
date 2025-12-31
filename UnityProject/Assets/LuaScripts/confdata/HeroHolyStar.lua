--[[
	HeroHolyStar

	字段列表:
		Star {int} 星级
		AttrParam* {number} 属性系数
		MainSkillUp* {int} Q技能升级
		SuitSkillUp {map{[auto] = auto}} 组合技能升级
		CostCount* {int} 消耗碎片

]]
return {
	[1] = {
		["Star"] = 1,
		["AttrParam"] = 1,
		["MainSkillUp"] = 1,
		["CostCount"] = 60
	},
	[2] = {
		["Star"] = 2,
		["AttrParam"] = 1.4,
		["MainSkillUp"] = 1,
		["CostCount"] = 20
	},
	[3] = {
		["Star"] = 3,
		["AttrParam"] = 2.1,
		["MainSkillUp"] = 1,
		["CostCount"] = 20
	},
	[4] = {
		["Star"] = 4,
		["AttrParam"] = 3.2,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1
		},
		["CostCount"] = 20
	},
	[5] = {
		["Star"] = 5,
		["AttrParam"] = 5,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1
		},
		["CostCount"] = 30
	},
	[6] = {
		["Star"] = 6,
		["AttrParam"] = 7,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1
		},
		["CostCount"] = 30
	},
	[7] = {
		["Star"] = 7,
		["AttrParam"] = 9,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1
		},
		["CostCount"] = 30
	},
	[8] = {
		["Star"] = 8,
		["AttrParam"] = 13,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1
		},
		["CostCount"] = 40
	},
	[9] = {
		["Star"] = 9,
		["AttrParam"] = 16,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1
		},
		["CostCount"] = 40
	},
	[10] = {
		["Star"] = 10,
		["AttrParam"] = 20,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 40
	},
	[11] = {
		["Star"] = 11,
		["AttrParam"] = 22,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 60
	},
	[12] = {
		["Star"] = 12,
		["AttrParam"] = 25,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 60
	},
	[13] = {
		["Star"] = 13,
		["AttrParam"] = 28,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 60
	},
	[14] = {
		["Star"] = 14,
		["AttrParam"] = 31,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 60
	},
	[15] = {
		["Star"] = 15,
		["AttrParam"] = 37,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 80
	},
	[16] = {
		["Star"] = 16,
		["AttrParam"] = 41,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 80
	},
	[17] = {
		["Star"] = 17,
		["AttrParam"] = 45,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 80
	},
	[18] = {
		["Star"] = 18,
		["AttrParam"] = 50,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 80
	},
	[19] = {
		["Star"] = 19,
		["AttrParam"] = 55,
		["MainSkillUp"] = 1,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 80
	},
	[20] = {
		["Star"] = 20,
		["AttrParam"] = 63,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 100
	},
	[21] = {
		["Star"] = 21,
		["AttrParam"] = 69,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 100
	},
	[22] = {
		["Star"] = 22,
		["AttrParam"] = 76,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 100
	},
	[23] = {
		["Star"] = 23,
		["AttrParam"] = 83,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 100
	},
	[24] = {
		["Star"] = 24,
		["AttrParam"] = 91,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 100
	},
	[25] = {
		["Star"] = 25,
		["AttrParam"] = 104,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 150
	},
	[26] = {
		["Star"] = 26,
		["AttrParam"] = 114,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 150
	},
	[27] = {
		["Star"] = 27,
		["AttrParam"] = 125,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 150
	},
	[28] = {
		["Star"] = 28,
		["AttrParam"] = 136,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 150
	},
	[29] = {
		["Star"] = 29,
		["AttrParam"] = 148,
		["MainSkillUp"] = 2,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 150
	},
	[30] = {
		["Star"] = 30,
		["AttrParam"] = 164,
		["MainSkillUp"] = 3,
		["SuitSkillUp"] = {
			[1] = 1,
			[2] = 1,
			[3] = 1
		},
		["CostCount"] = 200
	}
}
