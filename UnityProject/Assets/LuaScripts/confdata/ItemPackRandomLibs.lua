--[[
	ItemPackRandomLibs

	字段列表:
		ID {int} ID
		Difficulty* {array(int, int...)} 难度区间
		Layer* {array(int, int...)} 层数限制
		RoomCount* {array(int, int...)} 经过房间数
		Weight* {int} 刷新权重
		Type* {int} 类型
		Attrs {array(array(int, int...), ...)} 属性
		AttrQuality {int} 属性品质
		Reward {array(array(int, int...), ...)} 道具奖励
		SkillLocation {int} 技能位置
		SkillLib {int} 技能库
		SoulLocation {int} 魂魄位置
		SoulQuality {int} 魂魄升品限制品质
		SoulLib {int} 魂魄库
		Grid {int} 增加栏位
		Max {int} 次数上限
		ReturnItem {array(array(int, int...), ...)} 超过上限返回
		Icon {string} 奖励图片

]]
return {
	[1] = {
		["ID"] = 1,
		["Difficulty"] = {1,1},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 9999999,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[2] = {
		["ID"] = 2,
		["Difficulty"] = {1,1},
		["Layer"] = {1,2,3},
		["RoomCount"] = {1,999},
		["Weight"] = 9999999,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[3] = {
		["ID"] = 3,
		["Difficulty"] = {1,1},
		["Layer"] = {1,2,3},
		["RoomCount"] = {3,999},
		["Weight"] = 9999999,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[4] = {
		["ID"] = 4,
		["Difficulty"] = {1,1},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 6600,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[5] = {
		["ID"] = 5,
		["Difficulty"] = {1,1},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[6] = {
		["ID"] = 6,
		["Difficulty"] = {1,1},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 9999999,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[7] = {
		["ID"] = 7,
		["Difficulty"] = {1,1},
		["Layer"] = {1,2,3},
		["RoomCount"] = {1,999},
		["Weight"] = 9999999,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[8] = {
		["ID"] = 8,
		["Difficulty"] = {1,1},
		["Layer"] = {1,2,3},
		["RoomCount"] = {3,999},
		["Weight"] = 9999999,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[9] = {
		["ID"] = 9,
		["Difficulty"] = {1,1},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[10] = {
		["ID"] = 10,
		["Difficulty"] = {1,1},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[11] = {
		["ID"] = 11,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{51,35}},
		["AttrQuality"] = 3,
		["Max"] = 10
	},
	[12] = {
		["ID"] = 12,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{52,25}},
		["AttrQuality"] = 4
	},
	[13] = {
		["ID"] = 13,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{53,50}},
		["AttrQuality"] = 6,
		["Max"] = 10
	},
	[14] = {
		["ID"] = 14,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{62,1000}},
		["AttrQuality"] = 7
	},
	[15] = {
		["ID"] = 15,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{105,1000}},
		["AttrQuality"] = 5,
		["Max"] = 10
	},
	[16] = {
		["ID"] = 16,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{125,350}},
		["AttrQuality"] = 6,
		["Max"] = 10
	},
	[17] = {
		["ID"] = 17,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{161,30}},
		["AttrQuality"] = 7,
		["Max"] = 10
	},
	[18] = {
		["ID"] = 18,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{164,1}},
		["AttrQuality"] = 7,
		["Max"] = 10
	},
	[19] = {
		["ID"] = 19,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{165,1500}},
		["AttrQuality"] = 5,
		["Max"] = 10
	},
	[20] = {
		["ID"] = 20,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{65,1000}},
		["AttrQuality"] = 3
	},
	[21] = {
		["ID"] = 21,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{32,1}},
		["AttrQuality"] = 5,
		["Max"] = 10
	},
	[22] = {
		["ID"] = 22,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{211,1500}},
		["AttrQuality"] = 3,
		["Max"] = 10
	},
	[23] = {
		["ID"] = 23,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{212,2500}},
		["AttrQuality"] = 5,
		["Max"] = 10
	},
	[24] = {
		["ID"] = 24,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{213,1000}},
		["AttrQuality"] = 5,
		["Max"] = 10
	},
	[25] = {
		["ID"] = 25,
		["Difficulty"] = {1,4},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{22,30}},
		["AttrQuality"] = 3
	},
	[26] = {
		["ID"] = 26,
		["Difficulty"] = {1,4},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{22,300}},
		["AttrQuality"] = 3
	},
	[27] = {
		["ID"] = 27,
		["Difficulty"] = {1,4},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{22,3000}},
		["AttrQuality"] = 3
	},
	[28] = {
		["ID"] = 28,
		["Difficulty"] = {5,10},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{22,300}},
		["AttrQuality"] = 3
	},
	[29] = {
		["ID"] = 29,
		["Difficulty"] = {5,10},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{22,3000}},
		["AttrQuality"] = 3
	},
	[30] = {
		["ID"] = 30,
		["Difficulty"] = {5,10},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{23,10}},
		["AttrQuality"] = 3
	},
	[31] = {
		["ID"] = 31,
		["Difficulty"] = {11,15},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{22,3000}},
		["AttrQuality"] = 3
	},
	[32] = {
		["ID"] = 32,
		["Difficulty"] = {11,15},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{23,10}},
		["AttrQuality"] = 3
	},
	[33] = {
		["ID"] = 33,
		["Difficulty"] = {11,15},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{23,20}},
		["AttrQuality"] = 3
	},
	[34] = {
		["ID"] = 34,
		["Difficulty"] = {16,999},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{23,10}},
		["AttrQuality"] = 3
	},
	[35] = {
		["ID"] = 35,
		["Difficulty"] = {16,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{23,20}},
		["AttrQuality"] = 3
	},
	[36] = {
		["ID"] = 36,
		["Difficulty"] = {16,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 1,
		["Attrs"] = {{23,30}},
		["AttrQuality"] = 3
	},
	[37] = {
		["ID"] = 37,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 6600,
		["Type"] = 1,
		["Attrs"] = {{11,450,1}},
		["AttrQuality"] = 4
	},
	[38] = {
		["ID"] = 38,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{41,500,1,3}},
		["AttrQuality"] = 7
	},
	[39] = {
		["ID"] = 39,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{42,500,1,3}},
		["AttrQuality"] = 7
	},
	[40] = {
		["ID"] = 40,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{54,2000}},
		["AttrQuality"] = 3,
		["Max"] = 1
	},
	[41] = {
		["ID"] = 41,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{55,2000}},
		["AttrQuality"] = 3,
		["Max"] = 1
	},
	[42] = {
		["ID"] = 42,
		["Difficulty"] = {1,999},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{201,800}},
		["AttrQuality"] = 6
	},
	[43] = {
		["ID"] = 43,
		["Difficulty"] = {1,999},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{202,150}},
		["AttrQuality"] = 7,
		["Max"] = 10
	},
	[44] = {
		["ID"] = 44,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{201,900}},
		["AttrQuality"] = 6
	},
	[45] = {
		["ID"] = 45,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{202,200}},
		["AttrQuality"] = 7,
		["Max"] = 10
	},
	[46] = {
		["ID"] = 46,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{201,1000}},
		["AttrQuality"] = 6
	},
	[47] = {
		["ID"] = 47,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{202,500}},
		["AttrQuality"] = 7,
		["Max"] = 10
	},
	[48] = {
		["ID"] = 48,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{1,750,1}},
		["AttrQuality"] = 6
	},
	[49] = {
		["ID"] = 49,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{2,750,1}},
		["AttrQuality"] = 6
	},
	[50] = {
		["ID"] = 50,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{3,750,1}},
		["AttrQuality"] = 6
	},
	[51] = {
		["ID"] = 51,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{12,350,1}},
		["AttrQuality"] = 7
	},
	[52] = {
		["ID"] = 52,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{21,1000,1}},
		["AttrQuality"] = 5
	},
	[53] = {
		["ID"] = 53,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{41,1000,1}},
		["AttrQuality"] = 5
	},
	[54] = {
		["ID"] = 54,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{42,700,1}},
		["AttrQuality"] = 5
	},
	[55] = {
		["ID"] = 55,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{1,1000,1}},
		["AttrQuality"] = 6
	},
	[56] = {
		["ID"] = 56,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{2,1000,1}},
		["AttrQuality"] = 6
	},
	[57] = {
		["ID"] = 57,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{3,1000,1}},
		["AttrQuality"] = 6
	},
	[58] = {
		["ID"] = 58,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{12,500,1}},
		["AttrQuality"] = 7
	},
	[59] = {
		["ID"] = 59,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{21,1500,1}},
		["AttrQuality"] = 5
	},
	[60] = {
		["ID"] = 60,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{41,1500,1}},
		["AttrQuality"] = 5
	},
	[61] = {
		["ID"] = 61,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{42,1000,1}},
		["AttrQuality"] = 5
	},
	[62] = {
		["ID"] = 62,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{301,1000}},
		["AttrQuality"] = 7
	},
	[63] = {
		["ID"] = 63,
		["Difficulty"] = {1,999},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{311,5000}},
		["AttrQuality"] = 5
	},
	[64] = {
		["ID"] = 64,
		["Difficulty"] = {1,999},
		["Layer"] = {1},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{312,5000}},
		["AttrQuality"] = 6
	},
	[65] = {
		["ID"] = 65,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{311,5000}},
		["AttrQuality"] = 5
	},
	[66] = {
		["ID"] = 66,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{312,8000}},
		["AttrQuality"] = 6
	},
	[67] = {
		["ID"] = 67,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{311,5000}},
		["AttrQuality"] = 5
	},
	[68] = {
		["ID"] = 68,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 1,
		["Attrs"] = {{312,10000}},
		["AttrQuality"] = 6
	},
	[69] = {
		["ID"] = 69,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{402,1500}},
		["AttrQuality"] = 6
	},
	[70] = {
		["ID"] = 70,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{404,1500}},
		["AttrQuality"] = 7
	},
	[71] = {
		["ID"] = 71,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{406,1500}},
		["AttrQuality"] = 6
	},
	[72] = {
		["ID"] = 72,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{408,1500}},
		["AttrQuality"] = 7
	},
	[73] = {
		["ID"] = 73,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{410,1500}},
		["AttrQuality"] = 6
	},
	[74] = {
		["ID"] = 74,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{412,1500}},
		["AttrQuality"] = 7
	},
	[75] = {
		["ID"] = 75,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{414,1500}},
		["AttrQuality"] = 6
	},
	[76] = {
		["ID"] = 76,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1650,
		["Type"] = 1,
		["Attrs"] = {{416,1500}},
		["AttrQuality"] = 7
	},
	[77] = {
		["ID"] = 77,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 2,
		["Reward"] = {{1020000,1}}
	},
	[78] = {
		["ID"] = 78,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 2,
		["Reward"] = {{1020001,1}}
	},
	[79] = {
		["ID"] = 79,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[80] = {
		["ID"] = 80,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[81] = {
		["ID"] = 81,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 6600,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[82] = {
		["ID"] = 82,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 6600,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[83] = {
		["ID"] = 83,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 3300,
		["Type"] = 31,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["ReturnItem"] = {{1020002,1}},
		["Icon"] = "vacancy_skill"
	},
	[84] = {
		["ID"] = 84,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[85] = {
		["ID"] = 85,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[86] = {
		["ID"] = 86,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[87] = {
		["ID"] = 87,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[88] = {
		["ID"] = 88,
		["Difficulty"] = {2,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 13200,
		["Type"] = 32,
		["AttrQuality"] = 7,
		["Grid"] = 1,
		["Max"] = 1,
		["Icon"] = "vacancy_horcruxes"
	},
	[89] = {
		["ID"] = 89,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2},
		["RoomCount"] = {0,999},
		["Weight"] = 2048,
		["Type"] = 21,
		["SoulLib"] = 910101
	},
	[90] = {
		["ID"] = 90,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2},
		["RoomCount"] = {0,999},
		["Weight"] = 2048,
		["Type"] = 21,
		["SoulLib"] = 910101
	},
	[91] = {
		["ID"] = 91,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2},
		["RoomCount"] = {0,999},
		["Weight"] = 2048,
		["Type"] = 21,
		["SoulLib"] = 910101
	},
	[92] = {
		["ID"] = 92,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 2048,
		["Type"] = 21,
		["SoulLib"] = 910101
	},
	[93] = {
		["ID"] = 93,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 64,
		["Type"] = 21,
		["SoulLib"] = 910102
	},
	[94] = {
		["ID"] = 94,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 64,
		["Type"] = 21,
		["SoulLib"] = 910102
	},
	[95] = {
		["ID"] = 95,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 64,
		["Type"] = 21,
		["SoulLib"] = 910102
	},
	[96] = {
		["ID"] = 96,
		["Difficulty"] = {1,999},
		["Layer"] = {2},
		["RoomCount"] = {0,999},
		["Weight"] = 64,
		["Type"] = 21,
		["SoulLib"] = 910102
	},
	[97] = {
		["ID"] = 97,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1024,
		["Type"] = 21,
		["SoulLib"] = 910102
	},
	[98] = {
		["ID"] = 98,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1024,
		["Type"] = 21,
		["SoulLib"] = 910102
	},
	[99] = {
		["ID"] = 99,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 1024,
		["Type"] = 21,
		["SoulLib"] = 910102
	},
	[100] = {
		["ID"] = 100,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 16,
		["Type"] = 21,
		["SoulLib"] = 910103
	},
	[101] = {
		["ID"] = 101,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 16,
		["Type"] = 21,
		["SoulLib"] = 910103
	},
	[102] = {
		["ID"] = 102,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 16,
		["Type"] = 21,
		["SoulLib"] = 910103
	},
	[103] = {
		["ID"] = 103,
		["Difficulty"] = {1,999},
		["Layer"] = {3},
		["RoomCount"] = {0,999},
		["Weight"] = 16,
		["Type"] = 21,
		["SoulLib"] = 910103
	},
	[104] = {
		["ID"] = 104,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 8,
		["Type"] = 21,
		["SoulLib"] = 910104
	},
	[105] = {
		["ID"] = 105,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 4,
		["Type"] = 21,
		["SoulLib"] = 910105
	},
	[106] = {
		["ID"] = 106,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 2,
		["Type"] = 21,
		["SoulLib"] = 910106
	},
	[107] = {
		["ID"] = 107,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1,
		["Type"] = 21,
		["SoulLib"] = 910107
	},
	[108] = {
		["ID"] = 108,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 720,
		["Type"] = 22,
		["SoulLocation"] = 1,
		["SoulQuality"] = 1
	},
	[109] = {
		["ID"] = 109,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 720,
		["Type"] = 22,
		["SoulLocation"] = 2,
		["SoulQuality"] = 1
	},
	[110] = {
		["ID"] = 110,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 720,
		["Type"] = 22,
		["SoulLocation"] = 3,
		["SoulQuality"] = 1
	},
	[111] = {
		["ID"] = 111,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 720,
		["Type"] = 22,
		["SoulLocation"] = 4,
		["SoulQuality"] = 1
	},
	[112] = {
		["ID"] = 112,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 720,
		["Type"] = 22,
		["SoulLocation"] = 5,
		["SoulQuality"] = 1
	},
	[113] = {
		["ID"] = 113,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 720,
		["Type"] = 22,
		["SoulLocation"] = 6,
		["SoulQuality"] = 1
	},
	[114] = {
		["ID"] = 114,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 360,
		["Type"] = 22,
		["SoulLocation"] = 1,
		["SoulQuality"] = 2
	},
	[115] = {
		["ID"] = 115,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 360,
		["Type"] = 22,
		["SoulLocation"] = 2,
		["SoulQuality"] = 2
	},
	[116] = {
		["ID"] = 116,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 360,
		["Type"] = 22,
		["SoulLocation"] = 3,
		["SoulQuality"] = 2
	},
	[117] = {
		["ID"] = 117,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 360,
		["Type"] = 22,
		["SoulLocation"] = 4,
		["SoulQuality"] = 2
	},
	[118] = {
		["ID"] = 118,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 360,
		["Type"] = 22,
		["SoulLocation"] = 5,
		["SoulQuality"] = 2
	},
	[119] = {
		["ID"] = 119,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 360,
		["Type"] = 22,
		["SoulLocation"] = 6,
		["SoulQuality"] = 2
	},
	[120] = {
		["ID"] = 120,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 120,
		["Type"] = 22,
		["SoulLocation"] = 1,
		["SoulQuality"] = 3
	},
	[121] = {
		["ID"] = 121,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 120,
		["Type"] = 22,
		["SoulLocation"] = 2,
		["SoulQuality"] = 3
	},
	[122] = {
		["ID"] = 122,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 120,
		["Type"] = 22,
		["SoulLocation"] = 3,
		["SoulQuality"] = 3
	},
	[123] = {
		["ID"] = 123,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 120,
		["Type"] = 22,
		["SoulLocation"] = 4,
		["SoulQuality"] = 3
	},
	[124] = {
		["ID"] = 124,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 120,
		["Type"] = 22,
		["SoulLocation"] = 5,
		["SoulQuality"] = 3
	},
	[125] = {
		["ID"] = 125,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 120,
		["Type"] = 22,
		["SoulLocation"] = 6,
		["SoulQuality"] = 3
	},
	[126] = {
		["ID"] = 126,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 20,
		["Type"] = 22,
		["SoulLocation"] = 1,
		["SoulQuality"] = 4
	},
	[127] = {
		["ID"] = 127,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 20,
		["Type"] = 22,
		["SoulLocation"] = 2,
		["SoulQuality"] = 4
	},
	[128] = {
		["ID"] = 128,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 20,
		["Type"] = 22,
		["SoulLocation"] = 3,
		["SoulQuality"] = 4
	},
	[129] = {
		["ID"] = 129,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 20,
		["Type"] = 22,
		["SoulLocation"] = 4,
		["SoulQuality"] = 4
	},
	[130] = {
		["ID"] = 130,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 20,
		["Type"] = 22,
		["SoulLocation"] = 5,
		["SoulQuality"] = 4
	},
	[131] = {
		["ID"] = 131,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 20,
		["Type"] = 22,
		["SoulLocation"] = 6,
		["SoulQuality"] = 4
	},
	[132] = {
		["ID"] = 132,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 4,
		["Type"] = 22,
		["SoulLocation"] = 1,
		["SoulQuality"] = 5
	},
	[133] = {
		["ID"] = 133,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 4,
		["Type"] = 22,
		["SoulLocation"] = 2,
		["SoulQuality"] = 5
	},
	[134] = {
		["ID"] = 134,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 4,
		["Type"] = 22,
		["SoulLocation"] = 3,
		["SoulQuality"] = 5
	},
	[135] = {
		["ID"] = 135,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 4,
		["Type"] = 22,
		["SoulLocation"] = 4,
		["SoulQuality"] = 5
	},
	[136] = {
		["ID"] = 136,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 4,
		["Type"] = 22,
		["SoulLocation"] = 5,
		["SoulQuality"] = 5
	},
	[137] = {
		["ID"] = 137,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 4,
		["Type"] = 22,
		["SoulLocation"] = 6,
		["SoulQuality"] = 5
	},
	[138] = {
		["ID"] = 138,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1,
		["Type"] = 22,
		["SoulLocation"] = 1,
		["SoulQuality"] = 6
	},
	[139] = {
		["ID"] = 139,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1,
		["Type"] = 22,
		["SoulLocation"] = 2,
		["SoulQuality"] = 6
	},
	[140] = {
		["ID"] = 140,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1,
		["Type"] = 22,
		["SoulLocation"] = 3,
		["SoulQuality"] = 6
	},
	[141] = {
		["ID"] = 141,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1,
		["Type"] = 22,
		["SoulLocation"] = 4,
		["SoulQuality"] = 6
	},
	[142] = {
		["ID"] = 142,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1,
		["Type"] = 22,
		["SoulLocation"] = 5,
		["SoulQuality"] = 6
	},
	[143] = {
		["ID"] = 143,
		["Difficulty"] = {1,999},
		["Layer"] = {2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 1,
		["Type"] = 22,
		["SoulLocation"] = 6,
		["SoulQuality"] = 6
	},
	[144] = {
		["ID"] = 144,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 2,
		["SkillLib"] = 910200
	},
	[145] = {
		["ID"] = 145,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 3,
		["SkillLib"] = 910200
	},
	[146] = {
		["ID"] = 146,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 4,
		["SkillLib"] = 910200
	},
	[147] = {
		["ID"] = 147,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 5,
		["SkillLib"] = 910200
	},
	[148] = {
		["ID"] = 148,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 6,
		["SkillLib"] = 910200
	},
	[149] = {
		["ID"] = 149,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 2,
		["SkillLib"] = 910200
	},
	[150] = {
		["ID"] = 150,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 3,
		["SkillLib"] = 910200
	},
	[151] = {
		["ID"] = 151,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 4,
		["SkillLib"] = 910200
	},
	[152] = {
		["ID"] = 152,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 5,
		["SkillLib"] = 910200
	},
	[153] = {
		["ID"] = 153,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 11,
		["SkillLocation"] = 6,
		["SkillLib"] = 910200
	},
	[154] = {
		["ID"] = 154,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 12,
		["SkillLocation"] = 1
	},
	[155] = {
		["ID"] = 155,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 12,
		["SkillLocation"] = 2
	},
	[156] = {
		["ID"] = 156,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 12,
		["SkillLocation"] = 3
	},
	[157] = {
		["ID"] = 157,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 12,
		["SkillLocation"] = 4
	},
	[158] = {
		["ID"] = 158,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 12,
		["SkillLocation"] = 5
	},
	[159] = {
		["ID"] = 159,
		["Difficulty"] = {1,999},
		["Layer"] = {1,2,3},
		["RoomCount"] = {0,999},
		["Weight"] = 130,
		["Type"] = 12,
		["SkillLocation"] = 6
	}
}
