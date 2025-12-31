--[[
	SmashEggsSingle

	字段列表:
		Id {int} 编号
		Desc {lang} 说明
		Weight {int} 权重
		LimitTimes {array(int, int...)} 出现次数
		LimitMax {int} 限制上限

]]
return {
	[1] = {
		["Id"] = 1,
		["Desc"] = "Lnn46gs",
		["Weight"] = 3000,
		["LimitTimes"] = {2,9}
	},
	[2] = {
		["Id"] = 2,
		["Desc"] = "Lpn46gs",
		["Weight"] = 1200,
		["LimitMax"] = 1
	},
	[3] = {
		["Id"] = 3,
		["Desc"] = "Lrn46gs",
		["Weight"] = 2200,
		["LimitMax"] = 3
	},
	[4] = {
		["Id"] = 4,
		["Desc"] = "Ltn46gs",
		["Weight"] = 2200,
		["LimitMax"] = 3
	},
	[5] = {
		["Id"] = 5,
		["Desc"] = "Lvu46gs",
		["Weight"] = 400,
		["LimitTimes"] = {1,4}
	}
}
