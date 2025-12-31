--[[
	MapTerrain

	字段列表:
		ID {int} ID
		LocationX* {int} 中心点X
		LocationY* {int} 中心点Y
		Width* {int} 地图宽
		Height* {int} 地图高
		AssetPaths {array(string, string...)} 地图资源路径
		RoguePoints {map{[auto] = auto}} 肉鸽刷怪点

]]
return {
	[1] = {
		["ID"] = 1,
		["LocationX"] = -12800,
		["LocationY"] = -12800,
		["Width"] = 5120,
		["Height"] = 5120
	},
	[10001] = {
		["ID"] = 10001,
		["LocationX"] = 1536,
		["LocationY"] = 14592,
		["Width"] = 3584,
		["Height"] = 3584
	},
	[10002] = {
		["ID"] = 10002,
		["LocationX"] = 1536,
		["LocationY"] = -13568,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_shop"}
	},
	[10003] = {
		["ID"] = 10003,
		["LocationX"] = 1536,
		["LocationY"] = 2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_event_1"},
		["RoguePoints"] = {
			["event"] = 6,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2,
			["ore"] = 26
		}
	},
	[10004] = {
		["ID"] = 10004,
		["LocationX"] = 1536,
		["LocationY"] = -2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_event_2"},
		["RoguePoints"] = {
			["event"] = 6,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2,
			["ore"] = 26
		}
	},
	[10005] = {
		["ID"] = 10005,
		["LocationX"] = 13568,
		["LocationY"] = 7680,
		["Width"] = 5120,
		["Height"] = 5120,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_zhong_1"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10006] = {
		["ID"] = 10006,
		["LocationX"] = 8192,
		["LocationY"] = 7680,
		["Width"] = 5120,
		["Height"] = 5120,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_zhong_2"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10007] = {
		["ID"] = 10007,
		["LocationX"] = 2304,
		["LocationY"] = 7680,
		["Width"] = 5120,
		["Height"] = 5120,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_zhong_3"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10008] = {
		["ID"] = 10008,
		["LocationX"] = 13568,
		["LocationY"] = -7680,
		["Width"] = 5120,
		["Height"] = 5120,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_zhong_4"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10009] = {
		["ID"] = 10009,
		["LocationX"] = 8192,
		["LocationY"] = -7680,
		["Width"] = 5120,
		["Height"] = 5120,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_zhong_5"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10010] = {
		["ID"] = 10010,
		["LocationX"] = 2304,
		["LocationY"] = -7680,
		["Width"] = 5120,
		["Height"] = 5120,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_zhong_6"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10011] = {
		["ID"] = 10011,
		["LocationX"] = 13568,
		["LocationY"] = 13568,
		["Width"] = 5632,
		["Height"] = 5632,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_da_1"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10012] = {
		["ID"] = 10012,
		["LocationX"] = 7168,
		["LocationY"] = 13568,
		["Width"] = 5632,
		["Height"] = 5632,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_da_2"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10015] = {
		["ID"] = 10015,
		["LocationX"] = 13568,
		["LocationY"] = -13568,
		["Width"] = 5632,
		["Height"] = 5632,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_da_5"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10016] = {
		["ID"] = 10016,
		["LocationX"] = 7168,
		["LocationY"] = -13568,
		["Width"] = 5632,
		["Height"] = 5632,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_da_6"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10017] = {
		["ID"] = 10017,
		["LocationX"] = 5888,
		["LocationY"] = 2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_xiao_1"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10018] = {
		["ID"] = 10018,
		["LocationX"] = 5888,
		["LocationY"] = -2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_xiao_2"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10019] = {
		["ID"] = 10019,
		["LocationX"] = 10240,
		["LocationY"] = 2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_xiao_3"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10020] = {
		["ID"] = 10020,
		["LocationX"] = 10240,
		["LocationY"] = -2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_xiao_4"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10021] = {
		["ID"] = 10021,
		["LocationX"] = 14592,
		["LocationY"] = 2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_xiao_5"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	},
	[10022] = {
		["ID"] = 10022,
		["LocationX"] = 14592,
		["LocationY"] = -2304,
		["Width"] = 3584,
		["Height"] = 3584,
		["AssetPaths"] = {"../map_component/rouge_map/main_base_low/main_season_xiao_6"},
		["RoguePoints"] = {
			["npc"] = 1,
			["time"] = 1,
			["monster"] = 8,
			["boss"] = 2
		}
	}
}
