--[[
	CheckInPrivilege

	字段列表:
		Id {int} 编号
		Type* {int} 特权类型
		Value* {array(array(int, int...), ...)} 特权值
		Desc* {lang} 特权文字

]]
return {
	[1] = {
		["Id"] = 1,
		["Type"] = 0,
		["Value"] = {{0}},
		["Desc"] = "L4c56gs"
	},
	[2] = {
		["Id"] = 2,
		["Type"] = 11,
		["Value"] = {{1}},
		["Desc"] = "L8936gs"
	},
	[3] = {
		["Id"] = 3,
		["Type"] = 12,
		["Value"] = {{1}},
		["Desc"] = "L9936gs"
	}
}
