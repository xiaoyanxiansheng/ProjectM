--[[
	BattlePassTask

	字段列表:
		BpId* {int} 通行证ID
		Tasks.QuestID {int} 任务ID
		Tasks.Condition* {string} 任务条件
		Tasks.Target* {int} 任务条件目标
		Tasks.Params {array(auto, auto...)} 任务条件参数
		Tasks.Dungeon {string} 副本条件目标
		Tasks.ExpAward* {int} 经验奖励

]]
return {
	[1] = {
		["BpId"] = 1,
		["Tasks"] = {
			[101] = {
				["QuestID"] = 101,
				["Condition"] = "count_login",
				["Target"] = 1,
				["ExpAward"] = 40
			},
			[201] = {
				["QuestID"] = 201,
				["Condition"] = "count_dungeon",
				["Target"] = 1,
				["Dungeon"] = "main_rogue",
				["ExpAward"] = 30
			},
			[202] = {
				["QuestID"] = 202,
				["Condition"] = "count_dungeon",
				["Target"] = 2,
				["Dungeon"] = "main_rogue",
				["ExpAward"] = 40
			},
			[203] = {
				["QuestID"] = 203,
				["Condition"] = "count_dungeon",
				["Target"] = 3,
				["Dungeon"] = "main_rogue",
				["ExpAward"] = 50
			},
			[301] = {
				["QuestID"] = 301,
				["Condition"] = "count_save_equip_free_enhance",
				["Target"] = 1,
				["Dungeon"] = "any",
				["ExpAward"] = 10
			},
			[302] = {
				["QuestID"] = 302,
				["Condition"] = "count_save_equip_free_enhance",
				["Target"] = 2,
				["Dungeon"] = "any",
				["ExpAward"] = 20
			},
			[303] = {
				["QuestID"] = 303,
				["Condition"] = "count_save_equip_free_enhance",
				["Target"] = 4,
				["Dungeon"] = "any",
				["ExpAward"] = 30
			},
			[401] = {
				["QuestID"] = 401,
				["Condition"] = "count_wandering_shop_buy",
				["Target"] = 2,
				["Dungeon"] = "any",
				["ExpAward"] = 10
			},
			[402] = {
				["QuestID"] = 402,
				["Condition"] = "count_wandering_shop_buy",
				["Target"] = 5,
				["Dungeon"] = "any",
				["ExpAward"] = 20
			},
			[403] = {
				["QuestID"] = 403,
				["Condition"] = "count_wandering_shop_buy",
				["Target"] = 8,
				["Dungeon"] = "any",
				["ExpAward"] = 30
			},
			[501] = {
				["QuestID"] = 501,
				["Condition"] = "count_exchange_shop_buy",
				["Target"] = 2,
				["Dungeon"] = "any",
				["ExpAward"] = 10
			},
			[502] = {
				["QuestID"] = 502,
				["Condition"] = "count_exchange_shop_buy",
				["Target"] = 5,
				["Dungeon"] = "any",
				["ExpAward"] = 20
			},
			[503] = {
				["QuestID"] = 503,
				["Condition"] = "count_exchange_shop_buy",
				["Target"] = 8,
				["Dungeon"] = "any",
				["ExpAward"] = 30
			},
			[601] = {
				["QuestID"] = 601,
				["Condition"] = "count_save_lottery_five_one",
				["Target"] = 1,
				["Dungeon"] = "any",
				["ExpAward"] = 30
			},
			[602] = {
				["QuestID"] = 602,
				["Condition"] = "count_save_lottery_five_one",
				["Target"] = 2,
				["Dungeon"] = "any",
				["ExpAward"] = 30
			},
			[603] = {
				["QuestID"] = 603,
				["Condition"] = "count_save_lottery_five_one",
				["Target"] = 3,
				["Dungeon"] = "any",
				["ExpAward"] = 30
			}
		}
	},
	[2] = {
		["BpId"] = 2,
		["Tasks"] = {
			[101] = {
				["QuestID"] = 101,
				["Condition"] = "count_login",
				["Target"] = 1,
				["ExpAward"] = 50
			},
			[201] = {
				["QuestID"] = 201,
				["Condition"] = "count_dungeon",
				["Target"] = 1,
				["Dungeon"] = "main_rogue",
				["ExpAward"] = 30
			},
			[202] = {
				["QuestID"] = 202,
				["Condition"] = "count_dungeon",
				["Target"] = 2,
				["Dungeon"] = "main_rogue",
				["ExpAward"] = 40
			},
			[203] = {
				["QuestID"] = 203,
				["Condition"] = "count_dungeon",
				["Target"] = 3,
				["Dungeon"] = "main_rogue",
				["ExpAward"] = 50
			},
			[301] = {
				["QuestID"] = 301,
				["Condition"] = "count_save_equip_free_enhance",
				["Target"] = 1,
				["Dungeon"] = "any",
				["ExpAward"] = 20
			},
			[302] = {
				["QuestID"] = 302,
				["Condition"] = "count_save_equip_free_enhance",
				["Target"] = 2,
				["Dungeon"] = "any",
				["ExpAward"] = 30
			},
			[303] = {
				["QuestID"] = 303,
				["Condition"] = "count_save_equip_free_enhance",
				["Target"] = 4,
				["Dungeon"] = "any",
				["ExpAward"] = 40
			},
			[401] = {
				["QuestID"] = 401,
				["Condition"] = "count_save_hero_star",
				["Target"] = 2,
				["ExpAward"] = 20
			},
			[402] = {
				["QuestID"] = 402,
				["Condition"] = "count_save_hero_star",
				["Target"] = 4,
				["ExpAward"] = 30
			},
			[403] = {
				["QuestID"] = 403,
				["Condition"] = "count_save_hero_star",
				["Target"] = 6,
				["ExpAward"] = 40
			},
			[501] = {
				["QuestID"] = 501,
				["Condition"] = "count_save_space_activate_any",
				["Target"] = 1,
				["ExpAward"] = 20
			},
			[502] = {
				["QuestID"] = 502,
				["Condition"] = "count_save_space_activate_any",
				["Target"] = 2,
				["ExpAward"] = 30
			},
			[503] = {
				["QuestID"] = 503,
				["Condition"] = "count_save_space_activate_any",
				["Target"] = 3,
				["ExpAward"] = 40
			},
			[601] = {
				["QuestID"] = 601,
				["Condition"] = "count_save_pet_expedition",
				["Target"] = 1,
				["ExpAward"] = 20
			},
			[602] = {
				["QuestID"] = 602,
				["Condition"] = "count_save_pet_expedition",
				["Target"] = 2,
				["ExpAward"] = 30
			},
			[603] = {
				["QuestID"] = 603,
				["Condition"] = "count_save_pet_expedition",
				["Target"] = 3,
				["ExpAward"] = 40
			}
		}
	}
}
