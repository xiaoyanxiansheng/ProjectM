--[[
	NpcChat

	字段列表:
		ID {int} 对话ID
		TeamShare {bool} 队伍共享
		Chats.Index* {int} 序号
		Chats.SaveLevel {int} 存档等级
		Chats.MainAttr {int} 英雄主属性
		Chats.Group {int} 随机组
		Chats.Weight {int} 权重
		Chats.CallEvent {bool} 事件回调
		Chats.Action* {array(array(auto, auto...), ...)} 执行功能

]]
return {
	[10101] = {
		["ID"] = 10101,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","UIEquipGrow","enhance"}}
			},
			[2] = {
				["Index"] = 2,
				["SaveLevel"] = 40,
				["Action"] = {{"OpenUI","UIEquipGrow","star"}}
			},
			[3] = {
				["Index"] = 3,
				["Action"] = {{"OpenUI","UIEquipSmelt"}}
			},
			[4] = {
				["Index"] = 4,
				["SaveLevel"] = 10,
				["Action"] = {{"GoToChat",10102}}
			},
			[5] = {
				["Index"] = 5,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10102] = {
		["ID"] = 10102,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","CurioUplevel"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"OpenUI","CurioUpstar"}}
			},
			[3] = {
				["Index"] = 3,
				["Action"] = {{"OpenUI","CurioDecompose"}}
			},
			[4] = {
				["Index"] = 4,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10201] = {
		["ID"] = 10201,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10301] = {
		["ID"] = 10301,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","HeroUplevel"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"OpenUI","HeroUpstar"}}
			},
			[3] = {
				["Index"] = 3,
				["SaveLevel"] = 5,
				["Action"] = {{"OpenUI","HeroEvolve"}}
			},
			[4] = {
				["Index"] = 4,
				["SaveLevel"] = 30,
				["Action"] = {{"OpenUI","HeroDecompose"}}
			},
			[5] = {
				["Index"] = 5,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10401] = {
		["ID"] = 10401,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","ExchangeShop"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10501] = {
		["ID"] = 10501,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["SaveLevel"] = 5,
				["Action"] = {{"OpenUI","PetExpedition"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10601] = {
		["ID"] = 10601,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","DailyActiveTasks"}}
			},
			[2] = {
				["Index"] = 2,
				["SaveLevel"] = 2,
				["Action"] = {{"OpenUI","Lottery"}}
			},
			[3] = {
				["Index"] = 3,
				["Action"] = {{"Close"}}
			}
		}
	},
	[11101] = {
		["ID"] = 11101,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","ExchangeShop"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[11201] = {
		["ID"] = 11201,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","ExchangeShop"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[11301] = {
		["ID"] = 11301,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","HeroEvolve"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[11401] = {
		["ID"] = 11401,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","UIEquipGrow","enhance"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[11501] = {
		["ID"] = 11501,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","LotterySelection"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[11601] = {
		["ID"] = 11601,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Action"] = {{"OpenUI","WanderingShop"}}
			},
			[2] = {
				["Index"] = 2,
				["Action"] = {{"Close"}}
			}
		}
	},
	[999] = {
		["ID"] = 999,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 1000,
				["Action"] = {{"Close"}}
			}
		}
	},
	[1000] = {
		["ID"] = 1000,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 1000,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",2},{"GoToChat",10002}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 1,
				["Weight"] = 9000,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0.1},{"GoToChat",10003}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 2,
				["Weight"] = 2000,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",3},{"GoToChat",10002}}
			},
			[4] = {
				["Index"] = 4,
				["Group"] = 2,
				["Weight"] = 8000,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0.05},{"GoToChat",10003}}
			},
			[5] = {
				["Index"] = 5,
				["Group"] = 3,
				["Weight"] = 5000,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",1.5},{"GoToChat",10002}}
			},
			[6] = {
				["Index"] = 6,
				["Group"] = 3,
				["Weight"] = 5000,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0.5},{"GoToChat",10003}}
			},
			[7] = {
				["Index"] = 7,
				["Group"] = 4,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"GiveItem",111,1000},{"GoToChat",10001}}
			},
			[8] = {
				["Index"] = 8,
				["Group"] = 4,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"GiveItem",111,1500},{"GoToChat",10001}}
			},
			[9] = {
				["Index"] = 9,
				["Group"] = 4,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"GiveItem",111,2000},{"GoToChat",10001}}
			}
		}
	},
	[10001] = {
		["ID"] = 10001,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 1000,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10002] = {
		["ID"] = 10002,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 1000,
				["Action"] = {{"Close"}}
			}
		}
	},
	[10003] = {
		["ID"] = 10003,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 1000,
				["Action"] = {{"Close"}}
			}
		}
	},
	[1001] = {
		["ID"] = 1001,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddBless",59}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddBless",54}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddBless",55}}
			},
			[4] = {
				["Index"] = 4,
				["Group"] = 4,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"GiveItem",111,500}}
			}
		}
	},
	[1002] = {
		["ID"] = 1002,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Cost",111,1000},{"LevelUp",1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Cost",111,10000},{"LevelUp",5}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0},{"LevelUp",10}}
			}
		}
	},
	[1003] = {
		["ID"] = 1003,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Cost",111,3000},{"LevelUp",1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Cost",111,30000},{"LevelUp",5}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0},{"LevelUp",10}}
			}
		}
	},
	[1004] = {
		["ID"] = 1004,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Cost",111,5000},{"LevelUp",1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Cost",111,50000},{"LevelUp",5}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0},{"LevelUp",10}}
			}
		}
	},
	[1005] = {
		["ID"] = 1005,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0},{"AddHpRatio",1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"ResetGold",0.5},{"AddHpRatio",0.5}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Cost",111,1000},{"AddHpRatio",0.1}}
			}
		}
	},
	[1006] = {
		["ID"] = 1006,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.5},{"Reward",910104,1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.25},{"Reward",910103,1}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Reward",910101,1}}
			}
		}
	},
	[1007] = {
		["ID"] = 1007,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.6},{"Reward",910105,1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.3},{"Reward",910104,1}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Reward",910101,1}}
			}
		}
	},
	[1008] = {
		["ID"] = 1008,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.7},{"Reward",910106,1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.35},{"Reward",910105,1}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Reward",910102,1}}
			}
		}
	},
	[1009] = {
		["ID"] = 1009,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.7},{"Reward",910107,1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddHpRatio",-0.35},{"Reward",910106,1}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Reward",910103,1}}
			}
		}
	},
	[1010] = {
		["ID"] = 1010,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",11,5000,1},{"GoToChat",101001}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",11,-5000,1},{"GoToChat",101002}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",41,5000,1},{"GoToChat",101001}}
			},
			[4] = {
				["Index"] = 4,
				["Group"] = 2,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",41,-5000,1},{"GoToChat",101002}}
			},
			[5] = {
				["Index"] = 5,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",42,5000,1},{"GoToChat",101001}}
			},
			[6] = {
				["Index"] = 6,
				["Group"] = 3,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",42,-5000,1},{"GoToChat",101002}}
			},
			[7] = {
				["Index"] = 7,
				["Group"] = 4,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",105,5000},{"GoToChat",101001}}
			},
			[8] = {
				["Index"] = 8,
				["Group"] = 4,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddAttr",105,-5000},{"GoToChat",101002}}
			}
		}
	},
	[101001] = {
		["ID"] = 101001,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Close"}}
			}
		}
	},
	[101002] = {
		["ID"] = 101002,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"Close"}}
			}
		}
	},
	[1011] = {
		["ID"] = 1011,
		["TeamShare"] = true,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"SpawnAndKill",100061,100062,100063,100064,100061,100062,100063,100064,100061,100062,100063,100064}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"SpawnAndKill",120001,120002,120003,120004}}
			},
			[3] = {
				["Index"] = 3,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"SpawnAndKill",100041,100042,100043,100044,100011,100012,100013,100014,100041,100042,100043,100044}}
			}
		}
	},
	[1012] = {
		["ID"] = 1012,
		["Chats"] = {
			[1] = {
				["Index"] = 1,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddBeneficialBlessLib",1}}
			},
			[2] = {
				["Index"] = 2,
				["Group"] = 1,
				["Weight"] = 100,
				["CallEvent"] = true,
				["Action"] = {{"AddCursedBlessLib",1}}
			}
		}
	}
}
