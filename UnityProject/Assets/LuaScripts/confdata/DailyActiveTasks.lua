--[[
	DailyActiveTasks

	字段列表:
		ID {int} ID
		LibType* {int} 库类型
		LimitSaveLevel {array(int, int...)} 存档等级限制
		LimitDungeon {map{[auto] = auto}} 副本限制
		Condition* {string} 任务条件
		Target* {int} 任务条件目标
		Params {array(auto, auto...)} 任务条件参数
		Dungeon {string} 副本条件目标
		Score {int} 积分
		Reward {array(array(int, int...), ...)} 奖励

]]
return {
	[10101] = {
		["ID"] = 10101,
		["LibType"] = 101,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_dungeon",
		["Target"] = 2,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10102] = {
		["ID"] = 10102,
		["LibType"] = 101,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_dungeon",
		["Target"] = 3,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10103] = {
		["ID"] = 10103,
		["LibType"] = 101,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_dungeon",
		["Target"] = 4,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10104] = {
		["ID"] = 10104,
		["LibType"] = 101,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_dungeon_win",
		["Target"] = 1,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10105] = {
		["ID"] = 10105,
		["LibType"] = 101,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_dungeon_win",
		["Target"] = 2,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10106] = {
		["ID"] = 10106,
		["LibType"] = 101,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_dungeon_win",
		["Target"] = 3,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10201] = {
		["ID"] = 10201,
		["LibType"] = 102,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_level_up",
		["Target"] = 80,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10202] = {
		["ID"] = 10202,
		["LibType"] = 102,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_level_up",
		["Target"] = 160,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10203] = {
		["ID"] = 10203,
		["LibType"] = 102,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_level_up",
		["Target"] = 240,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10204] = {
		["ID"] = 10204,
		["LibType"] = 102,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_level_up",
		["Target"] = 320,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10205] = {
		["ID"] = 10205,
		["LibType"] = 102,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_level_up",
		["Target"] = 400,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10206] = {
		["ID"] = 10206,
		["LibType"] = 102,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_inspiration",
		["Target"] = 20,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10207] = {
		["ID"] = 10207,
		["LibType"] = 102,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_inspiration",
		["Target"] = 30,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10208] = {
		["ID"] = 10208,
		["LibType"] = 102,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_inspiration",
		["Target"] = 40,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10209] = {
		["ID"] = 10209,
		["LibType"] = 102,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_inspiration",
		["Target"] = 50,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10210] = {
		["ID"] = 10210,
		["LibType"] = 102,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_skill_study",
		["Target"] = 30,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10211] = {
		["ID"] = 10211,
		["LibType"] = 102,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_skill_study",
		["Target"] = 60,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10212] = {
		["ID"] = 10212,
		["LibType"] = 102,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_skill_study",
		["Target"] = 90,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10213] = {
		["ID"] = 10213,
		["LibType"] = 102,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_skill_study",
		["Target"] = 120,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10214] = {
		["ID"] = 10214,
		["LibType"] = 102,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_item_get_type",
		["Target"] = 50,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10215] = {
		["ID"] = 10215,
		["LibType"] = 102,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_item_get_type",
		["Target"] = 100,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10216] = {
		["ID"] = 10216,
		["LibType"] = 102,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_item_get_type",
		["Target"] = 150,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10217] = {
		["ID"] = 10217,
		["LibType"] = 102,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_item_get_type",
		["Target"] = 200,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10218] = {
		["ID"] = 10218,
		["LibType"] = 102,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_item_get_type",
		["Target"] = 20,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10219] = {
		["ID"] = 10219,
		["LibType"] = 102,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_item_get_type",
		["Target"] = 40,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10220] = {
		["ID"] = 10220,
		["LibType"] = 102,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_item_get_type",
		["Target"] = 60,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10221] = {
		["ID"] = 10221,
		["LibType"] = 102,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_item_get_type",
		["Target"] = 80,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10222] = {
		["ID"] = 10222,
		["LibType"] = 102,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_room",
		["Target"] = 30,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10223] = {
		["ID"] = 10223,
		["LibType"] = 102,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_room",
		["Target"] = 50,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10224] = {
		["ID"] = 10224,
		["LibType"] = 102,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_room",
		["Target"] = 80,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10225] = {
		["ID"] = 10225,
		["LibType"] = 102,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_bless_add",
		["Target"] = 20,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10226] = {
		["ID"] = 10226,
		["LibType"] = 102,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_bless_add",
		["Target"] = 30,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10227] = {
		["ID"] = 10227,
		["LibType"] = 102,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_bless_add",
		["Target"] = 40,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10228] = {
		["ID"] = 10228,
		["LibType"] = 102,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_bless_add",
		["Target"] = 50,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10229] = {
		["ID"] = 10229,
		["LibType"] = 102,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_bless_add",
		["Target"] = 60,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10301] = {
		["ID"] = 10301,
		["LibType"] = 103,
		["LimitSaveLevel"] = {0},
		["Condition"] = "reach_level",
		["Target"] = 50,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10302] = {
		["ID"] = 10302,
		["LibType"] = 103,
		["LimitSaveLevel"] = {20},
		["Condition"] = "reach_level",
		["Target"] = 60,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10303] = {
		["ID"] = 10303,
		["LibType"] = 103,
		["LimitSaveLevel"] = {40},
		["Condition"] = "reach_level",
		["Target"] = 80,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10304] = {
		["ID"] = 10304,
		["LibType"] = 103,
		["LimitSaveLevel"] = {60},
		["Condition"] = "reach_level",
		["Target"] = 100,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10305] = {
		["ID"] = 10305,
		["LibType"] = 103,
		["LimitSaveLevel"] = {80},
		["Condition"] = "reach_level",
		["Target"] = 150,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10306] = {
		["ID"] = 10306,
		["LibType"] = 103,
		["LimitSaveLevel"] = {0},
		["Condition"] = "reach_skill_have_level",
		["Target"] = 2,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10307] = {
		["ID"] = 10307,
		["LibType"] = 103,
		["LimitSaveLevel"] = {20},
		["Condition"] = "reach_skill_have_level",
		["Target"] = 3,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10308] = {
		["ID"] = 10308,
		["LibType"] = 103,
		["LimitSaveLevel"] = {40},
		["Condition"] = "reach_skill_have_level",
		["Target"] = 4,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10309] = {
		["ID"] = 10309,
		["LibType"] = 103,
		["LimitSaveLevel"] = {60},
		["Condition"] = "reach_skill_have_level",
		["Target"] = 5,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10310] = {
		["ID"] = 10310,
		["LibType"] = 103,
		["LimitSaveLevel"] = {80},
		["Condition"] = "reach_skill_have_level",
		["Target"] = 6,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10311] = {
		["ID"] = 10311,
		["LibType"] = 103,
		["LimitSaveLevel"] = {0},
		["Condition"] = "reach_soul_quality",
		["Target"] = 3,
		["Params"] = {3},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10312] = {
		["ID"] = 10312,
		["LibType"] = 103,
		["LimitSaveLevel"] = {20},
		["Condition"] = "reach_soul_quality",
		["Target"] = 4,
		["Params"] = {4},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10313] = {
		["ID"] = 10313,
		["LibType"] = 103,
		["LimitSaveLevel"] = {40},
		["Condition"] = "reach_soul_quality",
		["Target"] = 5,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10314] = {
		["ID"] = 10314,
		["LibType"] = 103,
		["LimitSaveLevel"] = {60},
		["Condition"] = "reach_soul_quality",
		["Target"] = 6,
		["Params"] = {6},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10315] = {
		["ID"] = 10315,
		["LibType"] = 103,
		["LimitSaveLevel"] = {80},
		["Condition"] = "reach_soul_quality",
		["Target"] = 6,
		["Params"] = {7},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10316] = {
		["ID"] = 10316,
		["LibType"] = 103,
		["LimitSaveLevel"] = {0},
		["Condition"] = "reach_fate_quality",
		["Target"] = 6,
		["Params"] = {3},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10317] = {
		["ID"] = 10317,
		["LibType"] = 103,
		["LimitSaveLevel"] = {20},
		["Condition"] = "reach_fate_quality",
		["Target"] = 6,
		["Params"] = {4},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10318] = {
		["ID"] = 10318,
		["LibType"] = 103,
		["LimitSaveLevel"] = {40},
		["Condition"] = "reach_fate_quality",
		["Target"] = 6,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10319] = {
		["ID"] = 10319,
		["LibType"] = 103,
		["LimitSaveLevel"] = {60},
		["Condition"] = "reach_fate_quality",
		["Target"] = 6,
		["Params"] = {6},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10320] = {
		["ID"] = 10320,
		["LibType"] = 103,
		["LimitSaveLevel"] = {80},
		["Condition"] = "reach_fate_quality",
		["Target"] = 6,
		["Params"] = {7},
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10401] = {
		["ID"] = 10401,
		["LibType"] = 104,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 2,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10402] = {
		["ID"] = 10402,
		["LibType"] = 104,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 3,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10403] = {
		["ID"] = 10403,
		["LibType"] = 104,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 4,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10404] = {
		["ID"] = 10404,
		["LibType"] = 104,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 5,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10501] = {
		["ID"] = 10501,
		["LibType"] = 105,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_lottery",
		["Target"] = 5,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10502] = {
		["ID"] = 10502,
		["LibType"] = 105,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_save_lottery",
		["Target"] = 10,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10503] = {
		["ID"] = 10503,
		["LibType"] = 105,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_save_lottery",
		["Target"] = 15,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10504] = {
		["ID"] = 10504,
		["LibType"] = 105,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_save_lottery",
		["Target"] = 20,
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[10601] = {
		["ID"] = 10601,
		["LibType"] = 106,
		["Condition"] = "count_save_hero_level",
		["Target"] = 5,
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10602] = {
		["ID"] = 10602,
		["LibType"] = 106,
		["Condition"] = "count_save_equip_enhance",
		["Target"] = 5,
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10603] = {
		["ID"] = 10603,
		["LibType"] = 106,
		["Condition"] = "count_save_curio_level_up",
		["Target"] = 5,
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10604] = {
		["ID"] = 10604,
		["LibType"] = 106,
		["Condition"] = "count_mall_buy",
		["Target"] = 5,
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10605] = {
		["ID"] = 10605,
		["LibType"] = 106,
		["Condition"] = "count_item_get_id",
		["Target"] = 1000,
		["Params"] = {211},
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10606] = {
		["ID"] = 10606,
		["LibType"] = 106,
		["Condition"] = "count_item_get_id",
		["Target"] = 1000,
		["Params"] = {212},
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[10607] = {
		["ID"] = 10607,
		["LibType"] = 106,
		["Condition"] = "count_item_get_type",
		["Target"] = 20,
		["Params"] = {"equip"},
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[20101] = {
		["ID"] = 20101,
		["LibType"] = 201,
		["Condition"] = "count_dungeon_win",
		["Target"] = 5,
		["Dungeon"] = "main_rogue",
		["Score"] = 10,
		["Reward"] = {{201,100}}
	},
	[20201] = {
		["ID"] = 20201,
		["LibType"] = 202,
		["Condition"] = "count_dungeon_win",
		["Target"] = 10,
		["Dungeon"] = "main_rogue",
		["Score"] = 20,
		["Reward"] = {{201,200}}
	},
	[20301] = {
		["ID"] = 20301,
		["LibType"] = 203,
		["Condition"] = "count_dungeon_win",
		["Target"] = 20,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[20401] = {
		["ID"] = 20401,
		["LibType"] = 204,
		["Condition"] = "count_dungeon_win",
		["Target"] = 30,
		["Dungeon"] = "main_rogue",
		["Score"] = 40,
		["Reward"] = {{201,400}}
	},
	[20501] = {
		["ID"] = 20501,
		["LibType"] = 205,
		["Condition"] = "count_dungeon_win",
		["Target"] = 40,
		["Dungeon"] = "main_rogue",
		["Score"] = 50,
		["Reward"] = {{201,500}}
	},
	[21101] = {
		["ID"] = 21101,
		["LibType"] = 211,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_level_up",
		["Target"] = 1000,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21102] = {
		["ID"] = 21102,
		["LibType"] = 211,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_level_up",
		["Target"] = 1500,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21103] = {
		["ID"] = 21103,
		["LibType"] = 211,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_level_up",
		["Target"] = 2000,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21104] = {
		["ID"] = 21104,
		["LibType"] = 211,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_level_up",
		["Target"] = 2500,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21105] = {
		["ID"] = 21105,
		["LibType"] = 211,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_level_up",
		["Target"] = 3000,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21106] = {
		["ID"] = 21106,
		["LibType"] = 211,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_inspiration",
		["Target"] = 250,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21107] = {
		["ID"] = 21107,
		["LibType"] = 211,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_inspiration",
		["Target"] = 500,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21108] = {
		["ID"] = 21108,
		["LibType"] = 211,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_inspiration",
		["Target"] = 750,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21109] = {
		["ID"] = 21109,
		["LibType"] = 211,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_inspiration",
		["Target"] = 1000,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21110] = {
		["ID"] = 21110,
		["LibType"] = 211,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_skill_study",
		["Target"] = 250,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21111] = {
		["ID"] = 21111,
		["LibType"] = 211,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_skill_study",
		["Target"] = 500,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21112] = {
		["ID"] = 21112,
		["LibType"] = 211,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_skill_study",
		["Target"] = 750,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21113] = {
		["ID"] = 21113,
		["LibType"] = 211,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_skill_study",
		["Target"] = 1000,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21114] = {
		["ID"] = 21114,
		["LibType"] = 211,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_item_get_type",
		["Target"] = 500,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21115] = {
		["ID"] = 21115,
		["LibType"] = 211,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_item_get_type",
		["Target"] = 1000,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21116] = {
		["ID"] = 21116,
		["LibType"] = 211,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_item_get_type",
		["Target"] = 1500,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21117] = {
		["ID"] = 21117,
		["LibType"] = 211,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_item_get_type",
		["Target"] = 2000,
		["Params"] = {"soul"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21118] = {
		["ID"] = 21118,
		["LibType"] = 211,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_item_get_type",
		["Target"] = 500,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21119] = {
		["ID"] = 21119,
		["LibType"] = 211,
		["LimitSaveLevel"] = {25},
		["Condition"] = "count_item_get_type",
		["Target"] = 1000,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21120] = {
		["ID"] = 21120,
		["LibType"] = 211,
		["LimitSaveLevel"] = {50},
		["Condition"] = "count_item_get_type",
		["Target"] = 1500,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21121] = {
		["ID"] = 21121,
		["LibType"] = 211,
		["LimitSaveLevel"] = {75},
		["Condition"] = "count_item_get_type",
		["Target"] = 2000,
		["Params"] = {"fate"},
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21122] = {
		["ID"] = 21122,
		["LibType"] = 211,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_room",
		["Target"] = 150,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21123] = {
		["ID"] = 21123,
		["LibType"] = 211,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_room",
		["Target"] = 250,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21124] = {
		["ID"] = 21124,
		["LibType"] = 211,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_room",
		["Target"] = 400,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21125] = {
		["ID"] = 21125,
		["LibType"] = 211,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_bless_add",
		["Target"] = 100,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21126] = {
		["ID"] = 21126,
		["LibType"] = 211,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_bless_add",
		["Target"] = 150,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21127] = {
		["ID"] = 21127,
		["LibType"] = 211,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_bless_add",
		["Target"] = 200,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21128] = {
		["ID"] = 21128,
		["LibType"] = 211,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_bless_add",
		["Target"] = 250,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21129] = {
		["ID"] = 21129,
		["LibType"] = 211,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_bless_add",
		["Target"] = 300,
		["Dungeon"] = "main_rogue",
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21201] = {
		["ID"] = 21201,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_hero_star",
		["Target"] = 5,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21202] = {
		["ID"] = 21202,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_save_hero_star",
		["Target"] = 10,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21203] = {
		["ID"] = 21203,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_save_hero_star",
		["Target"] = 15,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21204] = {
		["ID"] = 21204,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_save_hero_star",
		["Target"] = 20,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21205] = {
		["ID"] = 21205,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_save_hero_star",
		["Target"] = 30,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21206] = {
		["ID"] = 21206,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_space_level_up",
		["Target"] = 1,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21207] = {
		["ID"] = 21207,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_save_space_level_up",
		["Target"] = 2,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21208] = {
		["ID"] = 21208,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_save_space_level_up",
		["Target"] = 3,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21209] = {
		["ID"] = 21209,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_save_space_level_up",
		["Target"] = 4,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21210] = {
		["ID"] = 21210,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_save_space_level_up",
		["Target"] = 5,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21211] = {
		["ID"] = 21211,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_equip_star",
		["Target"] = 2,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21212] = {
		["ID"] = 21212,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_save_equip_star",
		["Target"] = 4,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21213] = {
		["ID"] = 21213,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_save_equip_star",
		["Target"] = 6,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21214] = {
		["ID"] = 21214,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_save_equip_star",
		["Target"] = 8,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21215] = {
		["ID"] = 21215,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_save_equip_star",
		["Target"] = 10,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21216] = {
		["ID"] = 21216,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_curio_star_up",
		["Target"] = 2,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21217] = {
		["ID"] = 21217,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_save_curio_star_up",
		["Target"] = 4,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21218] = {
		["ID"] = 21218,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_save_curio_star_up",
		["Target"] = 6,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21219] = {
		["ID"] = 21219,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_save_curio_star_up",
		["Target"] = 8,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21220] = {
		["ID"] = 21220,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_save_curio_star_up",
		["Target"] = 10,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21221] = {
		["ID"] = 21221,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 5,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21222] = {
		["ID"] = 21222,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 10,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21223] = {
		["ID"] = 21223,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 15,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21224] = {
		["ID"] = 21224,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 20,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21225] = {
		["ID"] = 21225,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_save_space_activate_any",
		["Target"] = 25,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21226] = {
		["ID"] = 21226,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_save_lottery",
		["Target"] = 20,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21227] = {
		["ID"] = 21227,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_save_lottery",
		["Target"] = 40,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21228] = {
		["ID"] = 21228,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_save_lottery",
		["Target"] = 60,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21229] = {
		["ID"] = 21229,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_save_lottery",
		["Target"] = 80,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21230] = {
		["ID"] = 21230,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_save_lottery",
		["Target"] = 100,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21231] = {
		["ID"] = 21231,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_mall_buy",
		["Target"] = 10,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21232] = {
		["ID"] = 21232,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_mall_buy",
		["Target"] = 20,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21233] = {
		["ID"] = 21233,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_mall_buy",
		["Target"] = 30,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21234] = {
		["ID"] = 21234,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_mall_buy",
		["Target"] = 40,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21235] = {
		["ID"] = 21235,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_mall_buy",
		["Target"] = 50,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21236] = {
		["ID"] = 21236,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_auction_bid",
		["Target"] = 2,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21237] = {
		["ID"] = 21237,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_auction_bid",
		["Target"] = 4,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21238] = {
		["ID"] = 21238,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_auction_bid",
		["Target"] = 6,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21239] = {
		["ID"] = 21239,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_auction_bid",
		["Target"] = 8,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21240] = {
		["ID"] = 21240,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_auction_bid",
		["Target"] = 10,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21241] = {
		["ID"] = 21241,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_auction_dividend",
		["Target"] = 2,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21242] = {
		["ID"] = 21242,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_auction_dividend",
		["Target"] = 4,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21243] = {
		["ID"] = 21243,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_auction_dividend",
		["Target"] = 6,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21244] = {
		["ID"] = 21244,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_auction_dividend",
		["Target"] = 8,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21245] = {
		["ID"] = 21245,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_auction_dividend",
		["Target"] = 10,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21246] = {
		["ID"] = 21246,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_auction_dividend_money",
		["Target"] = 200,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21247] = {
		["ID"] = 21247,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_auction_dividend_money",
		["Target"] = 400,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21248] = {
		["ID"] = 21248,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_auction_dividend_money",
		["Target"] = 600,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21249] = {
		["ID"] = 21249,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_auction_dividend_money",
		["Target"] = 800,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21250] = {
		["ID"] = 21250,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_auction_dividend_money",
		["Target"] = 1000,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21251] = {
		["ID"] = 21251,
		["LibType"] = 212,
		["LimitSaveLevel"] = {0},
		["Condition"] = "count_auction_get",
		["Target"] = 1,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21252] = {
		["ID"] = 21252,
		["LibType"] = 212,
		["LimitSaveLevel"] = {20},
		["Condition"] = "count_auction_get",
		["Target"] = 2,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21253] = {
		["ID"] = 21253,
		["LibType"] = 212,
		["LimitSaveLevel"] = {40},
		["Condition"] = "count_auction_get",
		["Target"] = 3,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21254] = {
		["ID"] = 21254,
		["LibType"] = 212,
		["LimitSaveLevel"] = {60},
		["Condition"] = "count_auction_get",
		["Target"] = 4,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	},
	[21255] = {
		["ID"] = 21255,
		["LibType"] = 212,
		["LimitSaveLevel"] = {80},
		["Condition"] = "count_auction_get",
		["Target"] = 5,
		["Score"] = 30,
		["Reward"] = {{201,300}}
	}
}
