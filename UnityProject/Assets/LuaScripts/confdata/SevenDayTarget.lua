--[[
	SevenDayTarget

	字段列表:
		ID {int} ID
		Day* {int} 天数
		Condition* {string} 任务条件
		Target* {int} 任务条件目标
		Params {array(auto, auto...)} 任务条件参数
		Dungeon {string} 副本条件目标
		Reward {array(array(int, int...), ...)} 奖励

]]
return {
	[1] = {
		["ID"] = 1,
		["Day"] = 1,
		["Condition"] = "reach_save_level",
		["Target"] = 2,
		["Reward"] = {{4030011,1},{211,10}}
	},
	[2] = {
		["ID"] = 2,
		["Day"] = 1,
		["Condition"] = "reach_save_level",
		["Target"] = 4,
		["Reward"] = {{4030011,1},{211,15}}
	},
	[3] = {
		["ID"] = 3,
		["Day"] = 1,
		["Condition"] = "reach_save_level",
		["Target"] = 6,
		["Reward"] = {{4030011,1},{211,20}}
	},
	[4] = {
		["ID"] = 4,
		["Day"] = 1,
		["Condition"] = "reach_save_level",
		["Target"] = 8,
		["Reward"] = {{4030011,1},{211,25}}
	},
	[5] = {
		["ID"] = 5,
		["Day"] = 1,
		["Condition"] = "reach_save_level",
		["Target"] = 10,
		["Reward"] = {{4030011,1},{211,30}}
	},
	[6] = {
		["ID"] = 6,
		["Day"] = 1,
		["Condition"] = "count_dungeon",
		["Target"] = 2,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,10}}
	},
	[7] = {
		["ID"] = 7,
		["Day"] = 1,
		["Condition"] = "count_dungeon",
		["Target"] = 4,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,15}}
	},
	[8] = {
		["ID"] = 8,
		["Day"] = 1,
		["Condition"] = "count_dungeon",
		["Target"] = 6,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,20}}
	},
	[9] = {
		["ID"] = 9,
		["Day"] = 1,
		["Condition"] = "reach_dungeon",
		["Target"] = 1,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[10] = {
		["ID"] = 10,
		["Day"] = 1,
		["Condition"] = "reach_dungeon",
		["Target"] = 2,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[11] = {
		["ID"] = 11,
		["Day"] = 1,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 1,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[12] = {
		["ID"] = 12,
		["Day"] = 1,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 2,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[13] = {
		["ID"] = 13,
		["Day"] = 1,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 3,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[14] = {
		["ID"] = 14,
		["Day"] = 1,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 4,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[15] = {
		["ID"] = 15,
		["Day"] = 1,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 5,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[16] = {
		["ID"] = 16,
		["Day"] = 1,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 2,
		["Params"] = {2},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[17] = {
		["ID"] = 17,
		["Day"] = 1,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 4,
		["Params"] = {2},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[18] = {
		["ID"] = 18,
		["Day"] = 1,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 6,
		["Params"] = {2},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[19] = {
		["ID"] = 19,
		["Day"] = 1,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 8,
		["Params"] = {2},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[20] = {
		["ID"] = 20,
		["Day"] = 1,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 10,
		["Params"] = {2},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[21] = {
		["ID"] = 21,
		["Day"] = 2,
		["Condition"] = "reach_save_level",
		["Target"] = 12,
		["Reward"] = {{4030011,1},{211,10}}
	},
	[22] = {
		["ID"] = 22,
		["Day"] = 2,
		["Condition"] = "reach_save_level",
		["Target"] = 14,
		["Reward"] = {{4030011,1},{211,15}}
	},
	[23] = {
		["ID"] = 23,
		["Day"] = 2,
		["Condition"] = "reach_save_level",
		["Target"] = 16,
		["Reward"] = {{4030011,1},{211,20}}
	},
	[24] = {
		["ID"] = 24,
		["Day"] = 2,
		["Condition"] = "reach_save_level",
		["Target"] = 18,
		["Reward"] = {{4030011,1},{211,25}}
	},
	[25] = {
		["ID"] = 25,
		["Day"] = 2,
		["Condition"] = "reach_save_level",
		["Target"] = 20,
		["Reward"] = {{4030011,1},{211,30}}
	},
	[26] = {
		["ID"] = 26,
		["Day"] = 2,
		["Condition"] = "count_dungeon",
		["Target"] = 8,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,10}}
	},
	[27] = {
		["ID"] = 27,
		["Day"] = 2,
		["Condition"] = "count_dungeon",
		["Target"] = 10,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,15}}
	},
	[28] = {
		["ID"] = 28,
		["Day"] = 2,
		["Condition"] = "count_dungeon",
		["Target"] = 12,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,20}}
	},
	[29] = {
		["ID"] = 29,
		["Day"] = 2,
		["Condition"] = "reach_dungeon",
		["Target"] = 3,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[30] = {
		["ID"] = 30,
		["Day"] = 2,
		["Condition"] = "reach_dungeon",
		["Target"] = 4,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[31] = {
		["ID"] = 31,
		["Day"] = 2,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 2,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[32] = {
		["ID"] = 32,
		["Day"] = 2,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 4,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[33] = {
		["ID"] = 33,
		["Day"] = 2,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 6,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[34] = {
		["ID"] = 34,
		["Day"] = 2,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 8,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[35] = {
		["ID"] = 35,
		["Day"] = 2,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 10,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[36] = {
		["ID"] = 36,
		["Day"] = 2,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 2,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[37] = {
		["ID"] = 37,
		["Day"] = 2,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 4,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[38] = {
		["ID"] = 38,
		["Day"] = 2,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 6,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[39] = {
		["ID"] = 39,
		["Day"] = 2,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 8,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[40] = {
		["ID"] = 40,
		["Day"] = 2,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 10,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[41] = {
		["ID"] = 41,
		["Day"] = 3,
		["Condition"] = "reach_save_level",
		["Target"] = 22,
		["Reward"] = {{4030011,1},{211,10}}
	},
	[42] = {
		["ID"] = 42,
		["Day"] = 3,
		["Condition"] = "reach_save_level",
		["Target"] = 24,
		["Reward"] = {{4030011,1},{211,15}}
	},
	[43] = {
		["ID"] = 43,
		["Day"] = 3,
		["Condition"] = "reach_save_level",
		["Target"] = 26,
		["Reward"] = {{4030011,1},{211,20}}
	},
	[44] = {
		["ID"] = 44,
		["Day"] = 3,
		["Condition"] = "reach_save_level",
		["Target"] = 28,
		["Reward"] = {{4030011,1},{211,25}}
	},
	[45] = {
		["ID"] = 45,
		["Day"] = 3,
		["Condition"] = "reach_save_level",
		["Target"] = 30,
		["Reward"] = {{4030011,1},{211,30}}
	},
	[46] = {
		["ID"] = 46,
		["Day"] = 3,
		["Condition"] = "count_dungeon",
		["Target"] = 14,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,10}}
	},
	[47] = {
		["ID"] = 47,
		["Day"] = 3,
		["Condition"] = "count_dungeon",
		["Target"] = 16,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,15}}
	},
	[48] = {
		["ID"] = 48,
		["Day"] = 3,
		["Condition"] = "count_dungeon",
		["Target"] = 18,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,20}}
	},
	[49] = {
		["ID"] = 49,
		["Day"] = 3,
		["Condition"] = "reach_dungeon",
		["Target"] = 5,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[50] = {
		["ID"] = 50,
		["Day"] = 3,
		["Condition"] = "reach_dungeon",
		["Target"] = 6,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[51] = {
		["ID"] = 51,
		["Day"] = 3,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 1,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[52] = {
		["ID"] = 52,
		["Day"] = 3,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 2,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[53] = {
		["ID"] = 53,
		["Day"] = 3,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 3,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[54] = {
		["ID"] = 54,
		["Day"] = 3,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 4,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[55] = {
		["ID"] = 55,
		["Day"] = 3,
		["Condition"] = "reach_save_hero_have_quality",
		["Target"] = 5,
		["Params"] = {5},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[56] = {
		["ID"] = 56,
		["Day"] = 3,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 1,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[57] = {
		["ID"] = 57,
		["Day"] = 3,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 2,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[58] = {
		["ID"] = 58,
		["Day"] = 3,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 3,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[59] = {
		["ID"] = 59,
		["Day"] = 3,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 4,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[60] = {
		["ID"] = 60,
		["Day"] = 3,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 5,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[61] = {
		["ID"] = 61,
		["Day"] = 4,
		["Condition"] = "reach_save_level",
		["Target"] = 32,
		["Reward"] = {{4030011,1},{211,10}}
	},
	[62] = {
		["ID"] = 62,
		["Day"] = 4,
		["Condition"] = "reach_save_level",
		["Target"] = 34,
		["Reward"] = {{4030011,1},{211,15}}
	},
	[63] = {
		["ID"] = 63,
		["Day"] = 4,
		["Condition"] = "reach_save_level",
		["Target"] = 36,
		["Reward"] = {{4030011,1},{211,20}}
	},
	[64] = {
		["ID"] = 64,
		["Day"] = 4,
		["Condition"] = "reach_save_level",
		["Target"] = 38,
		["Reward"] = {{4030011,1},{211,25}}
	},
	[65] = {
		["ID"] = 65,
		["Day"] = 4,
		["Condition"] = "reach_save_level",
		["Target"] = 40,
		["Reward"] = {{4030011,1},{211,30}}
	},
	[66] = {
		["ID"] = 66,
		["Day"] = 4,
		["Condition"] = "count_dungeon",
		["Target"] = 20,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,10}}
	},
	[67] = {
		["ID"] = 67,
		["Day"] = 4,
		["Condition"] = "count_dungeon",
		["Target"] = 22,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,15}}
	},
	[68] = {
		["ID"] = 68,
		["Day"] = 4,
		["Condition"] = "count_dungeon",
		["Target"] = 24,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,20}}
	},
	[69] = {
		["ID"] = 69,
		["Day"] = 4,
		["Condition"] = "count_dungeon",
		["Target"] = 26,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,25}}
	},
	[70] = {
		["ID"] = 70,
		["Day"] = 4,
		["Condition"] = "reach_dungeon",
		["Target"] = 7,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[71] = {
		["ID"] = 71,
		["Day"] = 4,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 1,
		["Params"] = {6},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[72] = {
		["ID"] = 72,
		["Day"] = 4,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 2,
		["Params"] = {6},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[73] = {
		["ID"] = 73,
		["Day"] = 4,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 3,
		["Params"] = {6},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[74] = {
		["ID"] = 74,
		["Day"] = 4,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 4,
		["Params"] = {6},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[75] = {
		["ID"] = 75,
		["Day"] = 4,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 5,
		["Params"] = {6},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[76] = {
		["ID"] = 76,
		["Day"] = 4,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 12,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[77] = {
		["ID"] = 77,
		["Day"] = 4,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 14,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[78] = {
		["ID"] = 78,
		["Day"] = 4,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 16,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[79] = {
		["ID"] = 79,
		["Day"] = 4,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 18,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[80] = {
		["ID"] = 80,
		["Day"] = 4,
		["Condition"] = "reach_save_equip_wear_quality",
		["Target"] = 20,
		["Params"] = {4},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[81] = {
		["ID"] = 81,
		["Day"] = 5,
		["Condition"] = "reach_save_level",
		["Target"] = 42,
		["Reward"] = {{4030011,1},{211,10}}
	},
	[82] = {
		["ID"] = 82,
		["Day"] = 5,
		["Condition"] = "reach_save_level",
		["Target"] = 44,
		["Reward"] = {{4030011,1},{211,15}}
	},
	[83] = {
		["ID"] = 83,
		["Day"] = 5,
		["Condition"] = "reach_save_level",
		["Target"] = 46,
		["Reward"] = {{4030011,1},{211,20}}
	},
	[84] = {
		["ID"] = 84,
		["Day"] = 5,
		["Condition"] = "reach_save_level",
		["Target"] = 48,
		["Reward"] = {{4030011,1},{211,25}}
	},
	[85] = {
		["ID"] = 85,
		["Day"] = 5,
		["Condition"] = "reach_save_level",
		["Target"] = 50,
		["Reward"] = {{4030011,1},{211,30}}
	},
	[86] = {
		["ID"] = 86,
		["Day"] = 5,
		["Condition"] = "count_dungeon",
		["Target"] = 28,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,10}}
	},
	[87] = {
		["ID"] = 87,
		["Day"] = 5,
		["Condition"] = "count_dungeon",
		["Target"] = 30,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,15}}
	},
	[88] = {
		["ID"] = 88,
		["Day"] = 5,
		["Condition"] = "count_dungeon",
		["Target"] = 35,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,20}}
	},
	[89] = {
		["ID"] = 89,
		["Day"] = 5,
		["Condition"] = "count_dungeon",
		["Target"] = 40,
		["Dungeon"] = "main_rogue",
		["Reward"] = {{4030011,1},{211,25}}
	},
	[90] = {
		["ID"] = 90,
		["Day"] = 5,
		["Condition"] = "reach_dungeon",
		["Target"] = 8,
		["Params"] = {"main_rogue"},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[91] = {
		["ID"] = 91,
		["Day"] = 5,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 1,
		["Params"] = {7},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[92] = {
		["ID"] = 92,
		["Day"] = 5,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 2,
		["Params"] = {7},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[93] = {
		["ID"] = 93,
		["Day"] = 5,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 1,
		["Params"] = {8},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[94] = {
		["ID"] = 94,
		["Day"] = 5,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 1,
		["Params"] = {9},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[95] = {
		["ID"] = 95,
		["Day"] = 5,
		["Condition"] = "reach_save_hero_have_star",
		["Target"] = 1,
		["Params"] = {10},
		["Reward"] = {{4030011,1},{211,30}}
	},
	[96] = {
		["ID"] = 96,
		["Day"] = 5,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 6,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,10}}
	},
	[97] = {
		["ID"] = 97,
		["Day"] = 5,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 7,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,15}}
	},
	[98] = {
		["ID"] = 98,
		["Day"] = 5,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 8,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,20}}
	},
	[99] = {
		["ID"] = 99,
		["Day"] = 5,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 9,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,25}}
	},
	[100] = {
		["ID"] = 100,
		["Day"] = 5,
		["Condition"] = "reach_save_equip_wear_star",
		["Target"] = 10,
		["Params"] = {1},
		["Reward"] = {{4030011,1},{211,30}}
	}
}
