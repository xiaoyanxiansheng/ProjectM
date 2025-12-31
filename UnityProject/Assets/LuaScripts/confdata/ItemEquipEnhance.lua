--[[
	ItemEquipEnhance

	字段列表:
		ID {int} 等级
		GenuineOdds* {int} 真实几率
		AttrParam* {number} 属性系数
		Cost* {map{[auto] = auto}} 消耗
		MustCost* {map{[auto] = auto}} 必成消耗

]]
return {
	[1] = {
		["ID"] = 1,
		["GenuineOdds"] = 10000,
		["AttrParam"] = 0.1,
		["Cost"] = {
			[4020001] = 5
		},
		["MustCost"] = {
			[211] = 0
		}
	},
	[2] = {
		["ID"] = 2,
		["GenuineOdds"] = 8000,
		["AttrParam"] = 0.1,
		["Cost"] = {
			[4020001] = 6
		},
		["MustCost"] = {
			[211] = 8
		}
	},
	[3] = {
		["ID"] = 3,
		["GenuineOdds"] = 7000,
		["AttrParam"] = 0.2,
		["Cost"] = {
			[4020001] = 8
		},
		["MustCost"] = {
			[211] = 28
		}
	},
	[4] = {
		["ID"] = 4,
		["GenuineOdds"] = 6000,
		["AttrParam"] = 0.2,
		["Cost"] = {
			[4020001] = 10
		},
		["MustCost"] = {
			[211] = 65
		}
	},
	[5] = {
		["ID"] = 5,
		["GenuineOdds"] = 6000,
		["AttrParam"] = 0.3,
		["Cost"] = {
			[4020001] = 12
		},
		["MustCost"] = {
			[211] = 132
		}
	},
	[6] = {
		["ID"] = 6,
		["GenuineOdds"] = 5000,
		["AttrParam"] = 0.3,
		["Cost"] = {
			[4020001] = 14
		},
		["MustCost"] = {
			[211] = 241
		}
	},
	[7] = {
		["ID"] = 7,
		["GenuineOdds"] = 5000,
		["AttrParam"] = 0.4,
		["Cost"] = {
			[4020001] = 16
		},
		["MustCost"] = {
			[211] = 421
		}
	},
	[8] = {
		["ID"] = 8,
		["GenuineOdds"] = 5000,
		["AttrParam"] = 0.4,
		["Cost"] = {
			[4020001] = 18
		},
		["MustCost"] = {
			[211] = 735
		}
	},
	[9] = {
		["ID"] = 9,
		["GenuineOdds"] = 2000,
		["AttrParam"] = 0.5,
		["Cost"] = {
			[4020001] = 20
		},
		["MustCost"] = {
			[211] = 1305
		}
	},
	[10] = {
		["ID"] = 10,
		["GenuineOdds"] = 5000,
		["AttrParam"] = 0.6,
		["Cost"] = {
			[4020001] = 24
		},
		["MustCost"] = {
			[211] = 2396
		}
	},
	[11] = {
		["ID"] = 11,
		["GenuineOdds"] = 1500,
		["AttrParam"] = 0.7,
		["Cost"] = {
			[4020001] = 27
		},
		["MustCost"] = {
			[211] = 4598
		}
	},
	[12] = {
		["ID"] = 12,
		["GenuineOdds"] = 5000,
		["AttrParam"] = 0.8,
		["Cost"] = {
			[4020001] = 30
		},
		["MustCost"] = {
			[211] = 9316
		}
	}
}
