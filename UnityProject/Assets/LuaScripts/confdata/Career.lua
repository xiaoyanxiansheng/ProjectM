--[[
	Career

	字段列表:
		ID {int} 章节
		Prize* {array(array(int, int...), ...)} 章节大奖
		Tasks.Index* {int} 任务序号
		Tasks.Condition* {string} 任务条件
		Tasks.Target* {int} 任务条件目标
		Tasks.Params {array(auto, auto...)} 任务条件参数
		Tasks.Dungeon {string} 副本条件目标
		Tasks.Reward* {array(array(int, int...), ...)} 任务奖励

]]
return {
	[1] = {
		["ID"] = 1,
		["Prize"] = {{4030011,10},{211,100},{4040104,5},{5010025,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 1,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,50},{4010001,10}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "count_save_lottery",
				["Target"] = 1,
				["Reward"] = {{201,50},{4020001,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_level",
				["Target"] = 50,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{201,50},{4010001,10}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_soul_quality",
				["Target"] = 6,
				["Params"] = {3},
				["Reward"] = {{201,50},{4020001,5}}
			}
		}
	},
	[2] = {
		["ID"] = 2,
		["Prize"] = {{3112002,1},{211,100},{4040109,5},{5020024,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_save_level",
				["Target"] = 10,
				["Reward"] = {{201,50},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "count_save_lottery",
				["Target"] = 10,
				["Reward"] = {{201,50},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "count_save_hero_star",
				["Target"] = 2,
				["Reward"] = {{201,50},{4010001,10}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_equip_wear_quality",
				["Target"] = 5,
				["Params"] = {2},
				["Reward"] = {{201,50},{4020001,5}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "count_inspiration",
				["Target"] = 100,
				["Reward"] = {{201,50},{5510001,2}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_skill_have_level",
				["Target"] = 3,
				["Params"] = {5},
				["Reward"] = {{201,50},{5510103,2}}
			}
		}
	},
	[3] = {
		["ID"] = 3,
		["Prize"] = {{4030011,10},{211,100},{4040106,5},{5040014,2}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 3,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,100},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 15,
				["Reward"] = {{201,100},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_star",
				["Target"] = 5,
				["Reward"] = {{201,100},{4040001,5}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_level",
				["Target"] = 10,
				["Reward"] = {{201,100},{4010001,15}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "count_save_equip_enhance",
				["Target"] = 5,
				["Reward"] = {{201,100},{4020001,10}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_level",
				["Target"] = 100,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{201,100},{5510001,2}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "reach_fate_quality",
				["Target"] = 4,
				["Params"] = {3},
				["Reward"] = {{201,100},{5510104,2}}
			}
		}
	},
	[4] = {
		["ID"] = 4,
		["Prize"] = {{4030011,10},{211,100},{4040110,5},{5010025,30}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 4,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,100},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 20,
				["Reward"] = {{201,100},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_star",
				["Target"] = 6,
				["Reward"] = {{201,100},{4010002,5}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_level",
				["Target"] = 30,
				["Reward"] = {{201,100},{4010001,15}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_quality",
				["Target"] = 5,
				["Params"] = {4},
				["Reward"] = {{201,100},{4020001,10}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "count_save_space_activate_any",
				["Target"] = 8,
				["Reward"] = {{201,100},{4040001,5}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_room",
				["Target"] = 100,
				["Reward"] = {{201,100},{5510001,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "reach_skill_suit_count",
				["Target"] = 2,
				["Reward"] = {{201,100},{5510105,2}}
			}
		}
	},
	[5] = {
		["ID"] = 5,
		["Prize"] = {{3112003,1},{211,100},{4040105,5},{5010101,1}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 5,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,150},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 30,
				["Reward"] = {{201,150},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_weapon",
				["Target"] = 1,
				["Reward"] = {{201,150},{4010002,5}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_level",
				["Target"] = 1,
				["Params"] = {50},
				["Reward"] = {{201,150},{4010001,20}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_enhance",
				["Target"] = 8,
				["Reward"] = {{201,150},{4020001,10}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_star",
				["Target"] = 3,
				["Params"] = {1},
				["Reward"] = {{201,150},{4040001,5}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_auction_dividend",
				["Target"] = 1,
				["Reward"] = {{201,150},{4010011,15}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_bless_add",
				["Target"] = 50,
				["Reward"] = {{201,150},{5510001,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "reach_soul_hide_skill",
				["Target"] = 3,
				["Reward"] = {{201,150},{5510106,2}}
			}
		}
	},
	[6] = {
		["ID"] = 6,
		["Prize"] = {{4030011,15},{211,150},{4040111,5},{5030044,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 6,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,150},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 40,
				["Reward"] = {{201,150},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_star",
				["Target"] = 8,
				["Reward"] = {{201,150},{4010001,25}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_quality",
				["Target"] = 1,
				["Params"] = {5},
				["Reward"] = {{201,150},{4020001,15}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_star",
				["Target"] = 2,
				["Params"] = {1},
				["Reward"] = {{201,150},{4040001,10}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_mural",
				["Target"] = 5,
				["Reward"] = {{201,150},{4010011,20}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_save_lottery",
				["Target"] = 20,
				["Reward"] = {{201,150},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_mall_buy",
				["Target"] = 1,
				["Reward"] = {{201,150},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "reach_level",
				["Target"] = 150,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{201,150},{5510001,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_skill_have_level",
				["Target"] = 6,
				["Params"] = {5},
				["Reward"] = {{201,150},{5510107,2}}
			}
		}
	},
	[7] = {
		["ID"] = 7,
		["Prize"] = {{4030011,15},{211,150},{4040101,5},{5040014,2}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 7,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,200},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 50,
				["Reward"] = {{201,200},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_star",
				["Target"] = 9,
				["Reward"] = {{201,200},{4010001,25}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_weapon",
				["Target"] = 2,
				["Params"] = {1},
				["Reward"] = {{201,200},{4020001,15}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_have_enhance",
				["Target"] = 5,
				["Params"] = {8},
				["Reward"] = {{201,200},{4040001,10}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_space_have_level",
				["Target"] = 2,
				["Params"] = {3},
				["Reward"] = {{201,200},{4010011,20}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_wandering_shop_buy",
				["Target"] = 5,
				["Reward"] = {{201,200},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_bid",
				["Target"] = 2,
				["Reward"] = {{201,200},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_inspiration",
				["Target"] = 200,
				["Reward"] = {{201,200},{5510001,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_soul_quality",
				["Target"] = 6,
				["Params"] = {4},
				["Reward"] = {{201,200},{5510108,2}}
			}
		}
	},
	[8] = {
		["ID"] = 8,
		["Prize"] = {{3112001,1},{211,150},{4040108,5},{5030044,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 8,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,200},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 55,
				["Reward"] = {{201,200},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_star",
				["Target"] = 10,
				["Reward"] = {{201,200},{4010001,25}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_curio_have_quality",
				["Target"] = 1,
				["Params"] = {4},
				["Reward"] = {{201,200},{4020001,15}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_element_activate",
				["Target"] = 10,
				["Reward"] = {{201,200},{4040001,10}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_pet_have_star",
				["Target"] = 3,
				["Params"] = {1},
				["Reward"] = {{201,200},{4010011,20}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_exchange_shop_buy",
				["Target"] = 5,
				["Reward"] = {{201,200},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_dividend",
				["Target"] = 2,
				["Reward"] = {{201,200},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_level_up",
				["Target"] = 300,
				["Reward"] = {{201,200},{5510001,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_fate_quality",
				["Target"] = 6,
				["Params"] = {4},
				["Reward"] = {{201,200},{5510109,2}}
			}
		}
	},
	[9] = {
		["ID"] = 9,
		["Prize"] = {{4030011,20},{211,150},{4040102,5},{5010045,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 9,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,250},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 60,
				["Reward"] = {{201,250},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star_quality",
				["Target"] = 1,
				["Params"] = {6,5},
				["Reward"] = {{201,250},{4010001,30}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_level",
				["Target"] = 3,
				["Params"] = {50},
				["Reward"] = {{201,250},{4020001,20}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_star",
				["Target"] = 5,
				["Params"] = {1},
				["Reward"] = {{201,250},{4040001,15}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_star",
				["Target"] = 3,
				["Params"] = {2},
				["Reward"] = {{201,250},{4010011,25}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_save_pet_expedition",
				["Target"] = 2,
				["Reward"] = {{201,250},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_bid_money",
				["Target"] = 1000,
				["Reward"] = {{201,250},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_room",
				["Target"] = 150,
				["Reward"] = {{201,250},{5510002,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_soul_hide_skill",
				["Target"] = 4,
				["Reward"] = {{201,250},{5510110,2}}
			}
		}
	},
	[10] = {
		["ID"] = 10,
		["Prize"] = {{3112002,1},{211,150},{4040112,5},{3019004,30}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 10,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,250},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 65,
				["Reward"] = {{201,250},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star_quality",
				["Target"] = 1,
				["Params"] = {8,5},
				["Reward"] = {{201,250},{4010001,30}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_weapon",
				["Target"] = 2,
				["Params"] = {2},
				["Reward"] = {{201,250},{4020001,20}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_enhance_sum",
				["Target"] = 200,
				["Reward"] = {{201,250},{4040001,15}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_mural",
				["Target"] = 10,
				["Reward"] = {{201,250},{4010011,25}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_mall_buy",
				["Target"] = 10,
				["Reward"] = {{201,250},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_dividend_money",
				["Target"] = 500,
				["Reward"] = {{201,250},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_bless_add",
				["Target"] = 80,
				["Reward"] = {{201,250},{5510002,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_skill_have_level",
				["Target"] = 6,
				["Params"] = {6},
				["Reward"] = {{201,250},{5510111,2}}
			}
		}
	},
	[11] = {
		["ID"] = 11,
		["Prize"] = {{4030011,20},{211,200},{4040103,5},{5010045,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 11,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,300},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 70,
				["Reward"] = {{201,300},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star_quality",
				["Target"] = 1,
				["Params"] = {9,5},
				["Reward"] = {{201,300},{4010001,30}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_curio_have_level",
				["Target"] = 1,
				["Params"] = {50},
				["Reward"] = {{201,300},{4020001,20}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_star",
				["Target"] = 10,
				["Params"] = {1},
				["Reward"] = {{201,300},{4040001,15}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_space_have_level",
				["Target"] = 3,
				["Params"] = {6},
				["Reward"] = {{201,300},{4010011,25}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_save_lottery",
				["Target"] = 30,
				["Reward"] = {{201,300},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_get",
				["Target"] = 1,
				["Reward"] = {{201,300},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "reach_level",
				["Target"] = 200,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{201,300},{5510002,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_soul_quality",
				["Target"] = 6,
				["Params"] = {5},
				["Reward"] = {{201,300},{5510102,2}}
			}
		}
	},
	[12] = {
		["ID"] = 12,
		["Prize"] = {{3112003,1},{211,200},{4040107,5},{5040015,2}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 12,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,300},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 75,
				["Reward"] = {{201,300},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star_quality",
				["Target"] = 1,
				["Params"] = {10,5},
				["Reward"] = {{201,300},{4010001,35}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_level",
				["Target"] = 1,
				["Params"] = {100},
				["Reward"] = {{201,300},{4020001,25}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_have_suit_level",
				["Target"] = 5,
				["Params"] = {10},
				["Reward"] = {{201,300},{4040001,20}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_pet_have_star",
				["Target"] = 1,
				["Params"] = {2},
				["Reward"] = {{201,300},{4010011,30}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_wandering_shop_buy",
				["Target"] = 10,
				["Reward"] = {{201,300},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_bid",
				["Target"] = 5,
				["Reward"] = {{201,300},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_inspiration",
				["Target"] = 300,
				["Reward"] = {{201,300},{5510002,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_fate_quality",
				["Target"] = 6,
				["Params"] = {5},
				["Reward"] = {{201,300},{5510103,2}}
			}
		}
	},
	[13] = {
		["ID"] = 13,
		["Prize"] = {{4030011,25},{211,200},{4040002,5},{5020025,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 13,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,350},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 80,
				["Reward"] = {{201,350},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_curio_have_star",
				["Target"] = 1,
				["Params"] = {3},
				["Reward"] = {{201,350},{4010001,35}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_weapon",
				["Target"] = 1,
				["Params"] = {3},
				["Reward"] = {{201,350},{4020001,25}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_enhance_sum",
				["Target"] = 240,
				["Reward"] = {{201,350},{4040001,20}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_star",
				["Target"] = 3,
				["Params"] = {3},
				["Reward"] = {{201,350},{4010011,30}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_exchange_shop_buy",
				["Target"] = 10,
				["Reward"] = {{201,350},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_dividend",
				["Target"] = 5,
				["Reward"] = {{201,350},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_level_up",
				["Target"] = 400,
				["Reward"] = {{201,350},{5510002,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_soul_hide_skill",
				["Target"] = 5,
				["Reward"] = {{201,350},{5510104,2}}
			}
		}
	},
	[14] = {
		["ID"] = 14,
		["Prize"] = {{3112001,1},{211,200},{4040002,5},{5030045,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 14,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,350},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 83,
				["Reward"] = {{201,350},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star",
				["Target"] = 1,
				["Params"] = {11},
				["Reward"] = {{201,350},{4010001,35}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_curio_have_level",
				["Target"] = 1,
				["Params"] = {50},
				["Reward"] = {{201,350},{4020001,25}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_star",
				["Target"] = 5,
				["Params"] = {2},
				["Reward"] = {{201,350},{4040001,20}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_mural",
				["Target"] = 15,
				["Reward"] = {{201,350},{4010011,30}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_save_pet_expedition",
				["Target"] = 5,
				["Reward"] = {{201,350},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_bid_money",
				["Target"] = 2000,
				["Reward"] = {{201,350},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_room",
				["Target"] = 200,
				["Reward"] = {{201,350},{5510002,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_skill_have_level",
				["Target"] = 6,
				["Params"] = {7},
				["Reward"] = {{201,350},{5510105,2}}
			}
		}
	},
	[15] = {
		["ID"] = 15,
		["Prize"] = {{4030011,25},{211,200},{4040002,5},{5010101,1}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 15,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,400},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 86,
				["Reward"] = {{201,400},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star",
				["Target"] = 1,
				["Params"] = {12},
				["Reward"] = {{201,400},{4010001,40}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_level",
				["Target"] = 1,
				["Params"] = {100},
				["Reward"] = {{201,400},{4020001,30}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_enhance_sum",
				["Target"] = 280,
				["Reward"] = {{201,400},{4040001,25}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_space_have_level",
				["Target"] = 2,
				["Params"] = {8},
				["Reward"] = {{201,400},{4010011,35}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_mall_buy",
				["Target"] = 20,
				["Reward"] = {{201,400},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_dividend_money",
				["Target"] = 1000,
				["Reward"] = {{201,400},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_bless_add",
				["Target"] = 100,
				["Reward"] = {{201,400},{5510003,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_soul_quality",
				["Target"] = 6,
				["Params"] = {6},
				["Reward"] = {{201,400},{5510106,2}}
			}
		}
	},
	[16] = {
		["ID"] = 16,
		["Prize"] = {{3112002,1},{211,300},{4040002,5},{5010045,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 16,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,400},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 89,
				["Reward"] = {{201,400},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_curio_have_star",
				["Target"] = 1,
				["Params"] = {4},
				["Reward"] = {{201,400},{4010001,40}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_weapon",
				["Target"] = 1,
				["Params"] = {4},
				["Reward"] = {{201,400},{4020001,30}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_star",
				["Target"] = 8,
				["Params"] = {2},
				["Reward"] = {{201,400},{4040001,25}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_pet_have_star",
				["Target"] = 3,
				["Params"] = {2},
				["Reward"] = {{201,400},{4010011,35}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_save_lottery",
				["Target"] = 50,
				["Reward"] = {{201,400},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_get",
				["Target"] = 2,
				["Reward"] = {{201,400},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "reach_level",
				["Target"] = 250,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{201,400},{5510003,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_fate_quality",
				["Target"] = 6,
				["Params"] = {6},
				["Reward"] = {{201,400},{5510107,2}}
			}
		}
	},
	[17] = {
		["ID"] = 17,
		["Prize"] = {{4030011,30},{211,300},{4040002,5},{5040015,2}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 17,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,450},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 91,
				["Reward"] = {{201,450},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star",
				["Target"] = 1,
				["Params"] = {13},
				["Reward"] = {{201,450},{4010001,45}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_curio_have_level",
				["Target"] = 1,
				["Params"] = {80},
				["Reward"] = {{201,450},{4020001,35}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_enhance_sum",
				["Target"] = 320,
				["Reward"] = {{201,450},{4040001,30}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_star",
				["Target"] = 5,
				["Params"] = {3},
				["Reward"] = {{201,450},{4010011,40}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_wandering_shop_buy",
				["Target"] = 20,
				["Reward"] = {{201,450},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_bid",
				["Target"] = 10,
				["Reward"] = {{201,450},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_inspiration",
				["Target"] = 400,
				["Reward"] = {{201,450},{5510003,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_soul_hide_skill",
				["Target"] = 6,
				["Reward"] = {{201,450},{5510108,2}}
			}
		}
	},
	[18] = {
		["ID"] = 18,
		["Prize"] = {{3112003,1},{211,300},{4040002,5},{5020025,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 18,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,450},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 94,
				["Reward"] = {{201,450},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star",
				["Target"] = 1,
				["Params"] = {14},
				["Reward"] = {{201,450},{4010001,45}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_level",
				["Target"] = 1,
				["Params"] = {100},
				["Reward"] = {{201,450},{4020001,35}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_star",
				["Target"] = 12,
				["Params"] = {2},
				["Reward"] = {{201,450},{4040001,30}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_wing_have_mural",
				["Target"] = 20,
				["Reward"] = {{201,450},{4010011,40}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_exchange_shop_buy",
				["Target"] = 20,
				["Reward"] = {{201,450},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_dividend",
				["Target"] = 10,
				["Reward"] = {{201,450},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_level_up",
				["Target"] = 500,
				["Reward"] = {{201,450},{5510003,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_skill_have_level",
				["Target"] = 6,
				["Params"] = {8},
				["Reward"] = {{201,450},{5510109,2}}
			}
		}
	},
	[19] = {
		["ID"] = 19,
		["Prize"] = {{4030011,30},{211,300},{4040002,5},{5030045,10}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 19,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,500},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 97,
				["Reward"] = {{201,500},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_curio_have_star",
				["Target"] = 1,
				["Params"] = {5},
				["Reward"] = {{201,500},{4010001,50}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_hero_have_weapon",
				["Target"] = 1,
				["Params"] = {5},
				["Reward"] = {{201,500},{4020001,40}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_enhance_sum",
				["Target"] = 360,
				["Reward"] = {{201,500},{4040001,35}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_space_have_level",
				["Target"] = 2,
				["Params"] = {10},
				["Reward"] = {{201,500},{4010011,45}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_save_pet_expedition",
				["Target"] = 5,
				["Reward"] = {{201,500},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_bid_money",
				["Target"] = 5000,
				["Reward"] = {{201,500},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_room",
				["Target"] = 250,
				["Reward"] = {{201,500},{5510003,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_soul_quality",
				["Target"] = 6,
				["Params"] = {7},
				["Reward"] = {{201,500},{5510110,2}}
			}
		}
	},
	[20] = {
		["ID"] = 20,
		["Prize"] = {{3115004,1},{211,300},{4040002,5},{3019004,30}},
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "reach_dungeon",
				["Target"] = 20,
				["Params"] = {"main_rogue"},
				["Reward"] = {{201,500},{4051001,5}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "reach_save_level",
				["Target"] = 100,
				["Reward"] = {{201,500},{4051002,5}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "reach_save_hero_have_star",
				["Target"] = 1,
				["Params"] = {15},
				["Reward"] = {{201,500},{4010001,50}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "reach_save_curio_have_level",
				["Target"] = 1,
				["Params"] = {100},
				["Reward"] = {{201,500},{4020001,40}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "reach_save_equip_wear_star",
				["Target"] = 5,
				["Params"] = {3},
				["Reward"] = {{201,500},{4040001,35}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "reach_save_pet_have_star",
				["Target"] = 1,
				["Params"] = {3},
				["Reward"] = {{201,500},{4010011,45}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_mall_buy",
				["Target"] = 30,
				["Reward"] = {{201,500},{4010202,2}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_auction_dividend_money",
				["Target"] = 5000,
				["Reward"] = {{201,500},{4010201,2}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_bless_add",
				["Target"] = 150,
				["Reward"] = {{201,500},{5510003,2}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "reach_fate_quality",
				["Target"] = 6,
				["Params"] = {7},
				["Reward"] = {{201,500},{5510111,2}}
			}
		}
	}
}
