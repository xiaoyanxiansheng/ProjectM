--[[
	Dungeon

	字段列表:
		DungeonName {string} 副本名
		Title {lang} 标题
		Diffs.Level* {int} 难度
		Diffs.Name {lang} 难度
		Diffs.Precondition {map{[auto] = auto}} 开放前置
		Diffs.SaveLevel {int} 存档等级限制
		Diffs.Respawn* {string} 复活点
		Diffs.FogOfWar {bool} 打开战争迷雾
		Diffs.StartTime {number} 初始时间
		Diffs.Elapse {number} 时间流逝速率

]]
return {
	["main_rogue"] = {
		["DungeonName"] = "main_rogue",
		["Title"] = "L0636gs",
		["Diffs"] = {
			[1] = {
				["Level"] = 1,
				["Name"] = "Ltf3yn9g",
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[2] = {
				["Level"] = 2,
				["Name"] = "Lk80mm0e",
				["Precondition"] = {
					["main_rogue"] = 1
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[3] = {
				["Level"] = 3,
				["Name"] = "Ll80mm0e",
				["Precondition"] = {
					["main_rogue"] = 2
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[4] = {
				["Level"] = 4,
				["Name"] = "Lm80mm0e",
				["Precondition"] = {
					["main_rogue"] = 3
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[5] = {
				["Level"] = 5,
				["Name"] = "Ln80mm0e",
				["Precondition"] = {
					["main_rogue"] = 4
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[6] = {
				["Level"] = 6,
				["Name"] = "Lo80mm0e",
				["Precondition"] = {
					["main_rogue"] = 5
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[7] = {
				["Level"] = 7,
				["Name"] = "Lp80mm0e",
				["Precondition"] = {
					["main_rogue"] = 6
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[8] = {
				["Level"] = 8,
				["Name"] = "Lq80mm0e",
				["Precondition"] = {
					["main_rogue"] = 7
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[9] = {
				["Level"] = 9,
				["Name"] = "Lr80mm0e",
				["Precondition"] = {
					["main_rogue"] = 8
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[10] = {
				["Level"] = 10,
				["Name"] = "Ls80mm0e",
				["Precondition"] = {
					["main_rogue"] = 9
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[11] = {
				["Level"] = 11,
				["Name"] = "Lt80mm0e",
				["Precondition"] = {
					["main_rogue"] = 10
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[12] = {
				["Level"] = 12,
				["Name"] = "Lu80mm0e",
				["Precondition"] = {
					["main_rogue"] = 11
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[13] = {
				["Level"] = 13,
				["Name"] = "Lv80mm0e",
				["Precondition"] = {
					["main_rogue"] = 12
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[14] = {
				["Level"] = 14,
				["Name"] = "Lw80mm0e",
				["Precondition"] = {
					["main_rogue"] = 13
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[15] = {
				["Level"] = 15,
				["Name"] = "Lx80mm0e",
				["Precondition"] = {
					["main_rogue"] = 14
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[16] = {
				["Level"] = 16,
				["Name"] = "Ly80mm0e",
				["Precondition"] = {
					["main_rogue"] = 15
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[17] = {
				["Level"] = 17,
				["Name"] = "Lz80mm0e",
				["Precondition"] = {
					["main_rogue"] = 16
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[18] = {
				["Level"] = 18,
				["Name"] = "L080mm0e",
				["Precondition"] = {
					["main_rogue"] = 17
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[19] = {
				["Level"] = 19,
				["Name"] = "L180mm0e",
				["Precondition"] = {
					["main_rogue"] = 18
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[20] = {
				["Level"] = 20,
				["Name"] = "L280mm0e",
				["Precondition"] = {
					["main_rogue"] = 19
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[21] = {
				["Level"] = 21,
				["Name"] = "L8mhp8ri",
				["Precondition"] = {
					["main_rogue"] = 20
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[22] = {
				["Level"] = 22,
				["Name"] = "L9mhp8ri",
				["Precondition"] = {
					["main_rogue"] = 21
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[23] = {
				["Level"] = 23,
				["Name"] = "Lanhp8ri",
				["Precondition"] = {
					["main_rogue"] = 22
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[24] = {
				["Level"] = 24,
				["Name"] = "Lbnhp8ri",
				["Precondition"] = {
					["main_rogue"] = 23
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[25] = {
				["Level"] = 25,
				["Name"] = "Lcnhp8ri",
				["Precondition"] = {
					["main_rogue"] = 24
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[26] = {
				["Level"] = 26,
				["Name"] = "Ldnhp8ri",
				["Precondition"] = {
					["main_rogue"] = 25
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[27] = {
				["Level"] = 27,
				["Name"] = "Lenhp8ri",
				["Precondition"] = {
					["main_rogue"] = 26
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[28] = {
				["Level"] = 28,
				["Name"] = "Lfnhp8ri",
				["Precondition"] = {
					["main_rogue"] = 27
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[29] = {
				["Level"] = 29,
				["Name"] = "Lgnhp8ri",
				["Precondition"] = {
					["main_rogue"] = 28
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			},
			[30] = {
				["Level"] = 30,
				["Name"] = "Lhnhp8ri",
				["Precondition"] = {
					["main_rogue"] = 29
				},
				["Respawn"] = "player_0_sbysm_step",
				["FogOfWar"] = true
			}
		}
	},
	["test"] = {
		["DungeonName"] = "test",
		["Diffs"] = {
			[1] = {
				["Level"] = 1,
				["Name"] = "Lbk1yn9g",
				["Respawn"] = "player_defense"
			}
		}
	}
}
