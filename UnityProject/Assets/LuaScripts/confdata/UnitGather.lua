--[[
	UnitGather

	字段列表:
		ID {int} 单位ID
		Particle {string} 可采集特效
		OpenParticle {string} 打开特效
		LimitCount* {int} 可采集次数
		ObjectLimitPlayer* {int} 本实例限单人次数
		IdLimitPlayer* {int} 本ID限次数
		Time* {number} 采集时长
		Cost {map{[auto] = auto}} 采集消耗
		Action* {array(array(auto, auto...), ...)} 采集效果

]]
return {
	[30] = {
		["ID"] = 30,
		["Particle"] = "gather_box",
		["OpenParticle"] = "gather_box_open",
		["LimitCount"] = 4,
		["ObjectLimitPlayer"] = 1,
		["IdLimitPlayer"] = 999,
		["Time"] = 0.3,
		["Action"] = {{100,"Reward",112000,1}}
	},
	[31] = {
		["ID"] = 31,
		["Particle"] = "gather_box",
		["OpenParticle"] = "gather_box_open",
		["LimitCount"] = 4,
		["ObjectLimitPlayer"] = 1,
		["IdLimitPlayer"] = 999,
		["Time"] = 1,
		["Action"] = {{100,"Reward",112001,1}}
	},
	[41] = {
		["ID"] = 41,
		["Particle"] = "gather_ore_41",
		["LimitCount"] = 4,
		["ObjectLimitPlayer"] = 1,
		["IdLimitPlayer"] = 999,
		["Time"] = 3,
		["Cost"] = {
			[4051002] = 1
		},
		["Action"] = {{100,"GiveItem",4050201,1}}
	},
	[42] = {
		["ID"] = 42,
		["Particle"] = "gather_ore_42",
		["LimitCount"] = 4,
		["ObjectLimitPlayer"] = 1,
		["IdLimitPlayer"] = 999,
		["Time"] = 5,
		["Cost"] = {
			[4051002] = 1
		},
		["Action"] = {{100,"GiveItem",4050211,1}}
	},
	[43] = {
		["ID"] = 43,
		["Particle"] = "gather_ore_43",
		["LimitCount"] = 4,
		["ObjectLimitPlayer"] = 1,
		["IdLimitPlayer"] = 999,
		["Time"] = 5,
		["Cost"] = {
			[4051002] = 1
		},
		["Action"] = {{100,"GiveItem",4050212,1}}
	},
	[44] = {
		["ID"] = 44,
		["Particle"] = "gather_ore_44",
		["LimitCount"] = 4,
		["ObjectLimitPlayer"] = 1,
		["IdLimitPlayer"] = 999,
		["Time"] = 10,
		["Cost"] = {
			[4051002] = 1
		},
		["Action"] = {{100,"GiveItem",4050221,1}}
	}
}
