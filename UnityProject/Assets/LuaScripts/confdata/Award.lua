--[[
	Award

	字段列表:
		Key {int} 编号
		RandomType* {int} 随机类型
		RandomCount* {int} 随机次数
		Items.Index* {int} 顺序
		Items.Weight* {int} 权重
		Items.SubAward {int}=Conf(Award) 子奖励ID
		Items.ItemID {int}=Conf(Item) 物品名称
		Items.Count* {array(int, int...)} 数量
		Items.SubCountRatio {array(number, number...)} 子数量倍率
		Items.Dungeon {map{[auto] = array(...), ...}} 副本条件
		Items.Burn {array(int, int...)} 燃烧等级条件
		Items.Layer {array(int, int...)} 层数条件
		Items.RoomCount {array(int, int...)} 房间数量条件
		Items.HaveHero {map{[auto] = auto}} 拥有英雄条件
		Items.UseHero {map{[auto] = auto}} 使用英雄条件
		Items.TimeId {int} 时间条件
		Items.BlackRecover {int} 暗箱重置条件
		Items.BlackCD {int} 掉落CD
		Items.BlackDecrease {int} 概率递减
		Items.BlackMustHit {array(int, int...)} 必出命中

]]
return {
	[101001] = {
		["Key"] = 101001,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 2012011,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 8000,
				["ItemID"] = 2012012,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 2000,
				["ItemID"] = 2012013,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["ItemID"] = 2012014,
				["Count"] = {1},
				["Burn"] = {0,1},
				["Layer"] = {0,1},
				["RoomCount"] = {0,1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 5000,
				["ItemID"] = 2012014,
				["Count"] = {1},
				["Burn"] = {2,999},
				["Layer"] = {2,999},
				["RoomCount"] = {2,999}
			}
		}
	},
	[102000] = {
		["Key"] = 102000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1020000,
				["Count"] = {1},
				["Layer"] = {0,3},
				["RoomCount"] = {0,999}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910101,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {0,30}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,3},
				["RoomCount"] = {0,999}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 60,
				["SubAward"] = 910102,
				["Count"] = {1},
				["Burn"] = {0,999},
				["Layer"] = {0,3},
				["RoomCount"] = {0,999}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 40,
				["SubAward"] = 910103,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {0,9}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 40,
				["SubAward"] = 910103,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {10,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,3},
				["RoomCount"] = {0,999}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 30,
				["SubAward"] = 910104,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {0,19}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 30,
				["SubAward"] = 910104,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {20,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,3},
				["RoomCount"] = {0,999}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 25,
				["SubAward"] = 910105,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {10,29}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 25,
				["SubAward"] = 910105,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {30,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,3},
				["RoomCount"] = {0,999}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 20,
				["SubAward"] = 910106,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {20,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10,
				["SubAward"] = 910107,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {30,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			}
		}
	},
	[102001] = {
		["Key"] = 102001,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1020000,
				["Count"] = {1},
				["Burn"] = {0,999},
				["Layer"] = {0,3},
				["RoomCount"] = {0,999}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 2500,
				["SubAward"] = 910401,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 600,
				["SubAward"] = 910402,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 200,
				["SubAward"] = 910403,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 80,
				["SubAward"] = 910404,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10,
				["SubAward"] = 910405,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 3,
				["SubAward"] = 910406,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 1,
				["SubAward"] = 910407,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 5000,
				["SubAward"] = 910401,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 1000,
				["SubAward"] = 910402,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 300,
				["SubAward"] = 910403,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["SubAward"] = 910404,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10,
				["SubAward"] = 910405,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 3,
				["SubAward"] = 910406,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 1,
				["SubAward"] = 910407,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 7500,
				["SubAward"] = 910401,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 1400,
				["SubAward"] = 910402,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 350,
				["SubAward"] = 910403,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 170,
				["SubAward"] = 910404,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10,
				["SubAward"] = 910405,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 3,
				["SubAward"] = 910406,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 1,
				["SubAward"] = 910407,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[91] = {
				["Index"] = 91,
				["Weight"] = 0,
				["SubAward"] = 121021,
				["Count"] = {1}
			},
			[92] = {
				["Index"] = 92,
				["Weight"] = 0,
				["SubAward"] = 121022,
				["Count"] = {1}
			},
			[93] = {
				["Index"] = 93,
				["Weight"] = 0,
				["SubAward"] = 121023,
				["Count"] = {1}
			},
			[94] = {
				["Index"] = 94,
				["Weight"] = 0,
				["SubAward"] = 121024,
				["Count"] = {1}
			},
			[95] = {
				["Index"] = 95,
				["Weight"] = 0,
				["SubAward"] = 121025,
				["Count"] = {1}
			},
			[96] = {
				["Index"] = 96,
				["Weight"] = 0,
				["SubAward"] = 121026,
				["Count"] = {1}
			},
			[97] = {
				["Index"] = 97,
				["Weight"] = 0,
				["SubAward"] = 121027,
				["Count"] = {1}
			}
		}
	},
	[103000] = {
		["Key"] = 103000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {12},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {15},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {18},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			}
		}
	},
	[103001] = {
		["Key"] = 103001,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {30},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {35},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {40},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			}
		}
	},
	[103002] = {
		["Key"] = 103002,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {40},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {45},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {60},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			}
		}
	},
	[104000] = {
		["Key"] = 104000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {3},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {3},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {1,1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {4},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {2,2}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {4},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {3,3}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {5},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {4,4}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {5},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {5,5}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {6},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {6,6}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {6},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {7,7}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {7},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {8,8}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {8},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {9,999}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {9},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,0}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {10},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {1,1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {11},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {2,2}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {12},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {3,3}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {13},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {4,4}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {14},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {5,5}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {15},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {6,6}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {16},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {7,7}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {17},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {8,8}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {18},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {9,999}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {20},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,0}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {22},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {1,1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {24},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {2,2}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {26},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {3,3}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {28},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {4,4}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {30},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {5,5}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {32},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {6,6}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {34},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {7,7}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {36},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {8,8}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {38},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {9,999}
			}
		}
	},
	[104001] = {
		["Key"] = 104001,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {4},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {4},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {1,1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {5},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {2,2}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {6},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {3,3}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {7},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {4,4}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {8},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {5,5}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {9},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {6,6}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {10},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {7,7}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {11},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {8,8}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {12},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {9,999}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {13},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,0}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {14},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {1,1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {15},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {2,2}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {16},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {3,3}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {17},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {4,4}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {18},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {5,5}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {19},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {6,6}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {20},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {7,7}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {22},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {8,8}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {24},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {9,999}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {26},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,0}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {28},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {1,1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {30},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {2,2}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {32},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {3,3}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {34},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {4,4}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {36},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {5,5}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {38},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {6,6}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {40},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {7,7}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {45},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {8,8}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {50},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {9,999}
			}
		}
	},
	[104002] = {
		["Key"] = 104002,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {6},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {7},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {1,1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {8},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {2,2}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {9},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {3,3}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {10},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {4,4}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {12},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {5,5}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {14},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {6,6}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {16},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {7,7}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {18},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {8,8}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {20},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {9,999}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {23},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,0}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {26},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {1,1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {29},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {2,2}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {32},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {3,3}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {35},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {4,4}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {40},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {5,5}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {45},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {6,6}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {50},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {7,7}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {55},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {8,8}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {60},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {9,999}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {65},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,0}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {70},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {1,1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {75},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {2,2}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {80},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {3,3}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {85},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {4,4}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {90},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {5,5}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {95},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {6,6}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {100},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {7,7}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {105},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {8,8}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {110},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {9,999}
			}
		}
	},
	[105000] = {
		["Key"] = 105000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {500,20000},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1000,35000},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			}
		}
	},
	[106000] = {
		["Key"] = 106000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {500},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,999}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {2000},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,999}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {50},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			}
		}
	},
	[107000] = {
		["Key"] = 107000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {175},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {185},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {1,1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {195},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {2,2}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {205},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {3,3}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {215},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {4,4}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {225},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {5,5}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {240},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {6,6}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {255},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {7,7}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {270},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {8,8}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {285},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {9,999}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {300},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,0}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {325},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {1,1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {350},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {2,2}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {375},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {3,3}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {400},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {4,4}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {450},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {5,5}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {500},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {6,6}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {550},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {7,7}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {600},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {8,8}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {650},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {9,999}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {700},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,0}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {800},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {1,1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {900},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {2,2}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1000},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {3,3}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1100},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {4,4}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1200},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {5,5}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1350},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {6,6}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1500},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {7,7}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1650},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {8,8}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 10000,
				["ItemID"] = 111,
				["Count"] = {1800},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {9,999}
			}
		}
	},
	[108000] = {
		["Key"] = 108000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {120},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {130},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {1,1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {140},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {2,2}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {150},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {3,3}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {160},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {4,4}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {180},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {5,5}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {200},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {6,6}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {220},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {7,7}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {240},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {8,8}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {260},
				["Burn"] = {0,999},
				["Layer"] = {0,1},
				["RoomCount"] = {9,999}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {290},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {0,0}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {320},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {1,1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {350},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {2,2}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {380},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {3,3}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {410},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {4,4}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {460},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {5,5}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {510},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {6,6}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {560},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {7,7}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {610},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {8,8}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {660},
				["Burn"] = {0,999},
				["Layer"] = {2,2},
				["RoomCount"] = {9,999}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {710},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {0,0}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {760},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {1,1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {810},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {2,2}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {860},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {3,3}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {910},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {4,4}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {960},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {5,5}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {1010},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {6,6}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {1060},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {7,7}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {1110},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {8,8}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 10000,
				["ItemID"] = 101,
				["Count"] = {1160},
				["Burn"] = {0,999},
				["Layer"] = {3,3},
				["RoomCount"] = {9,999}
			}
		}
	},
	[111001] = {
		["Key"] = 111001,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 20,
				["ItemID"] = 111,
				["Count"] = {1000,5000}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 50,
				["ItemID"] = 111,
				["Count"] = {2000,10000}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 50,
				["ItemID"] = 111,
				["Count"] = {5000,20000}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 20,
				["ItemID"] = 111,
				["Count"] = {10000,100000}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 15,
				["ItemID"] = 1330001,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 20,
				["ItemID"] = 1330002,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 30,
				["ItemID"] = 1330003,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 20,
				["ItemID"] = 1330004,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 15,
				["ItemID"] = 1330005,
				["Count"] = {1}
			}
		}
	},
	[111002] = {
		["Key"] = 111002,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 500,
				["ItemID"] = 1330001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 400,
				["ItemID"] = 1330002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 300,
				["ItemID"] = 1330003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 50,
				["ItemID"] = 1330004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 20,
				["ItemID"] = 1330005,
				["Count"] = {1}
			}
		}
	},
	[112000] = {
		["Key"] = 112000,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {3},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {3},
				["Layer"] = {0,1},
				["RoomCount"] = {1,2}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {4},
				["Layer"] = {0,1},
				["RoomCount"] = {3,999}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {3},
				["Layer"] = {2,2},
				["RoomCount"] = {0,2}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {2},
				["Layer"] = {2,2},
				["RoomCount"] = {3,4}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {2},
				["Layer"] = {2,2},
				["RoomCount"] = {5,999}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {1},
				["Layer"] = {3,3},
				["RoomCount"] = {0,999}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {1},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {1},
				["Layer"] = {0,1},
				["RoomCount"] = {2,2}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {1},
				["Layer"] = {0,1},
				["RoomCount"] = {4,4}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {1},
				["Layer"] = {0,1},
				["RoomCount"] = {6,6}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {1},
				["Layer"] = {2,2},
				["RoomCount"] = {1,1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {1},
				["Layer"] = {2,2},
				["RoomCount"] = {3,3}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {1},
				["Layer"] = {2,2},
				["RoomCount"] = {5,999}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 10000,
				["ItemID"] = 1020002,
				["Count"] = {1},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 10000,
				["ItemID"] = 1020003,
				["Count"] = {1},
				["Layer"] = {0,1},
				["RoomCount"] = {3,3}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10000,
				["ItemID"] = 1020003,
				["Count"] = {1},
				["Layer"] = {0,1},
				["RoomCount"] = {5,5}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 10000,
				["ItemID"] = 1020003,
				["Count"] = {1},
				["Layer"] = {2,2},
				["RoomCount"] = {2,2}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 10000,
				["ItemID"] = 1020003,
				["Count"] = {1},
				["Layer"] = {2,2},
				["RoomCount"] = {4,4}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10000,
				["ItemID"] = 1020003,
				["Count"] = {1},
				["Layer"] = {3,3},
				["RoomCount"] = {3,3}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 13500,
				["SubAward"] = 910101,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 3750,
				["SubAward"] = 910102,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 1000,
				["SubAward"] = 910103,
				["Count"] = {1}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 167,
				["SubAward"] = 910104,
				["Count"] = {1}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 44,
				["SubAward"] = 910105,
				["Count"] = {1}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 9,
				["SubAward"] = 910106,
				["Count"] = {1},
				["Burn"] = {0,999},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 1,
				["SubAward"] = 910107,
				["Count"] = {1},
				["Burn"] = {0,999},
				["Layer"] = {2,3},
				["RoomCount"] = {0,999}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 10000,
				["ItemID"] = 1013024,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {0,1}
				},
				["Burn"] = {0,0},
				["Layer"] = {0,1},
				["RoomCount"] = {0,0}
			},
			[91] = {
				["Index"] = 91,
				["Weight"] = 0,
				["SubAward"] = 121011,
				["Count"] = {1}
			},
			[92] = {
				["Index"] = 92,
				["Weight"] = 0,
				["SubAward"] = 121012,
				["Count"] = {1}
			},
			[93] = {
				["Index"] = 93,
				["Weight"] = 0,
				["SubAward"] = 121013,
				["Count"] = {1}
			},
			[94] = {
				["Index"] = 94,
				["Weight"] = 0,
				["SubAward"] = 121014,
				["Count"] = {1}
			},
			[95] = {
				["Index"] = 95,
				["Weight"] = 0,
				["SubAward"] = 121015,
				["Count"] = {1}
			},
			[96] = {
				["Index"] = 96,
				["Weight"] = 0,
				["SubAward"] = 121016,
				["Count"] = {1}
			},
			[97] = {
				["Index"] = 97,
				["Weight"] = 0,
				["SubAward"] = 121017,
				["Count"] = {1}
			}
		}
	},
	[112001] = {
		["Key"] = 112001,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 1020000,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 1020002,
				["Count"] = {5},
				["Layer"] = {0,1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["ItemID"] = 1020002,
				["Count"] = {10},
				["Layer"] = {2,2}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10000,
				["ItemID"] = 1020001,
				["Count"] = {3},
				["Layer"] = {0,3}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 8000,
				["ItemID"] = 1020003,
				["Count"] = {1},
				["Layer"] = {0,3}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 6000,
				["SubAward"] = 910101,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 1667,
				["SubAward"] = 910102,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 444,
				["SubAward"] = 910103,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 74,
				["SubAward"] = 910104,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 20,
				["SubAward"] = 910105,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 4,
				["SubAward"] = 910106,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 1,
				["SubAward"] = 910107,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 7500,
				["SubAward"] = 910401,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 1400,
				["SubAward"] = 910402,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 350,
				["SubAward"] = 910403,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 170,
				["SubAward"] = 910404,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10,
				["SubAward"] = 910405,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 3,
				["SubAward"] = 910406,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["SubAward"] = 910407,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[91] = {
				["Index"] = 91,
				["Weight"] = 0,
				["SubAward"] = 121011,
				["Count"] = {1}
			},
			[92] = {
				["Index"] = 92,
				["Weight"] = 0,
				["SubAward"] = 121012,
				["Count"] = {1}
			},
			[93] = {
				["Index"] = 93,
				["Weight"] = 0,
				["SubAward"] = 121013,
				["Count"] = {1}
			},
			[94] = {
				["Index"] = 94,
				["Weight"] = 0,
				["SubAward"] = 121014,
				["Count"] = {1}
			},
			[95] = {
				["Index"] = 95,
				["Weight"] = 0,
				["SubAward"] = 121015,
				["Count"] = {1}
			},
			[96] = {
				["Index"] = 96,
				["Weight"] = 0,
				["SubAward"] = 121016,
				["Count"] = {1}
			},
			[97] = {
				["Index"] = 97,
				["Weight"] = 0,
				["SubAward"] = 121017,
				["Count"] = {1}
			}
		}
	},
	[121011] = {
		["Key"] = 121011,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910101,
				["Count"] = {1}
			}
		}
	},
	[121012] = {
		["Key"] = 121012,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910102,
				["Count"] = {1}
			}
		}
	},
	[121013] = {
		["Key"] = 121013,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910103,
				["Count"] = {1}
			}
		}
	},
	[121014] = {
		["Key"] = 121014,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910104,
				["Count"] = {1}
			}
		}
	},
	[121015] = {
		["Key"] = 121015,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910105,
				["Count"] = {1}
			}
		}
	},
	[121016] = {
		["Key"] = 121016,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910106,
				["Count"] = {1}
			}
		}
	},
	[121017] = {
		["Key"] = 121017,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910107,
				["Count"] = {1}
			}
		}
	},
	[121021] = {
		["Key"] = 121021,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910401,
				["Count"] = {1}
			}
		}
	},
	[121022] = {
		["Key"] = 121022,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910402,
				["Count"] = {1}
			}
		}
	},
	[121023] = {
		["Key"] = 121023,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910403,
				["Count"] = {1}
			}
		}
	},
	[121024] = {
		["Key"] = 121024,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910404,
				["Count"] = {1}
			}
		}
	},
	[121025] = {
		["Key"] = 121025,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910405,
				["Count"] = {1}
			}
		}
	},
	[121026] = {
		["Key"] = 121026,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910406,
				["Count"] = {1}
			}
		}
	},
	[121027] = {
		["Key"] = 121027,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 910407,
				["Count"] = {1}
			}
		}
	},
	[201001] = {
		["Key"] = 201001,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[2] = {
				["Index"] = 2,
				["Weight"] = 2000,
				["SubAward"] = 960102,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 4500,
				["SubAward"] = 960104,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 50,
				["SubAward"] = 960105,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 3400,
				["SubAward"] = 930204,
				["Count"] = {1},
				["SubCountRatio"] = {15}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 50,
				["SubAward"] = 930205,
				["Count"] = {1},
				["SubCountRatio"] = {15}
			}
		}
	},
	[201002] = {
		["Key"] = 201002,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[10] = {
				["Index"] = 10,
				["Weight"] = 10000,
				["SubAward"] = 960105,
				["Count"] = {1}
			}
		}
	},
	[201011] = {
		["Key"] = 201011,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 2500,
				["SubAward"] = 960102,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 285,
				["SubAward"] = 960104,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 5000,
				["SubAward"] = 201017,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["SubAward"] = 201018,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 1000,
				["SubAward"] = 201019,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["SubAward"] = 201014,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 15,
				["SubAward"] = 201015,
				["Count"] = {1}
			}
		}
	},
	[201012] = {
		["Key"] = 201012,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["SubAward"] = 201015,
				["Count"] = {1}
			}
		}
	},
	[201014] = {
		["Key"] = 201014,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3114001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3114002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3114003,
				["Count"] = {1}
			}
		}
	},
	[201015] = {
		["Key"] = 201015,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3115002,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3115003,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3115005,
				["Count"] = {1}
			}
		}
	},
	[201017] = {
		["Key"] = 201017,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 600,
				["ItemID"] = 4010001,
				["Count"] = {10}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 120,
				["ItemID"] = 4010011,
				["Count"] = {10}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 200,
				["ItemID"] = 4020001,
				["Count"] = {10}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 50,
				["ItemID"] = 4040001,
				["Count"] = {10}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 30,
				["ItemID"] = 4010002,
				["Count"] = {10}
			}
		}
	},
	[201018] = {
		["Key"] = 201018,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 5510101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 5510102,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 5510103,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["ItemID"] = 5510104,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 1000,
				["ItemID"] = 5510105,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 1000,
				["ItemID"] = 5510106,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 1000,
				["ItemID"] = 5510107,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 1000,
				["ItemID"] = 5510108,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 1000,
				["ItemID"] = 5510109,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 1000,
				["ItemID"] = 5510110,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 1000,
				["ItemID"] = 5510111,
				["Count"] = {1}
			}
		}
	},
	[201019] = {
		["Key"] = 201019,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 5510001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 5510002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 5510003,
				["Count"] = {1}
			}
		}
	},
	[202001] = {
		["Key"] = 202001,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 550,
				["ItemID"] = 4050101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 550,
				["ItemID"] = 4050102,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 550,
				["ItemID"] = 4050103,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 550,
				["ItemID"] = 4050104,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 550,
				["ItemID"] = 4050105,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 550,
				["ItemID"] = 4050106,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 280,
				["ItemID"] = 4050111,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 280,
				["ItemID"] = 4050112,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 280,
				["ItemID"] = 4050113,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 280,
				["ItemID"] = 4050114,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 280,
				["ItemID"] = 4050115,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 140,
				["ItemID"] = 4050121,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 140,
				["ItemID"] = 4050122,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 140,
				["ItemID"] = 4050123,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 140,
				["ItemID"] = 4050124,
				["Count"] = {1}
			}
		}
	},
	[202101] = {
		["Key"] = 202101,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 3000,
				["ItemID"] = 4050201,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 800,
				["ItemID"] = 4050211,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 800,
				["ItemID"] = 4050212,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 400,
				["ItemID"] = 4050221,
				["Count"] = {1}
			}
		}
	},
	[202201] = {
		["Key"] = 202201,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 4050301,
				["Count"] = {1}
			}
		}
	},
	[202202] = {
		["Key"] = 202202,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 4200,
				["ItemID"] = 4050321,
				["Count"] = {1}
			}
		}
	},
	[251001] = {
		["Key"] = 251001,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 201,
				["Count"] = {5}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["SubAward"] = 930102,
				["Count"] = {1},
				["SubCountRatio"] = {1,3}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["SubAward"] = 251991,
				["Count"] = {1}
			},
			[99] = {
				["Index"] = 99,
				["Weight"] = 10000,
				["SubAward"] = 202201,
				["Count"] = {1}
			}
		}
	},
	[251002] = {
		["Key"] = 251002,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10000,
				["ItemID"] = 201,
				["Count"] = {100}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10000,
				["ItemID"] = 212,
				["Count"] = {100}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10000,
				["SubAward"] = 930104,
				["Count"] = {1},
				["SubCountRatio"] = {3,7}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 18000,
				["SubAward"] = 920120,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {1,9999,-1500}
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 5000,
				["SubAward"] = 920140,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {3,9999,1000,25000}
				}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10000,
				["SubAward"] = 251991,
				["Count"] = {1},
				["SubCountRatio"] = {8,12},
				["Dungeon"] = {
					["main_rogue"] = {5,9999,50,1000}
				}
			},
			[99] = {
				["Index"] = 99,
				["Weight"] = 10000,
				["SubAward"] = 202202,
				["Count"] = {1}
			},
			[101] = {
				["Index"] = 101,
				["Weight"] = 500,
				["SubAward"] = 251992,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {5,9999,50,1000}
				},
				["BlackRecover"] = 0,
				["BlackCD"] = 600
			},
			[111] = {
				["Index"] = 111,
				["Weight"] = 10000,
				["SubAward"] = 251006,
				["Count"] = {1},
				["Burn"] = {2},
				["Layer"] = {3},
				["BlackRecover"] = 0,
				["BlackCD"] = 1800
			},
			[112] = {
				["Index"] = 112,
				["Weight"] = 10000,
				["SubAward"] = 251007,
				["Count"] = {1},
				["Burn"] = {8},
				["Layer"] = {3},
				["BlackRecover"] = 0,
				["BlackCD"] = 1800
			},
			[113] = {
				["Index"] = 113,
				["Weight"] = 10000,
				["SubAward"] = 251008,
				["Count"] = {1},
				["Burn"] = {15},
				["Layer"] = {3},
				["BlackRecover"] = 0,
				["BlackCD"] = 1800
			},
			[121] = {
				["Index"] = 121,
				["Weight"] = 2000,
				["ItemID"] = 5810102,
				["Count"] = {1},
				["BlackRecover"] = 11,
				["BlackDecrease"] = 800
			},
			[122] = {
				["Index"] = 122,
				["Weight"] = 8000,
				["ItemID"] = 5810103,
				["Count"] = {1},
				["BlackRecover"] = 11,
				["BlackDecrease"] = 800
			}
		}
	},
	[251006] = {
		["Key"] = 251006,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 800,
				["SubAward"] = 251801,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {1,1}
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 800,
				["SubAward"] = 251802,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,2}
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 800,
				["SubAward"] = 251803,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {3,3}
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1200,
				["SubAward"] = 251801,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {4,4}
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 1200,
				["SubAward"] = 251802,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {5,5}
				}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 1200,
				["SubAward"] = 251803,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {6,6}
				}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 2000,
				["SubAward"] = 251801,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {7,7}
				}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 2000,
				["SubAward"] = 251802,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {8,8}
				}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 2000,
				["SubAward"] = 251803,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {9,9}
				}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 2000,
				["SubAward"] = 251809,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {10,10}
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 600,
				["SubAward"] = 251811,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {11,11}
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 600,
				["SubAward"] = 251812,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {12,12}
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 600,
				["SubAward"] = 251813,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {13,13}
				}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 2500,
				["SubAward"] = 251809,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {14,14}
				}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 600,
				["SubAward"] = 251819,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {15,15}
				}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 1000,
				["SubAward"] = 251811,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {16,16}
				}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 1000,
				["SubAward"] = 251812,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {17,17}
				}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1000,
				["SubAward"] = 251813,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {18,18}
				}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 3000,
				["SubAward"] = 251809,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {19,19}
				}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 1000,
				["SubAward"] = 251819,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {20,20}
				}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 1200,
				["SubAward"] = 251811,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {21,21}
				}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 1200,
				["SubAward"] = 251812,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {22,22}
				}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 1200,
				["SubAward"] = 251813,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {23,23}
				}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 3600,
				["SubAward"] = 251809,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {24,24}
				}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 1200,
				["SubAward"] = 251819,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {25,25}
				}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 1400,
				["SubAward"] = 251811,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {26,26}
				}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 1400,
				["SubAward"] = 251812,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {27,27}
				}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 1400,
				["SubAward"] = 251813,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {28,28}
				}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 4200,
				["SubAward"] = 251809,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {29,29}
				}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 1400,
				["SubAward"] = 251819,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {30,30}
				}
			}
		}
	},
	[251007] = {
		["Key"] = 251007,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 400,
				["SubAward"] = 251821,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {1,1}
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 400,
				["SubAward"] = 251822,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,2}
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 400,
				["SubAward"] = 251823,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {3,3}
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 600,
				["SubAward"] = 251821,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {4,4}
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 600,
				["SubAward"] = 251822,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {5,5}
				}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 600,
				["SubAward"] = 251823,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {6,6}
				}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 800,
				["SubAward"] = 251821,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {7,7}
				}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 800,
				["SubAward"] = 251822,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {8,8}
				}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 800,
				["SubAward"] = 251823,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {9,9}
				}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 800,
				["SubAward"] = 251829,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {10,10}
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 300,
				["SubAward"] = 251831,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {11,11}
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 300,
				["SubAward"] = 251832,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {12,12}
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 300,
				["SubAward"] = 251833,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {13,13}
				}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 1000,
				["SubAward"] = 251829,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {14,14}
				}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 300,
				["SubAward"] = 251839,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {15,15}
				}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 400,
				["SubAward"] = 251831,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {16,16}
				}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 400,
				["SubAward"] = 251832,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {17,17}
				}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 400,
				["SubAward"] = 251833,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {18,18}
				}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1200,
				["SubAward"] = 251829,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {19,19}
				}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 400,
				["SubAward"] = 251839,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {20,20}
				}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 500,
				["SubAward"] = 251831,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {21,21}
				}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 500,
				["SubAward"] = 251832,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {22,22}
				}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 500,
				["SubAward"] = 251833,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {23,23}
				}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 1400,
				["SubAward"] = 251829,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {24,24}
				}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 500,
				["SubAward"] = 251839,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {25,25}
				}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 600,
				["SubAward"] = 251831,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {26,26}
				}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 600,
				["SubAward"] = 251832,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {27,27}
				}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 600,
				["SubAward"] = 251833,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {28,28}
				}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 1600,
				["SubAward"] = 251829,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {29,29}
				}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 600,
				["SubAward"] = 251839,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {30,30}
				}
			}
		}
	},
	[251008] = {
		["Key"] = 251008,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 300,
				["SubAward"] = 251841,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {1,1}
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 300,
				["SubAward"] = 251842,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,2}
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 300,
				["SubAward"] = 251843,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {3,3}
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 400,
				["SubAward"] = 251841,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {4,4}
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 400,
				["SubAward"] = 251842,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {5,5}
				}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 400,
				["SubAward"] = 251843,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {6,6}
				}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 600,
				["SubAward"] = 251841,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {7,7}
				}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 600,
				["SubAward"] = 251842,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {8,8}
				}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 600,
				["SubAward"] = 251843,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {9,9}
				}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 600,
				["SubAward"] = 251849,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {10,10}
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["SubAward"] = 251851,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {11,11}
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["SubAward"] = 251852,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {12,12}
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 500,
				["SubAward"] = 251853,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {13,13}
				}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 1200,
				["SubAward"] = 251849,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {14,14}
				}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 500,
				["SubAward"] = 251859,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {15,15}
				}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 600,
				["SubAward"] = 251851,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {16,16}
				}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 600,
				["SubAward"] = 251852,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {17,17}
				}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 600,
				["SubAward"] = 251853,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {18,18}
				}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1500,
				["SubAward"] = 251849,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {19,19}
				}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 600,
				["SubAward"] = 251859,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {20,20}
				}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 800,
				["SubAward"] = 251851,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {21,21}
				}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 800,
				["SubAward"] = 251852,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {22,22}
				}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 800,
				["SubAward"] = 251853,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {23,23}
				}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 1800,
				["SubAward"] = 251849,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {24,24}
				}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 800,
				["SubAward"] = 251859,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {25,25}
				}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 1000,
				["SubAward"] = 251851,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {26,26}
				}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 1000,
				["SubAward"] = 251852,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {27,27}
				}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 1000,
				["SubAward"] = 251853,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {28,28}
				}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 2000,
				["SubAward"] = 251849,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {29,29}
				}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 1000,
				["SubAward"] = 251859,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {30,30}
				}
			}
		}
	},
	[251101] = {
		["Key"] = 251101,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 2000,
				["SubAward"] = 930102,
				["Count"] = {1},
				["SubCountRatio"] = {10,20}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["SubAward"] = 930104,
				["Count"] = {1},
				["SubCountRatio"] = {8,12}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 200,
				["SubAward"] = 930105,
				["Count"] = {1},
				["SubCountRatio"] = {6,10},
				["Dungeon"] = {
					["main_rogue"] = {1,9999,10}
				},
				["BlackRecover"] = 0,
				["BlackCD"] = 1800
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["SubAward"] = 930304,
				["Count"] = {1},
				["SubCountRatio"] = {6,10}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["SubAward"] = 930305,
				["Count"] = {1},
				["SubCountRatio"] = {4,8},
				["Dungeon"] = {
					["main_rogue"] = {1,9999,10}
				},
				["BlackRecover"] = 0,
				["BlackCD"] = 1800
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["SubAward"] = 930306,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {20}
				},
				["BlackRecover"] = 0,
				["BlackCD"] = 1800
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 1600,
				["SubAward"] = 920120,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 1000,
				["SubAward"] = 920140,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 1000,
				["SubAward"] = 251992,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {5,9999,100}
				},
				["BlackRecover"] = 0,
				["BlackCD"] = 1800
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 3000,
				["SubAward"] = 251991,
				["Count"] = {1},
				["SubCountRatio"] = {10,20}
			}
		}
	},
	[251801] = {
		["Key"] = 251801,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3014101,
				["Count"] = {40}
			}
		}
	},
	[251802] = {
		["Key"] = 251802,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3014201,
				["Count"] = {40}
			}
		}
	},
	[251803] = {
		["Key"] = 251803,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3014301,
				["Count"] = {40}
			}
		}
	},
	[251809] = {
		["Key"] = 251809,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3014101,
				["Count"] = {40}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3014201,
				["Count"] = {40}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3014301,
				["Count"] = {40}
			}
		}
	},
	[251811] = {
		["Key"] = 251811,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3015101,
				["Count"] = {20}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3015103,
				["Count"] = {20}
			}
		}
	},
	[251812] = {
		["Key"] = 251812,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3015201,
				["Count"] = {20}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3015203,
				["Count"] = {20}
			}
		}
	},
	[251813] = {
		["Key"] = 251813,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3015301,
				["Count"] = {20}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3015303,
				["Count"] = {20}
			}
		}
	},
	[251819] = {
		["Key"] = 251819,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3015101,
				["Count"] = {20}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3015103,
				["Count"] = {20}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3015201,
				["Count"] = {20}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["ItemID"] = 3015203,
				["Count"] = {20}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 1000,
				["ItemID"] = 3015301,
				["Count"] = {20}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 1000,
				["ItemID"] = 3015303,
				["Count"] = {20}
			}
		}
	},
	[251821] = {
		["Key"] = 251821,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3024101,
				["Count"] = {10}
			}
		}
	},
	[251822] = {
		["Key"] = 251822,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3024201,
				["Count"] = {10}
			}
		}
	},
	[251823] = {
		["Key"] = 251823,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3024301,
				["Count"] = {10}
			}
		}
	},
	[251829] = {
		["Key"] = 251829,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3024101,
				["Count"] = {10}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3024201,
				["Count"] = {10}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3024301,
				["Count"] = {10}
			}
		}
	},
	[251831] = {
		["Key"] = 251831,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3025101,
				["Count"] = {5}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3025103,
				["Count"] = {5}
			}
		}
	},
	[251832] = {
		["Key"] = 251832,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3025201,
				["Count"] = {5}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3025203,
				["Count"] = {5}
			}
		}
	},
	[251833] = {
		["Key"] = 251833,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3025301,
				["Count"] = {5}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3025303,
				["Count"] = {5}
			}
		}
	},
	[251839] = {
		["Key"] = 251839,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3025101,
				["Count"] = {5}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3025103,
				["Count"] = {5}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3025201,
				["Count"] = {5}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["ItemID"] = 3025203,
				["Count"] = {5}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 1000,
				["ItemID"] = 3025301,
				["Count"] = {5}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 1000,
				["ItemID"] = 3025303,
				["Count"] = {5}
			}
		}
	},
	[251841] = {
		["Key"] = 251841,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030401,
				["Count"] = {30}
			}
		}
	},
	[251842] = {
		["Key"] = 251842,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030402,
				["Count"] = {30}
			}
		}
	},
	[251843] = {
		["Key"] = 251843,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030403,
				["Count"] = {30}
			}
		}
	},
	[251849] = {
		["Key"] = 251849,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030401,
				["Count"] = {30}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3030402,
				["Count"] = {30}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3030403,
				["Count"] = {30}
			}
		}
	},
	[251851] = {
		["Key"] = 251851,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030501,
				["Count"] = {15}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3030504,
				["Count"] = {15}
			}
		}
	},
	[251852] = {
		["Key"] = 251852,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030502,
				["Count"] = {15}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3030505,
				["Count"] = {15}
			}
		}
	},
	[251853] = {
		["Key"] = 251853,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030503,
				["Count"] = {15}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3030506,
				["Count"] = {15}
			}
		}
	},
	[251859] = {
		["Key"] = 251859,
		["RandomType"] = 0,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["ItemID"] = 3030501,
				["Count"] = {15}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["ItemID"] = 3030502,
				["Count"] = {15}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["ItemID"] = 3030503,
				["Count"] = {15}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["ItemID"] = 3030504,
				["Count"] = {15}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 1000,
				["ItemID"] = 3030505,
				["Count"] = {15}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 1000,
				["ItemID"] = 3030506,
				["Count"] = {15}
			}
		}
	},
	[251991] = {
		["Key"] = 251991,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 6400,
				["ItemID"] = 4010001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1200,
				["ItemID"] = 4010011,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 2000,
				["ItemID"] = 4020001,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 400,
				["ItemID"] = 4040001,
				["Count"] = {1}
			}
		}
	},
	[251992] = {
		["Key"] = 251992,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["SubAward"] = 921251,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {5}
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["SubAward"] = 921151,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {10}
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["SubAward"] = 921351,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {20}
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 1000,
				["SubAward"] = 921751,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {30}
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 1000,
				["SubAward"] = 921451,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {40}
				}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 1000,
				["SubAward"] = 921551,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {50}
				}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 1000,
				["SubAward"] = 921651,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {60}
				}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 1000,
				["SubAward"] = 921851,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {70}
				}
			}
		}
	},
	[910002] = {
		["Key"] = 910002,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 400,
				["ItemID"] = 1310001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 400,
				["ItemID"] = 1310002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 400,
				["ItemID"] = 1310003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 400,
				["ItemID"] = 1310004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 400,
				["ItemID"] = 1310005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 400,
				["ItemID"] = 1310006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 400,
				["ItemID"] = 1310007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 400,
				["ItemID"] = 1310008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 400,
				["ItemID"] = 1310009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 400,
				["ItemID"] = 1310010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 400,
				["ItemID"] = 1310011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 400,
				["ItemID"] = 1310012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 400,
				["ItemID"] = 1310013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 400,
				["ItemID"] = 1310014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 400,
				["ItemID"] = 1310015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 400,
				["ItemID"] = 1310016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1310101,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1310102,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1310103,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1310104,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1310105,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1310106,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1310107,
				["Count"] = {1}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 100,
				["ItemID"] = 1310108,
				["Count"] = {1}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 100,
				["ItemID"] = 1310109,
				["Count"] = {1}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 100,
				["ItemID"] = 1310110,
				["Count"] = {1}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 100,
				["ItemID"] = 1310111,
				["Count"] = {1}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 100,
				["ItemID"] = 1310112,
				["Count"] = {1}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 100,
				["ItemID"] = 1310113,
				["Count"] = {1}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 100,
				["ItemID"] = 1310114,
				["Count"] = {1}
			},
			[31] = {
				["Index"] = 31,
				["Weight"] = 100,
				["ItemID"] = 1310115,
				["Count"] = {1}
			},
			[32] = {
				["Index"] = 32,
				["Weight"] = 100,
				["ItemID"] = 1310116,
				["Count"] = {1}
			}
		}
	},
	[910003] = {
		["Key"] = 910003,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 400,
				["ItemID"] = 1310101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 400,
				["ItemID"] = 1310102,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 400,
				["ItemID"] = 1310103,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 400,
				["ItemID"] = 1310104,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 400,
				["ItemID"] = 1310105,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 400,
				["ItemID"] = 1310106,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 400,
				["ItemID"] = 1310107,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 400,
				["ItemID"] = 1310108,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 400,
				["ItemID"] = 1310109,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 400,
				["ItemID"] = 1310110,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 400,
				["ItemID"] = 1310111,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 400,
				["ItemID"] = 1310112,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 400,
				["ItemID"] = 1310113,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 400,
				["ItemID"] = 1310114,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 400,
				["ItemID"] = 1310115,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 400,
				["ItemID"] = 1310116,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1310201,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1310202,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1310203,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1310204,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1310205,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1310206,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1310207,
				["Count"] = {1}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 100,
				["ItemID"] = 1310208,
				["Count"] = {1}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 100,
				["ItemID"] = 1310209,
				["Count"] = {1}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 100,
				["ItemID"] = 1310210,
				["Count"] = {1}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 100,
				["ItemID"] = 1310211,
				["Count"] = {1}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 100,
				["ItemID"] = 1310212,
				["Count"] = {1}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 100,
				["ItemID"] = 1310213,
				["Count"] = {1}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 100,
				["ItemID"] = 1310214,
				["Count"] = {1}
			},
			[31] = {
				["Index"] = 31,
				["Weight"] = 100,
				["ItemID"] = 1310215,
				["Count"] = {1}
			},
			[32] = {
				["Index"] = 32,
				["Weight"] = 100,
				["ItemID"] = 1310216,
				["Count"] = {1}
			}
		}
	},
	[910004] = {
		["Key"] = 910004,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 400,
				["ItemID"] = 1310301,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 400,
				["ItemID"] = 1310302,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 400,
				["ItemID"] = 1310303,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 400,
				["ItemID"] = 1310304,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 400,
				["ItemID"] = 1310305,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 400,
				["ItemID"] = 1310306,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 400,
				["ItemID"] = 1310307,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 400,
				["ItemID"] = 1310308,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 400,
				["ItemID"] = 1310309,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 400,
				["ItemID"] = 1310310,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 400,
				["ItemID"] = 1310311,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 400,
				["ItemID"] = 1310312,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 400,
				["ItemID"] = 1310313,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 400,
				["ItemID"] = 1310314,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 400,
				["ItemID"] = 1310315,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 400,
				["ItemID"] = 1310316,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1310401,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1310402,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1310403,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1310404,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1310405,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1310406,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1310407,
				["Count"] = {1}
			},
			[24] = {
				["Index"] = 24,
				["Weight"] = 100,
				["ItemID"] = 1310408,
				["Count"] = {1}
			},
			[25] = {
				["Index"] = 25,
				["Weight"] = 100,
				["ItemID"] = 1310409,
				["Count"] = {1}
			},
			[26] = {
				["Index"] = 26,
				["Weight"] = 100,
				["ItemID"] = 1310410,
				["Count"] = {1}
			},
			[27] = {
				["Index"] = 27,
				["Weight"] = 100,
				["ItemID"] = 1310411,
				["Count"] = {1}
			},
			[28] = {
				["Index"] = 28,
				["Weight"] = 100,
				["ItemID"] = 1310412,
				["Count"] = {1}
			},
			[29] = {
				["Index"] = 29,
				["Weight"] = 100,
				["ItemID"] = 1310413,
				["Count"] = {1}
			},
			[30] = {
				["Index"] = 30,
				["Weight"] = 100,
				["ItemID"] = 1310414,
				["Count"] = {1}
			},
			[31] = {
				["Index"] = 31,
				["Weight"] = 100,
				["ItemID"] = 1310415,
				["Count"] = {1}
			},
			[32] = {
				["Index"] = 32,
				["Weight"] = 100,
				["ItemID"] = 1310416,
				["Count"] = {1}
			}
		}
	},
	[910101] = {
		["Key"] = 910101,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1011001,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1011002,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1011003,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1011004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1011005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1011006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1011007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1011008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1011009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1011010,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1011011,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1011012,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1011013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1011014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1011015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1011016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1011017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1,
				["ItemID"] = 1011018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["ItemID"] = 1011019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1011020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1011021,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1011022,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1011023,
				["Count"] = {1}
			}
		}
	},
	[910102] = {
		["Key"] = 910102,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1012001,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1012002,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1012003,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1012004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1012005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1012006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1012007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1012008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1012009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1012010,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1012011,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1012012,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1012013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1012014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1012015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1012016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1012017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1,
				["ItemID"] = 1012018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["ItemID"] = 1012019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1012020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1012021,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1012022,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1012023,
				["Count"] = {1}
			}
		}
	},
	[910103] = {
		["Key"] = 910103,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1013001,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1013002,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1013003,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1013004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1013005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1013006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1013007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1013008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1013009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1013010,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1013011,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1013012,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1013013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1013014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1013015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1013016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1013017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1,
				["ItemID"] = 1013018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["ItemID"] = 1013019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1013020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1013021,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1013022,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1013023,
				["Count"] = {1}
			}
		}
	},
	[910104] = {
		["Key"] = 910104,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1014001,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1014002,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1014003,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1014004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1014005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1014006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1014007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1014008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1014009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1014010,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1014011,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1014012,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1014013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1014014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1014015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1014016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1014017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1,
				["ItemID"] = 1014018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["ItemID"] = 1014019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1014020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1014021,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1014022,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1014023,
				["Count"] = {1}
			}
		}
	},
	[910105] = {
		["Key"] = 910105,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1015001,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1015002,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1015003,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1015004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1015005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1015006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1015007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1015008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1015009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1015010,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1015011,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1015012,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1015013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1015014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1015015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1015016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1015017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1,
				["ItemID"] = 1015018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["ItemID"] = 1015019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1015020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1015021,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1015022,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1015023,
				["Count"] = {1}
			}
		}
	},
	[910106] = {
		["Key"] = 910106,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1016001,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1016002,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1016003,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1016004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1016005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1016006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1016007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1016008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1016009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1016010,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1016011,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1016012,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1016013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1016014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1016015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1016016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1016017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1,
				["ItemID"] = 1016018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["ItemID"] = 1016019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1016020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1016021,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1016022,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1016023,
				["Count"] = {1}
			}
		}
	},
	[910107] = {
		["Key"] = 910107,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1017001,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1017002,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1017003,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1017004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1017005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1017006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1017007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1017008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1017009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1017010,
				["Count"] = {1},
				["UseHero"] = {
					[12101] = 1,
					[14101] = 1,
					[15101] = 1,
					[15102] = 1,
					[15103] = 1,
					[16101] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1017011,
				["Count"] = {1},
				["UseHero"] = {
					[12201] = 1,
					[14201] = 1,
					[15201] = 1,
					[15202] = 1,
					[15203] = 1,
					[16201] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1017012,
				["Count"] = {1},
				["UseHero"] = {
					[12301] = 1,
					[14301] = 1,
					[15301] = 1,
					[15302] = 1,
					[15303] = 1,
					[16301] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1017013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1017014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1017015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1017016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1017017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 1,
				["ItemID"] = 1017018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 1,
				["ItemID"] = 1017019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1017020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1017021,
				["Count"] = {1}
			},
			[22] = {
				["Index"] = 22,
				["Weight"] = 100,
				["ItemID"] = 1017022,
				["Count"] = {1}
			},
			[23] = {
				["Index"] = 23,
				["Weight"] = 100,
				["ItemID"] = 1017023,
				["Count"] = {1}
			}
		}
	},
	[910110] = {
		["Key"] = 910110,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910101,
				["Count"] = {1}
			}
		}
	},
	[910111] = {
		["Key"] = 910111,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 96,
				["SubAward"] = 910102,
				["Count"] = {1}
			}
		}
	},
	[910112] = {
		["Key"] = 910112,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910103,
				["ItemID"] = 1013001,
				["Count"] = {1}
			}
		}
	},
	[910113] = {
		["Key"] = 910113,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910104,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {1,1}
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 16,
				["SubAward"] = 910104,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 8,
				["SubAward"] = 910105,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 4,
				["SubAward"] = 910106,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 2,
				["SubAward"] = 910107,
				["Count"] = {1},
				["Dungeon"] = {
					["main_rogue"] = {2,999}
				}
			}
		}
	},
	[910114] = {
		["Key"] = 910114,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 8,
				["SubAward"] = 910105,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 4,
				["SubAward"] = 910106,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 2,
				["SubAward"] = 910107,
				["Count"] = {1}
			}
		}
	},
	[910120] = {
		["Key"] = 910120,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 8,
				["SubAward"] = 910401,
				["Count"] = {1}
			}
		}
	},
	[910121] = {
		["Key"] = 910121,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 32,
				["SubAward"] = 910402,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 16,
				["SubAward"] = 910403,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 8,
				["SubAward"] = 910404,
				["Count"] = {1}
			}
		}
	},
	[910122] = {
		["Key"] = 910122,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 4,
				["SubAward"] = 910405,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 2,
				["SubAward"] = 910406,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1,
				["SubAward"] = 910407,
				["Count"] = {1}
			}
		}
	},
	[910200] = {
		["Key"] = 910200,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910201,
				["Count"] = {1},
				["UseHero"] = {
					[14101] = 1,
					[12101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910205,
				["Count"] = {1},
				["UseHero"] = {
					[14201] = 1,
					[12201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910209,
				["Count"] = {1},
				["UseHero"] = {
					[14301] = 1,
					[12301] = 1
				}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["SubAward"] = 910213,
				["Count"] = {1},
				["UseHero"] = {
					[15101] = 1
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["SubAward"] = 910217,
				["Count"] = {1},
				["UseHero"] = {
					[15102] = 1
				}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["SubAward"] = 910221,
				["Count"] = {1},
				["UseHero"] = {
					[15103] = 1
				}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["SubAward"] = 910225,
				["Count"] = {1},
				["UseHero"] = {
					[15201] = 1
				}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["SubAward"] = 910229,
				["Count"] = {1},
				["UseHero"] = {
					[15202] = 1
				}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["SubAward"] = 910233,
				["Count"] = {1},
				["UseHero"] = {
					[15203] = 1
				}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["SubAward"] = 910237,
				["Count"] = {1},
				["UseHero"] = {
					[15301] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["SubAward"] = 910241,
				["Count"] = {1},
				["UseHero"] = {
					[15302] = 1
				}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["SubAward"] = 910245,
				["Count"] = {1},
				["UseHero"] = {
					[15303] = 1
				}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["SubAward"] = 910249,
				["Count"] = {1},
				["UseHero"] = {
					[16101] = 1
				}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["SubAward"] = 910253,
				["Count"] = {1},
				["UseHero"] = {
					[16201] = 1
				}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["SubAward"] = 910257,
				["Count"] = {1},
				["UseHero"] = {
					[16301] = 1
				}
			}
		}
	},
	[910201] = {
		["Key"] = 910201,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910202,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910203,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910204,
				["Count"] = {1}
			}
		}
	},
	[910202] = {
		["Key"] = 910202,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110040,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110041,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110042,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110043,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110044,
				["Count"] = {1}
			}
		}
	},
	[910203] = {
		["Key"] = 910203,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110050,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110051,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110052,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110053,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110054,
				["Count"] = {1}
			}
		}
	},
	[910204] = {
		["Key"] = 910204,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110060,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110061,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110062,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110063,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110064,
				["Count"] = {1}
			}
		}
	},
	[910205] = {
		["Key"] = 910205,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910206,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910207,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910208,
				["Count"] = {1}
			}
		}
	},
	[910206] = {
		["Key"] = 910206,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110010,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110011,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110012,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110013,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110014,
				["Count"] = {1}
			}
		}
	},
	[910207] = {
		["Key"] = 910207,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110020,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110021,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110022,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110023,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110024,
				["Count"] = {1}
			}
		}
	},
	[910208] = {
		["Key"] = 910208,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110030,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110031,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110032,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110033,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110034,
				["Count"] = {1}
			}
		}
	},
	[910209] = {
		["Key"] = 910209,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910210,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910211,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910212,
				["Count"] = {1}
			}
		}
	},
	[910210] = {
		["Key"] = 910210,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910211] = {
		["Key"] = 910211,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110080,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110081,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110082,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110083,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110084,
				["Count"] = {1}
			}
		}
	},
	[910212] = {
		["Key"] = 910212,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110090,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110091,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110092,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110093,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110094,
				["Count"] = {1}
			}
		}
	},
	[910213] = {
		["Key"] = 910213,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910214,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910215,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910216,
				["Count"] = {1}
			}
		}
	},
	[910214] = {
		["Key"] = 910214,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110190,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110191,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110192,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110193,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110194,
				["Count"] = {1}
			}
		}
	},
	[910215] = {
		["Key"] = 910215,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110200,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110201,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110202,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110203,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110204,
				["Count"] = {1}
			}
		}
	},
	[910216] = {
		["Key"] = 910216,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110210,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110211,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110212,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110213,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110214,
				["Count"] = {1}
			}
		}
	},
	[910217] = {
		["Key"] = 910217,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910218,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910219,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910220,
				["Count"] = {1}
			}
		}
	},
	[910218] = {
		["Key"] = 910218,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910219] = {
		["Key"] = 910219,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110080,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110081,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110082,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110083,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110084,
				["Count"] = {1}
			}
		}
	},
	[910220] = {
		["Key"] = 910220,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110090,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110091,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110092,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110093,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110094,
				["Count"] = {1}
			}
		}
	},
	[910221] = {
		["Key"] = 910221,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910222,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910223,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910224,
				["Count"] = {1}
			}
		}
	},
	[910222] = {
		["Key"] = 910222,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110100,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110101,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110102,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110103,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110104,
				["Count"] = {1}
			}
		}
	},
	[910223] = {
		["Key"] = 910223,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110110,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110111,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110112,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110113,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110114,
				["Count"] = {1}
			}
		}
	},
	[910224] = {
		["Key"] = 910224,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110120,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110121,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110122,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110123,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110124,
				["Count"] = {1}
			}
		}
	},
	[910225] = {
		["Key"] = 910225,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910226,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910227,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910228,
				["Count"] = {1}
			}
		}
	},
	[910226] = {
		["Key"] = 910226,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110250,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110251,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110252,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110253,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110254,
				["Count"] = {1}
			}
		}
	},
	[910227] = {
		["Key"] = 910227,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110260,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110261,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110262,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110263,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110264,
				["Count"] = {1}
			}
		}
	},
	[910228] = {
		["Key"] = 910228,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110270,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110271,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110272,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110273,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110274,
				["Count"] = {1}
			}
		}
	},
	[910229] = {
		["Key"] = 910229,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910230,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910231,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910232,
				["Count"] = {1}
			}
		}
	},
	[910230] = {
		["Key"] = 910230,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910231] = {
		["Key"] = 910231,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110080,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110081,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110082,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110083,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110084,
				["Count"] = {1}
			}
		}
	},
	[910232] = {
		["Key"] = 910232,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110090,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110091,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110092,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110093,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110094,
				["Count"] = {1}
			}
		}
	},
	[910233] = {
		["Key"] = 910233,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910234,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910235,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910236,
				["Count"] = {1}
			}
		}
	},
	[910234] = {
		["Key"] = 910234,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110130,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110131,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110132,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110133,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110134,
				["Count"] = {1}
			}
		}
	},
	[910235] = {
		["Key"] = 910235,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110140,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110141,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110142,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110143,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110144,
				["Count"] = {1}
			}
		}
	},
	[910236] = {
		["Key"] = 910236,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110150,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110151,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110152,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110153,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110154,
				["Count"] = {1}
			}
		}
	},
	[910237] = {
		["Key"] = 910237,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910238,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910239,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910240,
				["Count"] = {1}
			}
		}
	},
	[910238] = {
		["Key"] = 910238,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110300,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110301,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110302,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110303,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110304,
				["Count"] = {1}
			}
		}
	},
	[910239] = {
		["Key"] = 910239,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110310,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110311,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110312,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110313,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110314,
				["Count"] = {1}
			}
		}
	},
	[910240] = {
		["Key"] = 910240,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110320,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110321,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110322,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110323,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110324,
				["Count"] = {1}
			}
		}
	},
	[910241] = {
		["Key"] = 910241,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910242,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910243,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910244,
				["Count"] = {1}
			}
		}
	},
	[910242] = {
		["Key"] = 910242,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910243] = {
		["Key"] = 910243,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110080,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110081,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110082,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110083,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110084,
				["Count"] = {1}
			}
		}
	},
	[910244] = {
		["Key"] = 910244,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110090,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110091,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110092,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110093,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110094,
				["Count"] = {1}
			}
		}
	},
	[910245] = {
		["Key"] = 910245,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910246,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910247,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910248,
				["Count"] = {1}
			}
		}
	},
	[910246] = {
		["Key"] = 910246,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110160,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110161,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110162,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110163,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110164,
				["Count"] = {1}
			}
		}
	},
	[910247] = {
		["Key"] = 910247,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110170,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110171,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110172,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110173,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110174,
				["Count"] = {1}
			}
		}
	},
	[910248] = {
		["Key"] = 910248,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110180,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110181,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110182,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110183,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110184,
				["Count"] = {1}
			}
		}
	},
	[910249] = {
		["Key"] = 910249,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910250,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910251,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910252,
				["Count"] = {1}
			}
		}
	},
	[910250] = {
		["Key"] = 910250,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910251] = {
		["Key"] = 910251,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910252] = {
		["Key"] = 910252,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910253] = {
		["Key"] = 910253,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910254,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910255,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910256,
				["Count"] = {1}
			}
		}
	},
	[910254] = {
		["Key"] = 910254,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910255] = {
		["Key"] = 910255,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910256] = {
		["Key"] = 910256,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910257] = {
		["Key"] = 910257,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["SubAward"] = 910258,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["SubAward"] = 910259,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["SubAward"] = 910260,
				["Count"] = {1}
			}
		}
	},
	[910258] = {
		["Key"] = 910258,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910259] = {
		["Key"] = 910259,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910260] = {
		["Key"] = 910260,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1110070,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1110071,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1110072,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1110073,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1110074,
				["Count"] = {1}
			}
		}
	},
	[910401] = {
		["Key"] = 910401,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1211001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1211002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1211003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1211004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1211005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1211006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1211007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1211008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1211009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1211010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1211011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1211012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1211013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1211014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1211015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1211016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1211017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1211018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1211019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1211020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1211021,
				["Count"] = {1}
			}
		}
	},
	[910402] = {
		["Key"] = 910402,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 10,
				["ItemID"] = 1212001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 10,
				["ItemID"] = 1212002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 10,
				["ItemID"] = 1212003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 10,
				["ItemID"] = 1212004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 10,
				["ItemID"] = 1212005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 10,
				["ItemID"] = 1212006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 10,
				["ItemID"] = 1212007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 10,
				["ItemID"] = 1212008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 10,
				["ItemID"] = 1212009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 10,
				["ItemID"] = 1212010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 10,
				["ItemID"] = 1212011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 10,
				["ItemID"] = 1212012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 10,
				["ItemID"] = 1212013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 10,
				["ItemID"] = 1212014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 10,
				["ItemID"] = 1212015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 10,
				["ItemID"] = 1212016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 10,
				["ItemID"] = 1212017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 10,
				["ItemID"] = 1212018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 10,
				["ItemID"] = 1212019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 10,
				["ItemID"] = 1212020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 10,
				["ItemID"] = 1212021,
				["Count"] = {1}
			}
		}
	},
	[910403] = {
		["Key"] = 910403,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1213001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1213002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1213003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1213004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1213005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1213006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1213007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1213008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1213009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1213010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1213011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1213012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1213013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1213014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1213015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1213016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1213017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1213018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1213019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1213020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1213021,
				["Count"] = {1}
			}
		}
	},
	[910404] = {
		["Key"] = 910404,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1214001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1214002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1214003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1214004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1214005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1214006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1214007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1214008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1214009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1214010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1214011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1214012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1214013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1214014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1214015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1214016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1214017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1214018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1214019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1214020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1214021,
				["Count"] = {1}
			}
		}
	},
	[910405] = {
		["Key"] = 910405,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1215001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1215002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1215003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1215004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1215005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1215006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1215007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1215008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1215009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1215010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1215011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1215012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1215013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1215014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1215015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1215016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1215017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1215018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1215019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1215020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1215021,
				["Count"] = {1}
			}
		}
	},
	[910406] = {
		["Key"] = 910406,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1216001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1216002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1216003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1216004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1216005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1216006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1216007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1216008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1216009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1216010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1216011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1216012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1216013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1216014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1216015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1216016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1216017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1216018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1216019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1216020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1216021,
				["Count"] = {1}
			}
		}
	},
	[910407] = {
		["Key"] = 910407,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 1217001,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 1217002,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 1217003,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 1217004,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 1217005,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 1217006,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 1217007,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 1217008,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 1217009,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 1217010,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 1217011,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 1217012,
				["Count"] = {1}
			},
			[13] = {
				["Index"] = 13,
				["Weight"] = 100,
				["ItemID"] = 1217013,
				["Count"] = {1}
			},
			[14] = {
				["Index"] = 14,
				["Weight"] = 100,
				["ItemID"] = 1217014,
				["Count"] = {1}
			},
			[15] = {
				["Index"] = 15,
				["Weight"] = 100,
				["ItemID"] = 1217015,
				["Count"] = {1}
			},
			[16] = {
				["Index"] = 16,
				["Weight"] = 100,
				["ItemID"] = 1217016,
				["Count"] = {1}
			},
			[17] = {
				["Index"] = 17,
				["Weight"] = 100,
				["ItemID"] = 1217017,
				["Count"] = {1}
			},
			[18] = {
				["Index"] = 18,
				["Weight"] = 100,
				["ItemID"] = 1217018,
				["Count"] = {1}
			},
			[19] = {
				["Index"] = 19,
				["Weight"] = 100,
				["ItemID"] = 1217019,
				["Count"] = {1}
			},
			[20] = {
				["Index"] = 20,
				["Weight"] = 100,
				["ItemID"] = 1217020,
				["Count"] = {1}
			},
			[21] = {
				["Index"] = 21,
				["Weight"] = 100,
				["ItemID"] = 1217021,
				["Count"] = {1}
			}
		}
	},
	[920120] = {
		["Key"] = 920120,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2012011,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2012012,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2012013,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2012014,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 2012021,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 2012022,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 2012023,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 2012024,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 2012031,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 2012032,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 2012033,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 2012034,
				["Count"] = {1}
			}
		}
	},
	[920140] = {
		["Key"] = 920140,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2014011,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2014012,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2014013,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2014014,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 2014021,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 100,
				["ItemID"] = 2014022,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 2014023,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 100,
				["ItemID"] = 2014024,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 2014031,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 100,
				["ItemID"] = 2014032,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 2014033,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 100,
				["ItemID"] = 2014034,
				["Count"] = {1}
			}
		}
	},
	[920151] = {
		["Key"] = 920151,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["SubAward"] = 921151,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["SubAward"] = 921251,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["SubAward"] = 921351,
				["Count"] = {1}
			}
		}
	},
	[920152] = {
		["Key"] = 920152,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["SubAward"] = 921152,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["SubAward"] = 921252,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["SubAward"] = 921352,
				["Count"] = {1}
			}
		}
	},
	[920153] = {
		["Key"] = 920153,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["SubAward"] = 921153,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["SubAward"] = 921253,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["SubAward"] = 921353,
				["Count"] = {1}
			}
		}
	},
	[920154] = {
		["Key"] = 920154,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["SubAward"] = 921154,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["SubAward"] = 921254,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["SubAward"] = 921354,
				["Count"] = {1}
			}
		}
	},
	[920155] = {
		["Key"] = 920155,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 1000,
				["SubAward"] = 921155,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 1000,
				["SubAward"] = 921255,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 1000,
				["SubAward"] = 921355,
				["Count"] = {1}
			}
		}
	},
	[921151] = {
		["Key"] = 921151,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2115111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2115112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2115113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2115114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2115121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2115122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2115123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2115124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2115131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2115132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2115133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2115134,
				["Count"] = {1}
			}
		}
	},
	[921152] = {
		["Key"] = 921152,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2115211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2115212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2115213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2115214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2115221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2115222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2115223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2115224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2115231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2115232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2115233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2115234,
				["Count"] = {1}
			}
		}
	},
	[921153] = {
		["Key"] = 921153,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2115311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2115312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2115313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2115314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2115321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2115322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2115323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2115324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2115331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2115332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2115333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2115334,
				["Count"] = {1}
			}
		}
	},
	[921154] = {
		["Key"] = 921154,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2115411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2115412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2115413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2115414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2115421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2115422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2115423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2115424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2115431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2115432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2115433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2115434,
				["Count"] = {1}
			}
		}
	},
	[921155] = {
		["Key"] = 921155,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2115511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2115512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2115513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2115514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2115521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2115522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2115523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2115524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2115531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2115532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2115533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2115534,
				["Count"] = {1}
			}
		}
	},
	[921251] = {
		["Key"] = 921251,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2125111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2125112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2125113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2125114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2125121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2125122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2125123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2125124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2125131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2125132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2125133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2125134,
				["Count"] = {1}
			}
		}
	},
	[921252] = {
		["Key"] = 921252,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2125211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2125212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2125213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2125214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2125221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2125222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2125223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2125224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2125231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2125232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2125233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2125234,
				["Count"] = {1}
			}
		}
	},
	[921253] = {
		["Key"] = 921253,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2125311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2125312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2125313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2125314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2125321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2125322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2125323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2125324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2125331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2125332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2125333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2125334,
				["Count"] = {1}
			}
		}
	},
	[921254] = {
		["Key"] = 921254,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2125411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2125412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2125413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2125414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2125421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2125422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2125423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2125424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2125431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2125432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2125433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2125434,
				["Count"] = {1}
			}
		}
	},
	[921255] = {
		["Key"] = 921255,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2125511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2125512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2125513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2125514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2125521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2125522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2125523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2125524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2125531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2125532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2125533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2125534,
				["Count"] = {1}
			}
		}
	},
	[921351] = {
		["Key"] = 921351,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2135111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2135112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2135113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2135114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2135121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2135122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2135123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2135124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2135131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2135132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2135133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2135134,
				["Count"] = {1}
			}
		}
	},
	[921352] = {
		["Key"] = 921352,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2135211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2135212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2135213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2135214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2135221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2135222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2135223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2135224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2135231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2135232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2135233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2135234,
				["Count"] = {1}
			}
		}
	},
	[921353] = {
		["Key"] = 921353,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2135311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2135312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2135313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2135314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2135321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2135322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2135323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2135324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2135331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2135332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2135333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2135334,
				["Count"] = {1}
			}
		}
	},
	[921354] = {
		["Key"] = 921354,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2135411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2135412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2135413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2135414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2135421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2135422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2135423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2135424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2135431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2135432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2135433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2135434,
				["Count"] = {1}
			}
		}
	},
	[921355] = {
		["Key"] = 921355,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2135511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2135512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2135513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2135514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2135521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2135522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2135523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2135524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2135531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2135532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2135533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2135534,
				["Count"] = {1}
			}
		}
	},
	[921451] = {
		["Key"] = 921451,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2145111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2145112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2145113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2145114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2145121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2145122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2145123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2145124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2145131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2145132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2145133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2145134,
				["Count"] = {1}
			}
		}
	},
	[921452] = {
		["Key"] = 921452,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2145211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2145212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2145213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2145214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2145221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2145222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2145223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2145224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2145231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2145232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2145233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2145234,
				["Count"] = {1}
			}
		}
	},
	[921453] = {
		["Key"] = 921453,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2145311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2145312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2145313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2145314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2145321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2145322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2145323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2145324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2145331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2145332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2145333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2145334,
				["Count"] = {1}
			}
		}
	},
	[921454] = {
		["Key"] = 921454,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2145411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2145412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2145413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2145414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2145421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2145422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2145423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2145424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2145431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2145432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2145433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2145434,
				["Count"] = {1}
			}
		}
	},
	[921455] = {
		["Key"] = 921455,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2145511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2145512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2145513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2145514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2145521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2145522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2145523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2145524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2145531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2145532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2145533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2145534,
				["Count"] = {1}
			}
		}
	},
	[921551] = {
		["Key"] = 921551,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2155111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2155112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2155113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2155114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2155121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2155122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2155123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2155124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2155131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2155132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2155133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2155134,
				["Count"] = {1}
			}
		}
	},
	[921552] = {
		["Key"] = 921552,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2155211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2155212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2155213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2155214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2155221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2155222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2155223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2155224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2155231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2155232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2155233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2155234,
				["Count"] = {1}
			}
		}
	},
	[921553] = {
		["Key"] = 921553,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2155311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2155312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2155313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2155314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2155321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2155322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2155323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2155324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2155331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2155332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2155333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2155334,
				["Count"] = {1}
			}
		}
	},
	[921554] = {
		["Key"] = 921554,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2155411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2155412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2155413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2155414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2155421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2155422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2155423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2155424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2155431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2155432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2155433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2155434,
				["Count"] = {1}
			}
		}
	},
	[921555] = {
		["Key"] = 921555,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2155511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2155512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2155513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2155514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2155521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2155522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2155523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2155524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2155531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2155532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2155533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2155534,
				["Count"] = {1}
			}
		}
	},
	[921651] = {
		["Key"] = 921651,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2165111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2165112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2165113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2165114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2165121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2165122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2165123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2165124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2165131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2165132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2165133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2165134,
				["Count"] = {1}
			}
		}
	},
	[921652] = {
		["Key"] = 921652,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2165211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2165212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2165213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2165214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2165221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2165222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2165223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2165224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2165231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2165232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2165233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2165234,
				["Count"] = {1}
			}
		}
	},
	[921653] = {
		["Key"] = 921653,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2165311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2165312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2165313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2165314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2165321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2165322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2165323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2165324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2165331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2165332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2165333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2165334,
				["Count"] = {1}
			}
		}
	},
	[921654] = {
		["Key"] = 921654,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2165411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2165412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2165413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2165414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2165421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2165422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2165423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2165424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2165431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2165432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2165433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2165434,
				["Count"] = {1}
			}
		}
	},
	[921655] = {
		["Key"] = 921655,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2165511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2165512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2165513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2165514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2165521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2165522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2165523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2165524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2165531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2165532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2165533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2165534,
				["Count"] = {1}
			}
		}
	},
	[921751] = {
		["Key"] = 921751,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2175111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2175112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2175113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2175114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2175121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2175122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2175123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2175124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2175131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2175132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2175133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2175134,
				["Count"] = {1}
			}
		}
	},
	[921752] = {
		["Key"] = 921752,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2175211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2175212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2175213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2175214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2175221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2175222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2175223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2175224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2175231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2175232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2175233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2175234,
				["Count"] = {1}
			}
		}
	},
	[921753] = {
		["Key"] = 921753,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2175311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2175312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2175313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2175314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2175321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2175322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2175323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2175324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2175331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2175332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2175333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2175334,
				["Count"] = {1}
			}
		}
	},
	[921754] = {
		["Key"] = 921754,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2175411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2175412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2175413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2175414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2175421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2175422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2175423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2175424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2175431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2175432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2175433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2175434,
				["Count"] = {1}
			}
		}
	},
	[921755] = {
		["Key"] = 921755,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2175511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2175512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2175513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2175514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2175521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2175522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2175523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2175524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2175531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2175532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2175533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2175534,
				["Count"] = {1}
			}
		}
	},
	[921851] = {
		["Key"] = 921851,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2185111,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2185112,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2185113,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2185114,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2185121,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2185122,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2185123,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2185124,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2185131,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2185132,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2185133,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2185134,
				["Count"] = {1}
			}
		}
	},
	[921852] = {
		["Key"] = 921852,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2185211,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2185212,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2185213,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2185214,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2185221,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2185222,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2185223,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2185224,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2185231,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2185232,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2185233,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2185234,
				["Count"] = {1}
			}
		}
	},
	[921853] = {
		["Key"] = 921853,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2185311,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2185312,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2185313,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2185314,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2185321,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2185322,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2185323,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2185324,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2185331,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2185332,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2185333,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2185334,
				["Count"] = {1}
			}
		}
	},
	[921854] = {
		["Key"] = 921854,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2185411,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2185412,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2185413,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2185414,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2185421,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2185422,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2185423,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2185424,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2185431,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2185432,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2185433,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2185434,
				["Count"] = {1}
			}
		}
	},
	[921855] = {
		["Key"] = 921855,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 2185511,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 2185512,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 2185513,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 2185514,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 200,
				["ItemID"] = 2185521,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 200,
				["ItemID"] = 2185522,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 200,
				["ItemID"] = 2185523,
				["Count"] = {1}
			},
			[8] = {
				["Index"] = 8,
				["Weight"] = 200,
				["ItemID"] = 2185524,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 500,
				["ItemID"] = 2185531,
				["Count"] = {1}
			},
			[10] = {
				["Index"] = 10,
				["Weight"] = 500,
				["ItemID"] = 2185532,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 500,
				["ItemID"] = 2185533,
				["Count"] = {1}
			},
			[12] = {
				["Index"] = 12,
				["Weight"] = 500,
				["ItemID"] = 2185534,
				["Count"] = {1}
			}
		}
	},
	[930102] = {
		["Key"] = 930102,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3012101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3012201,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3012301,
				["Count"] = {1}
			}
		}
	},
	[930104] = {
		["Key"] = 930104,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3014101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3014201,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3014301,
				["Count"] = {1}
			}
		}
	},
	[930105] = {
		["Key"] = 930105,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3015101,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3015103,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 350,
				["ItemID"] = 3015201,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 350,
				["ItemID"] = 3015203,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 350,
				["ItemID"] = 3015301,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 350,
				["ItemID"] = 3015303,
				["Count"] = {1}
			}
		}
	},
	[930112] = {
		["Key"] = 930112,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3012101,
				["Count"] = {1},
				["HaveHero"] = {
					[12101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3012201,
				["Count"] = {1},
				["HaveHero"] = {
					[12201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3012301,
				["Count"] = {1},
				["HaveHero"] = {
					[12301] = 1
				}
			}
		}
	},
	[930114] = {
		["Key"] = 930114,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3014101,
				["Count"] = {1},
				["HaveHero"] = {
					[14101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3014201,
				["Count"] = {1},
				["HaveHero"] = {
					[14201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3014301,
				["Count"] = {1},
				["HaveHero"] = {
					[14301] = 1
				}
			}
		}
	},
	[930115] = {
		["Key"] = 930115,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3015101,
				["Count"] = {1},
				["HaveHero"] = {
					[15101] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3015103,
				["Count"] = {1},
				["HaveHero"] = {
					[15103] = 1
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 350,
				["ItemID"] = 3015201,
				["Count"] = {1},
				["HaveHero"] = {
					[15201] = 1
				}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 350,
				["ItemID"] = 3015203,
				["Count"] = {1},
				["HaveHero"] = {
					[15203] = 1
				}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 350,
				["ItemID"] = 3015301,
				["Count"] = {1},
				["HaveHero"] = {
					[15301] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 350,
				["ItemID"] = 3015303,
				["Count"] = {1},
				["HaveHero"] = {
					[15303] = 1
				}
			}
		}
	},
	[930204] = {
		["Key"] = 930204,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3024101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3024201,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3024301,
				["Count"] = {1}
			}
		}
	},
	[930205] = {
		["Key"] = 930205,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3025101,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3025103,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 350,
				["ItemID"] = 3025201,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 350,
				["ItemID"] = 3025203,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 350,
				["ItemID"] = 3025301,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 350,
				["ItemID"] = 3025303,
				["Count"] = {1}
			}
		}
	},
	[930214] = {
		["Key"] = 930214,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3024101,
				["Count"] = {1},
				["HaveHero"] = {
					[14101] = 1
				}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3024201,
				["Count"] = {1},
				["HaveHero"] = {
					[14201] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3024301,
				["Count"] = {1},
				["HaveHero"] = {
					[14301] = 1
				}
			}
		}
	},
	[930215] = {
		["Key"] = 930215,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3025101,
				["Count"] = {1},
				["HaveHero"] = {
					[15101] = 1
				}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3025103,
				["Count"] = {1},
				["HaveHero"] = {
					[15103] = 1
				}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 350,
				["ItemID"] = 3025201,
				["Count"] = {1},
				["HaveHero"] = {
					[15201] = 1
				}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 350,
				["ItemID"] = 3025203,
				["Count"] = {1},
				["HaveHero"] = {
					[15203] = 1
				}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 350,
				["ItemID"] = 3025301,
				["Count"] = {1},
				["HaveHero"] = {
					[15301] = 1
				}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 350,
				["ItemID"] = 3025303,
				["Count"] = {1},
				["HaveHero"] = {
					[15303] = 1
				}
			}
		}
	},
	[930304] = {
		["Key"] = 930304,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3030401,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3030402,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3030403,
				["Count"] = {1}
			}
		}
	},
	[930305] = {
		["Key"] = 930305,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3030501,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3030502,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3030503,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 350,
				["ItemID"] = 3030504,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 350,
				["ItemID"] = 3030505,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 350,
				["ItemID"] = 3030506,
				["Count"] = {1}
			}
		}
	},
	[930306] = {
		["Key"] = 930306,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3030601,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3030602,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3030603,
				["Count"] = {1}
			}
		}
	},
	[930314] = {
		["Key"] = 930314,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3031401,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3031402,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3031403,
				["Count"] = {1}
			}
		}
	},
	[930315] = {
		["Key"] = 930315,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3031501,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3031502,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3031503,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 350,
				["ItemID"] = 3031504,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 350,
				["ItemID"] = 3031505,
				["Count"] = {1}
			},
			[6] = {
				["Index"] = 6,
				["Weight"] = 350,
				["ItemID"] = 3031506,
				["Count"] = {1}
			}
		}
	},
	[930316] = {
		["Key"] = 930316,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 350,
				["ItemID"] = 3031601,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 350,
				["ItemID"] = 3031602,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 350,
				["ItemID"] = 3031603,
				["Count"] = {1}
			}
		}
	},
	[940104] = {
		["Key"] = 940104,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 4010101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 4010102,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 4010103,
				["Count"] = {1}
			}
		}
	},
	[940105] = {
		["Key"] = 940105,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 4010104,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 4010105,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 4010106,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 4010107,
				["Count"] = {1}
			}
		}
	},
	[940106] = {
		["Key"] = 940106,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 4010108,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 4010109,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 4010110,
				["Count"] = {1}
			},
			[4] = {
				["Index"] = 4,
				["Weight"] = 100,
				["ItemID"] = 4010111,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 4010112,
				["Count"] = {1}
			}
		}
	},
	[960102] = {
		["Key"] = 960102,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 6012101,
				["Count"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Weight"] = 100,
				["ItemID"] = 6012201,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 6012301,
				["Count"] = {1}
			}
		}
	},
	[960104] = {
		["Key"] = 960104,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 6014101,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 6014201,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 6014301,
				["Count"] = {1}
			}
		}
	},
	[960105] = {
		["Key"] = 960105,
		["RandomType"] = 1,
		["RandomCount"] = 1,
		["Items"] = {
			[1] = {
				["Index"] = 1,
				["Weight"] = 100,
				["ItemID"] = 6015101,
				["Count"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Weight"] = 100,
				["ItemID"] = 6015103,
				["Count"] = {1}
			},
			[5] = {
				["Index"] = 5,
				["Weight"] = 100,
				["ItemID"] = 6015201,
				["Count"] = {1}
			},
			[7] = {
				["Index"] = 7,
				["Weight"] = 100,
				["ItemID"] = 6015203,
				["Count"] = {1}
			},
			[9] = {
				["Index"] = 9,
				["Weight"] = 100,
				["ItemID"] = 6015301,
				["Count"] = {1}
			},
			[11] = {
				["Index"] = 11,
				["Weight"] = 100,
				["ItemID"] = 6015303,
				["Count"] = {1}
			}
		}
	}
}
