--[[
	ItemFateUpQuality

	字段列表:
		Id {int} 品质
		value {int} 价值经验
		Cost {map{[auto] = auto}} 消耗
		Absorb {int} 升级消耗经验

]]
return {
	[0] = {
		["Id"] = 0,
		["value"] = 10
	},
	[1] = {
		["Id"] = 1,
		["value"] = 10,
		["Cost"] = {
			[111] = 1000
		},
		["Absorb"] = 10
	},
	[2] = {
		["Id"] = 2,
		["value"] = 15,
		["Cost"] = {
			[111] = 1500
		},
		["Absorb"] = 10
	},
	[3] = {
		["Id"] = 3,
		["value"] = 20,
		["Cost"] = {
			[111] = 2000
		},
		["Absorb"] = 20
	},
	[4] = {
		["Id"] = 4,
		["value"] = 30,
		["Cost"] = {
			[111] = 3000
		},
		["Absorb"] = 40
	},
	[5] = {
		["Id"] = 5,
		["value"] = 40,
		["Cost"] = {
			[111] = 4000
		},
		["Absorb"] = 120
	},
	[6] = {
		["Id"] = 6,
		["value"] = 50,
		["Cost"] = {
			[111] = 5000
		},
		["Absorb"] = 360
	},
	[7] = {
		["Id"] = 7,
		["value"] = 60,
		["Cost"] = {
			[111] = 6000
		},
		["Absorb"] = 1080
	}
}
