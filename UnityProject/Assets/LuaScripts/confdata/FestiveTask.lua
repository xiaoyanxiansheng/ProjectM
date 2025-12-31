--[[
	FestiveTask

	字段列表:
		ID {int} ID
		TimeId* {int} 时间ID
		DailyReset {bool} 每日重置
		Tasks.Index* {int} 序号
		Tasks.Condition* {string} 任务条件
		Tasks.Target* {int} 任务条件目标
		Tasks.Params {array(auto, auto...)} 任务条件参数
		Tasks.Dungeon {string} 副本条件目标
		Tasks.Reward {array(array(int, int...), ...)} 奖励

]]
return {
	[1] = {
		["ID"] = 1,
		["TimeId"] = 25122401,
		["DailyReset"] = true,
		["Tasks"] = {
			[1] = {
				["Index"] = 1,
				["Condition"] = "count_login",
				["Target"] = 1,
				["Reward"] = {{5810101,2},{4010001,20}}
			},
			[2] = {
				["Index"] = 2,
				["Condition"] = "count_dungeon",
				["Target"] = 1,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{5810102,2},{4010001,20}}
			},
			[3] = {
				["Index"] = 3,
				["Condition"] = "count_dungeon",
				["Target"] = 2,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{5810102,3},{4010001,30}}
			},
			[4] = {
				["Index"] = 4,
				["Condition"] = "count_dungeon",
				["Target"] = 3,
				["Dungeon"] = "main_rogue",
				["Reward"] = {{5810101,2},{4010002,10}}
			},
			[5] = {
				["Index"] = 5,
				["Condition"] = "count_save_hero_star",
				["Target"] = 1,
				["Reward"] = {{5810103,4},{4010001,20}}
			},
			[6] = {
				["Index"] = 6,
				["Condition"] = "count_save_hero_star",
				["Target"] = 2,
				["Reward"] = {{5810103,6},{4010001,30}}
			},
			[7] = {
				["Index"] = 7,
				["Condition"] = "count_save_hero_star",
				["Target"] = 3,
				["Reward"] = {{5810101,1},{4010002,5}}
			},
			[8] = {
				["Index"] = 8,
				["Condition"] = "count_save_hero_level",
				["Target"] = 3,
				["Reward"] = {{5810103,4},{4010001,20}}
			},
			[9] = {
				["Index"] = 9,
				["Condition"] = "count_save_hero_level",
				["Target"] = 6,
				["Reward"] = {{5810103,6},{4010001,30}}
			},
			[10] = {
				["Index"] = 10,
				["Condition"] = "count_save_hero_level",
				["Target"] = 9,
				["Reward"] = {{5810101,1},{4010002,5}}
			},
			[11] = {
				["Index"] = 11,
				["Condition"] = "count_save_equip_enhance",
				["Target"] = 3,
				["Reward"] = {{5810103,4},{4010001,20}}
			},
			[12] = {
				["Index"] = 12,
				["Condition"] = "count_save_equip_enhance",
				["Target"] = 6,
				["Reward"] = {{5810103,6},{4010001,30}}
			},
			[13] = {
				["Index"] = 13,
				["Condition"] = "count_save_equip_enhance",
				["Target"] = 9,
				["Reward"] = {{5810101,1},{4010002,5}}
			},
			[14] = {
				["Index"] = 14,
				["Condition"] = "count_save_curio_level_up",
				["Target"] = 3,
				["Reward"] = {{5810103,4},{4010001,20}}
			},
			[15] = {
				["Index"] = 15,
				["Condition"] = "count_save_curio_level_up",
				["Target"] = 6,
				["Reward"] = {{5810103,6},{4010001,30}}
			},
			[16] = {
				["Index"] = 16,
				["Condition"] = "count_save_curio_level_up",
				["Target"] = 9,
				["Reward"] = {{5810101,1},{4010002,5}}
			},
			[17] = {
				["Index"] = 17,
				["Condition"] = "count_save_space_activate_any",
				["Target"] = 1,
				["Reward"] = {{5810102,2},{4010001,20}}
			},
			[18] = {
				["Index"] = 18,
				["Condition"] = "count_save_space_activate_any",
				["Target"] = 2,
				["Reward"] = {{5810102,3},{4010001,30}}
			},
			[19] = {
				["Index"] = 19,
				["Condition"] = "count_save_space_activate_any",
				["Target"] = 3,
				["Reward"] = {{5810101,2},{4010002,10}}
			}
		}
	}
}
