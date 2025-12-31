--[[
	DungeonRogueBurn

	字段列表:
		Difficulty {int} 难度
		Burn.Index* {int} 序号
		Burn.ActiveBurnLevel* {int} 激活的燃烧等级
		Burn.Type* {int} 类型
		Burn.Odds* {int} 几率
		Burn.TypeName {string} 脚本名称
		Burn.Params {array(array(auto, auto...), ...)} 脚本参数
		Burn.ViewItems {array(array(int, int...), ...)} 展示奖励
		Burn.Decs {lang} 展示文本
		Burn.DecsParams {map{[auto] = auto}} 展示文本参数

]]
return {
	[1] = {
		["Difficulty"] = 1,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,2500,1,1,2500},{42,2500,1,1,2500}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,2000,1,5,2000},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014101,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,10000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 100
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024101,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,20000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 200
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030401,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 3
				}
			}
		}
	},
	[2] = {
		["Difficulty"] = 2,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,3500,1,1,3500},{42,3500,1,1,3500}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,3000,1,5,3000},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014201,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,11000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 110
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024201,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,22000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 220
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030402,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 3
				}
			}
		}
	},
	[3] = {
		["Difficulty"] = 3,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,4000,1,1,4000},{42,4000,1,1,4000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,3500,1,5,3500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014301,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,12000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 120
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024301,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,24000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 240
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030403,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 3
				}
			}
		}
	},
	[4] = {
		["Difficulty"] = 4,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,4500,1,1,4500},{42,4500,1,1,4500}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4000,1,5,4000},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014101,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,13000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 130
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024101,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,26000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 260
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030401,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			}
		}
	},
	[5] = {
		["Difficulty"] = 5,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014201,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,14000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 140
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024201,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,28000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 280
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030402,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			}
		}
	},
	[6] = {
		["Difficulty"] = 6,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014301,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,15000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 150
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024301,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,30000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 300
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030403,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			}
		}
	},
	[7] = {
		["Difficulty"] = 7,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014101,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 20
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,16000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 160
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024101,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,32000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 320
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030401,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[8] = {
		["Difficulty"] = 8,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014201,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 20
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,17000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 170
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024201,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,34000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 340
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030402,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[9] = {
		["Difficulty"] = 9,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3014301,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 20
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,18000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 180
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3024301,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,36000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 360
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030403,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[10] = {
		["Difficulty"] = 10,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991002,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 20
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,20000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 200
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991021,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,40000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 400
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991031,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[11] = {
		["Difficulty"] = 11,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015101,20},{3015103,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,22000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 220
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025101,5},{3025103,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 3
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,44000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 440
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030501,15},{3030504,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			}
		}
	},
	[12] = {
		["Difficulty"] = 12,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015201,20},{3015203,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,24000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 240
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025201,5},{3025203,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 3
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,48000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 480
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030502,15},{3030505,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			}
		}
	},
	[13] = {
		["Difficulty"] = 13,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015301,20},{3015303,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,26000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 260
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025301,5},{3025303,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 3
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,52000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 520
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030503,15},{3030506,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			}
		}
	},
	[14] = {
		["Difficulty"] = 14,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991002,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 25
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,28000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 280
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991021,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,56000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 560
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991031,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			}
		}
	},
	[15] = {
		["Difficulty"] = 15,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991003,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,30000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 300
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991022,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 3
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,60000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 600
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991032,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			}
		}
	},
	[16] = {
		["Difficulty"] = 16,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015101,20},{3015103,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,32000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 320
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025101,5},{3025103,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,64000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 640
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030501,15},{3030504,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[17] = {
		["Difficulty"] = 17,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015201,20},{3015203,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,34000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 340
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025201,5},{3025203,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,68000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 680
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030502,15},{3030505,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[18] = {
		["Difficulty"] = 18,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015301,20},{3015303,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,36000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 360
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025301,5},{3025303,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,72000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 720
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030503,15},{3030506,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[19] = {
		["Difficulty"] = 19,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991002,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 30
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,38000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 380
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991021,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,76000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 760
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991031,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 15
				}
			}
		}
	},
	[20] = {
		["Difficulty"] = 20,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991003,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,40000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 400
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991022,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 4
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,80000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 800
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991032,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			}
		}
	},
	[21] = {
		["Difficulty"] = 21,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015101,20},{3015103,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,22000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 420
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025101,5},{3025103,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,44000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 840
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030501,15},{3030504,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			}
		}
	},
	[22] = {
		["Difficulty"] = 22,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015201,20},{3015203,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,24000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 440
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025201,5},{3025203,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,48000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 880
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030502,15},{3030505,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			}
		}
	},
	[23] = {
		["Difficulty"] = 23,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015301,20},{3015303,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,26000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 460
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025301,5},{3025303,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,52000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 920
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030503,15},{3030506,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			}
		}
	},
	[24] = {
		["Difficulty"] = 24,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991002,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 36
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,28000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 480
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991021,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 14
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,56000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 960
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991031,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 18
				}
			}
		}
	},
	[25] = {
		["Difficulty"] = 25,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991003,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 12
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,30000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 500
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991022,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 5
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,60000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 1000
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991032,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 8
				}
			}
		}
	},
	[26] = {
		["Difficulty"] = 26,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015101,20},{3015103,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 14
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,32000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 520
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025101,5},{3025103,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,64000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 1040
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030501,15},{3030504,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			}
		}
	},
	[27] = {
		["Difficulty"] = 27,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015201,20},{3015203,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 14
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,34000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 540
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025201,5},{3025203,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,68000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 1080
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030502,15},{3030505,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			}
		}
	},
	[28] = {
		["Difficulty"] = 28,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3015301,20},{3015303,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 14
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,36000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 560
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3025301,5},{3025303,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,72000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 1120
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{3030503,15},{3030506,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			}
		}
	},
	[29] = {
		["Difficulty"] = 29,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "L8s1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991002,40}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 42
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,38000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 580
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991021,10}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 16
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,76000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 1160
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991031,30}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 20
				}
			}
		}
	},
	[30] = {
		["Difficulty"] = 30,
		["Burn"] = {
			[1] = {
				["Index"] = 1,
				["ActiveBurnLevel"] = 1,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{21,5000,1,1,5000},{42,5000,1,1,5000}}
			},
			[2] = {
				["Index"] = 2,
				["ActiveBurnLevel"] = 3,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",27}},
				["Decs"] = "Lns1mm0e"
			},
			[3] = {
				["Index"] = 3,
				["ActiveBurnLevel"] = 5,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "foe_add_attr",
				["Params"] = {{41,4500,1,5,4500},{121,500,1,5,500}}
			},
			[4] = {
				["Index"] = 4,
				["ActiveBurnLevel"] = 7,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "any_player_run_action",
				["Params"] = {{1,"AddBless",19}},
				["Decs"] = "Lms1mm0e"
			},
			[5] = {
				["Index"] = 5,
				["ActiveBurnLevel"] = 10,
				["Type"] = 1,
				["Odds"] = 10000,
				["TypeName"] = "all_player_run_action",
				["Params"] = {{1,"AddBless",60}},
				["Decs"] = "Lbt1mm0e"
			},
			[6] = {
				["Index"] = 6,
				["ActiveBurnLevel"] = 2,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991003,20}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 14
				}
			},
			[7] = {
				["Index"] = 7,
				["ActiveBurnLevel"] = 5,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,40000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 600
				}
			},
			[8] = {
				["Index"] = 8,
				["ActiveBurnLevel"] = 8,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991022,5}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 6
				}
			},
			[9] = {
				["Index"] = 9,
				["ActiveBurnLevel"] = 11,
				["Type"] = 2,
				["Odds"] = 10000,
				["TypeName"] = "player_run_action",
				["Params"] = {{1,"AddAttr",314,80000}},
				["ViewItems"] = {{212,1}},
				["Decs"] = "Lat1mm0e",
				["DecsParams"] = {
					["p"] = 1200
				}
			},
			[10] = {
				["Index"] = 10,
				["ActiveBurnLevel"] = 15,
				["Type"] = 0,
				["Odds"] = 10000,
				["ViewItems"] = {{6991032,15}},
				["Decs"] = "L9s1mm0e",
				["DecsParams"] = {
					["p"] = 10
				}
			}
		}
	}
}
