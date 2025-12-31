--[[
	StarSpaceLevel

	字段列表:
		Level {int} 等级
		UpLevelCost {map{[auto] = auto}} 升级消耗
		LevelAttrParam {number} 升级参数
		Degree {int} 熟练度要求

]]
return {
	[1] = {
		["Level"] = 1,
		["UpLevelCost"] = {
			[4040001] = 0
		},
		["LevelAttrParam"] = 1,
		["Degree"] = 0
	},
	[2] = {
		["Level"] = 2,
		["UpLevelCost"] = {
			[4040001] = 24
		},
		["LevelAttrParam"] = 1.1,
		["Degree"] = 2
	},
	[3] = {
		["Level"] = 3,
		["UpLevelCost"] = {
			[4040001] = 42
		},
		["LevelAttrParam"] = 1.2,
		["Degree"] = 6
	},
	[4] = {
		["Level"] = 4,
		["UpLevelCost"] = {
			[4040001] = 64
		},
		["LevelAttrParam"] = 1.3,
		["Degree"] = 10
	},
	[5] = {
		["Level"] = 5,
		["UpLevelCost"] = {
			[4040001] = 90
		},
		["LevelAttrParam"] = 1.4,
		["Degree"] = 17
	},
	[6] = {
		["Level"] = 6,
		["UpLevelCost"] = {
			[4040001] = 120
		},
		["LevelAttrParam"] = 1.59999999999999,
		["Degree"] = 24
	},
	[7] = {
		["Level"] = 7,
		["UpLevelCost"] = {
			[4040001] = 154
		},
		["LevelAttrParam"] = 1.79999999999999,
		["Degree"] = 32
	},
	[8] = {
		["Level"] = 8,
		["UpLevelCost"] = {
			[4040001] = 192
		},
		["LevelAttrParam"] = 1.99999999999999,
		["Degree"] = 42
	},
	[9] = {
		["Level"] = 9,
		["UpLevelCost"] = {
			[4040001] = 234
		},
		["LevelAttrParam"] = 2.2,
		["Degree"] = 53
	},
	[10] = {
		["Level"] = 10,
		["UpLevelCost"] = {
			[4040001] = 280
		},
		["LevelAttrParam"] = 2.4,
		["Degree"] = 65
	}
}
