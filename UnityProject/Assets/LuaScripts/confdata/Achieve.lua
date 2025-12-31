--[[
	Achieve

	字段列表:
		ID {int} ID
		Title {lang} 成就标题
		Desc {lang} 成就描述
		Condition* {string} 任务条件
		Target* {int} 任务条件目标
		Params {array(auto, auto...)} 任务条件参数
		Dungeon {string} 副本条件目标
		Attrs {array(array(int, int...), ...)} 奖励属性
		Reward {array(array(int, int...), ...)} 奖励道具

]]
return {
	[1001] = {
		["ID"] = 1001,
		["Title"] = "Lxs36gs",
		["Desc"] = "Lys36gs",
		["Condition"] = "reach_respawn",
		["Target"] = 9,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1002] = {
		["ID"] = 1002,
		["Title"] = "L0s36gs",
		["Desc"] = "L4s36gs",
		["Condition"] = "reach_death_pass",
		["Target"] = 5,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1003] = {
		["ID"] = 1003,
		["Title"] = "L5s36gs",
		["Desc"] = "L6s36gs",
		["Condition"] = "reach_no_kill_death_pass",
		["Target"] = 1,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1004] = {
		["ID"] = 1004,
		["Title"] = "L9s36gs",
		["Desc"] = "Lct36gs",
		["Condition"] = "reach_no_kill_no_death_pass",
		["Target"] = 1,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1005] = {
		["ID"] = 1005,
		["Title"] = "Let36gs",
		["Desc"] = "Lft36gs",
		["Condition"] = "reach_kill_ratio",
		["Target"] = 1,
		["Params"] = {0.9,4},
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1006] = {
		["ID"] = 1006,
		["Title"] = "Lnb2mm0e",
		["Desc"] = "L6t36gs",
		["Condition"] = "reach_dungeon_burn",
		["Target"] = 1,
		["Params"] = {15,"main_rogue"},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110001,1}}
	},
	[1101] = {
		["ID"] = 1101,
		["Title"] = "Lau36gs",
		["Desc"] = "Lbu36gs",
		["Condition"] = "reach_no_fight_run",
		["Target"] = 100000,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1102] = {
		["ID"] = 1102,
		["Title"] = "Lcu36gs",
		["Desc"] = "Ldu36gs",
		["Condition"] = "reach_room_run",
		["Target"] = 1000000,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1103] = {
		["ID"] = 1103,
		["Title"] = "Leu36gs",
		["Desc"] = "Lfu36gs",
		["Condition"] = "reach_no_damage_pass_room",
		["Target"] = 10,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1104] = {
		["ID"] = 1104,
		["Title"] = "Lgu36gs",
		["Desc"] = "Lhu36gs",
		["Condition"] = "reach_use_skill_break",
		["Target"] = 10,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1105] = {
		["ID"] = 1105,
		["Title"] = "Liu36gs",
		["Desc"] = "Lju36gs",
		["Condition"] = "reach_use_skill_miss",
		["Target"] = 10,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1106] = {
		["ID"] = 1106,
		["Title"] = "Lku36gs",
		["Desc"] = "Llu36gs",
		["Condition"] = "count_order_use_skill",
		["Target"] = 1,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1201] = {
		["ID"] = 1201,
		["Title"] = "Lmu36gs",
		["Desc"] = "Lnu36gs",
		["Condition"] = "reach_add_gold",
		["Target"] = 1000000,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1202] = {
		["ID"] = 1202,
		["Title"] = "Lou36gs",
		["Desc"] = "Lpu36gs",
		["Condition"] = "reach_add_gold",
		["Target"] = 10000000,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1203] = {
		["ID"] = 1203,
		["Title"] = "Lqu36gs",
		["Desc"] = "Lru36gs",
		["Condition"] = "reach_add_gold",
		["Target"] = 100000000,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1204] = {
		["ID"] = 1204,
		["Title"] = "Lsu36gs",
		["Desc"] = "Ltu36gs",
		["Condition"] = "reach_add_gold",
		["Target"] = 1000000000,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1205] = {
		["ID"] = 1205,
		["Title"] = "Luu36gs",
		["Desc"] = "Lvu36gs",
		["Condition"] = "reach_sell_gold",
		["Target"] = 1000000,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1206] = {
		["ID"] = 1206,
		["Title"] = "Lwu36gs",
		["Desc"] = "Lxu36gs",
		["Condition"] = "reach_have_gold",
		["Target"] = 100000000,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1301] = {
		["ID"] = 1301,
		["Title"] = "Lbc2mm0e",
		["Desc"] = "Lyu36gs",
		["Condition"] = "reach_level",
		["Target"] = 300,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110007,1}}
	},
	[1302] = {
		["ID"] = 1302,
		["Title"] = "Lzu36gs",
		["Desc"] = "L0u36gs",
		["Condition"] = "count_npc_chat_buy_level",
		["Target"] = 10,
		["Params"] = {1000},
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1303] = {
		["ID"] = 1303,
		["Title"] = "L1u36gs",
		["Desc"] = "L2u36gs",
		["Condition"] = "reach_bless",
		["Target"] = 10,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1304] = {
		["ID"] = 1304,
		["Title"] = "L3u36gs",
		["Desc"] = "L4u36gs",
		["Condition"] = "reach_only_negative_bless",
		["Target"] = 5,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1305] = {
		["ID"] = 1305,
		["Title"] = "L5u36gs",
		["Desc"] = "L6u36gs",
		["Condition"] = "reach_room_type",
		["Target"] = 10,
		["Params"] = {5},
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1306] = {
		["ID"] = 1306,
		["Title"] = "L7u36gs",
		["Desc"] = "L8u36gs",
		["Condition"] = "reach_room_type",
		["Target"] = 5,
		["Params"] = {3},
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1307] = {
		["ID"] = 1307,
		["Title"] = "L9u36gs",
		["Desc"] = "Lav36gs",
		["Condition"] = "reach_room_count",
		["Target"] = 50,
		["Dungeon"] = "main_rogue",
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1401] = {
		["ID"] = 1401,
		["Title"] = "Lbv36gs",
		["Desc"] = "Lcv36gs",
		["Condition"] = "reach_fate_quality",
		["Target"] = 1,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1402] = {
		["ID"] = 1402,
		["Title"] = "Ldv36gs",
		["Desc"] = "Lev36gs",
		["Condition"] = "reach_fate_quality",
		["Target"] = 1,
		["Params"] = {6},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1403] = {
		["ID"] = 1403,
		["Title"] = "Lwv36gs",
		["Desc"] = "Lyv36gs",
		["Condition"] = "reach_fate_quality",
		["Target"] = 1,
		["Params"] = {7},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1404] = {
		["ID"] = 1404,
		["Title"] = "L0v36gs",
		["Desc"] = "L2v36gs",
		["Condition"] = "reach_fate_equal_count",
		["Target"] = 8,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1405] = {
		["ID"] = 1405,
		["Title"] = "L6v36gs",
		["Desc"] = "L2v36gs",
		["Condition"] = "reach_fate_equal_count",
		["Target"] = 10,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1406] = {
		["ID"] = 1406,
		["Title"] = "L8v36gs",
		["Desc"] = "Llw36gs",
		["Condition"] = "reach_fate_equal_level_up",
		["Target"] = 6,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1407] = {
		["ID"] = 1407,
		["Title"] = "Ltn1mm0e",
		["Desc"] = "Lnw36gs",
		["Condition"] = "reach_fate_unequal_level_up",
		["Target"] = 6,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1501] = {
		["ID"] = 1501,
		["Title"] = "Lpw36gs",
		["Desc"] = "Lqw36gs",
		["Condition"] = "reach_soul_quality",
		["Target"] = 1,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1502] = {
		["ID"] = 1502,
		["Title"] = "Lrw36gs",
		["Desc"] = "Lsw36gs",
		["Condition"] = "reach_soul_quality",
		["Target"] = 1,
		["Params"] = {6},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1503] = {
		["ID"] = 1503,
		["Title"] = "Ltw36gs",
		["Desc"] = "Lvw36gs",
		["Condition"] = "reach_soul_quality",
		["Target"] = 1,
		["Params"] = {7},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1504] = {
		["ID"] = 1504,
		["Title"] = "Lxw36gs",
		["Desc"] = "L5w36gs",
		["Condition"] = "reach_soul_hide_skill",
		["Target"] = 6,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1505] = {
		["ID"] = 1505,
		["Title"] = "L6w36gs",
		["Desc"] = "L7w36gs",
		["Condition"] = "reach_soul_suit_count",
		["Target"] = 3,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1506] = {
		["ID"] = 1506,
		["Title"] = "L7c1yn9g",
		["Desc"] = "L8w36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {1},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1507] = {
		["ID"] = 1507,
		["Title"] = "L8c1yn9g",
		["Desc"] = "L9w36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {2},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1508] = {
		["ID"] = 1508,
		["Title"] = "Lk50mm0e",
		["Desc"] = "Lax36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {3},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1509] = {
		["ID"] = 1509,
		["Title"] = "L9c1yn9g",
		["Desc"] = "Lbx36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {4},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1510] = {
		["ID"] = 1510,
		["Title"] = "Ljd1yn9g",
		["Desc"] = "Lcx36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1511] = {
		["ID"] = 1511,
		["Title"] = "Ljq1mm0e",
		["Desc"] = "Ljx36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {6},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1512] = {
		["ID"] = 1512,
		["Title"] = "Lmd1yn9g",
		["Desc"] = "Lkx36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {7},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1513] = {
		["ID"] = 1513,
		["Title"] = "Lhf1yn9g",
		["Desc"] = "Lmx36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {8},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1514] = {
		["ID"] = 1514,
		["Title"] = "L581mm0e",
		["Desc"] = "Lnx36gs",
		["Condition"] = "reach_soul_suit_id",
		["Target"] = 6,
		["Params"] = {9},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1601] = {
		["ID"] = 1601,
		["Title"] = "Lpx36gs",
		["Desc"] = "Lqx36gs",
		["Condition"] = "reach_skill_suit_count",
		["Target"] = 3,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1602] = {
		["ID"] = 1602,
		["Title"] = "Lsx36gs",
		["Desc"] = "Ltx36gs",
		["Condition"] = "reach_skill_other_hero",
		["Target"] = 5,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1603] = {
		["ID"] = 1603,
		["Title"] = "Lux36gs",
		["Desc"] = "Lwx36gs",
		["Condition"] = "reach_skill_have_level",
		["Target"] = 1,
		["Params"] = {9},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1604] = {
		["ID"] = 1604,
		["Title"] = "Lsy36gs",
		["Desc"] = "Lty36gs",
		["Condition"] = "reach_skill_have_level",
		["Target"] = 6,
		["Params"] = {8},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1605] = {
		["ID"] = 1605,
		["Title"] = "L001yn9g",
		["Desc"] = "Luy36gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {1},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1606] = {
		["ID"] = 1606,
		["Title"] = "L201yn9g",
		["Desc"] = "Lvy36gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {2},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1607] = {
		["ID"] = 1607,
		["Title"] = "L301yn9g",
		["Desc"] = "Lwy36gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {3},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1608] = {
		["ID"] = 1608,
		["Title"] = "L501yn9g",
		["Desc"] = "Lxy36gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {4},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1609] = {
		["ID"] = 1609,
		["Title"] = "La11yn9g",
		["Desc"] = "Lyy36gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1610] = {
		["ID"] = 1610,
		["Title"] = "Lf11yn9g",
		["Desc"] = "L0036gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {6},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1611] = {
		["ID"] = 1611,
		["Title"] = "Lg11yn9g",
		["Desc"] = "L1036gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {7},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1612] = {
		["ID"] = 1612,
		["Title"] = "Lh11yn9g",
		["Desc"] = "L3136gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {8},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1613] = {
		["ID"] = 1613,
		["Title"] = "Lm11yn9g",
		["Desc"] = "L4136gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {9},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1614] = {
		["ID"] = 1614,
		["Title"] = "Lq11yn9g",
		["Desc"] = "L5136gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {10},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1615] = {
		["ID"] = 1615,
		["Title"] = "Lw11yn9g",
		["Desc"] = "L6136gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {11},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1616] = {
		["ID"] = 1616,
		["Title"] = "L511yn9g",
		["Desc"] = "L7136gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {12},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1617] = {
		["ID"] = 1617,
		["Title"] = "L811yn9g",
		["Desc"] = "L8136gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {13},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1618] = {
		["ID"] = 1618,
		["Title"] = "Lc21yn9g",
		["Desc"] = "L9136gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {14},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1619] = {
		["ID"] = 1619,
		["Title"] = "Ld21yn9g",
		["Desc"] = "La236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {15},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1620] = {
		["ID"] = 1620,
		["Title"] = "Lk21yn9g",
		["Desc"] = "Lb236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {16},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1621] = {
		["ID"] = 1621,
		["Title"] = "Lm21yn9g",
		["Desc"] = "Lc236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {17},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1622] = {
		["ID"] = 1622,
		["Title"] = "Lr21yn9g",
		["Desc"] = "Ld236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {18},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1623] = {
		["ID"] = 1623,
		["Title"] = "Lt21yn9g",
		["Desc"] = "Le236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {19},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1624] = {
		["ID"] = 1624,
		["Title"] = "Lw21yn9g",
		["Desc"] = "Lf236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {20},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1625] = {
		["ID"] = 1625,
		["Title"] = "Ly21yn9g",
		["Desc"] = "Lg236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {21},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1626] = {
		["ID"] = 1626,
		["Title"] = "L021yn9g",
		["Desc"] = "Lh236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {22},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1627] = {
		["ID"] = 1627,
		["Title"] = "L521yn9g",
		["Desc"] = "Li236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {23},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1628] = {
		["ID"] = 1628,
		["Title"] = "L821yn9g",
		["Desc"] = "Lj236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {24},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1629] = {
		["ID"] = 1629,
		["Title"] = "La31yn9g",
		["Desc"] = "Lk236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {25},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1630] = {
		["ID"] = 1630,
		["Title"] = "Lb31yn9g",
		["Desc"] = "Ll236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {26},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[1631] = {
		["ID"] = 1631,
		["Title"] = "Lc31yn9g",
		["Desc"] = "Lm236gs",
		["Condition"] = "reach_skill_suit_id",
		["Target"] = 6,
		["Params"] = {27},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2001] = {
		["ID"] = 2001,
		["Title"] = "Ln236gs",
		["Desc"] = "Ls236gs",
		["Condition"] = "count_auction_bid",
		["Target"] = 100,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2002] = {
		["ID"] = 2002,
		["Title"] = "Lt236gs",
		["Desc"] = "Lu236gs",
		["Condition"] = "count_auction_bid_count_get",
		["Target"] = 10,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2003] = {
		["ID"] = 2003,
		["Title"] = "Lv236gs",
		["Desc"] = "Lw236gs",
		["Condition"] = "count_auction_base_get",
		["Target"] = 10,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2004] = {
		["ID"] = 2004,
		["Title"] = "Lpb2mm0e",
		["Desc"] = "Luc56gs",
		["Condition"] = "reach_save_battlepass_activate",
		["Target"] = 1,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110002,1}}
	},
	[2101] = {
		["ID"] = 2101,
		["Title"] = "Ly236gs",
		["Desc"] = "Lz236gs",
		["Condition"] = "count_save_lottery_get_hero",
		["Target"] = 2,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2102] = {
		["ID"] = 2102,
		["Title"] = "L0236gs",
		["Desc"] = "Lz236gs",
		["Condition"] = "count_save_lottery_get_hero",
		["Target"] = 3,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2103] = {
		["ID"] = 2103,
		["Title"] = "L1236gs",
		["Desc"] = "Lz236gs",
		["Condition"] = "count_save_lottery_get_hero",
		["Target"] = 4,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2104] = {
		["ID"] = 2104,
		["Title"] = "L2236gs",
		["Desc"] = "Lz236gs",
		["Condition"] = "count_save_lottery_get_hero",
		["Target"] = 5,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2201] = {
		["ID"] = 2201,
		["Title"] = "Lvv36gs",
		["Desc"] = "L3236gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {1},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2202] = {
		["ID"] = 2202,
		["Title"] = "Lxv36gs",
		["Desc"] = "L4236gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {2},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2203] = {
		["ID"] = 2203,
		["Title"] = "Lzv36gs",
		["Desc"] = "L5236gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {3},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2204] = {
		["ID"] = 2204,
		["Title"] = "L1v36gs",
		["Desc"] = "L6236gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {4},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2205] = {
		["ID"] = 2205,
		["Title"] = "L3v36gs",
		["Desc"] = "L7236gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {5},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2206] = {
		["ID"] = 2206,
		["Title"] = "L5v36gs",
		["Desc"] = "L8236gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {6},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2207] = {
		["ID"] = 2207,
		["Title"] = "L7v36gs",
		["Desc"] = "L9236gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {7},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2208] = {
		["ID"] = 2208,
		["Title"] = "L9v36gs",
		["Desc"] = "La336gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {8},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2209] = {
		["ID"] = 2209,
		["Title"] = "Lbw36gs",
		["Desc"] = "Lb336gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {9},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2210] = {
		["ID"] = 2210,
		["Title"] = "Ldw36gs",
		["Desc"] = "Lc336gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {10},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2211] = {
		["ID"] = 2211,
		["Title"] = "Luw36gs",
		["Desc"] = "Ld336gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {11},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2212] = {
		["ID"] = 2212,
		["Title"] = "Lww36gs",
		["Desc"] = "Le336gs",
		["Condition"] = "count_save_space_activate",
		["Target"] = 10,
		["Params"] = {12},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2213] = {
		["ID"] = 2213,
		["Title"] = "Ldc2mm0e",
		["Desc"] = "Lf336gs",
		["Condition"] = "reach_save_space_activate_count",
		["Target"] = 12,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110008,1}}
	},
	[2301] = {
		["ID"] = 2301,
		["Title"] = "Lg336gs",
		["Desc"] = "Lh336gs",
		["Condition"] = "reach_save_equip_element_chain",
		["Target"] = 4,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2302] = {
		["ID"] = 2302,
		["Title"] = "Li336gs",
		["Desc"] = "Lh336gs",
		["Condition"] = "reach_save_equip_element_chain",
		["Target"] = 8,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2303] = {
		["ID"] = 2303,
		["Title"] = "Lj336gs",
		["Desc"] = "Lh336gs",
		["Condition"] = "reach_save_equip_element_chain",
		["Target"] = 12,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2304] = {
		["ID"] = 2304,
		["Title"] = "Lk336gs",
		["Desc"] = "L0c46gs",
		["Condition"] = "reach_save_equip_suit_level_count",
		["Target"] = 2,
		["Params"] = {50},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2305] = {
		["ID"] = 2305,
		["Title"] = "L1b2mm0e",
		["Desc"] = "Lsc46gs",
		["Condition"] = "reach_save_equip_suit_level",
		["Target"] = 15,
		["Params"] = {11},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110004,1}}
	},
	[2306] = {
		["ID"] = 2306,
		["Title"] = "L3b2mm0e",
		["Desc"] = "Ltc46gs",
		["Condition"] = "reach_save_equip_suit_level",
		["Target"] = 15,
		["Params"] = {12},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110005,1}}
	},
	[2307] = {
		["ID"] = 2307,
		["Title"] = "L5b2mm0e",
		["Desc"] = "Luc46gs",
		["Condition"] = "reach_save_equip_suit_level",
		["Target"] = 15,
		["Params"] = {13},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110006,1}}
	},
	[2401] = {
		["ID"] = 2401,
		["Title"] = "Lz91yn9g",
		["Desc"] = "Lxp36gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15101},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2402] = {
		["ID"] = 2402,
		["Title"] = "L091yn9g",
		["Desc"] = "Lzp36gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15102},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2403] = {
		["ID"] = 2403,
		["Title"] = "L591yn9g",
		["Desc"] = "Ltv36gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15103},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2404] = {
		["ID"] = 2404,
		["Title"] = "L9a2yn9g",
		["Desc"] = "Lcy36gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15104},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2405] = {
		["ID"] = 2405,
		["Title"] = "Lpy36gs",
		["Desc"] = "Ln836gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15105},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2406] = {
		["ID"] = 2406,
		["Title"] = "Lo836gs",
		["Desc"] = "Lf946gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15106},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2407] = {
		["ID"] = 2407,
		["Title"] = "Laa2yn9g",
		["Desc"] = "L5946gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15201},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2408] = {
		["ID"] = 2408,
		["Title"] = "Lfa2yn9g",
		["Desc"] = "L6946gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15202},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2409] = {
		["ID"] = 2409,
		["Title"] = "Lga2yn9g",
		["Desc"] = "L7946gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15203},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2410] = {
		["ID"] = 2410,
		["Title"] = "Lgb2yn9g",
		["Desc"] = "L8946gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15204},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2411] = {
		["ID"] = 2411,
		["Title"] = "L9946gs",
		["Desc"] = "Laa56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15205},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2412] = {
		["ID"] = 2412,
		["Title"] = "Lba56gs",
		["Desc"] = "Lca56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15206},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2413] = {
		["ID"] = 2413,
		["Title"] = "Lia2yn9g",
		["Desc"] = "Lda56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15301},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2414] = {
		["ID"] = 2414,
		["Title"] = "Loa2yn9g",
		["Desc"] = "Lea56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15302},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2415] = {
		["ID"] = 2415,
		["Title"] = "L1a2yn9g",
		["Desc"] = "Lfa56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15303},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2416] = {
		["ID"] = 2416,
		["Title"] = "Ljb2yn9g",
		["Desc"] = "Lga56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15304},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2417] = {
		["ID"] = 2417,
		["Title"] = "Lha56gs",
		["Desc"] = "Lia56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15305},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2418] = {
		["ID"] = 2418,
		["Title"] = "Lja56gs",
		["Desc"] = "Lka56gs",
		["Condition"] = "count_save_hero_id_evolve",
		["Target"] = 1,
		["Params"] = {15306},
		["Attrs"] = {{312,2000}},
		["Reward"] = {{211,30}}
	},
	[2419] = {
		["ID"] = 2419,
		["Title"] = "Ltb2mm0e",
		["Desc"] = "Lla56gs",
		["Condition"] = "count_save_hero_evolve",
		["Target"] = 1,
		["Attrs"] = {{312,2000}},
		["Reward"] = {{6110003,1}}
	}
}
