--[[
	SaveExchangeShop

	字段列表:
		Id* {int} 表ID
		Lib* {int} 库
		Weight* {int} 权重
		LimitLevel {int} 存档等级限制
		LimitDungeon {map{[auto] = auto}} 副本条件限制
		LimitCount {auto} 限购
		CostItems* {map{[auto] = auto}} 消耗道具
		Reward* {array(array(int, int...), ...)} 奖励道具

]]
return {
	[10101] = {
		["Id"] = 10101,
		["Lib"] = 101,
		["Weight"] = 0,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050121] = 1,
			[4050123] = 1
		},
		["Reward"] = {{4010201,1}}
	},
	[10102] = {
		["Id"] = 10102,
		["Lib"] = 101,
		["Weight"] = 0,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050122] = 1,
			[4050124] = 1
		},
		["Reward"] = {{4010202,1}}
	},
	[10103] = {
		["Id"] = 10103,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040101,1}}
	},
	[10104] = {
		["Id"] = 10104,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040102,1}}
	},
	[10105] = {
		["Id"] = 10105,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040103,1}}
	},
	[10106] = {
		["Id"] = 10106,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040104,1}}
	},
	[10107] = {
		["Id"] = 10107,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040105,1}}
	},
	[10108] = {
		["Id"] = 10108,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040106,1}}
	},
	[10109] = {
		["Id"] = 10109,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040107,1}}
	},
	[10110] = {
		["Id"] = 10110,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040108,1}}
	},
	[10111] = {
		["Id"] = 10111,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040109,1}}
	},
	[10112] = {
		["Id"] = 10112,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040110,1}}
	},
	[10113] = {
		["Id"] = 10113,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040111,1}}
	},
	[10114] = {
		["Id"] = 10114,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050321] = 1,
			[4050212] = 1,
			[4040001] = 2
		},
		["Reward"] = {{4040112,1}}
	},
	[10115] = {
		["Id"] = 10115,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 1,
			[4050104] = 5,
			[4020001] = 5
		},
		["Reward"] = {{4010101,1}}
	},
	[10116] = {
		["Id"] = 10116,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 1,
			[4050105] = 5,
			[4020001] = 5
		},
		["Reward"] = {{4010102,1}}
	},
	[10117] = {
		["Id"] = 10117,
		["Lib"] = 101,
		["Weight"] = 500,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 1,
			[4050106] = 5,
			[4020001] = 5
		},
		["Reward"] = {{4010103,1}}
	},
	[10118] = {
		["Id"] = 10118,
		["Lib"] = 101,
		["Weight"] = 100,
		["LimitLevel"] = 20,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 2,
			[4050115] = 1,
			[4020001] = 15
		},
		["Reward"] = {{4010104,1}}
	},
	[10119] = {
		["Id"] = 10119,
		["Lib"] = 101,
		["Weight"] = 100,
		["LimitLevel"] = 20,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 2,
			[4050113] = 1,
			[4020001] = 15
		},
		["Reward"] = {{4010105,1}}
	},
	[10120] = {
		["Id"] = 10120,
		["Lib"] = 101,
		["Weight"] = 100,
		["LimitLevel"] = 20,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 2,
			[4050114] = 1,
			[4020001] = 15
		},
		["Reward"] = {{4010106,1}}
	},
	[10121] = {
		["Id"] = 10121,
		["Lib"] = 101,
		["Weight"] = 100,
		["LimitLevel"] = 20,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 2,
			[5510003] = 3,
			[4020001] = 15
		},
		["Reward"] = {{4010107,1}}
	},
	[10122] = {
		["Id"] = 10122,
		["Lib"] = 101,
		["Weight"] = 20,
		["LimitLevel"] = 50,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 4,
			[4050124] = 10,
			[4020001] = 40
		},
		["Reward"] = {{4010108,1}}
	},
	[10123] = {
		["Id"] = 10123,
		["Lib"] = 101,
		["Weight"] = 20,
		["LimitLevel"] = 50,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 4,
			[4050121] = 10,
			[4020001] = 40
		},
		["Reward"] = {{4010109,1}}
	},
	[10124] = {
		["Id"] = 10124,
		["Lib"] = 101,
		["Weight"] = 20,
		["LimitLevel"] = 50,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 4,
			[4050122] = 10,
			[4020001] = 40
		},
		["Reward"] = {{4010110,1}}
	},
	[10125] = {
		["Id"] = 10125,
		["Lib"] = 101,
		["Weight"] = 20,
		["LimitLevel"] = 50,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 4,
			[4050321] = 20,
			[4020001] = 40
		},
		["Reward"] = {{4010111,1}}
	},
	[10126] = {
		["Id"] = 10126,
		["Lib"] = 101,
		["Weight"] = 20,
		["LimitLevel"] = 50,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050221] = 4,
			[4050123] = 10,
			[4020001] = 40
		},
		["Reward"] = {{4010112,1}}
	},
	[10201] = {
		["Id"] = 10201,
		["Lib"] = 101,
		["Weight"] = 0,
		["LimitCount"] = 1,
		["CostItems"] = {
			[231] = 100
		},
		["Reward"] = {{211,100}}
	},
	[20101] = {
		["Id"] = 20101,
		["Lib"] = 201,
		["Weight"] = 1200,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050101] = 1,
			[4050301] = 2,
			[212] = 20
		},
		["Reward"] = {{5510001,1}}
	},
	[20102] = {
		["Id"] = 20102,
		["Lib"] = 201,
		["Weight"] = 1200,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050102] = 1,
			[4050301] = 2,
			[212] = 20
		},
		["Reward"] = {{5510001,1}}
	},
	[20103] = {
		["Id"] = 20103,
		["Lib"] = 201,
		["Weight"] = 1200,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050103] = 1,
			[4050301] = 2,
			[212] = 20
		},
		["Reward"] = {{5510001,1}}
	},
	[20104] = {
		["Id"] = 20104,
		["Lib"] = 201,
		["Weight"] = 800,
		["LimitDungeon"] = {
			["main_rogue"] = 5
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050113] = 1,
			[4050301] = 2,
			[212] = 50
		},
		["Reward"] = {{5510002,1}}
	},
	[20105] = {
		["Id"] = 20105,
		["Lib"] = 201,
		["Weight"] = 800,
		["LimitDungeon"] = {
			["main_rogue"] = 5
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050114] = 1,
			[4050301] = 2,
			[212] = 50
		},
		["Reward"] = {{5510002,1}}
	},
	[20106] = {
		["Id"] = 20106,
		["Lib"] = 201,
		["Weight"] = 400,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050112] = 2,
			[4050301] = 4,
			[212] = 80
		},
		["Reward"] = {{5510003,1}}
	},
	[20107] = {
		["Id"] = 20107,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4010002] = 10,
			[4050123] = 2,
			[4050221] = 2
		},
		["Reward"] = {{5510101,1}}
	},
	[20108] = {
		["Id"] = 20108,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitCount"] = 1,
		["CostItems"] = {
			[5510101] = 1,
			[4050121] = 2,
			[4050122] = 2
		},
		["Reward"] = {{5510102,1}}
	},
	[20109] = {
		["Id"] = 20109,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 3
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[5510105] = 1,
			[5510003] = 1,
			[4050124] = 2
		},
		["Reward"] = {{5510103,1}}
	},
	[20110] = {
		["Id"] = 20110,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 3
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4010301] = 1,
			[4010302] = 1,
			[4010303] = 1
		},
		["Reward"] = {{5510104,1}}
	},
	[20111] = {
		["Id"] = 20111,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 3
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050102] = 2,
			[212] = 300
		},
		["Reward"] = {{5510105,1}}
	},
	[20112] = {
		["Id"] = 20112,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 5
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050103] = 1,
			[212] = 300
		},
		["Reward"] = {{5510106,1}}
	},
	[20113] = {
		["Id"] = 20113,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 5
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050103] = 1,
			[212] = 300
		},
		["Reward"] = {{5510107,1}}
	},
	[20114] = {
		["Id"] = 20114,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 5
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050103] = 1,
			[212] = 300
		},
		["Reward"] = {{5510108,1}}
	},
	[20115] = {
		["Id"] = 20115,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 8
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050103] = 1,
			[212] = 300
		},
		["Reward"] = {{5510109,1}}
	},
	[20116] = {
		["Id"] = 20116,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 8
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050101] = 1,
			[212] = 300
		},
		["Reward"] = {{5510110,1}}
	},
	[20117] = {
		["Id"] = 20117,
		["Lib"] = 201,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 8
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050101] = 1,
			[212] = 300
		},
		["Reward"] = {{5510111,1}}
	},
	[20118] = {
		["Id"] = 20118,
		["Lib"] = 201,
		["Weight"] = 550,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050101] = 1,
			[212] = 300
		},
		["Reward"] = {{4010301,1}}
	},
	[20119] = {
		["Id"] = 20119,
		["Lib"] = 201,
		["Weight"] = 550,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050101] = 1,
			[212] = 300
		},
		["Reward"] = {{4010302,1}}
	},
	[20120] = {
		["Id"] = 20120,
		["Lib"] = 201,
		["Weight"] = 550,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050102] = 1,
			[212] = 300
		},
		["Reward"] = {{4010303,1}}
	},
	[20121] = {
		["Id"] = 20121,
		["Lib"] = 201,
		["Weight"] = 550,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050211] = 1,
			[4050102] = 1,
			[212] = 300
		},
		["Reward"] = {{4010304,1}}
	},
	[20201] = {
		["Id"] = 20201,
		["Lib"] = 202,
		["Weight"] = 1000,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4010002] = 10,
			[4050123] = 2,
			[4050221] = 2
		},
		["Reward"] = {{3024101,1}}
	},
	[20202] = {
		["Id"] = 20202,
		["Lib"] = 202,
		["Weight"] = 1000,
		["LimitCount"] = 1,
		["CostItems"] = {
			[5510101] = 1,
			[4050121] = 2,
			[4050122] = 2
		},
		["Reward"] = {{3024201,1}}
	},
	[20203] = {
		["Id"] = 20203,
		["Lib"] = 202,
		["Weight"] = 1000,
		["LimitCount"] = 1,
		["CostItems"] = {
			[5510105] = 1,
			[5510003] = 1,
			[4050124] = 2
		},
		["Reward"] = {{3024301,1}}
	},
	[20204] = {
		["Id"] = 20204,
		["Lib"] = 202,
		["Weight"] = 1000,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4010301] = 1,
			[4010302] = 1,
			[4010303] = 1
		},
		["Reward"] = {{3030401,1}}
	},
	[20205] = {
		["Id"] = 20205,
		["Lib"] = 202,
		["Weight"] = 1000,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050201] = 1,
			[4050104] = 1
		},
		["Reward"] = {{3030402,1}}
	},
	[20206] = {
		["Id"] = 20206,
		["Lib"] = 202,
		["Weight"] = 1000,
		["LimitCount"] = 1,
		["CostItems"] = {
			[4050201] = 1,
			[4050106] = 1
		},
		["Reward"] = {{3030403,1}}
	},
	[20207] = {
		["Id"] = 20207,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 3
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024101] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025101,1}}
	},
	[20208] = {
		["Id"] = 20208,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024101] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025102,1}}
	},
	[20209] = {
		["Id"] = 20209,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 7
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024101] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025103,1}}
	},
	[20210] = {
		["Id"] = 20210,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024101] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025104,1}}
	},
	[20211] = {
		["Id"] = 20211,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 3
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024201] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025201,1}}
	},
	[20212] = {
		["Id"] = 20212,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024201] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025202,1}}
	},
	[20213] = {
		["Id"] = 20213,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 7
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024201] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025203,1}}
	},
	[20214] = {
		["Id"] = 20214,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024201] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025204,1}}
	},
	[20215] = {
		["Id"] = 20215,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 3
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024301] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025301,1}}
	},
	[20216] = {
		["Id"] = 20216,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024301] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025302,1}}
	},
	[20217] = {
		["Id"] = 20217,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 7
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024301] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025303,1}}
	},
	[20218] = {
		["Id"] = 20218,
		["Lib"] = 202,
		["Weight"] = 200,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3024301] = 5,
			[4010201] = 1
		},
		["Reward"] = {{3025304,1}}
	},
	[20219] = {
		["Id"] = 20219,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 2
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030401] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030501,1}}
	},
	[20220] = {
		["Id"] = 20220,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 4
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030401] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030502,1}}
	},
	[20221] = {
		["Id"] = 20221,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 6
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030401] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030503,1}}
	},
	[20222] = {
		["Id"] = 20222,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 8
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030401] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030504,1}}
	},
	[20223] = {
		["Id"] = 20223,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030401] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030505,1}}
	},
	[20224] = {
		["Id"] = 20224,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 12
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030401] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030506,1}}
	},
	[20225] = {
		["Id"] = 20225,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 2
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030402] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030501,1}}
	},
	[20226] = {
		["Id"] = 20226,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 4
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030402] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030502,1}}
	},
	[20227] = {
		["Id"] = 20227,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 6
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030402] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030503,1}}
	},
	[20228] = {
		["Id"] = 20228,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 8
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030402] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030504,1}}
	},
	[20229] = {
		["Id"] = 20229,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030402] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030505,1}}
	},
	[20230] = {
		["Id"] = 20230,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 12
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030402] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030506,1}}
	},
	[20231] = {
		["Id"] = 20231,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 2
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030403] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030501,1}}
	},
	[20232] = {
		["Id"] = 20232,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 4
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030403] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030502,1}}
	},
	[20233] = {
		["Id"] = 20233,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 6
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030403] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030503,1}}
	},
	[20234] = {
		["Id"] = 20234,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 8
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030403] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030504,1}}
	},
	[20235] = {
		["Id"] = 20235,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 10
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030403] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030505,1}}
	},
	[20236] = {
		["Id"] = 20236,
		["Lib"] = 202,
		["Weight"] = 60,
		["LimitDungeon"] = {
			["main_rogue"] = 12
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030403] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030506,1}}
	},
	[20237] = {
		["Id"] = 20237,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030501] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030601,1}}
	},
	[20238] = {
		["Id"] = 20238,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030501] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030602,1}}
	},
	[20239] = {
		["Id"] = 20239,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030501] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030603,1}}
	},
	[20240] = {
		["Id"] = 20240,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030502] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030601,1}}
	},
	[20241] = {
		["Id"] = 20241,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030502] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030602,1}}
	},
	[20242] = {
		["Id"] = 20242,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030502] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030603,1}}
	},
	[20243] = {
		["Id"] = 20243,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030503] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030601,1}}
	},
	[20244] = {
		["Id"] = 20244,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030503] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030602,1}}
	},
	[20245] = {
		["Id"] = 20245,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030503] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030603,1}}
	},
	[20246] = {
		["Id"] = 20246,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030504] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030601,1}}
	},
	[20247] = {
		["Id"] = 20247,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030504] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030602,1}}
	},
	[20248] = {
		["Id"] = 20248,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030504] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030603,1}}
	},
	[20249] = {
		["Id"] = 20249,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030505] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030601,1}}
	},
	[20250] = {
		["Id"] = 20250,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030505] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030602,1}}
	},
	[20251] = {
		["Id"] = 20251,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030505] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030603,1}}
	},
	[20252] = {
		["Id"] = 20252,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030506] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030601,1}}
	},
	[20253] = {
		["Id"] = 20253,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030506] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030602,1}}
	},
	[20254] = {
		["Id"] = 20254,
		["Lib"] = 202,
		["Weight"] = 30,
		["LimitDungeon"] = {
			["main_rogue"] = 999
		},
		["LimitCount"] = 1,
		["CostItems"] = {
			[3030506] = 4,
			[4010202] = 1
		},
		["Reward"] = {{3030603,1}}
	}
}
