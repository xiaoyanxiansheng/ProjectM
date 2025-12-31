--[[
	SkillSettlement

	字段列表:
		Id {int} 编号
		RangeType {int} 结算类型(新废)
		RangeParam {array(int, int...)} 结算范围(新废)
		RangeParamMax {array(int, int...)} 范围最大(新废)
		HitInterval {number} 结算间隔
		MaxLifeTime {number} 结算持续时间(新废)
		MaxHitCount {int} 攻击数量上限
		HitOnce {int} 结算一次
		HitBreakSkill {int} 击中打断技能
		IgnoreCurTarget {int} 忽略当前选择目标
		CasterHitBuffId {array(int, int...)} 结算Buff
		TargetHitBuffId {array(int, int...)} 结算Buff
		TargetHitBuffDuration {array(auto, auto...)} 结算Buff持续时间
		HitDisplace {array(number, number...)} 击中位移
		DisplaceDistanceEffectTimes {number} 距离加成
		HitCountEffectTimes {array(number, number...)} 击中数量加成
		BuffECountffectTimes {array(number, number...)} buff数量加成

]]
return {
	[10001] = {
		["Id"] = 10001,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 2,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {10001}
	},
	[10002] = {
		["Id"] = 10002,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {20000}
	},
	[10003] = {
		["Id"] = 10003,
		["RangeType"] = 1,
		["RangeParam"] = {500,360},
		["HitInterval"] = 0.01,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {10003}
	},
	[10005] = {
		["Id"] = 10005,
		["RangeType"] = 1,
		["RangeParam"] = {500,90},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {300015}
	},
	[10006] = {
		["Id"] = 10006,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["CasterHitBuffId"] = {10004}
	},
	[20010] = {
		["Id"] = 20010,
		["RangeType"] = 1,
		["RangeParam"] = {1000,360},
		["HitInterval"] = 0.01,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitDisplace"] = {20010,1,1,10}
	},
	[20011] = {
		["Id"] = 20011,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitDisplace"] = {20011,2,2,-50}
	},
	[20012] = {
		["Id"] = 20012,
		["RangeType"] = 2,
		["RangeParam"] = {300,200,360},
		["RangeParamMax"] = {500,400,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 0.8,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1
	},
	[200021] = {
		["Id"] = 200021,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 1,
		["TargetHitBuffId"] = {20000,20002}
	},
	[200022] = {
		["Id"] = 200022,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["IgnoreCurTarget"] = 1,
		["TargetHitBuffId"] = {20000,20003}
	},
	[200023] = {
		["Id"] = 200023,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {20000,20002}
	},
	[200061] = {
		["Id"] = 200061,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.01,
		["MaxLifeTime"] = 2,
		["MaxHitCount"] = 0,
		["HitBreakSkill"] = 1,
		["TargetHitBuffId"] = {20000}
	},
	[200071] = {
		["Id"] = 200071,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {20000}
	},
	[2] = {
		["Id"] = 2,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 3,
		["MaxHitCount"] = 0,
		["HitBreakSkill"] = 1
	},
	[3] = {
		["Id"] = 3,
		["RangeType"] = 1,
		["RangeParam"] = {600,360},
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitBreakSkill"] = 1
	},
	[4] = {
		["Id"] = 4,
		["RangeType"] = 1,
		["RangeParam"] = {600,360},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 3,
		["MaxHitCount"] = 0
	},
	[5] = {
		["Id"] = 5,
		["RangeType"] = 1,
		["RangeParam"] = {450,360},
		["HitDisplace"] = {1004,1,1,0}
	},
	[3000011] = {
		["Id"] = 3000011,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011},
		["HitCountEffectTimes"] = {2,3,4,5,6,7,8}
	},
	[3000012] = {
		["Id"] = 3000012,
		["RangeType"] = 1,
		["RangeParam"] = {500,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011}
	},
	[3000020] = {
		["Id"] = 3000020,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitOnce"] = 1,
		["HitDisplace"] = {3000020,2,2,-50}
	},
	[3000021] = {
		["Id"] = 3000021,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitOnce"] = 1,
		["HitDisplace"] = {3000020,2,2,-50}
	},
	[3000031] = {
		["Id"] = 3000031,
		["RangeType"] = 1,
		["RangeParam"] = {500,90},
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000031}
	},
	[3000041] = {
		["Id"] = 3000041,
		["RangeType"] = 1,
		["RangeParam"] = {1000,90},
		["HitOnce"] = 1,
		["HitDisplace"] = {3000041,2,2,-50}
	},
	[3000051] = {
		["Id"] = 3000051,
		["RangeType"] = 2,
		["RangeParam"] = {10,0,360},
		["RangeParamMax"] = {500,400,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011}
	},
	[3000061] = {
		["Id"] = 3000061,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011}
	},
	[3000071] = {
		["Id"] = 3000071,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011}
	},
	[3000081] = {
		["Id"] = 3000081,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011,3000041}
	},
	[3000091] = {
		["Id"] = 3000091,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitOnce"] = 1,
		["IgnoreCurTarget"] = 1,
		["TargetHitBuffId"] = {300015,3000011},
		["HitDisplace"] = {3000041,2,1,-300}
	},
	[3000092] = {
		["Id"] = 3000092,
		["RangeType"] = 0,
		["MaxHitCount"] = 1,
		["HitOnce"] = 1,
		["IgnoreCurTarget"] = 1,
		["TargetHitBuffId"] = {3000011}
	},
	[3000101] = {
		["Id"] = 3000101,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 5,
		["TargetHitBuffId"] = {300015},
		["HitDisplace"] = {3000101,1,1,50}
	},
	[3000111] = {
		["Id"] = 3000111,
		["RangeType"] = 0,
		["TargetHitBuffId"] = {3000011}
	},
	[3000121] = {
		["Id"] = 3000121,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["TargetHitBuffId"] = {300015,3000121}
	},
	[3000131] = {
		["Id"] = 3000131,
		["RangeType"] = 1,
		["RangeParam"] = {500,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 5,
		["TargetHitBuffId"] = {300015,3000131}
	},
	[3000141] = {
		["Id"] = 3000141,
		["RangeType"] = 3,
		["RangeParam"] = {600,400},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 2,
		["TargetHitBuffId"] = {300015,3000011,3000141}
	},
	[3000151] = {
		["Id"] = 3000151,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 2.5,
		["TargetHitBuffId"] = {300015}
	},
	[3000152] = {
		["Id"] = 3000152,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011,3000141}
	},
	[3000161] = {
		["Id"] = 3000161,
		["RangeType"] = 3,
		["RangeParam"] = {400,200},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 2.5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015},
		["HitDisplace"] = {3000101,1,3,1,1}
	},
	[3000162] = {
		["Id"] = 3000162,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {300015,3000011,3000141}
	},
	[1100000] = {
		["Id"] = 1100000,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1100000}
	},
	[11000001] = {
		["Id"] = 11000001,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1100000}
	},
	[1100001] = {
		["Id"] = 1100001,
		["RangeType"] = 3,
		["RangeParam"] = {100,200},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1100001}
	},
	[11000011] = {
		["Id"] = 11000011,
		["RangeType"] = 3,
		["RangeParam"] = {100,200},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11000011}
	},
	[11000012] = {
		["Id"] = 11000012,
		["RangeType"] = 3,
		["RangeParam"] = {150,300},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11000012}
	},
	[11000013] = {
		["Id"] = 11000013,
		["RangeType"] = 3,
		["RangeParam"] = {100,200},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11000013}
	},
	[1100002] = {
		["Id"] = 1100002,
		["HitInterval"] = 0.1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1100002}
	},
	[11000021] = {
		["Id"] = 11000021,
		["RangeType"] = 3,
		["RangeParam"] = {100,100},
		["HitInterval"] = 0.4,
		["MaxLifeTime"] = 10,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1100002}
	},
	[11000022] = {
		["Id"] = 11000022,
		["HitInterval"] = 0.3,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1100002}
	},
	[11000031] = {
		["Id"] = 11000031,
		["HitInterval"] = 1,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {11000033}
	},
	[11000041] = {
		["Id"] = 11000041,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["TargetHitBuffId"] = {11000042}
	},
	[11000042] = {
		["Id"] = 11000042,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["TargetHitBuffId"] = {11000043}
	},
	[11000051] = {
		["Id"] = 11000051,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["TargetHitBuffId"] = {11000052}
	},
	[11000052] = {
		["Id"] = 11000052,
		["TargetHitBuffId"] = {11000052,1031}
	},
	[11000061] = {
		["Id"] = 11000061,
		["TargetHitBuffId"] = {1031,11000061},
		["TargetHitBuffDuration"] = {"2/2/2/2/2/2/2/2/5",0}
	},
	[11000081] = {
		["Id"] = 11000081,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {11000083}
	},
	[11000082] = {
		["Id"] = 11000082,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {11000083,110000811}
	},
	[11000083] = {
		["Id"] = 11000083,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {11000083,11000082}
	},
	[11000084] = {
		["Id"] = 11000084,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1001,110000811,11000082}
	},
	[11000053] = {
		["Id"] = 11000053,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11103001}
	},
	[11000101] = {
		["Id"] = 11000101,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11000103}
	},
	[11000102] = {
		["Id"] = 11000102,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11000103,11000104}
	},
	[11000103] = {
		["Id"] = 11000103,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11000103,11000101}
	},
	[11000104] = {
		["Id"] = 11000104,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11000103,1045,11000101}
	},
	[1110010] = {
		["Id"] = 1110010,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100103}
	},
	[11100111] = {
		["Id"] = 11100111,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100112}
	},
	[11100112] = {
		["Id"] = 11100112,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["IgnoreCurTarget"] = 1,
		["HitDisplace"] = {3000041,2,1,-300}
	},
	[11100113] = {
		["Id"] = 11100113,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["IgnoreCurTarget"] = 1,
		["TargetHitBuffId"] = {11100112}
	},
	[1110012] = {
		["Id"] = 1110012,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["HitDisplace"] = {1110012,1,1,200}
	},
	[1110020] = {
		["Id"] = 1110020,
		["HitInterval"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100201}
	},
	[11100211] = {
		["Id"] = 11100211,
		["HitInterval"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0,
		["TargetHitBuffId"] = {11100212}
	},
	[1110023] = {
		["Id"] = 1110023,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitDisplace"] = {1110023,1,2,50}
	},
	[11100231] = {
		["Id"] = 11100231,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {11100231}
	},
	[11100232] = {
		["Id"] = 11100232,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {11100232},
		["TargetHitBuffDuration"] = {3}
	},
	[1110024] = {
		["Id"] = 1110024,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110024}
	},
	[11100241] = {
		["Id"] = 11100241,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100241}
	},
	[11100242] = {
		["Id"] = 11100242,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100242}
	},
	[1110030] = {
		["Id"] = 1110030,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110030}
	},
	[11100301] = {
		["Id"] = 11100301,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100303}
	},
	[1110031] = {
		["Id"] = 1110031,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110031}
	},
	[1110032] = {
		["Id"] = 1110032,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0.5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110032}
	},
	[1110034] = {
		["Id"] = 1110034,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0,
		["TargetHitBuffId"] = {1110034}
	},
	[11100341] = {
		["Id"] = 11100341,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0
	},
	[1110041] = {
		["Id"] = 1110041,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110041}
	},
	[1110042] = {
		["Id"] = 1110042,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["HitDisplace"] = {1110042,2,2,0}
	},
	[11100421] = {
		["Id"] = 11100421,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1
	},
	[11100422] = {
		["Id"] = 11100422,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["HitDisplace"] = {1110042,2,2,0}
	},
	[11100423] = {
		["Id"] = 11100423,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1
	},
	[1110043] = {
		["Id"] = 1110043,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110043}
	},
	[1110050] = {
		["Id"] = 1110050,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1110050}
	},
	[11100501] = {
		["Id"] = 11100501,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110050}
	},
	[1110051] = {
		["Id"] = 1110051,
		["RangeType"] = 3,
		["RangeParam"] = {200,400},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110051}
	},
	[11100511] = {
		["Id"] = 11100511,
		["RangeType"] = 3,
		["RangeParam"] = {200,400},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100512}
	},
	[11100512] = {
		["Id"] = 11100512,
		["RangeType"] = 3,
		["RangeParam"] = {200,400},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100513}
	},
	[11100513] = {
		["Id"] = 11100513,
		["RangeType"] = 3,
		["RangeParam"] = {200,500},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110051}
	},
	[11100514] = {
		["Id"] = 11100514,
		["RangeType"] = 3,
		["RangeParam"] = {200,500},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100512}
	},
	[11100515] = {
		["Id"] = 11100515,
		["RangeType"] = 3,
		["RangeParam"] = {200,500},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100513}
	},
	[1110053] = {
		["Id"] = 1110053,
		["RangeType"] = 3,
		["RangeParam"] = {200,400},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110053}
	},
	[11100531] = {
		["Id"] = 11100531,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100531}
	},
	[1110054] = {
		["Id"] = 1110054,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100541}
	},
	[1110061] = {
		["Id"] = 1110061,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["HitDisplace"] = {11100613,2,1,0}
	},
	[11100611] = {
		["Id"] = 11100611,
		["HitOnce"] = 1,
		["HitDisplace"] = {11101212,3,1,-400,400}
	},
	[1110062] = {
		["Id"] = 1110062,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100621}
	},
	[11100631] = {
		["Id"] = 11100631,
		["TargetHitBuffId"] = {11100632}
	},
	[1110064] = {
		["Id"] = 1110064,
		["HitInterval"] = 0.1,
		["TargetHitBuffId"] = {1110064}
	},
	[11100641] = {
		["Id"] = 11100641,
		["HitInterval"] = 0.1,
		["TargetHitBuffId"] = {11100642}
	},
	[1110070] = {
		["Id"] = 1110070,
		["RangeType"] = 2,
		["RangeParam"] = {10,0,360},
		["RangeParamMax"] = {600,500,360},
		["HitInterval"] = 0.01,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100701}
	},
	[11100701] = {
		["Id"] = 11100701,
		["RangeType"] = 2,
		["RangeParam"] = {10,0,360},
		["RangeParamMax"] = {600,500,360},
		["HitInterval"] = 0.01,
		["MaxLifeTime"] = 1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100701}
	},
	[1110071] = {
		["Id"] = 1110071,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100701,3000011,3000141}
	},
	[11100711] = {
		["Id"] = 11100711,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 3,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100712}
	},
	[11100712] = {
		["Id"] = 11100712,
		["RangeType"] = 1,
		["RangeParam"] = {130,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 3,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100712},
		["HitDisplace"] = {11100711,2,1,-300}
	},
	[1110072] = {
		["Id"] = 1110072,
		["RangeType"] = 1,
		["RangeParam"] = {75,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100701}
	},
	[11100721] = {
		["Id"] = 11100721,
		["RangeType"] = 1,
		["RangeParam"] = {425,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100721}
	},
	[11100722] = {
		["Id"] = 11100722,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100721}
	},
	[11100723] = {
		["Id"] = 11100723,
		["RangeType"] = 1,
		["RangeParam"] = {375,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100721}
	},
	[11100724] = {
		["Id"] = 11100724,
		["RangeType"] = 1,
		["RangeParam"] = {350,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100721}
	},
	[11100725] = {
		["Id"] = 11100725,
		["RangeType"] = 1,
		["RangeParam"] = {325,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100721}
	},
	[11100729] = {
		["Id"] = 11100729,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 20,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100701}
	},
	[1110073] = {
		["Id"] = 1110073,
		["RangeType"] = 1,
		["RangeParam"] = {700,360}
	},
	[11100731] = {
		["Id"] = 11100731,
		["RangeType"] = 1,
		["RangeParam"] = {75,360},
		["TargetHitBuffId"] = {11100731}
	},
	[11100732] = {
		["Id"] = 11100732,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["TargetHitBuffId"] = {11100731}
	},
	[11100733] = {
		["Id"] = 11100733,
		["RangeType"] = 1,
		["RangeParam"] = {75,360},
		["HitDisplace"] = {11100733,1,1,0}
	},
	[11100734] = {
		["Id"] = 11100734,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitDisplace"] = {11100733,1,1,0}
	},
	[1110081] = {
		["Id"] = 1110081,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100811}
	},
	[11100811] = {
		["Id"] = 11100811,
		["RangeType"] = 1,
		["RangeParam"] = {75,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100811}
	},
	[11100841] = {
		["Id"] = 11100841,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["TargetHitBuffId"] = {11100712}
	},
	[11100842] = {
		["Id"] = 11100842,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["TargetHitBuffId"] = {11100712}
	},
	[1110082] = {
		["Id"] = 1110082,
		["RangeType"] = 1,
		["RangeParam"] = {75,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100701}
	},
	[11100821] = {
		["Id"] = 11100821,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100701}
	},
	[1110083] = {
		["Id"] = 1110083,
		["RangeType"] = 3,
		["RangeParam"] = {600,400},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 2,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100712}
	},
	[11100831] = {
		["Id"] = 11100831,
		["RangeType"] = 3,
		["RangeParam"] = {600,400},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 2,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100712},
		["HitDisplace"] = {1110083,1,1,50}
	},
	[1110090] = {
		["Id"] = 1110090,
		["RangeType"] = 0,
		["TargetHitBuffId"] = {11100701}
	},
	[11100901] = {
		["Id"] = 11100901,
		["RangeType"] = 1,
		["RangeParam"] = {255,360},
		["TargetHitBuffId"] = {11100701}
	},
	[1110092] = {
		["Id"] = 1110092,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 2,
		["TargetHitBuffId"] = {11100701}
	},
	[11100921] = {
		["Id"] = 11100921,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.3,
		["MaxLifeTime"] = 2,
		["TargetHitBuffId"] = {11100701},
		["HitDisplace"] = {11100733,1,1,0}
	},
	[11100930] = {
		["Id"] = 11100930,
		["RangeType"] = 1,
		["RangeParam"] = {400,360},
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 5,
		["TargetHitBuffId"] = {11100931}
	},
	[1110094] = {
		["Id"] = 1110094,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1
	},
	[11100941] = {
		["Id"] = 11100941,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1110094}
	},
	[11100942] = {
		["Id"] = 11100942,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11100941}
	},
	[11101001] = {
		["Id"] = 11101001,
		["TargetHitBuffId"] = {11101001}
	},
	[11101002] = {
		["Id"] = 11101002,
		["TargetHitBuffId"] = {11101001,11101002}
	},
	[11101003] = {
		["Id"] = 11101003,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {11101003}
	},
	[11101011] = {
		["Id"] = 11101011,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101011}
	},
	[11101012] = {
		["Id"] = 11101012,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101012,1031}
	},
	[11101013] = {
		["Id"] = 11101013,
		["TargetHitBuffId"] = {11101011}
	},
	[11101031] = {
		["Id"] = 11101031,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101031}
	},
	[11101032] = {
		["Id"] = 11101032,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101032}
	},
	[11101101] = {
		["Id"] = 11101101,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11101101}
	},
	[11101111] = {
		["Id"] = 11101111,
		["TargetHitBuffId"] = {11101111}
	},
	[11101112] = {
		["Id"] = 11101112,
		["TargetHitBuffId"] = {11101111,11101112}
	},
	[11101121] = {
		["Id"] = 11101121,
		["HitInterval"] = 0.5
	},
	[11101141] = {
		["Id"] = 11101141,
		["TargetHitBuffId"] = {11101142}
	},
	[11101201] = {
		["Id"] = 11101201,
		["TargetHitBuffId"] = {11101201}
	},
	[11101202] = {
		["Id"] = 11101202,
		["TargetHitBuffId"] = {11101201,1031},
		["TargetHitBuffDuration"] = {0,3}
	},
	[11101211] = {
		["Id"] = 11101211,
		["TargetHitBuffId"] = {11101211},
		["TargetHitBuffDuration"] = {"3/3/3/3/3/4"}
	},
	[11101212] = {
		["Id"] = 11101212,
		["IgnoreCurTarget"] = 1,
		["HitDisplace"] = {11101212,3,1,-600,1000}
	},
	[11101213] = {
		["Id"] = 11101213,
		["TargetHitBuffId"] = {11101211},
		["TargetHitBuffDuration"] = {"6/6/6/6/6/8"}
	},
	[11101214] = {
		["Id"] = 11101214,
		["TargetHitBuffId"] = {11101214}
	},
	[11101221] = {
		["Id"] = 11101221,
		["TargetHitBuffId"] = {11101221}
	},
	[11101301] = {
		["Id"] = 11101301,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["TargetHitBuffId"] = {11101301}
	},
	[11101302] = {
		["Id"] = 11101302,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["TargetHitBuffId"] = {11101301},
		["HitDisplace"] = {1110133,1,1,-75,500}
	},
	[11101303] = {
		["Id"] = 11101303,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["TargetHitBuffId"] = {11101301,1110131}
	},
	[11101411] = {
		["Id"] = 11101411,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101411}
	},
	[11101412] = {
		["Id"] = 11101412,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101411,11101412}
	},
	[11101421] = {
		["Id"] = 11101421,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1,
		["HitDisplace"] = {11101422,2,1,100,500}
	},
	[11101422] = {
		["Id"] = 11101422,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101423},
		["HitDisplace"] = {11101422,2,1,200,500}
	},
	[1110150] = {
		["Id"] = 1110150,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101502}
	},
	[11101511] = {
		["Id"] = 11101511,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101511}
	},
	[11101512] = {
		["Id"] = 11101512,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1
	},
	[11101513] = {
		["Id"] = 11101513,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101512}
	},
	[11101514] = {
		["Id"] = 11101514,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["TargetHitBuffId"] = {11101513}
	},
	[11101521] = {
		["Id"] = 11101521,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101523}
	},
	[11101601] = {
		["Id"] = 11101601,
		["TargetHitBuffId"] = {11101602}
	},
	[11101611] = {
		["Id"] = 11101611,
		["TargetHitBuffId"] = {11101612}
	},
	[11101631] = {
		["Id"] = 11101631,
		["HitOnce"] = 1,
		["HitDisplace"] = {1110163,2,2,0,50}
	},
	[11101632] = {
		["Id"] = 11101632,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101631}
	},
	[11101621] = {
		["Id"] = 11101621,
		["HitInterval"] = 0.5,
		["IgnoreCurTarget"] = 1,
		["TargetHitBuffId"] = {11101621}
	},
	[11101642] = {
		["Id"] = 11101642,
		["TargetHitBuffId"] = {11101643}
	},
	[11101711] = {
		["Id"] = 11101711,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101713}
	},
	[11101721] = {
		["Id"] = 11101721,
		["HitInterval"] = 0.5,
		["HitOnce"] = 1
	},
	[11101722] = {
		["Id"] = 11101722,
		["HitInterval"] = 0.5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11101723}
	},
	[11101723] = {
		["Id"] = 11101723,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11101724}
	},
	[11101731] = {
		["Id"] = 11101731
	},
	[11101741] = {
		["Id"] = 11101741
	},
	[11101831] = {
		["Id"] = 11101831,
		["TargetHitBuffId"] = {11101832}
	},
	[11101841] = {
		["Id"] = 11101841,
		["TargetHitBuffId"] = {11101843}
	},
	[11101842] = {
		["Id"] = 11101842,
		["TargetHitBuffId"] = {11101843,1002}
	},
	[11101901] = {
		["Id"] = 11101901
	},
	[11101931] = {
		["Id"] = 11101931,
		["TargetHitBuffId"] = {11101931}
	},
	[11101941] = {
		["Id"] = 11101941,
		["RangeParam"] = {11102001},
		["TargetHitBuffId"] = {11101942}
	},
	[11102001] = {
		["Id"] = 11102001,
		["TargetHitBuffId"] = {11102002}
	},
	[11102021] = {
		["Id"] = 11102021,
		["IgnoreCurTarget"] = 2,
		["TargetHitBuffId"] = {11102021}
	},
	[11102022] = {
		["Id"] = 11102022,
		["IgnoreCurTarget"] = 2,
		["TargetHitBuffId"] = {11102022}
	},
	[11102023] = {
		["Id"] = 11102023,
		["IgnoreCurTarget"] = 2,
		["TargetHitBuffId"] = {1002}
	},
	[11102101] = {
		["Id"] = 11102101,
		["TargetHitBuffId"] = {11102101}
	},
	[11102122] = {
		["Id"] = 11102122,
		["TargetHitBuffId"] = {11102121}
	},
	[11102501] = {
		["Id"] = 11102501,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {11000082}
	},
	[11102502] = {
		["Id"] = 11102502,
		["RangeType"] = 11102504,
		["HitInterval"] = 0.2,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11102501}
	},
	[11102503] = {
		["Id"] = 11102503,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11000082}
	},
	[11102504] = {
		["Id"] = 11102504,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {11102502}
	},
	[11102521] = {
		["Id"] = 11102521,
		["HitInterval"] = 0.9,
		["TargetHitBuffId"] = {11000082}
	},
	[11102531] = {
		["Id"] = 11102531
	},
	[11102541] = {
		["Id"] = 11102541,
		["HitDisplace"] = {11102541,3,1,-400,300}
	},
	[11102542] = {
		["Id"] = 11102542,
		["TargetHitBuffId"] = {11102542}
	},
	[11102543] = {
		["Id"] = 11102543,
		["TargetHitBuffId"] = {11102543}
	},
	[11102631] = {
		["Id"] = 11102631,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11102631}
	},
	[11102632] = {
		["Id"] = 11102632,
		["HitInterval"] = 0.5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11102632}
	},
	[11102701] = {
		["Id"] = 11102701,
		["HitDisplace"] = {11102701,3,1,-400,250}
	},
	[11102702] = {
		["Id"] = 11102702,
		["HitDisplace"] = {11102702,3,1,-400,250}
	},
	[11102712] = {
		["Id"] = 11102712,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11102712}
	},
	[11102713] = {
		["Id"] = 11102713,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1031},
		["TargetHitBuffDuration"] = {3}
	},
	[11102721] = {
		["Id"] = 11102721,
		["HitInterval"] = 0.1,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11102721}
	},
	[11102731] = {
		["Id"] = 11102731,
		["TargetHitBuffId"] = {11102731}
	},
	[11102741] = {
		["Id"] = 11102741,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11102741}
	},
	[11102742] = {
		["Id"] = 11102742,
		["HitInterval"] = 0.5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11102742}
	},
	[11103031] = {
		["Id"] = 11103031,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11103031}
	},
	[11103032] = {
		["Id"] = 11103032,
		["HitDisplace"] = {1003,3,1,-350,700}
	},
	[11103001] = {
		["Id"] = 11103001,
		["HitInterval"] = 0.1,
		["HitBreakSkill"] = 1,
		["TargetHitBuffId"] = {11103001}
	},
	[11103011] = {
		["Id"] = 11103011,
		["TargetHitBuffId"] = {11103011}
	},
	[11103012] = {
		["Id"] = 11103012,
		["TargetHitBuffId"] = {11103012}
	},
	[11103021] = {
		["Id"] = 11103021,
		["HitInterval"] = 0.2,
		["TargetHitBuffId"] = {11103021}
	},
	[11103042] = {
		["Id"] = 11103042,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {11103042}
	},
	[11103043] = {
		["Id"] = 11103043,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1002}
	},
	[11103101] = {
		["Id"] = 11103101,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11103101}
	},
	[11103102] = {
		["Id"] = 11103102,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11103102}
	},
	[11103103] = {
		["Id"] = 11103103,
		["HitInterval"] = 0.5
	},
	[11103104] = {
		["Id"] = 11103104,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {1031},
		["TargetHitBuffDuration"] = {5}
	},
	[11103111] = {
		["Id"] = 11103111,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11103111}
	},
	[11103112] = {
		["Id"] = 11103112,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11103112}
	},
	[11103113] = {
		["Id"] = 11103113,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {11103113}
	},
	[11103114] = {
		["Id"] = 11103114,
		["TargetHitBuffId"] = {11103114}
	},
	[11103131] = {
		["Id"] = 11103131
	},
	[11103132] = {
		["Id"] = 11103132,
		["TargetHitBuffId"] = {11103131}
	},
	[11103201] = {
		["Id"] = 11103201,
		["HitInterval"] = 0.01,
		["HitBreakSkill"] = 1,
		["TargetHitBuffId"] = {11103201}
	},
	[11103212] = {
		["Id"] = 11103212,
		["HitInterval"] = 0.1,
		["HitBreakSkill"] = 1
	},
	[11103213] = {
		["Id"] = 11103213,
		["HitBreakSkill"] = 1,
		["TargetHitBuffId"] = {11103211}
	},
	[11103211] = {
		["Id"] = 11103211,
		["TargetHitBuffId"] = {11103011}
	},
	[11103231] = {
		["Id"] = 11103231,
		["TargetHitBuffId"] = {11103231}
	},
	[12000121] = {
		["Id"] = 12000121,
		["TargetHitBuffId"] = {1001}
	},
	[12000811] = {
		["Id"] = 12000811,
		["TargetHitBuffId"] = {1001}
	},
	[12001101] = {
		["Id"] = 12001101,
		["HitDisplace"] = {1003,2,2,0,1000}
	},
	[12001511] = {
		["Id"] = 12001511,
		["TargetHitBuffId"] = {12001511}
	},
	[12001521] = {
		["Id"] = 12001521,
		["TargetHitBuffId"] = {12001521,12001522}
	},
	[12001621] = {
		["Id"] = 12001621,
		["TargetHitBuffId"] = {12001621}
	},
	[12001701] = {
		["Id"] = 12001701,
		["TargetHitBuffId"] = {12001701}
	},
	[12001721] = {
		["Id"] = 12001721,
		["HitDisplace"] = {12001721,2,1,-500,700}
	},
	[12001821] = {
		["Id"] = 12001821,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {12001821}
	},
	[1001] = {
		["Id"] = 1001,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1001}
	},
	[1003] = {
		["Id"] = 1003,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 3,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1005] = {
		["Id"] = 1005,
		["RangeType"] = 1,
		["RangeParam"] = {500,180},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1001}
	},
	[1006] = {
		["Id"] = 1006,
		["RangeType"] = 1,
		["RangeParam"] = {450,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1001}
	},
	[100601] = {
		["Id"] = 100601,
		["RangeType"] = 1,
		["RangeParam"] = {450,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 5,
		["MaxHitCount"] = 0
	},
	[1010] = {
		["Id"] = 1010,
		["RangeType"] = 1,
		["RangeParam"] = {120,360},
		["HitInterval"] = 1.5,
		["MaxLifeTime"] = 10,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1001}
	},
	[1011] = {
		["Id"] = 1011,
		["RangeType"] = 1,
		["RangeParam"] = {200,360},
		["HitInterval"] = 0.3,
		["MaxLifeTime"] = 10,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1017] = {
		["Id"] = 1017,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.3,
		["MaxLifeTime"] = 3,
		["MaxHitCount"] = 1,
		["HitOnce"] = 1,
		["HitBreakSkill"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1018] = {
		["Id"] = 1018,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.3,
		["MaxLifeTime"] = 3,
		["MaxHitCount"] = 1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1024] = {
		["Id"] = 1024,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.3,
		["MaxLifeTime"] = 1.5,
		["MaxHitCount"] = 1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1025] = {
		["Id"] = 1025,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 15,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1001}
	},
	[1026] = {
		["Id"] = 1026,
		["RangeType"] = 1,
		["RangeParam"] = {250,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 10,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1028] = {
		["Id"] = 1028,
		["RangeType"] = 1,
		["RangeParam"] = {150,360},
		["HitInterval"] = 0.4,
		["MaxLifeTime"] = 5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1029] = {
		["Id"] = 1029,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 2,
		["MaxHitCount"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1031] = {
		["Id"] = 1031,
		["RangeType"] = 1,
		["RangeParam"] = {500,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 2,
		["MaxHitCount"] = 1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001,1031}
	},
	[1032] = {
		["Id"] = 1032,
		["RangeType"] = 1,
		["RangeParam"] = {500,90},
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 5.5,
		["TargetHitBuffId"] = {1001}
	},
	[1033] = {
		["Id"] = 1033,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 1.5,
		["MaxHitCount"] = 1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1033}
	},
	[10341] = {
		["Id"] = 10341,
		["RangeType"] = 1,
		["RangeParam"] = {100,360},
		["HitInterval"] = 0.2,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[1035] = {
		["Id"] = 1035,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0.4,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0,
		["TargetHitBuffId"] = {1001,1035}
	},
	[1036] = {
		["Id"] = 1036,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0.1,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10361] = {
		["Id"] = 10361,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0,
		["TargetHitBuffId"] = {1036,1001}
	},
	[1040] = {
		["Id"] = 1040,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0
	},
	[10401] = {
		["Id"] = 10401,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 1,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0
	},
	[1043] = {
		["Id"] = 1043,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0,
		["TargetHitBuffId"] = {1043}
	},
	[1044] = {
		["Id"] = 1044,
		["RangeType"] = 0,
		["RangeParam"] = {0},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["HitOnce"] = 0,
		["TargetHitBuffId"] = {1001}
	},
	[1045] = {
		["Id"] = 1045,
		["RangeType"] = 1,
		["RangeParam"] = {300,360},
		["HitInterval"] = 0,
		["MaxLifeTime"] = 0,
		["MaxHitCount"] = 0,
		["TargetHitBuffId"] = {1001},
		["HitDisplace"] = {1045,1,1,0}
	},
	[104811] = {
		["Id"] = 104811,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10501] = {
		["Id"] = 10501,
		["TargetHitBuffId"] = {1001,1045}
	},
	[10511] = {
		["Id"] = 10511,
		["TargetHitBuffId"] = {1001}
	},
	[10521] = {
		["Id"] = 10521,
		["TargetHitBuffId"] = {10521}
	},
	[10541] = {
		["Id"] = 10541,
		["TargetHitBuffId"] = {10541}
	},
	[10551] = {
		["Id"] = 10551,
		["HitInterval"] = 0.5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10561] = {
		["Id"] = 10561,
		["HitInterval"] = 0.5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10571] = {
		["Id"] = 10571,
		["HitInterval"] = 0.5,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10581] = {
		["Id"] = 10581,
		["TargetHitBuffId"] = {10581}
	},
	[10591] = {
		["Id"] = 10591,
		["TargetHitBuffId"] = {10591}
	},
	[10601] = {
		["Id"] = 10601,
		["TargetHitBuffId"] = {1001}
	},
	[10611] = {
		["Id"] = 10611,
		["HitInterval"] = 1,
		["CasterHitBuffId"] = {0},
		["TargetHitBuffId"] = {411}
	},
	[10621] = {
		["Id"] = 10621,
		["HitInterval"] = 1,
		["CasterHitBuffId"] = {10621}
	},
	[10631] = {
		["Id"] = 10631,
		["TargetHitBuffId"] = {1031}
	},
	[10632] = {
		["Id"] = 10632,
		["TargetHitBuffId"] = {1045}
	},
	[10651] = {
		["Id"] = 10651,
		["HitInterval"] = 0.1,
		["TargetHitBuffId"] = {10651}
	},
	[10652] = {
		["Id"] = 10652,
		["HitInterval"] = 0.1,
		["TargetHitBuffId"] = {10652}
	},
	[10661] = {
		["Id"] = 10661,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {10661}
	},
	[10672] = {
		["Id"] = 10672,
		["HitDisplace"] = {1003,2,1,-300,700}
	},
	[10682] = {
		["Id"] = 10682,
		["TargetHitBuffId"] = {10682}
	},
	[10691] = {
		["Id"] = 10691,
		["TargetHitBuffId"] = {1001}
	},
	[10701] = {
		["Id"] = 10701,
		["HitInterval"] = 0.5,
		["TargetHitBuffId"] = {1001}
	},
	[10711] = {
		["Id"] = 10711,
		["HitInterval"] = 0.1,
		["HitBreakSkill"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10721] = {
		["Id"] = 10721
	},
	[10722] = {
		["Id"] = 10722,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["HitDisplace"] = {1003,2,2,0,500}
	},
	[10732] = {
		["Id"] = 10732,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10733] = {
		["Id"] = 10733,
		["HitInterval"] = 0.5,
		["MaxLifeTime"] = 2,
		["TargetHitBuffId"] = {1001}
	},
	[10741] = {
		["Id"] = 10741,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10742] = {
		["Id"] = 10742,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10743] = {
		["Id"] = 10743,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10751] = {
		["Id"] = 10751,
		["HitInterval"] = 0.1,
		["TargetHitBuffId"] = {1001}
	},
	[10754] = {
		["Id"] = 10754,
		["TargetHitBuffId"] = {1001}
	},
	[10761] = {
		["Id"] = 10761,
		["HitInterval"] = 0.1,
		["TargetHitBuffId"] = {1001}
	},
	[10762] = {
		["Id"] = 10762,
		["HitInterval"] = 0.5,
		["HitDisplace"] = {10762,1,2,25,100}
	},
	[10763] = {
		["Id"] = 10763,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1001}
	},
	[10781] = {
		["Id"] = 10781,
		["TargetHitBuffId"] = {10781}
	},
	[10801] = {
		["Id"] = 10801,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {10801}
	},
	[10812] = {
		["Id"] = 10812,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {10812}
	},
	[10813] = {
		["Id"] = 10813,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {10812},
		["HitDisplace"] = {1003,3,2,0,500}
	},
	[10861] = {
		["Id"] = 10861,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {10861}
	},
	[1092] = {
		["Id"] = 1092,
		["HitInterval"] = 1,
		["HitDisplace"] = {1092,1,1,-400,1000}
	},
	[1093] = {
		["Id"] = 1093,
		["HitOnce"] = 1,
		["HitDisplace"] = {1092,1,1,-400,1000}
	},
	[1094] = {
		["Id"] = 1094,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1094}
	},
	[1098] = {
		["Id"] = 1098,
		["TargetHitBuffId"] = {1098}
	},
	[1099] = {
		["Id"] = 1099,
		["TargetHitBuffId"] = {10992}
	},
	[1100] = {
		["Id"] = 1100,
		["TargetHitBuffId"] = {1100}
	},
	[1101] = {
		["Id"] = 1101,
		["HitInterval"] = 0.1,
		["HitOnce"] = 1,
		["TargetHitBuffId"] = {1101}
	},
	[1102] = {
		["Id"] = 1102,
		["TargetHitBuffId"] = {1102}
	},
	[1103] = {
		["Id"] = 1103,
		["TargetHitBuffId"] = {1103}
	},
	[1104] = {
		["Id"] = 1104,
		["TargetHitBuffId"] = {1104}
	},
	[1105] = {
		["Id"] = 1105,
		["TargetHitBuffId"] = {1105}
	},
	[1107] = {
		["Id"] = 1107,
		["HitDisplace"] = {1107,2,2,0,1000}
	},
	[1108] = {
		["Id"] = 1108,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1108}
	},
	[1109] = {
		["Id"] = 1109,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {11091}
	},
	[1111] = {
		["Id"] = 1111,
		["TargetHitBuffId"] = {1111}
	},
	[1112] = {
		["Id"] = 1112,
		["HitInterval"] = 1,
		["TargetHitBuffId"] = {1112}
	},
	[1113] = {
		["Id"] = 1113,
		["HitDisplace"] = {1113,1,1,-500,1000}
	},
	[2000003] = {
		["Id"] = 2000003,
		["RangeType"] = 1,
		["RangeParam"] = {650,360},
		["TargetHitBuffId"] = {300015}
	},
	[13500041] = {
		["Id"] = 13500041,
		["TargetHitBuffId"] = {13500041}
	},
	[13600011] = {
		["Id"] = 13600011,
		["TargetHitBuffId"] = {13600011}
	},
	[11101431] = {
		["Id"] = 11101431,
		["TargetHitBuffId"] = {11101301}
	},
	[11101441] = {
		["Id"] = 11101441,
		["TargetHitBuffId"] = {11101301}
	},
	[11101442] = {
		["Id"] = 11101442,
		["TargetHitBuffId"] = {11101301}
	}
}
