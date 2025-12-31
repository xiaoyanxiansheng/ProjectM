--[[
	Skill

	字段列表:
		id {int} 编号
		Quality {int} 品质
		PassiveId {int} 被动ID
		HidePassiveId {int} 激活隐藏被动ID
		SkillPassiveId {int} 技能自身被动
		ForceChangeMouse {array(int, int...)} 强制更改鼠标位置
		DamageType {int} 伤害类型（阵营）
		TargetType {int} 鼠标指向预判
		AICheckType {int} AI预判类型
		Maxlevel* {number} 最大等级
		Duration* {array(number, number...)} 技能持续时间
		Radius* {array(int, int...)} 施法距离
		Cd* {array(number, number...)} CD
		MPCost* {array(int, int...)} MP消耗
		CastTime* {number} 前摇时间
		FinishLoopCount {array(int, int...)} 循环次数
		AffectFromPassive {array(array(int, int...), ...)} 被其他被动ID影响
		DoIgnoreBuffs {int} 释放过程中忽略Buff检测
		TimeLine.Index {int} 时间线序号
		TimeLine.Active {int} 默认激活
		TimeLine.Level* {array(int, int...)} 生效等级
		TimeLine.Time* {number} 时间(秒)
		TimeLine.Type* {int} 类型
		TimeLine.Params {array(auto, auto...)} 参数

]]
return {
	[101] = {
		["id"] = 101,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {3000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {1,101,2000,1011}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {5,1,0}
			}
		}
	},
	[200] = {
		["id"] = 200,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 11,
				["Params"] = {1,3,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3,
				["Type"] = 8,
				["Params"] = {"T",1500,3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3,
				["Type"] = 4,
				["Params"] = {2,2,3,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3,
				["Type"] = 6,
				["Params"] = {"particles/creatures/aghanim/aghanim_portal_summon_impact_cast.vpcf",2,0}
			}
		}
	},
	[300] = {
		["id"] = 300,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {0},
		["Radius"] = {400},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 11,
				["Params"] = {1,3,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3,
				["Type"] = 8,
				["Params"] = {"T",150,0.1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3.1,
				["Type"] = 4,
				["Params"] = {3,2,1,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3.1,
				["Type"] = 6,
				["Params"] = {"particles/creatures/aghanim/aghanim_portal_summon_impact_cast.vpcf",2,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3.1,
				["Type"] = 9,
				["Params"] = {1}
			}
		}
	},
	[400] = {
		["id"] = 400,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {0},
		["Radius"] = {800},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 11,
				["Params"] = {1,5,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 5,
				["Type"] = 4,
				["Params"] = {4,1,3,3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 5,
				["Type"] = 6,
				["Params"] = {"particles/creatures/aghanim/aghanim_portal_summon_impact_cast.vpcf",2,0}
			}
		}
	},
	[102] = {
		["id"] = 102,
		["Quality"] = 5,
		["PassiveId"] = 102,
		["DamageType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {450},
		["Cd"] = {0.1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[300001] = {
		["id"] = 300001,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {2},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000011,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000012,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_centaur/centaur_warstomp.vpcf",0,3000011,0,2,50,0,0,3,-1}
			}
		}
	},
	[300002] = {
		["id"] = 300002,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {1000},
		["Cd"] = {3},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5000,3,800,0,3000021}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/pudge_meathook_chain.vpcf",0,3000021,0,7,100,-100,3,-1,-1,-1,2,100,50,0}
			}
		}
	},
	[3000021] = {
		["id"] = 3000021,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000020,3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000021,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/pudge_meathook_chain.vpcf",0,3000020,0,3,100,-100,3,-1,-1,-1,2,100,50,0}
			}
		}
	},
	[300003] = {
		["id"] = 300003,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000031,2,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/beastmaster_primal_roar_scream.vpcf",0,3000031,1,2,50,0,0,1,2}
			}
		}
	},
	[300004] = {
		["id"] = 300004,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/chaos_knight_reality_rift.vpcf",0,3000041,2,2,50,0,2,-1,0,1,50,0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.3,
				["Type"] = 16,
				["Params"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.3,
				["Type"] = 4,
				["Params"] = {3000041,2,2}
			}
		}
	},
	[300005] = {
		["id"] = 300005,
		["Quality"] = 1,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/razor_plasmafield_glow.vpcf",1,3000051,0,5,50,0,0,1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000051,2,0}
			}
		}
	},
	[300006] = {
		["id"] = 300006,
		["Quality"] = 1,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,6},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {3000061,3,1,"1_500_360",0,3,1,5,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {2,6},
				["Time"] = 0.2,
				["Type"] = 14,
				["Params"] = {3000061,3,1,"1_500_360",0,3,1,5,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {3,6},
				["Time"] = 0.4,
				["Type"] = 14,
				["Params"] = {3000061,3,1,"1_500_360",0,3,1,5,1}
			}
		}
	},
	[3000061] = {
		["id"] = 3000061,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,6},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000061,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,6},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/zuus_thundergods_wrath.vpcf",1,3000061,0,1,50,0,1,-1,-1}
			}
		}
	},
	[300007] = {
		["id"] = 300007,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {3000071,2,1,0,0,0,1,10,0.1}
			}
		}
	},
	[3000071] = {
		["id"] = 3000071,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000071,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/phoenix_fire_spirit_burn.vpcf",0,3000071,0,1,0,0,0,-1,-1}
			}
		}
	},
	[300008] = {
		["id"] = 300008,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {3},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5000,"2_300",0,0,0,0,"2_180"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000081,7,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/invoker_tornado_funnel.vpcf",0,3000081,0,7,0,0,3,-1,-1}
			}
		}
	},
	[300009] = {
		["id"] = 300009,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {1000},
		["Cd"] = {3},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {3,3000020,10000,3000091}
			}
		}
	},
	[3000091] = {
		["id"] = 3000091,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {1000},
		["Cd"] = {3},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000091,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000092,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_centaur/centaur_warstomp.vpcf",0,3000081,0,2,50,0,0,3,-1}
			}
		}
	},
	[300010] = {
		["id"] = 300010,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000101,3,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/enigma_blackhole.vpcf",0,3000101,0,3,10,0,0,0,-1,-1}
			}
		}
	},
	[300011] = {
		["id"] = 300011,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 10,
		["Duration"] = {10},
		["Radius"] = {450},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5000,3,800,0,3000111}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",0,0,0,4,10,0,4,-1,-1}
			}
		}
	},
	[3000111] = {
		["id"] = 3000111,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 10,
		["Duration"] = {2},
		["Radius"] = {450},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["FinishLoopCount"] = {5,6,7},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000111,3,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 15,
				["Params"] = {4,500,1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 3,
				["Params"] = {5000,3,800,0,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.1,
				["Type"] = 6,
				["Params"] = {"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",0,0,0,4,10,0,4,-1,-1}
			}
		}
	},
	[300012] = {
		["id"] = 300012,
		["Quality"] = 1,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/maiden_freezing_field_snow_arcana1_shard.vpcf",0,0,0,1,50,0,0,-1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {3000121,1,1,"1_500_360",0,3,3,5,0.2}
			}
		}
	},
	[3000121] = {
		["id"] = 3000121,
		["Quality"] = 1,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {3,100,1,0}
			},
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.1,
				["Type"] = 4,
				["Params"] = {3000121,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/maiden_freezing_field_explosion.vpcf",1,0,0,1,10,0,0,-1,-1}
			}
		}
	},
	[300013] = {
		["id"] = 300013,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/phoenix_fire_spirit_burn_fire.vpcf",0,3000131,0,2,100,0,0,1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000131,2,0}
			}
		}
	},
	[300014] = {
		["id"] = 300014,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 10,
		["Duration"] = {5},
		["Radius"] = {2000},
		["Cd"] = {3},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {3000141,2,1,"2_600_1500",300,2,1,4,2}
			}
		}
	},
	[3000141] = {
		["id"] = 3000141,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 10,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5000,1,800,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000141,7,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_kunkka/kunkka_shard_tidal_wave.vpcf",0,0,0,4,10,0,0,-1,-1,1}
			}
		}
	},
	[300015] = {
		["id"] = 300015,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {1000},
		["Cd"] = {15},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/maiden_freezing_field_snow_arcana1_shard.vpcf",0,0,0,1,10,0,0,-1,-1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {3000151,2,1,"2_500_1000",500,1,1,5,1}
			}
		}
	},
	[3000151] = {
		["id"] = 3000151,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/invoker_chaos_meteor.vpcf",1.8,0,0,0,0,0,-1,-1,-1,-1,8,10,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 3,
				["Params"] = {5000,1,400,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 1.8,
				["Type"] = 4,
				["Params"] = {3000151,7,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 1.8,
				["Type"] = 6,
				["Params"] = {"particles/invoker_chaos_meteor1.vpcf",2.5,0,0,4,10,0,0,-1,-1,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 4.5,
				["Type"] = 4,
				["Params"] = {3000152,7,0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 4.5,
				["Type"] = 6,
				["Params"] = {"particles/gyro_base_attack_explosion.vpcf",1,0,0,4,10,0,0,-1,-1,1}
			}
		}
	},
	[300016] = {
		["id"] = 300016,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5000,3,800,0,3000161}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000161,7,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",0,0,0,4,10,0,4,-1,-1}
			}
		}
	},
	[3000161] = {
		["id"] = 3000161,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {3000162,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/gyro_base_attack_explosion.vpcf",0,0,0,4,10,0,0,-1,-1,-1}
			}
		}
	},
	[300017] = {
		["id"] = 300017,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {5,1000,0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5000,3,800,0,3000111}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",0,0,0,4,10,0,4,-1,-1}
			}
		}
	},
	[300018] = {
		["id"] = 300018,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {300018}
			}
		}
	},
	[300019] = {
		["id"] = 300019,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 17,
				["Params"] = {1,2,1110094}
			}
		}
	},
	[300020] = {
		["id"] = 300020,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 10,
		["Duration"] = {10},
		["Radius"] = {2000},
		["Cd"] = {3},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {200061,2,1,"2_200_1000",500,1,3,8,0.5}
			}
		}
	},
	[3000201] = {
		["id"] = 3000201,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 10,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5000,1,800,0,200062}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {200061,7,0}
			}
		}
	},
	[3000202] = {
		["id"] = 3000202,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 10,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {20000}
			}
		}
	},
	[3000203] = {
		["id"] = 3000203,
		["Quality"] = 6,
		["PassiveId"] = 300020,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 10,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 18,
				["Params"] = {300020,2,0}
			}
		}
	},
	[1100000] = {
		["id"] = 1100000,
		["Quality"] = 4,
		["HidePassiveId"] = 1100000,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {600},
		["Cd"] = {9,8,7,6,5,5,5,5,5},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["AffectFromPassive"] = {{1,11000001,200}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,"1000_1",0,11000001,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/primal_beast_rock_throw.vpcf",2,1,0,7,150,0,3,-1,-1,-1}
			}
		}
	},
	[11000001] = {
		["id"] = 11000001,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1100000,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_primal_beast/primal_beast_rock_throw_impact.vpcf",0,3,0,7,0,0,3,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000002,1,0,"1_300_300",0,2,6,1,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_primal_beast/primal_beast_rock_throw_impact.vpcf",0,3,0,7,0,0,3,-1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.RockImpact"}
			}
		}
	},
	[11000002] = {
		["id"] = 11000002,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {600},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,500,0,11000003,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_primal_beast/primal_beast_rock_throw_arc_b.vpcf",0.7,0,0,7,20,0,3,-1,-1,-1}
			}
		}
	},
	[11000003] = {
		["id"] = 11000003,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11000001,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_primal_beast/primal_beast_rock_throw_impact.vpcf",0,3,0,7,0,0,3,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.RockImpact"}
			}
		}
	},
	[1100001] = {
		["id"] = 1100001,
		["Quality"] = 4,
		["HidePassiveId"] = 1100001,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3,3,5,5,5,5,6,7},
		["Radius"] = {0},
		["Cd"] = {9,8.5,8,7,6,6,6,6,6},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 10,
				["Params"] = {2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {2,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {3,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {4,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {5,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_40",30,2,6,1,1}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_40",30,2,6,2,1}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_40",30,2,6,3,1}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_40",30,2,6,4,1}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_40",30,2,6,5,1}
			},
			[12] = {
				["Index"] = 12,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_20",30,2,1,1,1}
			},
			[13] = {
				["Index"] = 13,
				["Active"] = 0,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_20",30,2,1,2,1}
			},
			[14] = {
				["Index"] = 14,
				["Active"] = 0,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_20",30,2,1,3,1}
			},
			[15] = {
				["Index"] = 15,
				["Active"] = 0,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_20",30,2,1,4,1}
			},
			[16] = {
				["Index"] = 16,
				["Active"] = 0,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_20",30,2,1,5,1}
			},
			[17] = {
				["Index"] = 17,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_40",30,2,6,1,3}
			},
			[18] = {
				["Index"] = 18,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000011,2,1,"1_600_40",30,2,4,1,3}
			}
		}
	},
	[11000011] = {
		["id"] = 11000011,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,800,0,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1100001,7,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11000011,7,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11000012,7,2}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11000013,7,2}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/mirana/mirana_persona/mirana_dark_moon_spell_arrow.vpcf",0,0,0,7,10,30,0,-1,-1,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/mars_spear.vpcf",0,0,0,7,0,30,0,-1,-1,1}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SpellArrow"}
			}
		}
	},
	[11000012] = {
		["id"] = 11000012,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11000021,2,1,"1_600_30",50,2,1,3,3}
			}
		}
	},
	[1100002] = {
		["id"] = 1100002,
		["Quality"] = 4,
		["HidePassiveId"] = 1100002,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {8},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {3,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 28
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11000021,"1_600_30/40/50/60/70/80/100/120",2,"1/3/4/6/8/8/8/9/10",0}
			}
		}
	},
	[11000021] = {
		["id"] = 11000021,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360","2_500"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1100002}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/phoenix_fire_spirits_launch_bird.vpcf","3_50"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,0,"11000022_0.2"}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.PhoenixFire"}
			}
		}
	},
	[11000022] = {
		["id"] = 11000022,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,8,"1_100_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000022}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/phoenix_fire_spirit_burn.vpcf","0_50"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireSpiritBurn"}
			}
		}
	},
	[11000023] = {
		["id"] = 11000023,
		["Quality"] = 4,
		["HidePassiveId"] = 1100002,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 16,
				["Params"] = {3,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 28
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 26,
				["Params"] = {0,11000021,"1_600_30/40/50/60/70/80/100/120",2,"1/3/4/6/8/8/8/9/10",0}
			}
		}
	},
	[1100003] = {
		["id"] = 1100003,
		["Quality"] = 4,
		["HidePassiveId"] = 11000031,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5,5,5,5,5,5,5,6},
		["Radius"] = {0},
		["Cd"] = {15,14,13,12,11,11,10},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_300/300/300/300/300/400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000031}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11000031,"1_300/300/300/300/300/400_180",2,2,6}
			}
		}
	},
	[11000031] = {
		["id"] = 11000031,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5,5,5,5,5,5,5,6},
		["Radius"] = {0},
		["Cd"] = {15,14,13,12,11,11,10},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,9,"1_300/300/300/300/300/300/300/300/350_360","2_4800","5_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/courier_babyroshan_winter18_ambient_globe.vpcf","3_100_-300",-1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SharpBlade"}
			}
		}
	},
	[1100004] = {
		["id"] = 1100004,
		["Quality"] = 4,
		["PassiveId"] = 11000044,
		["HidePassiveId"] = 1100004,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {300,350,400,450,500,500,550,550,600},
		["Cd"] = {15,15,15,15,15,14},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 28
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {5,1,0,"2_1600_1"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1100004,11000041}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11000041,0,3}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/blink_dagger_start_ti5.vpcf",0}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Flash"}
			}
		}
	},
	[11000041] = {
		["id"] = 11000041,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000041}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_techies/techies_blast_off.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast"}
			}
		}
	},
	[11000042] = {
		["id"] = 11000042,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000042}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_phoenix/phoenix_fire_spirit_ground.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireBlast"}
			}
		}
	},
	[1100005] = {
		["id"] = 1100005,
		["Quality"] = 4,
		["HidePassiveId"] = 11000051,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {400,430,460,500,550,550,600,600,600},
		["Cd"] = {16,15,14,13,12,11,11,10,10},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_800_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 28
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_ancient_apparition/ancient_apparition_ice_blast_main.vpcf","3_50"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11000051}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Snowball"}
			}
		}
	},
	[11000051] = {
		["id"] = 11000051,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0.5,"particles/skill/finish/maiden_crystal_nova.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000051}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000052}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0.1,11000052,"1_300_310",2,6,0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 25,
				["Params"] = {0,0,0,"1_0.5"}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SnowballExplosion"}
			}
		}
	},
	[11000052] = {
		["id"] = 11000052,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"8_600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_ancient_apparition/ancient_apparition_ice_blast_main.vpcf","3_50"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11000053}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Snowball"}
			}
		}
	},
	[11000053] = {
		["id"] = 11000053,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0.5,"particles/skill/finish/maiden_crystal_nova.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000053}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SnowballExplosion"}
			}
		}
	},
	[1100006] = {
		["id"] = 1100006,
		["Quality"] = 4,
		["HidePassiveId"] = 11000061,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {500},
		["Cd"] = {16,15.8,15.4,15,14.6,14.6,14.2,14.2,14.2},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_220/240/280/300/400/400/400/465/465","3_350_400/440/520/600/680/680/680/750/750"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000061}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/monkey_king_strike.vpcf","1_0_200",4,-1,-1,"0_0_100"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.HitGround"}
			}
		}
	},
	[11000061] = {
		["id"] = 11000061,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {500},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_220/240/280/300/400/400/400/465/465","3_250_400/440/520/600/680/680/680/750/750"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000061}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/monkey_king_strike.vpcf","1_0_200",4,-1,-1,"0_0_100"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.HitGround"}
			}
		}
	},
	[1100008] = {
		["id"] = 1100008,
		["Quality"] = 4,
		["HidePassiveId"] = 11000081,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {8,8,8,8,8,8,8,8,8,8,9},
		["Radius"] = {600},
		["Cd"] = {20,19,17,15,13,13,13,13,12.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 28,
				["Params"] = {0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_100/225/250/275/300/325/350/400/400/400/425","3_200_400/500/600/700/800/800/800/850/850",1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000081}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000082}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000083}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000084}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_200",4,2,-1,0}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_250",4,2,-1,0}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_300",4,2,-1,0}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_350",4,2,-1,0}
			},
			[12] = {
				["Index"] = 12,
				["Active"] = 1,
				["Level"] = {5,5},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_400",4,2,-1,0}
			},
			[13] = {
				["Index"] = 13,
				["Active"] = 1,
				["Level"] = {6,6},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_400",4,2,-1,0}
			},
			[14] = {
				["Index"] = 14,
				["Active"] = 1,
				["Level"] = {7,7},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_400",4,2,-1,0}
			},
			[15] = {
				["Index"] = 15,
				["Active"] = 1,
				["Level"] = {8,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {8,"particles/skill/finish/jakiro_ti10_macropyre.vpcf","1_0_425",4,2,-1,0}
			},
			[16] = {
				["Index"] = 16,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.GroundBurning"}
			}
		}
	},
	[1100010] = {
		["id"] = 1100010,
		["Quality"] = 4,
		["HidePassiveId"] = 11000101,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1.5},
		["Radius"] = {0},
		["Cd"] = {14,14,14,14,14,14,12,10},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11000102,"1_700/700/700/700/700/700/700/800_30/45/90/140/190/240/290/330",2,"1/3/4/6/8/8/8/8/8",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11000102}
			}
		}
	},
	[11000101] = {
		["id"] = 11000101,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1.5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11000102,"1_700_360",1,1,0}
			}
		}
	},
	[11000102] = {
		["id"] = 11000102,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360","8_700_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000101}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000102}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000103}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11000104}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_nyx_assassin/nyx_assassin_impale_spikes.vpcf",3}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.GroundSpikes"}
			}
		}
	},
	[1110010] = {
		["id"] = 1110010,
		["Quality"] = 4,
		["PassiveId"] = 1110010,
		["HidePassiveId"] = 11100101,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[11100101] = {
		["id"] = 11100101,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110010,3,1}
			}
		}
	},
	[11100110000] = {
		["id"] = 11100110000,
		["Quality"] = 4,
		["HidePassiveId"] = 1110011,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {600},
		["Cd"] = {12,11,10,9,8,7,6,8},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {3,11100111,3000,11100111}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {3,11100111,3000,11100112}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/creatures/aghanim/aghanim_portal_summon_impact_cast.vpcf",2,1,0,2,0,0,0,-1,-1,-1}
			}
		}
	},
	[111001110000] = {
		["id"] = 111001110000,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {450},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110011,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100111,2,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/zuus_thundergods_wrath.vpcf",0,1,0,2,50,0,1,-1,-1,-1}
			}
		}
	},
	[111001120000] = {
		["id"] = 111001120000,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100112,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/zuus_thundergods_wrath.vpcf",0,1,0,2,50,0,1,-1,-1,-1}
			}
		}
	},
	[1110011] = {
		["id"] = 1110011,
		["Quality"] = 4,
		["HidePassiveId"] = 1110011,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {600,600,600,600,600,700},
		["Cd"] = {25,24,22,20,18,18},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {3,11100111,3000,11100111}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/events/fall_2021/blink_dagger_fall_2021_start.vpcf",2,1,0,2,0,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Flash"}
			}
		}
	},
	[11100111] = {
		["id"] = 11100111,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {450},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100111,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100112,2,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100113,2,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/earthshaker/earthshaker_totem_ti6/earthshaker_totem_ti6_leap_impact.vpcf",0,1,0,2,0,0,0,-1,-1,-1}
			}
		}
	},
	[1110012] = {
		["id"] = 1110012,
		["Quality"] = 4,
		["HidePassiveId"] = 1110012,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {200,250,300,350,400,400},
		["Cd"] = {9},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_2000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11100121,0,0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/creatures/aghanim/portal_summon_b0.vpcf",0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Summon"}
			}
		}
	},
	[11100121] = {
		["id"] = 11100121,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5,6,7,8,9,10},
		["Radius"] = {450},
		["Cd"] = {12},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5002,1,"15_15_15_15_15_25",1,0.15,1}
			}
		}
	},
	[1110013] = {
		["id"] = 1110013,
		["Quality"] = 4,
		["PassiveId"] = 1110013,
		["HidePassiveId"] = 11100131,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110014] = {
		["id"] = 1110014,
		["Quality"] = 4,
		["PassiveId"] = 1110014,
		["HidePassiveId"] = 11100141,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[11100141] = {
		["id"] = 11100141,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5,6,7,8,9,10},
		["Radius"] = {450},
		["Cd"] = {12},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5002,1,10,"2_3_5_7_9_11",0,1}
			}
		}
	},
	[1110020] = {
		["id"] = 1110020,
		["Quality"] = 4,
		["HidePassiveId"] = 1110020,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7},
		["Radius"] = {350,400,500,600,700,700},
		["Cd"] = {30,27,24,20,16,16},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 28
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1000"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1110020,11100201}
			}
		}
	},
	[11100201] = {
		["id"] = 11100201,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5,6,7,8,9,10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_225/225/225/225/225/275_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1110020}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/events/crownfall/survivors/abilities/snapfire/snapfire_ground_aoe.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireBlast"}
			}
		}
	},
	[1110021] = {
		["id"] = 1110021,
		["Quality"] = 4,
		["HidePassiveId"] = 1110021,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {10,14,22,30,40,50},
		["Radius"] = {900},
		["Cd"] = {25},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 14,
				["Params"] = {11100211,1,0,0,0,0,1,1,20}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/creatures/aghanim/portal_summon_a.vpcf",1,0,0,1,0,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Summon"}
			}
		}
	},
	[11100211] = {
		["id"] = 11100211,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {450},
		["Cd"] = {12},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5003,1,"10_14_22_30_40_50",1,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {1110021,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 2,
				["Params"] = {11100211,2}
			}
		}
	},
	[11100212] = {
		["id"] = 11100212,
		["Quality"] = 4,
		["DamageType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {10,14,22,30,40,50},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {3,"particles/hand_courier_radiant_lv7_ambient_ring_rope.vpcf","2_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {1,"particles/underlord_dark_rift_ring.vpcf","20_30",1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11100211}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Healing"}
			}
		}
	},
	[1110022] = {
		["id"] = 1110022,
		["Quality"] = 4,
		["HidePassiveId"] = 1110022,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {35,34,32,30,28,26},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["DoIgnoreBuffs"] = 1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 18,
				["Params"] = {1110022}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.BallLightning"}
			}
		}
	},
	[1110023] = {
		["id"] = 1110023,
		["Quality"] = 4,
		["HidePassiveId"] = 1110023,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {400,450,500,550,600,650},
		["Cd"] = {20,19,17,15,13,13},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110023,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/enigma_blackhole.vpcf",5,1,0,1,10,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100231,1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/enigma_blackhole.vpcf",10,1,0,1,10,0,0,-1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100232,1,0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.BlackVortex"}
			}
		}
	},
	[1110024] = {
		["id"] = 1110024,
		["Quality"] = 4,
		["HidePassiveId"] = 1110024,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {450},
		["Cd"] = {25,24,22,20,18,17},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,6,500,0,11100243}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/alchemist_unstable_concoction_projectile_trail_b.vpcf",0.6,1,0,7,50,0,3,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireGreenBullet"}
			}
		}
	},
	[11100241] = {
		["id"] = 11100241,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {450},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["FinishLoopCount"] = {1,2,4,6,8,8,8},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110024,6,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 15,
				["Params"] = {6,350,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 3,
				["Params"] = {5001,6,500,0,11100244}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/alchemist_unstable_concoction_projectile_trail_b.vpcf",0.6,1,0,7,50,0,3,-1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 5,
				["Params"] = {"SKILL.FireGreenBullet"}
			}
		}
	},
	[11100242] = {
		["id"] = 11100242,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {2000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100242,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_dragon_knight/dragon_knight_transform_green.vpcf",1,1,0,3,10,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.GreenFireExplosion"}
			}
		}
	},
	[11100243] = {
		["id"] = 11100243,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {2000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 12,
				["Params"] = {11100244}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 12,
				["Params"] = {11100241}
			}
		}
	},
	[11100244] = {
		["id"] = 11100244,
		["Quality"] = 4,
		["HidePassiveId"] = 1110024,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {450},
		["Cd"] = {20},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110024,3,0}
			}
		}
	},
	[1110030] = {
		["id"] = 1110030,
		["Quality"] = 4,
		["HidePassiveId"] = 1110030,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {1000},
		["Cd"] = {15,14,12,10,8,8},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5004,1,20,5,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 2,
				["Params"] = {11100301,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {11100303,2}
			}
		}
	},
	[11100301] = {
		["id"] = 11100301,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {0.5},
		["Radius"] = {2000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_0_0","1_100_360","1_100_0_0"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_0_0","1_117.5_360","1_100_0_0"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_0_0","1_137.5_360","1_100_0_0"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_0_0","1_162.5_360","1_100_0_0"}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {5,5},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_0_0","1_200_360","1_100_0_0"}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {6,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_0_0","1_225_360","1_100_0_0"}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/events/crownfall/survivors/abilities/techies/remote_mines/techies_remote_mines_detonate_base.vpcf",0,1,0,1,0,0,0,-1,-1,-1}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1110030,0.1}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {9,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_0_0","1_225_360","1_100_0_0"}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast"}
			}
		}
	},
	[1110031] = {
		["id"] = 1110031,
		["Quality"] = 4,
		["HidePassiveId"] = 1110031,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3,3.3,3.9,4.5,5.5,5.5},
		["Radius"] = {500},
		["Cd"] = {18,18,18,18,18,16},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 4,
				["Params"] = {1110031,0.1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/monkey_king_spring_arcana_water.vpcf",2,1,0,1,0,0,0,1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.TreeJump"}
			}
		}
	},
	[1110032] = {
		["id"] = 1110032,
		["Quality"] = 4,
		["HidePassiveId"] = 1110032,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {600,650,700,750,800,800},
		["Cd"] = {20},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["AffectFromPassive"] = {{2,1110032,5}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 1,
				["Type"] = 14,
				["Params"] = {11100321,1,1,"1_300_360",0,3,5,4,0.4}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 1,
				["Type"] = 14,
				["Params"] = {11100321,1,1,"1_300_360",0,3,7,4,0.4}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 1,
				["Type"] = 14,
				["Params"] = {11100321,1,1,"1_300_360",0,3,8,3,0.25}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 1,
				["Type"] = 14,
				["Params"] = {11100321,1,1,"1_300_360",0,3,8,3,0.2}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 1,
				["Type"] = 14,
				["Params"] = {11100321,1,1,"1_300_360",0,3,10,3,0.2}
			}
		}
	},
	[11100321] = {
		["id"] = 11100321,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 8,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 4,
				["Params"] = {1110032,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/mirana_starfall_attack.vpcf",4,1110032,0,1,20,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FallArrow"}
			}
		}
	},
	[1110033] = {
		["id"] = 1110033,
		["Quality"] = 4,
		["HidePassiveId"] = 1110033,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {15,15.5,16.5,17.5,19,19},
		["Radius"] = {0},
		["Cd"] = {14},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 18,
				["Params"] = {1110033,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 18,
				["Params"] = {11100333,2,0}
			}
		}
	},
	[1110034] = {
		["id"] = 1110034,
		["Quality"] = 4,
		["HidePassiveId"] = 11100341,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1,1.5,2,2.5,3.5,3.5},
		["Radius"] = {0},
		["Cd"] = {12},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 19,
				["Params"] = {1110034}
			}
		}
	},
	[11100341] = {
		["id"] = 11100341,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1,1.5,2,2.5,3.5,3.5},
		["Radius"] = {0},
		["Cd"] = {14},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110034,2,0,0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/phoenix_icarus_dive_char_glow.vpcf",0,1,0,2,0,0,0,2,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100341,2,0,0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireSpiritBurn"}
			}
		}
	},
	[1110040] = {
		["id"] = 1110040,
		["Quality"] = 4,
		["PassiveId"] = 1110040,
		["HidePassiveId"] = 11100401,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {2,3,4,5,7,7},
		["Radius"] = {0},
		["Cd"] = {12},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {11100401}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {11100403}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {11100402}
			}
		}
	},
	[1110041] = {
		["id"] = 1110041,
		["Quality"] = 4,
		["PassiveId"] = 11100413,
		["HidePassiveId"] = 1110041,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {4,5,6,7,8,9,10,11},
		["Radius"] = {0},
		["Cd"] = {14},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110041,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_primal_beast/primal_beast_pulverize_hit.vpcf",1,1,0,2,0,0,0,1,-1,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.AreaEarthquake"}
			}
		}
	},
	[1110042] = {
		["id"] = 1110042,
		["Quality"] = 4,
		["PassiveId"] = 1110042,
		["HidePassiveId"] = 11100421,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {600},
		["Cd"] = {25,24,22,20,18,16},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["AffectFromPassive"] = {{1,11100421,1000},{3,11100422,0}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110042,3,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100422,3,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/batrider_flaming_lasso.vpcf",0,0,1,6,30,0,1,-1,-1,1,5,30,0,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100421,3,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100423,3,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Grab"}
			}
		}
	},
	[11100421] = {
		["id"] = 11100421,
		["Quality"] = 4,
		["PassiveId"] = 1110042,
		["HidePassiveId"] = 11100421,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/batrider_flaming_lasso.vpcf",0,0,1,6,30,0,1,-1,-1,1,5,30,0,0}
			}
		}
	},
	[1110043] = {
		["id"] = 1110043,
		["Quality"] = 4,
		["HidePassiveId"] = 1110043,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5,6,7,8,9,10,11,12},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_600_150"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1110043}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/beastmaster_primal_roar_scream.vpcf","0_50",1,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Roar"}
			}
		}
	},
	[1110044] = {
		["id"] = 1110044,
		["Quality"] = 4,
		["PassiveId"] = 1110044,
		["HidePassiveId"] = 11100441,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110050] = {
		["id"] = 1110050,
		["Quality"] = 4,
		["HidePassiveId"] = 1110050,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {6,6.2,6.6,7,7.4,7.8},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110050,5,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_doom_bringer/doom_bringer_doom_aurab_particle_stuff.vpcf",0,1,0,5,0,0,0,1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100501,5,1,"1_400_360",0,3,1,3,0.5}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireSpiritBurn"}
			}
		}
	},
	[11100501] = {
		["id"] = 11100501,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {4},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 4,
				["Params"] = {11100501,3,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/mirana_starfall_attack1.vpcf",1,0,0,3,10,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FallArrow"}
			}
		}
	},
	[1110051] = {
		["id"] = 1110051,
		["Quality"] = 4,
		["PassiveId"] = 1110051,
		["HidePassiveId"] = 11100511,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {24,23,21,19,17,17},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100513,2,2,"2_200_400/400/400/400/400/500",275,1,1,3,3}
			}
		}
	},
	[11100511] = {
		["id"] = 11100511,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {24,23,21,19,17,17},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100513,2,2,"2_200_400/400/400/400/400/500",275,1,1,3,3}
			}
		}
	},
	[11100512] = {
		["id"] = 11100512,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {24,23,21,19,17,17},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100513,2,2,"2_200_400/400/400/400/400/500",275,1,1,3,3}
			}
		}
	},
	[11100513] = {
		["id"] = 11100513,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {1,11100511,2000,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,5},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110051,2,2,"-225_0"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {6,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100513,2,2,"-225_0"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,5},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100511,2,2,"-225_0"}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,5},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100512,2,2,"-225_0"}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {6,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100513,2,2,"-275_0"}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {6,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100514,2,2,"-275_0"}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 0,
				["Level"] = {6,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100515,2,2,"-275_0"}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_kez/kez_katana_echo_strike.vpcf",0,0,0,1,0,0,1,-1,-1,-1,2,0,0,0}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_jakiro/jakiro_ice_path_smoke.vpcf",0,2,0,1,0,0,1,-1,-1,-1,2,0,0,0}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Slash"}
			}
		}
	},
	[1110052] = {
		["id"] = 1110052,
		["Quality"] = 4,
		["PassiveId"] = 1110052,
		["HidePassiveId"] = 11100521,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {5},
		["MPCost"] = {10},
		["CastTime"] = 0
	},
	[1110053] = {
		["id"] = 1110053,
		["Quality"] = 4,
		["HidePassiveId"] = 1110053,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {15,14.5,13.5,12.5,11.5,10},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 10,
				["Params"] = {2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100531,2,1,"2_200_450",225,2,1,3,3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100531,2,1,"2_200_550",275,2,1,3,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100531,2,1,"2_200_600",300,2,1,3,3}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100531,2,1,"2_200_800",400,2,1,3,3}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100531,2,1,"2_200_1000",500,2,1,3,3}
			}
		}
	},
	[11100531] = {
		["id"] = 11100531,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["FinishLoopCount"] = {0},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,1100,0,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110053,7,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/mars/mars_ti9_immortal/mars_ti9_immortal_spear.vpcf",0,0,0,7,50,0,0,-1,-1,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SpearPuncture"}
			}
		}
	},
	[11100532] = {
		["id"] = 11100532,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {5},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["FinishLoopCount"] = {3},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100531,3,1}
			}
		}
	},
	[1110054] = {
		["id"] = 1110054,
		["Quality"] = 4,
		["HidePassiveId"] = 1110054,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {2000},
		["Cd"] = {10,9.5,8.5,7.5,6.5,6},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1110054}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 17,
				["Params"] = {0,0,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/items_fx/black_king_bar_avatar.vpcf",1,0,0,5,0,0,0,-1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Purge"}
			}
		}
	},
	[1110060] = {
		["id"] = 1110060,
		["Quality"] = 4,
		["PassiveId"] = 1110060,
		["HidePassiveId"] = 11100601,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110061] = {
		["id"] = 1110061,
		["Quality"] = 4,
		["PassiveId"] = 1110061,
		["HidePassiveId"] = 11100611,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[11100611] = {
		["id"] = 11100611,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110061,3}
			}
		}
	},
	[11100612] = {
		["id"] = 11100612,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11100611}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_elder_titan/elder_titan_echo_stomp_physical.vpcf",0}
			}
		}
	},
	[1110062] = {
		["id"] = 1110062,
		["Quality"] = 4,
		["HidePassiveId"] = 1110062,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {4},
		["Radius"] = {400,450,550,650,750,750},
		["Cd"] = {12,12,12,12,12,11},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {1,1110062,1000,11100621}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 1,
				["Params"] = {"ACT_FLY",2}
			}
		}
	},
	[11100621] = {
		["id"] = 11100621,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110062,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/centaur_warstomp.vpcf",0,1,0,2,0,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {11100623,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Stomp"}
			}
		}
	},
	[1110063] = {
		["id"] = 1110063,
		["Quality"] = 4,
		["PassiveId"] = 1110063,
		["HidePassiveId"] = 11100631,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {0},
		["Cd"] = {15,14,12,10,8,7},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1110063}
			}
		}
	},
	[11100631] = {
		["id"] = 11100631,
		["Quality"] = 4,
		["PassiveId"] = 1110063,
		["HidePassiveId"] = 11100631,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11100631}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.2,
				["Type"] = 21,
				["Params"] = {11100631}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.4,
				["Type"] = 21,
				["Params"] = {11100631}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.6,
				["Type"] = 21,
				["Params"] = {11100631}
			}
		}
	},
	[1110064] = {
		["id"] = 1110064,
		["Quality"] = 4,
		["HidePassiveId"] = 1110064,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5,6,7,8,9,9},
		["Radius"] = {0},
		["Cd"] = {25,25,25,25,25,20},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_650_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1110064}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/mars_arena_of_blood_colosseum_columns.vpcf",2,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0.1,11100641,0,0,1,11}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Colosseum"}
			}
		}
	},
	[11100641] = {
		["id"] = 11100641,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {7,8,9,10,11,11},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11100641}
			}
		}
	},
	[1110070] = {
		["id"] = 1110070,
		["Quality"] = 4,
		["PassiveId"] = 11100702,
		["HidePassiveId"] = 1110070,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {9,8.5,7.5,6.5,5.5,5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/razor_plasmafield.vpcf",1.2,1110070,0,5,50,0,0,-1,-1,"1_550"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110070,5,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/razor_plasmafield.vpcf",1.2,1110070,0,5,50,0,0,-1,-1,"1_550"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100701,5,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/razor_plasmafield.vpcf",1.2,1110070,0,5,50,0,0,-1,-1,"1_550"}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 4,
				["Params"] = {1110070,5,0}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/razor_plasmafield.vpcf",1.2,1110070,0,5,50,0,0,-1,-1,"1_550"}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 4,
				["Params"] = {11100701,5,0}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/razor_plasmafield.vpcf",1.2,1110070,0,5,50,0,0,-1,-1,"1_550"}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 4,
				["Params"] = {1110070,5,0}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/razor_plasmafield.vpcf",1.2,1110070,0,5,50,0,0,-1,-1,"1_550"}
			},
			[12] = {
				["Index"] = 12,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 4,
				["Params"] = {11100701,5,0}
			},
			[13] = {
				["Index"] = 13,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ElectricityLoop"}
			}
		}
	},
	[1110071] = {
		["id"] = 1110071,
		["Quality"] = 4,
		["HidePassiveId"] = 1110071,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {700},
		["Cd"] = {9,8.5,7.5,6.5,5.5,5.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/maiden_freezing_field_snow_arcana1_shard.vpcf",0,0,0,1,10,0,0,-1,-1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100711,1,2,"2_600_600/700/800/900/1100/1200","300/350/400/450/550/600",2,1,5,5}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100711,1,2,"2_600_600/700/800/900/1100/1200","300/350/400/450/550/600",2,3,5,5}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.MeteoriteFall"}
			}
		}
	},
	[11100711] = {
		["id"] = 11100711,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 4.5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/invoker_chaos_meteor.vpcf",1.8,0,0,0,0,0,-1,-1,-1,-1,8,10,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 3,
				["Params"] = {5001,1,"400/468/534/600/734/800",0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 3,
				["Params"] = {5001,1,800,0,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 4,
				["Params"] = {11100711,7,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 4,
				["Params"] = {11100712,7,0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 6,
				["Params"] = {"particles/invoker_chaos_meteor1.vpcf",1.5,0,0,4,10,0,0,-1,-1,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 4,
				["Type"] = 4,
				["Params"] = {1110071,7,0}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 4,
				["Type"] = 6,
				["Params"] = {"particles/gyro_base_attack_explosion.vpcf",1,0,0,4,10,0,0,-1,-1,1}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.MeteoriteRoll"}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 5,
				["Params"] = {"SKILL.MeteoriteFall"}
			}
		}
	},
	[1110072] = {
		["id"] = 1110072,
		["Quality"] = 4,
		["HidePassiveId"] = 1110072,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5,8,10,10,10,10},
		["Radius"] = {600,600,600,600,600,700},
		["Cd"] = {7},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/razor_rain_storm.vpcf",0,11100721,0,1,0,0,0,-1,-1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100721,3,1,"1_425_360",0,3,1,5,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100721,3,1,"1_400_360",0,3,1,8,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100721,3,1,"1_375_360",0,3,1,10,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100721,3,1,"1_350_360",0,3,2,10,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100721,3,1,"1_325_360",0,3,3,10,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100721,1,0}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 0,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100722,1,0}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 0,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100723,1,0}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 0,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100724,1,0}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 0,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100725,1,0}
			}
		}
	},
	[11100721] = {
		["id"] = 11100721,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {600},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110072,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100729,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/zuus_thundergods_wrath.vpcf",1,1110072,0,1,50,0,1,-1,-1,-1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.LightningBolt"}
			}
		}
	},
	[1110073] = {
		["id"] = 1110073,
		["Quality"] = 4,
		["HidePassiveId"] = 1110073,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {600,600,600,600,600,700},
		["Cd"] = {14,13.5,13,12.5,11.5,11.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/kunkka_ghostship_marker.vpcf",0,1110073,0,1,50,0,0,-1,-1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100731,1,1,"1_200_360",0,3,1,5,0.6}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100731,1,1,"1_225_360",0,3,1,4.9,0.4}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100731,1,1,"1_250_360",0,3,2,5,0.4}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100731,1,1,"1_300_360",0,3,2,5,0.5}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100731,1,1,"1_350_360",0,3,3,5,0.4}
			}
		}
	},
	[11100731] = {
		["id"] = 11100731,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 4,
				["Params"] = {11100731,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 4,
				["Params"] = {11100732,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_kunkka/kunkka_spell_torrent_splash.vpcf",1,0,0,1,10,0,0,-1,-1,-1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 4,
				["Params"] = {11100733,1,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 4,
				["Params"] = {11100734,1,0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 5,
				["Params"] = {"SKILL.AbilityGeyser"}
			}
		}
	},
	[1110080] = {
		["id"] = 1110080,
		["Quality"] = 4,
		["PassiveId"] = 1110080,
		["HidePassiveId"] = 11100801,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110075] = {
		["id"] = 1110075,
		["Quality"] = 4,
		["PassiveId"] = 1110075,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {50},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1110074] = {
		["id"] = 1110074,
		["Quality"] = 4,
		["PassiveId"] = 1110074,
		["HidePassiveId"] = 11100741,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110081] = {
		["id"] = 1110081,
		["Quality"] = 4,
		["HidePassiveId"] = 1110081,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {10,9,8,7,5,5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {1.2,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100811,2,2,"2_250_600",300,2,1,3,3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100811,2,2,"2_250_900",450,2,1,3,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 10,
				["Params"] = {2}
			}
		}
	},
	[11100811] = {
		["id"] = 11100811,
		["Quality"] = 3,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1.3},
		["Radius"] = {0},
		["Cd"] = {5},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,500,0,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110081,7,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/storm_spirit/storm_spirit_orchid_hat/stormspirit_orchid_ball_lightning.vpcf",0,1110081,0,7,100,0,0,-1,-1,-1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100811,7,0,"50_-150"}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/storm_spirit/storm_spirit_orchid_hat_retro/stormspirit_orchid_retro_ball_lightning.vpcf",0,11100811,0,7,100,"50_-150",0,-1,-1,-1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100811,7,0,"50_150"}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/storm_spirit/storm_spirit_orchid_hat_retro/stormspirit_orchid_retro_ball_lightning.vpcf",0,11100811,0,7,100,"50_150",0,-1,-1,-1}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110081,7,0}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/storm_spirit/storm_spirit_orchid_hat_retro/stormspirit_orchid_retro_ball_lightning.vpcf",0,1110081,0,7,100,0,0,-1,-1,-1}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100811,7,0,"50_-150"}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/storm_spirit/storm_spirit_orchid_hat_retro/stormspirit_orchid_retro_ball_lightning.vpcf",0,11100811,0,7,100,"50_-150",0,-1,-1,-1}
			},
			[12] = {
				["Index"] = 12,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100811,7,0,"50_150"}
			},
			[13] = {
				["Index"] = 13,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/econ/items/storm_spirit/storm_spirit_orchid_hat_retro/stormspirit_orchid_retro_ball_lightning.vpcf",0,11100811,0,7,100,"50_150",0,-1,-1,-1}
			},
			[14] = {
				["Index"] = 14,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.BallLightning"}
			}
		}
	},
	[1110082] = {
		["id"] = 1110082,
		["Quality"] = 4,
		["PassiveId"] = 1110082,
		["HidePassiveId"] = 11100821,
		["Maxlevel"] = 5,
		["Duration"] = {20},
		["Radius"] = {0},
		["Cd"] = {21,20,18,16,14,14},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {1110082}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {11100821}
			}
		}
	},
	[11100821] = {
		["id"] = 11100821,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0.1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110082,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/zuus_thundergods_wrath.vpcf",1,1110082,0,3,50,0,1,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100821,3,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/zuus_thundergods_wrath.vpcf",1,11100821,0,3,50,0,1,-1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.BallLightning"}
			}
		}
	},
	[1110083] = {
		["id"] = 1110083,
		["Quality"] = 4,
		["HidePassiveId"] = 11100831,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {12,11,10,9,8,8},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {4,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100831,2,2,"1_600_60",0,2,1,4,4}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100831,2,2,"1_700_90",0,2,2,4,4}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100831,2,2,"1_800_120",0,2,3,4,4}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100831,2,2,"1_900_210",0,2,4,4,4}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100831,2,2,"1_1050_270",0,2,6,4,4}
			}
		}
	},
	[11100831] = {
		["id"] = 11100831,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {4},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,4},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,400,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,600,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110083,7,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100831,7,2}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_kunkka/kunkka_shard_tidal_wave.vpcf",2,1110083,0,7,10,0,0,-1,-1,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,4},
				["Time"] = 2,
				["Type"] = 3,
				["Params"] = {5001,1,400,0,0}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {5,99},
				["Time"] = 2,
				["Type"] = 3,
				["Params"] = {5001,1,600,0,0}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 2,
				["Type"] = 4,
				["Params"] = {1110083,7,2}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 2,
				["Type"] = 4,
				["Params"] = {11100831,7,2}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 2,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_kunkka/kunkka_shard_tidal_wave.vpcf",2,1110083,0,7,10,0,0,-1,-1,1}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Wave"}
			},
			[12] = {
				["Index"] = 12,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 2,
				["Type"] = 5,
				["Params"] = {"SKILL.Wave"}
			}
		}
	},
	[1110084] = {
		["id"] = 1110084,
		["Quality"] = 4,
		["HidePassiveId"] = 1110084,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {4,4.5,5,5.5,6.5,7.5,8.5,8.5},
		["Radius"] = {0},
		["Cd"] = {12,11.5,11,10.5,10,10},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_crystalmaiden/maiden_crystal_clone_movement_trail.vpcf",0,0,0,1,50,0,0,-1,-1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {4,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {5,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {6,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {7,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {8,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100841,2,1,"1_600_360",0,3,1,4,0.5}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100841,2,1,"1_650_360",0,3,1,5,0.5}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100841,2,1,"1_700_360",0,3,1,6,0.4}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100841,2,1,"1_750_360",0,3,1,7,0.3}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100841,2,1,"1_850_360",0,3,1,8,0.2}
			}
		}
	},
	[11100841] = {
		["id"] = 11100841,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {3,100,1,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100841,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100842,1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/maiden_freezing_field_explosion.vpcf",1,0,0,1,10,0,0,-1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 5,
				["Params"] = {"SKILL.IceFall"}
			}
		}
	},
	[1110085] = {
		["id"] = 1110085,
		["Quality"] = 4,
		["PassiveId"] = 1110085,
		["Maxlevel"] = 5,
		["Duration"] = {9999999},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {1110085}
			}
		}
	},
	[11100851] = {
		["id"] = 11100851,
		["Quality"] = 4,
		["PassiveId"] = 1110085,
		["Maxlevel"] = 5,
		["Duration"] = {9999999},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 19,
				["Params"] = {11100851}
			}
		}
	},
	[1110086] = {
		["id"] = 1110086,
		["Quality"] = 4,
		["PassiveId"] = 1110086,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110090] = {
		["id"] = 1110090,
		["Quality"] = 4,
		["PassiveId"] = 1110090,
		["HidePassiveId"] = 11100901,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5,5.4,5.8,6.2,6.6,7,7.5,9},
		["Radius"] = {0},
		["Cd"] = {5,5.4,5.8,6.2,6.6,7,7.5,9},
		["MPCost"] = {10},
		["CastTime"] = 0.1
	},
	[11100901] = {
		["id"] = 11100901,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0.1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {5,200,0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {5,300,0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {5,500,0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {5,700,0,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {5,5},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {5,900,0,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {6,99},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {5,1100,0,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,3,"800_1",0,11100902}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",0,0,0,7,10,0,4,-1,-1,-1}
			}
		}
	},
	[11100902] = {
		["id"] = 11100902,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110090,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100901,3,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 15,
				["Params"] = {4,500,1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 3,
				["Params"] = {5001,3,"800_1",0,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 6,
				["Params"] = {"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",0,0,0,7,10,0,4,-1,-1,-1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 5,
				["Params"] = {"SKILL.IllusoryOrb"}
			}
		}
	},
	[11100903] = {
		["id"] = 11100903,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0.1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.5,
				["Type"] = 15,
				["Params"] = {5,200,0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0.5,
				["Type"] = 15,
				["Params"] = {5,300,0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0.5,
				["Type"] = 15,
				["Params"] = {5,500,0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0.5,
				["Type"] = 15,
				["Params"] = {5,700,0,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {5,5},
				["Time"] = 0.5,
				["Type"] = 15,
				["Params"] = {5,900,0,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {6,999},
				["Time"] = 0.5,
				["Type"] = 15,
				["Params"] = {5,1100,0,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 3,
				["Params"] = {5001,3,"800_1",0,11100902}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 6,
				["Params"] = {"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",0,0,0,7,10,0,4,-1,-1,-1}
			}
		}
	},
	[1110091] = {
		["id"] = 1110091,
		["Quality"] = 4,
		["PassiveId"] = 11100912,
		["HidePassiveId"] = 1110091,
		["DamageType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {20},
		["Radius"] = {0},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11100912,0,10}
			}
		}
	},
	[1110092] = {
		["id"] = 1110092,
		["Quality"] = 4,
		["HidePassiveId"] = 1110092,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {20,19,18,17,16,16},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100921,2,1,"2_300_500",250,2,1,2,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100921,2,1,"2_300_550",275,2,1,3,3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100921,2,1,"2_300_600",300,2,2,3,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100921,2,1,"2_300_700",350,2,2,4,4}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {5,5},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100921,2,1,"2_300_800",400,2,3,4,4}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {6,99},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {11100921,2,1,"2_300_850",400,2,3,4,4}
			}
		}
	},
	[11100921] = {
		["id"] = 11100921,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2,2,2,2,2.4,2.8,3.2,3.6},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,3,300,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1110092,7,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100921,7,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/invoker_tornado_funnel.vpcf",0,1110092,0,7,0,0,3,-1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Tornado"}
			}
		}
	},
	[1110093] = {
		["id"] = 1110093,
		["Quality"] = 4,
		["PassiveId"] = 1110093,
		["HidePassiveId"] = 11100931,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5,5,5,5,5,6},
		["Radius"] = {0},
		["Cd"] = {12,11,10,9,8,8},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 19,
				["Params"] = {1110093,"3_3"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 19,
				["Params"] = {11100933,"3_3"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {11100930,5,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/doom_bringer_doom_aura.vpcf",0,3,0,5,50,0,0,1,-1,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireSpiritBurn"}
			}
		}
	},
	[1110094] = {
		["id"] = 1110094,
		["Quality"] = 4,
		["HidePassiveId"] = 1110094,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {450,500,550,600,650,700},
		["Cd"] = {10,9.5,8.5,7.5,6.5,6.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_800_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/teleport_end_fallmjr_2015_lvl2_black.vpcf","0_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11100941}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.BlackHoleBalt"}
			}
		}
	},
	[11100941] = {
		["id"] = 11100941,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_225_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11100941}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11100942}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0.5,"particles/skill/finish/teleport_end_fallmjr_2015_lvl2_black.vpcf",0,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.BlackHoleBalt"}
			}
		}
	},
	[1110095] = {
		["id"] = 1110095,
		["Quality"] = 4,
		["PassiveId"] = 1110095,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110096] = {
		["id"] = 1110096,
		["Quality"] = 4,
		["PassiveId"] = 1110096,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110100] = {
		["id"] = 1110100,
		["Quality"] = 4,
		["PassiveId"] = 11101003,
		["HidePassiveId"] = 11101001,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {16,15,14,13,12,11.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_250","3_600_500",2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 21,
				["Params"] = {11101001}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 21,
				["Params"] = {11101002}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0.5,"particles/skill/finish/troll_warlord_base_attack.vpcf","1_0_1000",-1,2,-1,"0_200_100"}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.2,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/jakiro_ice_path_shards_ice_blocks.vpcf","1_-50_250",3,-1,-1,"0_-50"}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 21,
				["Params"] = {11101003}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 5,
				["Params"] = {"SKILL.EarthSplit"}
			}
		}
	},
	[1110101] = {
		["id"] = 1110101,
		["Quality"] = 4,
		["PassiveId"] = 11101003,
		["HidePassiveId"] = 11101011,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {900,950,1000,1050,1100,1150},
		["Cd"] = {19,18.5,17.5,16.5,15.5,15},
		["MPCost"] = {10},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360","2_800_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1110101,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1110101,11101011,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101011}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101012}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Boil"}
			}
		}
	},
	[11101011] = {
		["id"] = 11101011,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101013}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/centaur_warstomp.vpcf",0}
			}
		}
	},
	[1110102] = {
		["id"] = 1110102,
		["Quality"] = 4,
		["PassiveId"] = 11101023,
		["HidePassiveId"] = 11101021,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {10,12,14,16,18,18},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101021,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101022,0,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Boil"}
			}
		}
	},
	[1110103] = {
		["id"] = 1110103,
		["Quality"] = 4,
		["HidePassiveId"] = 11101031,
		["SkillPassiveId"] = 11101033,
		["DamageType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {20,19.5,18.5,17.5,16,15.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/items_fx/seeds_of_serenity.vpcf",0,1,-1,-1,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101031}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101032}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Healing"}
			}
		}
	},
	[1110104] = {
		["id"] = 1110104,
		["Quality"] = 4,
		["HidePassiveId"] = 11101041,
		["SkillPassiveId"] = 11101043,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3,4,6,8,10,10},
		["Radius"] = {0},
		["Cd"] = {25,24,22,20,18,17},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101041,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101042,0,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ArmorActivation"}
			}
		}
	},
	[1110110] = {
		["id"] = 1110110,
		["Quality"] = 4,
		["HidePassiveId"] = 11101101,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {2,3,5,7,9,9},
		["Radius"] = {600},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 19,
				["Params"] = {11101103,"3_4"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/rbck_arc_skywrath_mage_mystic_flare_beam.vpcf","0_20",2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 21,
				["Params"] = {11101101}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 5,
				["Params"] = {"SKILL.Cyclone"}
			}
		}
	},
	[1110111] = {
		["id"] = 1110111,
		["Quality"] = 4,
		["HidePassiveId"] = 11101111,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {2,3,4,5,6,7,8,9},
		["Radius"] = {200,250,350,450,550,600},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_200_360","2_1000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 28
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/rubick/rubick_force_gold_ambient/rubick_telekinesis_land_force_gold.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101111}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101112}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1110111}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1110111,11101111}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 5,
				["Params"] = {"SKILL.HitGround"}
			}
		}
	},
	[11101111] = {
		["id"] = 11101111,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {2,3,4,5,6,7,8,9},
		["Radius"] = {600,650,700,800,900,950},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_200_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_earthshaker/earthshaker_totem_leap_impact.vpcf",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 21,
				["Params"] = {11101111}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 21,
				["Params"] = {11101112}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 5,
				["Params"] = {"SKILL.HitGround"}
			}
		}
	},
	[1110112] = {
		["id"] = 1110112,
		["Quality"] = 4,
		["PassiveId"] = 11101123,
		["HidePassiveId"] = 11101121,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3,4,5,6,7,7},
		["Radius"] = {600,650,700,800,900,950},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101121}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101122}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101123}
			}
		}
	},
	[1110113] = {
		["id"] = 1110113,
		["Quality"] = 4,
		["PassiveId"] = 11101133,
		["HidePassiveId"] = 11101131,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {50,45,40,34,28,22},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["DoIgnoreBuffs"] = 1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101131,0,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101132,0,-1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101133,0,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_oracle/oracle_fatesedict.vpcf","0_50"}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Dispel"}
			}
		}
	},
	[1110114] = {
		["id"] = 1110114,
		["Quality"] = 4,
		["HidePassiveId"] = 11101141,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2,2.2,2.4,2.6,2.8,3,3.5,4},
		["Radius"] = {600},
		["Cd"] = {10},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101141,1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101141}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.VelocityShift"}
			}
		}
	},
	[1110120] = {
		["id"] = 1110120,
		["Quality"] = 4,
		["PassiveId"] = 11101203,
		["HidePassiveId"] = 11101201,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {650,700,850,900,950,1000},
		["Cd"] = {12},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,-1,"2_0_0_50"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/chaos_knight_reality_rift.vpcf",1,-1,-1,-1,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.RealityRift"}
			}
		}
	},
	[11101201] = {
		["id"] = 11101201,
		["Quality"] = 4,
		["PassiveId"] = 11101203,
		["HidePassiveId"] = 11101201,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101201}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_techies/techies_blast_off.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101202}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast"}
			}
		}
	},
	[1110121] = {
		["id"] = 1110121,
		["Quality"] = 4,
		["HidePassiveId"] = 11101211,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {500},
		["Cd"] = {20,19.5,19,18,17,17},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["AffectFromPassive"] = {{1,11101212,200}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101211}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101213}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_300_360"}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101212}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_elder_titan/elder_titan_echo_stomp_physical.vpcf",0}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101214}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101213,0,-1}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.EarthSplit"}
			}
		}
	},
	[1110122] = {
		["id"] = 1110122,
		["Quality"] = 4,
		["HidePassiveId"] = 11101221,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {600,650,700,750,800,850},
		["Cd"] = {50,50,50,50,50,45},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5005,"1_2_3_3_4_4",20,"1_2_3_3_4_4",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/dazzle/dazzle_ti6/dazzle_ti6_shallow_grave_glyph_flare.vpcf",-1,-1,-1,-1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101221}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_techies/techies_blast_off.vpcf",0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 27,
				["Params"] = {11101222,2,20}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Summon"}
			}
		}
	},
	[1110123] = {
		["id"] = 1110123,
		["Quality"] = 4,
		["PassiveId"] = 11101233,
		["HidePassiveId"] = 11101232,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110124] = {
		["id"] = 1110124,
		["Quality"] = 4,
		["HidePassiveId"] = 11101241,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {4},
		["Radius"] = {0},
		["Cd"] = {20,19.7,19.1,18.5,17.9,17.6},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101241,0,4}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Wind"}
			}
		}
	},
	[1110130] = {
		["id"] = 1110130,
		["Quality"] = 4,
		["HidePassiveId"] = 1110130,
		["ForceChangeMouse"] = {2,0,300},
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {10},
		["CastTime"] = 3,
		["AffectFromPassive"] = {{2,11101303,-1,-2,-3,-4,-6,-9}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,11101301,1}
			}
		}
	},
	[1110131] = {
		["id"] = 1110131,
		["Quality"] = 4,
		["HidePassiveId"] = 1110131,
		["ForceChangeMouse"] = {2,-300},
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {10},
		["CastTime"] = 3,
		["AffectFromPassive"] = {{2,11101303,0,-1,-2,-3,-5,-8}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,11101301,1}
			}
		}
	},
	[1110132] = {
		["id"] = 1110132,
		["Quality"] = 4,
		["HidePassiveId"] = 1110132,
		["ForceChangeMouse"] = {2,0,-300},
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {10},
		["CastTime"] = 3,
		["AffectFromPassive"] = {{2,11101303,0,-1,-2,-3,-5,-8}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,11101301,1}
			}
		}
	},
	[1110133] = {
		["id"] = 1110133,
		["Quality"] = 4,
		["HidePassiveId"] = 1110133,
		["ForceChangeMouse"] = {2,300},
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {10},
		["CastTime"] = 3,
		["AffectFromPassive"] = {{2,11101303,0,-1,-2,-3,-5,-8}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,11101301,1}
			}
		}
	},
	[11101301] = {
		["id"] = 11101301,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_200/225/250/275/300/325_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101301}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101302}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101303}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/axe_ti9_gold_call.vpcf",0,2}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.HitGround"}
			}
		}
	},
	[1110134] = {
		["id"] = 1110134,
		["Quality"] = 4,
		["PassiveId"] = 11101341,
		["HidePassiveId"] = 1110134,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {30,30,30,30,30,28},
		["MPCost"] = {10},
		["CastTime"] = 3,
		["AffectFromPassive"] = {{2,11101303,0,-2,-4,-6,-8,-10}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101341,0,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Healing2"}
			}
		}
	},
	[1110140] = {
		["id"] = 1110140,
		["Quality"] = 4,
		["PassiveId"] = 11101403,
		["HidePassiveId"] = 11101401,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1110141] = {
		["id"] = 1110141,
		["Quality"] = 4,
		["HidePassiveId"] = 11101411,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {3,3,3,3,3,4},
		["Radius"] = {800},
		["Cd"] = {15,13,11,9,6,6},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_1000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11101411}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_kez/kez_sai_toss.vpcf","1_50",-1,-1,-1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SharpBlade"}
			}
		}
	},
	[11101411] = {
		["id"] = 11101411,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {800},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101411}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101412}
			}
		}
	},
	[1110142] = {
		["id"] = 1110142,
		["Quality"] = 4,
		["PassiveId"] = 11101421,
		["HidePassiveId"] = 11101422,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11101421] = {
		["id"] = 11101421,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_400/425/450/475/500/525_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101421}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101422}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_dark_seer/dark_seer_vacuum.vpcf",0,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101421,0,-1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Vacuum"}
			}
		}
	},
	[1110143] = {
		["id"] = 1110143,
		["Quality"] = 4,
		["PassiveId"] = 11101431,
		["HidePassiveId"] = 11101432,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10,9,8,7,6,5,4,2},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11101431] = {
		["id"] = 11101431,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_250_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101431}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_kez/kez_sai_ultimate_buff_edge.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101421,0,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ElectromagneticWave"}
			}
		}
	},
	[1110144] = {
		["id"] = 1110144,
		["Quality"] = 4,
		["PassiveId"] = 11101441,
		["HidePassiveId"] = 11101442,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {0},
		["Cd"] = {0.5},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11101441] = {
		["id"] = 11101441,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101421,0,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/zuus_arc_lightning.vpcf","0_50",-1,-1,-1,"1_50"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101441}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 25,
				["Params"] = {"11101442_1"}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 5,
				["Params"] = {"SKILL.LightningBolt"}
			}
		}
	},
	[11101442] = {
		["id"] = 11101442,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 23,
				["Params"] = {600,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 21,
				["Params"] = {11101441}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 22,
				["Params"] = {0,"particles/zuus_arc_lightning.vpcf","0_50",-1,-1,-1,"1_50"}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 25,
				["Params"] = {0,0,0,"1/2/4/6/8/8_0_1"}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 5,
				["Params"] = {"SKILL.LightningBolt"}
			}
		}
	},
	[11101443] = {
		["id"] = 11101443,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {6},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101441}
			}
		}
	},
	[1110150] = {
		["id"] = 1110150,
		["Quality"] = 4,
		["HidePassiveId"] = 11101501,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {14},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_450/500/600/700/800/850","3_250_100","2_600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1110150}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/invoker_deafening_blast_ti6.vpcf","3_100",2,-1,-1,"1_100"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101501,0,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ElectromagneticWave"}
			}
		}
	},
	[11101501] = {
		["id"] = 11101501,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_450/500/550/600/650/700/750/800","3_250_100","2_600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1110150}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/invoker_deafening_blast_ti6.vpcf","3_100",2,-1,-1,"1_100"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ElectromagneticWave"}
			}
		}
	},
	[1110151] = {
		["id"] = 1110151,
		["Quality"] = 4,
		["HidePassiveId"] = 11101511,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {500,550,600,650,700,700},
		["Cd"] = {18},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11101511}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/creep_2021_radiant_ranged.vpcf","0_100",1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11101512}
			}
		}
	},
	[11101511] = {
		["id"] = 11101511,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101511}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101513}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_skywrath_mage/skywrath_mage_mystic_flare_ambient_a.vpcf",0,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.LightShield"}
			}
		}
	},
	[11101512] = {
		["id"] = 11101512,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101514}
			}
		}
	},
	[1110152] = {
		["id"] = 1110152,
		["Quality"] = 4,
		["HidePassiveId"] = 11101521,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_-300","1_100/125/150/175/200/225_360","2_1600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {11101522,0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101521}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/remap_hero_snapfire_cookie_landing.vpcf",-1,1,-1,-1,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101521,0,-1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.AreaEarthquake"}
			}
		}
	},
	[1110153] = {
		["id"] = 1110153,
		["Quality"] = 4,
		["PassiveId"] = 11101531,
		["HidePassiveId"] = 11101532,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {7},
		["Radius"] = {0},
		["Cd"] = {20,19,17,15,13,13},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101531}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101532}
			}
		}
	},
	[1110154] = {
		["id"] = 1110154,
		["Quality"] = 4,
		["PassiveId"] = 11101541,
		["HidePassiveId"] = 11101542,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["AICheckType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {5,6,7,8,9,9},
		["Radius"] = {0},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101541,0,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101542,0,-1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101543,0,-1}
			}
		}
	},
	[1110160] = {
		["id"] = 1110160,
		["Quality"] = 4,
		["HidePassiveId"] = 11101601,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {15,14.5,13.5,12.5,11.5,11.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["AffectFromPassive"] = {{3,11101601,3}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101601,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FreezingEffect"}
			}
		}
	},
	[11101601] = {
		["id"] = 11101601,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_250_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/wyvern_arctic_burn_start_dust_hit.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101601}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.IceblastExplode"}
			}
		}
	},
	[1110161] = {
		["id"] = 1110161,
		["Quality"] = 4,
		["PassiveId"] = 11101613,
		["HidePassiveId"] = 11101611,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {10,10,10,10,10,15},
		["Radius"] = {0},
		["Cd"] = {20,19,18,17,16,16},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,0,"11101611_1"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101613,0,0}
			}
		}
	},
	[11101611] = {
		["id"] = 11101611,
		["Quality"] = 4,
		["PassiveId"] = 11101613,
		["HidePassiveId"] = 11101611,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {20,19,18,17,16,16},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11101612,"1_100_300",2,"1/1/2/3/4/4"}
			}
		}
	},
	[11101612] = {
		["id"] = 11101612,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"8_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11101613}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_base_attack.vpcf","1_100",-1,-1,2,"0_100"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireBlast"}
			}
		}
	},
	[11101613] = {
		["id"] = 11101613,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101611}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/queen_2022_scream_of_pain_owner.vpcf",0,3}
			}
		}
	},
	[1110162] = {
		["id"] = 1110162,
		["Quality"] = 4,
		["HidePassiveId"] = 11101621,
		["DamageType"] = 2,
		["TargetType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {20,19.5,18.5,17.5,16.5,16},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["AffectFromPassive"] = {{3,11101621,3}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,"1_350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/lich_ice_age.vpcf",1,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101621}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.IcePath"}
			}
		}
	},
	[1110163] = {
		["id"] = 1110163,
		["Quality"] = 4,
		["PassiveId"] = 11101633,
		["HidePassiveId"] = 11101631,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {2,2.2,2.6,3,3.5,3.5},
		["Radius"] = {700,700,700,700,700,750},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {3,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_150_360"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_winter_wyvern/wyvern_winters_curse_ground.vpcf",0,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101631}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 21,
				["Params"] = {11101632}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FreezingEffect"}
			}
		}
	},
	[11101631] = {
		["id"] = 11101631,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {2,2.2,2.4,2.6,2.8,3,3.2,3.5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,-1,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/razor/razor_punctured_crest/razor_static_link_blade.vpcf","1_50",-1,-1,-1,"0_50"}
			}
		}
	},
	[1110164] = {
		["id"] = 1110164,
		["Quality"] = 4,
		["HidePassiveId"] = 11101641,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {700},
		["Cd"] = {25},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 29,
				["Params"] = {5009,1,10,1,0.75,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Summon"}
			}
		}
	},
	[11101642] = {
		["id"] = 11101642,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"8_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_deadshot.vpcf","3_50"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11101643}
			}
		}
	},
	[11101643] = {
		["id"] = 11101643,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101642}
			}
		}
	},
	[1110170] = {
		["id"] = 1110170,
		["Quality"] = 4,
		["PassiveId"] = 11101703,
		["HidePassiveId"] = 11101701,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2,2.2,2.4,2.6,2.8,3,3.2,3.5},
		["Radius"] = {500,600,700,800,900,950},
		["Cd"] = {12},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101701,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101702,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_lich/lich_frost_nova.vpcf",0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FreezingEffect"}
			}
		}
	},
	[1110171] = {
		["id"] = 1110171,
		["Quality"] = 4,
		["HidePassiveId"] = 11101711,
		["SkillPassiveId"] = 11101713,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {30,29,27,25,23,22},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101712}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101711}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/techies_blast_off.vpcf",0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast"}
			}
		}
	},
	[1110172] = {
		["id"] = 1110172,
		["Quality"] = 4,
		["HidePassiveId"] = 11101721,
		["SkillPassiveId"] = 11101723,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {800},
		["Cd"] = {35,33,29,25,21,21},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_250/275/300/325/350/375_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101721}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_lich/lich_ice_spire.vpcf",0,5}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101722}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101723}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.IceblastTravel"}
			}
		}
	},
	[1110173] = {
		["id"] = 1110173,
		["Quality"] = 4,
		["HidePassiveId"] = 11101731,
		["SkillPassiveId"] = 11101733,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {450,500,550,600,650,700},
		["Cd"] = {13,12,11,10,9,9},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_200_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101731}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/lich_frozenchains_frostnova.vpcf",0,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.IcePath"}
			}
		}
	},
	[1110174] = {
		["id"] = 1110174,
		["Quality"] = 4,
		["HidePassiveId"] = 11101741,
		["SkillPassiveId"] = 11101743,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {15,14.6,14.2,13.8,13.5,13.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300/300/300/300/300/325_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101741}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/ancient_apparition_chilling_touch_projectile_hit_ring.vpcf",1,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.IceblastExplode"}
			}
		}
	},
	[1110180] = {
		["id"] = 1110180,
		["Quality"] = 4,
		["PassiveId"] = 11101803,
		["HidePassiveId"] = 11101801,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {15},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1110181] = {
		["id"] = 1110181,
		["Quality"] = 4,
		["HidePassiveId"] = 11101811,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {15},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101811,0,10}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ArmorActivation"}
			}
		}
	},
	[1110182] = {
		["id"] = 1110182,
		["Quality"] = 4,
		["HidePassiveId"] = 11101821,
		["SkillPassiveId"] = 11101823,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {8},
		["Radius"] = {500},
		["Cd"] = {45,44,42,40,38,37},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101821,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1009,1,8}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Throw"}
			}
		}
	},
	[1110183] = {
		["id"] = 1110183,
		["Quality"] = 4,
		["HidePassiveId"] = 11101831,
		["SkillPassiveId"] = 11101833,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {500},
		["Cd"] = {10,9,8,7,6.5,6.5},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11101831,"1_100_300",2,5,0}
			}
		}
	},
	[11101831] = {
		["id"] = 11101831,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"8_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11101832}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_base_attack.vpcf","1_100",-1,-1,2,"0_100"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SpellArrow"}
			}
		}
	},
	[11101832] = {
		["id"] = 11101832,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101831}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/queen_2022_scream_of_pain_owner.vpcf",0,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireBlast"}
			}
		}
	},
	[1110184] = {
		["id"] = 1110184,
		["Quality"] = 4,
		["PassiveId"] = 11101843,
		["HidePassiveId"] = 11101841,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0.2},
		["Radius"] = {0},
		["Cd"] = {12},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 28,
				["Params"] = {0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_250/300/400/500/600/650",0,"2_4000_1"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {11101841,11101841}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101842}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_queenofpain/queen_blink_start.vpcf","0_50"}
			}
		}
	},
	[11101841] = {
		["id"] = 11101841,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101841}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_techies/techies_blast_off.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101842}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast"}
			}
		}
	},
	[1110190] = {
		["id"] = 1110190,
		["Quality"] = 4,
		["HidePassiveId"] = 11101902,
		["SkillPassiveId"] = 11101903,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {25,24,22,20,18,17},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101901}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/queen_2022_scream_of_pain_owner_wave_smalldetails.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ElectromagneticWave"}
			}
		}
	},
	[1110191] = {
		["id"] = 1110191,
		["Quality"] = 4,
		["HidePassiveId"] = 11101911,
		["SkillPassiveId"] = 11101913,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {30,29,28,27,26,25.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			}
		}
	},
	[1110192] = {
		["id"] = 1110192,
		["Quality"] = 4,
		["HidePassiveId"] = 11101921,
		["SkillPassiveId"] = 11101923,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101921}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101923}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Wind"}
			}
		}
	},
	[1110193] = {
		["id"] = 1110193,
		["Quality"] = 4,
		["HidePassiveId"] = 11101931,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {350,400,500,600,700,750},
		["Cd"] = {12},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0,"2_1000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1110193,11101931}
			}
		}
	},
	[11101931] = {
		["id"] = 11101931,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11101931}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_techies/techies_blast_off.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast"}
			}
		}
	},
	[1110194] = {
		["id"] = 1110194,
		["Quality"] = 4,
		["HidePassiveId"] = 11101941,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {15,14.5,13.5,12.5,11.5,11.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {3,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_350_360"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11101941,0,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 3,
				["Type"] = 21,
				["Params"] = {11101941}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 3,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/axe_ti9_call.vpcf",0,2}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 3,
				["Type"] = 5,
				["Params"] = {"SKILL.HitGround"}
			}
		}
	},
	[1110200] = {
		["id"] = 1110200,
		["Quality"] = 4,
		["HidePassiveId"] = 11102001,
		["SkillPassiveId"] = 11102003,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5,6,7,8,9,9},
		["Radius"] = {0},
		["Cd"] = {5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_600_360"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102001}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_techies/techies_blast_off.vpcf",0}
			}
		}
	},
	[1110201] = {
		["id"] = 1110201,
		["Quality"] = 4,
		["HidePassiveId"] = 11102011,
		["SkillPassiveId"] = 11102013,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {15},
		["Radius"] = {250,300,400,500,600,650},
		["Cd"] = {20},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,-1,5}
			}
		}
	},
	[11102011] = {
		["id"] = 11102011,
		["Quality"] = 4,
		["HidePassiveId"] = 11102011,
		["SkillPassiveId"] = 11102013,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {7},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,-1,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_pugna/pugna_life_drain.vpcf","0_50",-1,-1,-1,"1_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.DamageTransfer"}
			}
		}
	},
	[11102012] = {
		["id"] = 11102012,
		["Quality"] = 4,
		["HidePassiveId"] = 11102011,
		["SkillPassiveId"] = 11102013,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {14},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,-1,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_pugna/pugna_life_drain.vpcf","0_50",-1,-1,-1,"1_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.DamageTransfer"}
			}
		}
	},
	[1110202] = {
		["id"] = 1110202,
		["Quality"] = 4,
		["HidePassiveId"] = 11102021,
		["DamageType"] = 0,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {8},
		["Radius"] = {0},
		["Cd"] = {17},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_250/260/280/300/325/350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102021}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102022}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/dw_ti8_immortal_cursed_crown_helper.vpcf",0,2}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102023}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.IceblastExplode"}
			}
		}
	},
	[1110203] = {
		["id"] = 1110203,
		["Quality"] = 4,
		["PassiveId"] = 11102033,
		["HidePassiveId"] = 11102031,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {12},
		["Radius"] = {0},
		["Cd"] = {5},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1110204] = {
		["id"] = 1110204,
		["Quality"] = 4,
		["HidePassiveId"] = 11102041,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {75,73.5,70.5,67.5,64,64},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11102041,0,5}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11102042,0,5}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ArmorActivation"}
			}
		}
	},
	[1110210] = {
		["id"] = 1110210,
		["Quality"] = 4,
		["PassiveId"] = 11102103,
		["HidePassiveId"] = 11102101,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11102101] = {
		["id"] = 11102101,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_200_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102101}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/roshan_slam.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.HitGround"}
			}
		}
	},
	[1110211] = {
		["id"] = 1110211,
		["Quality"] = 4,
		["PassiveId"] = 11102113,
		["HidePassiveId"] = 11102111,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {3},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1110212] = {
		["id"] = 1110212,
		["Quality"] = 4,
		["PassiveId"] = 11102123,
		["HidePassiveId"] = 11102121,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11102121] = {
		["id"] = 11102121,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {1,11102122,"1_300/350/400/460/520/520_240/270/288/308/320/320",2,"3/4/5/7/9/9",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 26,
				["Params"] = {1,11102122,"1_300/350/400/460/520/520_240/270/288/308/320/320",2,"3/4/5/7/9/9",0}
			}
		}
	},
	[11102122] = {
		["id"] = 11102122,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_150_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 21,
				["Params"] = {11102122}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/mirana_starstorm_starfall_attack.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FallArrow"}
			}
		}
	},
	[1110213] = {
		["id"] = 1110213,
		["Quality"] = 4,
		["PassiveId"] = 11102133,
		["HidePassiveId"] = 11102131,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1110214] = {
		["id"] = 1110214,
		["Quality"] = 4,
		["HidePassiveId"] = 11102141,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {70,68,64,60,56,56},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["DoIgnoreBuffs"] = 1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11102141}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.ArmorActivation"}
			}
		}
	},
	[1110250] = {
		["id"] = 1110250,
		["Quality"] = 4,
		["HidePassiveId"] = 11102501,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5,5,5,5,5,5,9},
		["Radius"] = {500,550,600,650,700,750},
		["Cd"] = {18,17.5,16.5,15.5,14.5,14.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102501}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102502}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102503}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102504}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/wraith_pact.vpcf",0,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.AcidSpray"}
			}
		}
	},
	[1110251] = {
		["id"] = 1110251,
		["Quality"] = 4,
		["HidePassiveId"] = 11102511,
		["SkillPassiveId"] = 11102513,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {12},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1110251}
			}
		}
	},
	[1110252] = {
		["id"] = 1110252,
		["Quality"] = 4,
		["HidePassiveId"] = 11102521,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {25,24,22,20,18,17},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_400/450/500/550/600/600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102521}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/jakiro_ti8_dual_breath_ice_spiral.vpcf",0,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Cyclone"}
			}
		}
	},
	[1110253] = {
		["id"] = 1110253,
		["Quality"] = 4,
		["HidePassiveId"] = 11102531,
		["SkillPassiveId"] = 11102533,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {600},
		["Cd"] = {15,14,12,10,8,8},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["AffectFromPassive"] = {{1,11102531,150}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_150/175/225/275/325/350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 17,
				["Params"] = {1,2,11000082,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102531}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/gyro_call_down_explosion_impact_d.vpcf",3,2}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast2"}
			}
		}
	},
	[1110254] = {
		["id"] = 1110254,
		["Quality"] = 4,
		["HidePassiveId"] = 11102541,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {20,19.8,19.4,19,18.6,18},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_150/200/250/300/350/350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102541}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/wr_taunt_kiss_shock.vpcf",0,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102542}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102543}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Wind2"}
			}
		}
	},
	[1110260] = {
		["id"] = 1110260,
		["Quality"] = 4,
		["PassiveId"] = 11102603,
		["HidePassiveId"] = 11102601,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[11102601] = {
		["id"] = 11102601,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5007,1,12,"10_12_16_20_25_25",0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Summon"}
			}
		}
	},
	[11102602] = {
		["id"] = 11102602,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 27,
				["Params"] = {11102601,2}
			}
		}
	},
	[11102603] = {
		["id"] = 11102603,
		["Quality"] = 4,
		["PassiveId"] = 11102604,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1110261] = {
		["id"] = 1110261,
		["Quality"] = 4,
		["HidePassiveId"] = 11102611,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {500,500,500,500,500,650},
		["Cd"] = {30},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["AffectFromPassive"] = {{1,11102612,300}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11102611,"1_300_240/270/300/315/324/324",2,"3/4/6/8/10/10",1}
			}
		}
	},
	[11102611] = {
		["id"] = 11102611,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {20,19,18,17,16,15,14,13},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5007,1,12,"3_4_6_8_10_10",0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {11102611,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Summon"}
			}
		}
	},
	[1110262] = {
		["id"] = 1110262,
		["Quality"] = 4,
		["PassiveId"] = 11102623,
		["HidePassiveId"] = 11102621,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {15},
		["Radius"] = {0},
		["Cd"] = {10},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			}
		}
	},
	[1110263] = {
		["id"] = 1110263,
		["Quality"] = 4,
		["HidePassiveId"] = 11102631,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {1000},
		["Cd"] = {20,19,17,15,13,12},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_200/300/400/500/600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102631}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_rubick/rubick_faceless_void_chronosphere.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102632}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.TimeWalk"}
			}
		}
	},
	[1110264] = {
		["id"] = 1110264,
		["Quality"] = 4,
		["HidePassiveId"] = 11102641,
		["SkillPassiveId"] = 11102643,
		["DamageType"] = 0,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {500,525,550,600,650,700},
		["Cd"] = {15,14,12,10,8,8},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["AffectFromPassive"] = {{3,11102642,3}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,-1,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1031,1,8}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/vengeful_nether_swap_blue.vpcf",0,-1,-1,-1,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Flash"}
			}
		}
	},
	[1110270] = {
		["id"] = 1110270,
		["Quality"] = 4,
		["HidePassiveId"] = 11102701,
		["DamageType"] = 0,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {18,17,15,13,11,11},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_150/175/225/275/325/350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102701}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/faceless_void_timedialate.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102702}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.LightShield"}
			}
		}
	},
	[1110271] = {
		["id"] = 1110271,
		["Quality"] = 4,
		["HidePassiveId"] = 11102711,
		["SkillPassiveId"] = 11102713,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {8},
		["Radius"] = {0},
		["Cd"] = {25,24.5,23.5,22.5,21.5,21.5},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11102711,0,0}
			}
		}
	},
	[11102711] = {
		["id"] = 11102711,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {8},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0,"8_800_2"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 23,
				["Params"] = {"400/400/400/400/400/600",1,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102712}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102713}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/luna_base_attack_model.vpcf","1_120",-1,"-",2,0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,0,0,"4/5/6/7/8/8_0_1"}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.SharpBlade"}
			}
		}
	},
	[1110272] = {
		["id"] = 1110272,
		["Quality"] = 4,
		["HidePassiveId"] = 11102721,
		["SkillPassiveId"] = 11102723,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {20,20,20,20,20,17.5},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_200/250/300/350/450/450"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11102721,"2_800_400/500/600/700/900/900",2,1}
			}
		}
	},
	[11102721] = {
		["id"] = 11102721,
		["Quality"] = 4,
		["HidePassiveId"] = 11102721,
		["SkillPassiveId"] = 11102723,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {20,20,20,20,20,17.5},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_200_360","8_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102721}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/remap_windranger_arcana_shackleshot_v2_bolo_tornado_base.vpcf",4,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Cyclone"}
			}
		}
	},
	[1110273] = {
		["id"] = 1110273,
		["Quality"] = 4,
		["HidePassiveId"] = 11102731,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3.5},
		["Radius"] = {0},
		["Cd"] = {21,19,17,15,13,13},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11102731,"1_400_360",4,1,1}
			}
		}
	},
	[11102731] = {
		["id"] = 11102731,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1.5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_400/450/500/550/600/600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 21,
				["Params"] = {11102731}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/mirana_starfall_attack_2.vpcf",0,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FallArrow"}
			}
		}
	},
	[1110274] = {
		["id"] = 1110274,
		["Quality"] = 4,
		["HidePassiveId"] = 11102741,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {15},
		["Radius"] = {1000},
		["Cd"] = {35,34.5,33.5,32.5,31,29},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_150_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102741}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_faceless_void/faceless_void_chronosphere.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11102742}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.TimeWalk"}
			}
		}
	},
	[1110300] = {
		["id"] = 1110300,
		["Quality"] = 4,
		["HidePassiveId"] = 11103001,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {25,24,22,20,18,17},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0.1,11103001,"1_200_270",2,3,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11000102}
			}
		}
	},
	[11103001] = {
		["id"] = 11103001,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,9,"1_100/150/200/250/300/300_360","8_20000","5_600_100_4000"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/obsidian_destroyer_arcane_orb_core.vpcf","3_100",-1,-1,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103001}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.MovementLoop"}
			}
		}
	},
	[1110301] = {
		["id"] = 1110301,
		["Quality"] = 4,
		["HidePassiveId"] = 11103011,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {600,600,600,600,600,700},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11103011,"1_250/260/280/300/325/325_360",3,"10/11/13/15/17/18",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11000102}
			}
		}
	},
	[11103011] = {
		["id"] = 11103011,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/mirana_starfall_attack_1.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 21,
				["Params"] = {11103011}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 21,
				["Params"] = {11103012}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FallArrow"}
			}
		}
	},
	[1110302] = {
		["id"] = 1110302,
		["Quality"] = 4,
		["HidePassiveId"] = 11103021,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10,9,7,5,3,3},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0.1,11103021,"1_550_360",3,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11000102}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11103022}
			}
		}
	},
	[11103021] = {
		["id"] = 11103021,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_200/200/200/200/200/250_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/cyclone_fm06_rock_a.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103021}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Blast2"}
			}
		}
	},
	[1110303] = {
		["id"] = 1110303,
		["Quality"] = 4,
		["HidePassiveId"] = 11103031,
		["DamageType"] = 0,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {2,2.2,2.6,3,3.5,4},
		["Radius"] = {700},
		["Cd"] = {15,14,12,10,8,8},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11103031,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_300_360"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103032}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/mirana_2021_immortal_moonlight_recipient.vpcf",0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11000102}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.StarstormImpact"}
			}
		}
	},
	[1110304] = {
		["id"] = 1110304,
		["Quality"] = 4,
		["HidePassiveId"] = 11103041,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {3,3.5,4.5,5.5,6.5,8},
		["Radius"] = {0},
		["Cd"] = {75},
		["MPCost"] = {10},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11103041,0,0,1,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {2,2},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11103041,0,0,1,0.9}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {3,3},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11103041,0,0,1,0.8}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {4,4},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11103041,0,0,1,0.7}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {5,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11103041,0,0,1,0.6}
			}
		}
	},
	[11103041] = {
		["id"] = 11103041,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 29,
				["Params"] = {5008,1,"3_3.5_4.5_5.5_6.5_8",99,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11103041,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Summon"}
			}
		}
	},
	[11103042] = {
		["id"] = 11103042,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_150_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103042,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/dw_ti8_immortal_cursed_crown_marker.vpcf",0,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103043}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireBlast"}
			}
		}
	},
	[1110310] = {
		["id"] = 1110310,
		["Quality"] = 4,
		["HidePassiveId"] = 11103101,
		["SkillPassiveId"] = 11103103,
		["DamageType"] = 1,
		["Maxlevel"] = 5,
		["Duration"] = {6,6.2,6.6,7,7.5,8},
		["Radius"] = {800},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103101}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/pugna_ward_sphereinner.vpcf",4,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103102}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/keeper_dazzling.vpcf",0,2}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103103}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/keeper_dazzling_on.vpcf",0,2}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.StarstormImpact"}
			}
		}
	},
	[11103101] = {
		["id"] = 11103101,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {0},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103104}
			}
		}
	},
	[1110311] = {
		["id"] = 1110311,
		["Quality"] = 4,
		["HidePassiveId"] = 11103111,
		["SkillPassiveId"] = 11103113,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {6,6.2,6.6,7,7.5,8},
		["Radius"] = {800},
		["Cd"] = {15},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103111}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/abaddon_aphotic_shield_alliance.vpcf",0,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103112}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/shadow_demon_soul_catcher_debuff.vpcf",0,2}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103113}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/arc_warden/arc_warden_frostivus_2023/arc_warden_magnetic_frostivus.vpcf",0,1}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103114}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.StarstormImpact"}
			}
		}
	},
	[1110312] = {
		["id"] = 1110312,
		["Quality"] = 4,
		["HidePassiveId"] = 11103121,
		["SkillPassiveId"] = 11103113,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {120,118,114,110,106,100},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11103121}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.BlinkStrike"}
			}
		}
	},
	[1110313] = {
		["id"] = 1110313,
		["Quality"] = 4,
		["PassiveId"] = 11103133,
		["HidePassiveId"] = 11103131,
		["DamageType"] = 0,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {600},
		["Cd"] = {20,19,17,15,13,13},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["AffectFromPassive"] = {{1,11103132,200}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_225/250/275/300/325/350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_techies/techies_tazer_explode.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103131}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.LightningBolt"}
			}
		}
	},
	[11103131] = {
		["id"] = 11103131,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_150_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/arc_warden_magnetic_tempest_ring.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103132}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.LightningBolt"}
			}
		}
	},
	[1110314] = {
		["id"] = 1110314,
		["Quality"] = 4,
		["PassiveId"] = 11103143,
		["HidePassiveId"] = 11103141,
		["DamageType"] = 0,
		["TargetType"] = 3,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {600,600,600,600,600,700},
		["Cd"] = {20},
		["MPCost"] = {10},
		["CastTime"] = 0.1,
		["AffectFromPassive"] = {{3,11103141,3}},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_1_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11103141}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/crystal_maiden/ti9_immortal_staff/cm_ti9_staff_lvlup_globe_spawn.vpcf",1,5}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11103142,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Purge"}
			}
		}
	},
	[1110320] = {
		["id"] = 1110320,
		["Quality"] = 4,
		["PassiveId"] = 11103203,
		["HidePassiveId"] = 11103201,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {8,7,6,5,4,3},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11103201] = {
		["id"] = 11103201,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {15,20,25,35,45},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"5_300","1_150_360",0,"5_300"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103201}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/wisp_guardian_ti7.vpcf","0_50"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.MovementLoop"}
			}
		}
	},
	[1110321] = {
		["id"] = 1110321,
		["Quality"] = 4,
		["PassiveId"] = 11103213,
		["HidePassiveId"] = 11103211,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11103211] = {
		["id"] = 11103211,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {15},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11103212,"1_350_360",3,1}
			}
		}
	},
	[11103212] = {
		["id"] = 11103212,
		["Quality"] = 4,
		["SkillPassiveId"] = 11103214,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {15,16,17,18,19},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_75_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103212}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/disruptor_ti8_immortal_thunder_strike_buff.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Throw"}
			}
		}
	},
	[11103213] = {
		["id"] = 11103213,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_75_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.1,
				["Type"] = 21,
				["Params"] = {11103213}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/nyx_assassin_mana_burn.vpcf","0_30",2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.FireBlast"}
			}
		}
	},
	[1110322] = {
		["id"] = 1110322,
		["Quality"] = 4,
		["PassiveId"] = 11103223,
		["HidePassiveId"] = 11103221,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1110323] = {
		["id"] = 1110323,
		["Quality"] = 4,
		["PassiveId"] = 11103233,
		["HidePassiveId"] = 11103231,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {10,9.5,9,8.5,8,7,6,5},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11103231] = {
		["id"] = 11103231,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_500_90"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {11103231}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {"0_1_1","particles/remap_sven_ti7_sword_spell_great_cleave.vpcf",0,-1,20}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {"0_1_1","particles/remap_sven_ti7_sword_spell_great_cleave1.vpcf",0,-1,20}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 5,
				["Params"] = {"SKILL.Shockwave"}
			}
		}
	},
	[1110324] = {
		["id"] = 1110324,
		["Quality"] = 4,
		["PassiveId"] = 11103243,
		["HidePassiveId"] = 11103241,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11103241] = {
		["id"] = 11103241,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {20,19.8,19.6,19.4,19.2,19,18.8,18.6},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_150_90"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5006,1,30,"3_4_6_8_10",0,0}
			}
		}
	},
	[1340000] = {
		["id"] = 1340000,
		["Quality"] = 4,
		["PassiveId"] = 1340000,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1340001] = {
		["id"] = 1340001,
		["Quality"] = 4,
		["PassiveId"] = 1340001,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1340002] = {
		["id"] = 1340002,
		["Quality"] = 4,
		["PassiveId"] = 1340002,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1350000] = {
		["id"] = 1350000,
		["Quality"] = 5,
		["PassiveId"] = 1350000,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1350001] = {
		["id"] = 1350001,
		["Quality"] = 5,
		["PassiveId"] = 1350001,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1350002] = {
		["id"] = 1350002,
		["Quality"] = 5,
		["PassiveId"] = 1350002,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1350003] = {
		["id"] = 1350003,
		["Quality"] = 5,
		["PassiveId"] = 1350003,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1350004] = {
		["id"] = 1350004,
		["Quality"] = 5,
		["PassiveId"] = 1350004,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[13500041] = {
		["id"] = 13500041,
		["Quality"] = 5,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_200/250/300/350/400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 21,
				["Params"] = {13500041}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/aghanim_beam_channel_ground_rings.vpcf",0,1}
			}
		}
	},
	[1350005] = {
		["id"] = 1350005,
		["Quality"] = 5,
		["PassiveId"] = 1350005,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1360000] = {
		["id"] = 1360000,
		["Quality"] = 6,
		["PassiveId"] = 1360000,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1360001] = {
		["id"] = 1360001,
		["Quality"] = 6,
		["PassiveId"] = 1360001,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[13600012] = {
		["id"] = 13600012,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_200/250/300/350/400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {13600011}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/earthshaker_arcana_debut_ground_rays_d.vpcf",0,2}
			}
		}
	},
	[1360002] = {
		["id"] = 1360002,
		["Quality"] = 6,
		["PassiveId"] = 1360002,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 5,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200010] = {
		["id"] = 1200010,
		["Quality"] = 5,
		["PassiveId"] = 1200010,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200011] = {
		["id"] = 1200011,
		["Quality"] = 5,
		["PassiveId"] = 1200011,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200012] = {
		["id"] = 1200012,
		["Quality"] = 5,
		["PassiveId"] = 1200012,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12000121] = {
		["id"] = 12000121,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_100_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12000121}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/sf_fire_arcana_shadowraze.vpcf",0}
			}
		}
	},
	[1200020] = {
		["id"] = 1200020,
		["Quality"] = 5,
		["PassiveId"] = 1200020,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200021] = {
		["id"] = 1200021,
		["Quality"] = 5,
		["PassiveId"] = 1200021,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200022] = {
		["id"] = 1200022,
		["Quality"] = 5,
		["PassiveId"] = 1200022,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200030] = {
		["id"] = 1200030,
		["Quality"] = 5,
		["PassiveId"] = 1200030,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200031] = {
		["id"] = 1200031,
		["Quality"] = 5,
		["PassiveId"] = 1200031,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200032] = {
		["id"] = 1200032,
		["Quality"] = 5,
		["PassiveId"] = 1200032,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200040] = {
		["id"] = 1200040,
		["Quality"] = 5,
		["PassiveId"] = 1200040,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200041] = {
		["id"] = 1200041,
		["Quality"] = 5,
		["PassiveId"] = 1200041,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200042] = {
		["id"] = 1200042,
		["Quality"] = 5,
		["PassiveId"] = 1200042,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200050] = {
		["id"] = 1200050,
		["Quality"] = 5,
		["PassiveId"] = 1200050,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200051] = {
		["id"] = 1200051,
		["Quality"] = 5,
		["PassiveId"] = 1200051,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200052] = {
		["id"] = 1200052,
		["Quality"] = 5,
		["PassiveId"] = 1200052,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200060] = {
		["id"] = 1200060,
		["Quality"] = 5,
		["PassiveId"] = 1200060,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200061] = {
		["id"] = 1200061,
		["Quality"] = 5,
		["PassiveId"] = 1200061,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200062] = {
		["id"] = 1200062,
		["Quality"] = 5,
		["PassiveId"] = 1200062,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200070] = {
		["id"] = 1200070,
		["Quality"] = 5,
		["PassiveId"] = 1200070,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200071] = {
		["id"] = 1200071,
		["Quality"] = 5,
		["PassiveId"] = 1200071,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200072] = {
		["id"] = 1200072,
		["Quality"] = 5,
		["PassiveId"] = 1200072,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200080] = {
		["id"] = 1200080,
		["Quality"] = 5,
		["PassiveId"] = 1200080,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200081] = {
		["id"] = 1200081,
		["Quality"] = 5,
		["PassiveId"] = 1200081,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12000811] = {
		["id"] = 12000811,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {20},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,12000812,"1_700_360",3,1,0}
			}
		}
	},
	[12000812] = {
		["id"] = 12000812,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/guangqiu.vpcf","3_40"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,12000813}
			}
		}
	},
	[12000813] = {
		["id"] = 12000813,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_200_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/timber_controlled_burn_tree_kill.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12000811}
			}
		}
	},
	[1200082] = {
		["id"] = 1200082,
		["Quality"] = 5,
		["PassiveId"] = 1200082,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200090] = {
		["id"] = 1200090,
		["Quality"] = 5,
		["PassiveId"] = 1200090,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200091] = {
		["id"] = 1200091,
		["Quality"] = 5,
		["PassiveId"] = 1200091,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200092] = {
		["id"] = 1200092,
		["Quality"] = 5,
		["PassiveId"] = 1200092,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200100] = {
		["id"] = 1200100,
		["Quality"] = 5,
		["PassiveId"] = 12001001,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200101] = {
		["id"] = 1200101,
		["Quality"] = 5,
		["PassiveId"] = 12001011,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200102] = {
		["id"] = 1200102,
		["Quality"] = 5,
		["PassiveId"] = 12001021,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200110] = {
		["id"] = 1200110,
		["Quality"] = 5,
		["PassiveId"] = 12001101,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001101] = {
		["id"] = 12001101,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_100","1_1000_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_dark_seer/dark_seer_vacuum.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12001101}
			}
		}
	},
	[1200111] = {
		["id"] = 1200111,
		["Quality"] = 5,
		["PassiveId"] = 12001111,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200112] = {
		["id"] = 1200112,
		["Quality"] = 5,
		["PassiveId"] = 12001121,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200120] = {
		["id"] = 1200120,
		["Quality"] = 5,
		["PassiveId"] = 12001201,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200121] = {
		["id"] = 1200121,
		["Quality"] = 5,
		["PassiveId"] = 12001211,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200122] = {
		["id"] = 1200122,
		["Quality"] = 5,
		["PassiveId"] = 12001221,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200130] = {
		["id"] = 1200130,
		["Quality"] = 5,
		["PassiveId"] = 12001301,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200131] = {
		["id"] = 1200131,
		["Quality"] = 5,
		["PassiveId"] = 12001311,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200132] = {
		["id"] = 1200132,
		["Quality"] = 5,
		["PassiveId"] = 12001321,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001321] = {
		["id"] = 12001321,
		["Quality"] = 5,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0,"2_10000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/blink_dagger_start_sparkles_nexon_hero_cp_2014.vpcf",1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {12001323}
			}
		}
	},
	[1200140] = {
		["id"] = 1200140,
		["Quality"] = 5,
		["PassiveId"] = 12001401,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200141] = {
		["id"] = 1200141,
		["Quality"] = 5,
		["PassiveId"] = 12001411,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200142] = {
		["id"] = 1200142,
		["Quality"] = 5,
		["PassiveId"] = 12001421,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200150] = {
		["id"] = 1200150,
		["Quality"] = 5,
		["PassiveId"] = 12001501,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200151] = {
		["id"] = 1200151,
		["Quality"] = 5,
		["PassiveId"] = 12001511,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001511] = {
		["id"] = 12001511,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_100","1_600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/disruptor/disruptor_2022_immortal/disruptor_2022_immortal_static_storm_start_lightning_bolts_rope.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12001511}
			}
		}
	},
	[1200152] = {
		["id"] = 1200152,
		["Quality"] = 5,
		["PassiveId"] = 12001521,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001521] = {
		["id"] = 12001521,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_100","1_1000_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/timber_controlled_burn_tree_kill_2.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12001521}
			}
		}
	},
	[1200160] = {
		["id"] = 1200160,
		["Quality"] = 5,
		["PassiveId"] = 12001601,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200161] = {
		["id"] = 1200161,
		["Quality"] = 5,
		["PassiveId"] = 12001611,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200162] = {
		["id"] = 1200162,
		["Quality"] = 5,
		["PassiveId"] = 12001621,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001621] = {
		["id"] = 12001621,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_100","1_1500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/aghanim_debug_ring_1.vpcf",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12001621}
			}
		}
	},
	[1200170] = {
		["id"] = 1200170,
		["Quality"] = 5,
		["PassiveId"] = 12001701,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001701] = {
		["id"] = 12001701,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,12001702,"1_700_360",3,1,0}
			}
		}
	},
	[12001702] = {
		["id"] = 12001702,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_700_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/guangqiu.vpcf","3_40"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,12001703}
			}
		}
	},
	[12001703] = {
		["id"] = 12001703,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/timber_controlled_burn_tree_kill.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12001701}
			}
		}
	},
	[1200171] = {
		["id"] = 1200171,
		["Quality"] = 5,
		["PassiveId"] = 12001711,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200172] = {
		["id"] = 1200172,
		["Quality"] = 5,
		["PassiveId"] = 12001721,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001721] = {
		["id"] = 12001721,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12001721}
			}
		}
	},
	[1200180] = {
		["id"] = 1200180,
		["Quality"] = 5,
		["PassiveId"] = 12001801,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200181] = {
		["id"] = 1200181,
		["Quality"] = 5,
		["PassiveId"] = 12001811,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1200182] = {
		["id"] = 1200182,
		["Quality"] = 5,
		["PassiveId"] = 12001821,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[12001821] = {
		["id"] = 12001821,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,12001822,"1_900_360",1,1,0}
			}
		}
	},
	[12001822] = {
		["id"] = 12001822,
		["Quality"] = 5,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_200_360","2_1000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/ancient_apparition/aa_2021_immortal/aa_2021_immortal_chilling_projectile.vpcf",1,-1,-1,2,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {12001821}
			}
		}
	},
	[2000000] = {
		["id"] = 2000000,
		["PassiveId"] = 2000000,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {99999999},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000001] = {
		["id"] = 2000001,
		["PassiveId"] = 2000001,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000002] = {
		["id"] = 2000002,
		["PassiveId"] = 2000002,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000003] = {
		["id"] = 2000003,
		["PassiveId"] = 2000003,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1] = {
		["id"] = 1,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {600},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {2000003,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/remap_pre_starfall.vpcf",0,1,0,1,0,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 17,
				["Params"] = {1,2,2000003}
			}
		}
	},
	[2000004] = {
		["id"] = 2000004,
		["PassiveId"] = 2000004,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000005] = {
		["id"] = 2000005,
		["PassiveId"] = 2000005,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000006] = {
		["id"] = 2000006,
		["PassiveId"] = 2000006,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000007] = {
		["id"] = 2000007,
		["PassiveId"] = 2000007,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000008] = {
		["id"] = 2000008,
		["PassiveId"] = 2000008,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000009] = {
		["id"] = 2000009,
		["PassiveId"] = 2000009,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000010] = {
		["id"] = 2000010,
		["PassiveId"] = 2000010,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000011] = {
		["id"] = 2000011,
		["PassiveId"] = 2000010,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[2000012] = {
		["id"] = 2000012,
		["PassiveId"] = 2000012,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1001] = {
		["id"] = 1001,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {1200},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 2,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {1,1002,1000,1002}
			}
		}
	},
	[1002] = {
		["id"] = 1002,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1001,5,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/aghanim_portal_summon_impact_cast.vpcf",2,1,0,5,0,0,0,-1,-1,-1}
			}
		}
	},
	[1003] = {
		["id"] = 1003,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["AICheckType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {"1_1500",1003,400,1002}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1003,5,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 1,
				["Params"] = {"ACT_DOTA_RUN",2}
			}
		}
	},
	[1004] = {
		["id"] = 1004,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {150},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 1.5,
		["FinishLoopCount"] = {2},
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {1,1005,2000,1005}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/creatures/aghanim/aghanim_portal_summon_impact_cast.vpcf",0,1,0,5,0,0,0,-1,-1,-1}
			}
		}
	},
	[1005] = {
		["id"] = 1005,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1005,5,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_mars/mars_shield_bash_crit.vpcf",2,1,0,5,0,0,0,-1,-1,-1}
			}
		}
	},
	[1006] = {
		["id"] = 1006,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {4},
		["Radius"] = {800},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/warning/warning_particle_circle.vpcf",2,100601,1,1,20,0,0,1,-1,-1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {4,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.5,
				["Type"] = 4,
				["Params"] = {1006,1,3}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.5,
				["Type"] = 6,
				["Params"] = {"particles/remap_pre_starfall.vpcf",0,1,0,1,0,0,0,-1,-1,-1}
			}
		}
	},
	[1007] = {
		["id"] = 1007,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {1.5},
		["Radius"] = {50},
		["Cd"] = {5},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 18,
				["Params"] = {1007,0}
			}
		}
	},
	[1008] = {
		["id"] = 1008,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1.5},
		["Radius"] = {1200},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {1006,1,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/remap_pre_starfall.vpcf",0,1,0,1,0,0,0,-1,-1,-1}
			}
		}
	},
	[1009] = {
		["id"] = 1009,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1200},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,"1_250_360","3_200"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1010}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/boss_zuus_thundergods_wrath.vpcf",1,2}
			}
		}
	},
	[1010] = {
		["id"] = 1010,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 15,
				["Params"] = {1,5000,0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,6,100,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1010,7,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/boss_zuus_thundergods_wrath.vpcf",0,2,0,7,50,0,1,2,-1,-1}
			}
		}
	},
	[1011] = {
		["id"] = 1011,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {18},
		["Radius"] = {1200},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_400",2,6,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_800",2,6,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 4,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_1200",2,6,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 6,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_1600",2,6,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 8,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_2000",2,6,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 10,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_2400",2,6,1}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 12,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_1600",2,6,1}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 14,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_2000",2,6,1}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 16,
				["Type"] = 26,
				["Params"] = {1,1012,"2_2500_2400",2,6,1}
			}
		}
	},
	[10111] = {
		["id"] = 10111,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1200},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {1,1012,"2_3000_400",2,7,1}
			}
		}
	},
	[1012] = {
		["id"] = 1012,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_250_360","1_100"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1011}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/zuus_thundergods_wrath.vpcf",1,2}
			}
		}
	},
	[1013] = {
		["id"] = 1013,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {12},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {1,1012,"1_500_300",2,6,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2,
				["Type"] = 26,
				["Params"] = {1,1012,"1_700_315",2,8,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 4,
				["Type"] = 26,
				["Params"] = {1,1012,"1_900_315",2,8,1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 6,
				["Type"] = 26,
				["Params"] = {1,1012,"1_1100_324",2,10,1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 8,
				["Type"] = 26,
				["Params"] = {1,1012,"1_1300_330",2,12,1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 10,
				["Type"] = 26,
				["Params"] = {1,1012,"1_1500_334",2,14,1}
			}
		}
	},
	[1014] = {
		["id"] = 1014,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {1015,2,1,"2_300_1000",500,1,1,10,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.5,
				["Type"] = 14,
				["Params"] = {1015,2,1,"2_300_1000",500,1,1,10,5}
			}
		}
	},
	[1015] = {
		["id"] = 1015,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2.5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,500,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/primal_beast_rock_throw.vpcf",2,1,0,7,150,0,3,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.1,
				["Type"] = 4,
				["Params"] = {1010,7,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.1,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_primal_beast/primal_beast_rock_throw_impact.vpcf",0,3,0,7,0,0,3,-1,-1,-1}
			}
		}
	},
	[1016] = {
		["id"] = 1016,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {900},
		["Cd"] = {0.1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {1017,2,2,"1_900_180",50,2,10,3,1.2}
			}
		}
	},
	[1017] = {
		["id"] = 1017,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,"350_1",0,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1017,7,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/phoenix_fire_spirits_launch_bird.vpcf",0,2,0,7,50,0,3,-1,-1,-1}
			}
		}
	},
	[1018] = {
		["id"] = 1018,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10181,"1_600_360",2,5,0,1}
			}
		}
	},
	[10181] = {
		["id"] = 10181,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360","8_350_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10182}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1018}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/phoenix_fire_spirits_launch_bird.vpcf","3_50"}
			}
		}
	},
	[10182] = {
		["id"] = 10182,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,8}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10183,"1_600_360",2,5,0,1}
			}
		}
	},
	[10183] = {
		["id"] = 10183,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360","8_350_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10184}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1018}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/phoenix_fire_spirits_launch_bird.vpcf","3_50"}
			}
		}
	},
	[10184] = {
		["id"] = 10184,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,8}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10185,"1_600_360",2,4,0,1}
			}
		}
	},
	[10185] = {
		["id"] = 10185,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_100_360","8_350_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1018}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/phoenix_fire_spirits_launch_bird.vpcf","3_50"}
			}
		}
	},
	[1023] = {
		["id"] = 1023,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"5_10000"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1023}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/antimage_blink_start_ti7_golden.vpcf",-1,-1,-1,-1,0}
			}
		}
	},
	[1024] = {
		["id"] = 1024,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {18},
		["Radius"] = {700},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {1025,3,1,"1_900_360",0,3,1,15,2.6}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.9,
				["Type"] = 14,
				["Params"] = {1025,3,1,"1_900_360",0,3,1,15,2.6}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1.8,
				["Type"] = 14,
				["Params"] = {1025,3,1,"1_900_360",0,3,1,15,2.6}
			}
		}
	},
	[1025] = {
		["id"] = 1025,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {6},
		["Radius"] = {700},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1024,7,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/lina_spell_light_strike_array.vpcf",0,1,0,7,0,0,0,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 4,
				["Params"] = {1025,7,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/phoenix_fire_spirit_burn.vpcf",0,3,0,7,50,0,0,-1,-1,-1}
			}
		}
	},
	[1026] = {
		["id"] = 1026,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["AICheckType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {"1_1500",1003,300,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1026,5,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,5,300,0,0,"1027_2"}
			}
		}
	},
	[1027] = {
		["id"] = 1027,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {1028,5,1,"1_900_360",0,2,9,5,5}
			}
		}
	},
	[1028] = {
		["id"] = 1028,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,350,0,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1028,7,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/primal_beast_pulverize_tectonic_shift_projectile.vpcf",0,2,2,7,0,0,3,-1,-1,-1}
			}
		}
	},
	[1029] = {
		["id"] = 1029,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 14,
				["Params"] = {1030,2,1,"2_300_1000",500,1,1,10,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.5,
				["Type"] = 14,
				["Params"] = {1030,2,1,"2_300_1000",500,1,1,10,5}
			}
		}
	},
	[1030] = {
		["id"] = 1030,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2.5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 3,
				["Params"] = {5001,1,500,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/primal_beast_rock_throw.vpcf",2,1,0,7,150,0,3,-1,-1,-1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.1,
				["Type"] = 4,
				["Params"] = {1029,7,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.1,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_primal_beast/primal_beast_rock_throw_impact.vpcf",0,3,0,7,0,0,3,-1,-1,-1}
			}
		}
	},
	[1031] = {
		["id"] = 1031,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1.5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1031,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/elder_titan_echo_stomp_physical.vpcf",0,1,0,2,50,0,0,-1,-1,-1}
			}
		}
	},
	[1032] = {
		["id"] = 1032,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {4},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 10,
				["Params"] = {3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1032,5,3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.5,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 1,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 1.5,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[7] = {
				["Index"] = 7,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[8] = {
				["Index"] = 8,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 2.5,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[9] = {
				["Index"] = 9,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[10] = {
				["Index"] = 10,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3.5,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[11] = {
				["Index"] = 11,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 4,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[12] = {
				["Index"] = 12,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 4.5,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[13] = {
				["Index"] = 13,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 5,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			},
			[14] = {
				["Index"] = 14,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 5.5,
				["Type"] = 6,
				["Params"] = {"particles/mars_shield_bash_model.vpcf",1,2,3,5,0,0,0,1,2,-1}
			}
		}
	},
	[1033] = {
		["id"] = 1033,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1.5},
		["Radius"] = {100},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1033,5,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/units/heroes/hero_centaur/centaur_warstomp.vpcf",0,1,0,5,0,0,0,-1,-1,-1}
			}
		}
	},
	[1034] = {
		["id"] = 1034,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1034,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0.1,10341,"1_300_270",2,3,0}
			}
		}
	},
	[10341] = {
		["id"] = 10341,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,9,"1_100_360",0,"5_120"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",4}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10341}
			}
		}
	},
	[1035] = {
		["id"] = 1035,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_600","3_200_1200"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {2000008,0,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1035}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0.1,10351,"1_1200_360",2,1,0}
			}
		}
	},
	[10351] = {
		["id"] = 10351,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"1_-600","3_300_1200","2_0_-600"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/razor_arcana_static_link_beam.vpcf","0_50",2,-1,-1,"1_50"}
			}
		}
	},
	[1036] = {
		["id"] = 1036,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_200"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 28
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",4}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1036}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {"10361_1"}
			}
		}
	},
	[10361] = {
		["id"] = 10361,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,"1_150_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/stormspirit_overload_discharge.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10361}
			}
		}
	},
	[1037] = {
		["id"] = 1037,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1037,0,0,5,0.5}
			}
		}
	},
	[1038] = {
		["id"] = 1038,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 17,
				["Params"] = {1,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {1038}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0.1,10341,"1_200_270",2,3,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.3,
				["Type"] = 26,
				["Params"] = {0.1,10341,"1_400_288",2,4,0}
			},
			[6] = {
				["Index"] = 6,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.6,
				["Type"] = 26,
				["Params"] = {0.1,10341,"1_600_310",2,6,0}
			}
		}
	},
	[10381] = {
		["id"] = 10381,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,9,"1_100_360",0,"5_120"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/puck_illusory_orb_merry_wanderer_linear_projectile.vpcf",4}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10341}
			}
		}
	},
	[1040] = {
		["id"] = 1040,
		["Quality"] = 4,
		["PassiveId"] = 10401,
		["DamageType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1040}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/omniknight_guardian_angel_wings_buff.vpcf",0,-1,5}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/spirit_vessel_damage_ring_detail.vpcf",0,1}
			}
		}
	},
	[10401] = {
		["id"] = 10401,
		["Quality"] = 4,
		["PassiveId"] = 10402,
		["DamageType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10401}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/dawnbreaker_solar_guardian_ring_outer_rope.vpcf",0,2}
			}
		}
	},
	[1041] = {
		["id"] = 1041,
		["Quality"] = 4,
		["DamageType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 2,
				["Params"] = {1041}
			}
		}
	},
	[1042] = {
		["id"] = 1042,
		["Quality"] = 4,
		["DamageType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1042}
			}
		}
	},
	[1043] = {
		["id"] = 1043,
		["Quality"] = 4,
		["DamageType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 16,
				["Params"] = {3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {3,"particles/hand_courier_radiant_lv7_ambient_ring_rope.vpcf","2_100"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3,
				["Type"] = 22,
				["Params"] = {1,"particles/underlord_dark_rift_ring.vpcf","20_30",1}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 3,
				["Type"] = 21,
				["Params"] = {1043}
			}
		}
	},
	[1044] = {
		["id"] = 1044,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_450_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/centaur_warstomp.vpcf",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1044}
			}
		}
	},
	[1045] = {
		["id"] = 1045,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {1200},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 2,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {1,1002,1000,1046}
			}
		}
	},
	[1046] = {
		["id"] = 1046,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {100},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1045,5,0,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 6,
				["Params"] = {"particles/skill/finish/aghanim_portal_summon_impact_cast.vpcf",2,1,0,5,0,0,0,-1,-1,-1}
			}
		}
	},
	[1047] = {
		["id"] = 1047,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["AICheckType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 8,
				["Params"] = {"1_1500",1003,600,1002}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 4,
				["Params"] = {1003,5,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 1,
				["Params"] = {"ACT_DOTA_RUN",2}
			}
		}
	},
	[1048] = {
		["id"] = 1048,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10481,1}
			}
		}
	},
	[10481] = {
		["id"] = 10481,
		["Quality"] = 6,
		["PassiveId"] = 10481,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {11},
		["Radius"] = {700},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {3,"particles/warning/warning_particle_circle.vpcf","0_1",1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 3,
				["Type"] = 21,
				["Params"] = {104811,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 3,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/warlock_upheaval.vpcf","0_10",1}
			}
		}
	},
	[10482] = {
		["id"] = 10482,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {11},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {104811,1}
			}
		}
	},
	[1049] = {
		["id"] = 1049,
		["Quality"] = 6,
		["PassiveId"] = 10493,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {999999},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[1050] = {
		["id"] = 1050,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/earthshaker_totem_leap_impact.vpcf",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10501}
			}
		}
	},
	[1051] = {
		["id"] = 1051,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0.01},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_nevermore/sf_necromastery_attack.vpcf",1,-1,-1,2,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10511}
			}
		}
	},
	[10511] = {
		["id"] = 10511,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10511}
			}
		}
	},
	[1052] = {
		["id"] = 1052,
		["Quality"] = 6,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_150_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/staff_beam_tgt_ring.vpcf",3,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10521}
			}
		}
	},
	[1053] = {
		["id"] = 1053,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10531,1}
			}
		}
	},
	[1054] = {
		["id"] = 1054,
		["Quality"] = 6,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10541}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/stormspirit_overload_discharge.vpcf",0,1}
			}
		}
	},
	[1055] = {
		["id"] = 1055,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10551,"1_500_180",2,1}
			}
		}
	},
	[10551] = {
		["id"] = 10551,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"3_250_1000"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10551}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/disruptor_static_wall_markers.vpcf","1_0_500",-1,-1,-1,"0_0_100"}
			}
		}
	},
	[1056] = {
		["id"] = 1056,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10561,"1_500_180",2,3}
			}
		}
	},
	[10561] = {
		["id"] = 10561,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"3_250_1000"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10561}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/disruptor_static_wall_markers.vpcf","1_0_500",-1,-1,-1,"0_0_100"}
			}
		}
	},
	[1057] = {
		["id"] = 1057,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10571,"1_500_360",2,6}
			}
		}
	},
	[10571] = {
		["id"] = 10571,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"3_250_1000"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10571}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/disruptor_static_wall_markers.vpcf","1_0_500",-1,-1,-1,"0_0_100"}
			}
		}
	},
	[1058] = {
		["id"] = 1058,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_meepo/meepo_earthbind_projectile_fx.vpcf",1,-1,-1,2,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10581}
			}
		}
	},
	[10581] = {
		["id"] = 10581,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10581,1}
			}
		}
	},
	[1059] = {
		["id"] = 1059,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_150_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_dark_willow/dark_willow_wisp_spell.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10591}
			}
		}
	},
	[1060] = {
		["id"] = 1060,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_deadshot.vpcf","3_50"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10605}
			}
		}
	},
	[10601] = {
		["id"] = 10601,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_deadshot.vpcf","3_50"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10605}
			}
		}
	},
	[10602] = {
		["id"] = 10602,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_deadshot.vpcf","3_50"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10605}
			}
		}
	},
	[10603] = {
		["id"] = 10603,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_deadshot.vpcf","3_50"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10605}
			}
		}
	},
	[10604] = {
		["id"] = 10604,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_500_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_deadshot.vpcf","3_50"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10605}
			}
		}
	},
	[10605] = {
		["id"] = 10605,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {3000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10601}
			}
		}
	},
	[1061] = {
		["id"] = 1061,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_10000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/blink_dagger_start_sparkles_nexon_hero_cp_2014.vpcf",1}
			}
		}
	},
	[1062] = {
		["id"] = 1062,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10621,0}
			}
		}
	},
	[10631] = {
		["id"] = 10631,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_800_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,106311}
			}
		}
	},
	[106311] = {
		["id"] = 106311,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10631}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_primal_beast/primal_beast_pulverize_hit.vpcf",0,1}
			}
		}
	},
	[10632] = {
		["id"] = 10632,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1200_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,106321}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/blink_dagger_start_ti5.vpcf",0}
			}
		}
	},
	[106321] = {
		["id"] = 106321,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10632}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/dawnbreaker_solar_guardian_landing.vpcf",0,2}
			}
		}
	},
	[1064] = {
		["id"] = 1064,
		["SkillPassiveId"] = 10643,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {999999},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			}
		}
	},
	[10651] = {
		["id"] = 10651,
		["Quality"] = 6,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/omniknight_pur_ti6_immortal_ring_glow.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10651}
			}
		}
	},
	[10652] = {
		["id"] = 10652,
		["Quality"] = 6,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/omniknight_purification.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10652}
			}
		}
	},
	[1066] = {
		["id"] = 1066,
		["Quality"] = 6,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_350_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/necrolyte_spirit.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10661}
			}
		}
	},
	[10671] = {
		["id"] = 10671,
		["Quality"] = 6,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10671,1}
			}
		}
	},
	[10672] = {
		["id"] = 10672,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/brewmaster_thunder_clap.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10672}
			}
		}
	},
	[10682] = {
		["id"] = 10682,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_175_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/slardar_crush_start.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10682}
			}
		}
	},
	[1069] = {
		["id"] = 1069,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 28
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/snapfire_lizard_blobs_arced_model.vpcf","3_100",-1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10691}
			}
		}
	},
	[10691] = {
		["id"] = 10691,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_250_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/hero_snapfire_ultimate_linger.vpcf",0,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10691}
			}
		}
	},
	[1070] = {
		["id"] = 1070,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {2},
		["MPCost"] = {0},
		["CastTime"] = 6,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_600",0,"2_200_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,0,0,"10703_0.5"}
			}
		}
	},
	[10701] = {
		["id"] = 10701,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {2},
		["MPCost"] = {0},
		["CastTime"] = 6,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_600",0,"2_200_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,0,0,"10703_0.5"}
			}
		}
	},
	[10702] = {
		["id"] = 10702,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {2},
		["MPCost"] = {0},
		["CastTime"] = 6,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_600",0,"2_200_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1003,0,0,"10703_0.5"}
			}
		}
	},
	[10703] = {
		["id"] = 10703,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {2},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,8,"1_200_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10701}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {"0_1","particles/creatures/aghanim/staff_beam_tgt_fire.vpcf",3}
			}
		}
	},
	[1071] = {
		["id"] = 1071,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10711,"2_3000_2000",1,3,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10711,0,0}
			}
		}
	},
	[10711] = {
		["id"] = 10711,
		["Quality"] = 6,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,9,"1_100_360","8_300_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/death_prophet_spirit_model.vpcf",0,-1,2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10711}
			}
		}
	},
	[10721] = {
		["id"] = 10721,
		["Quality"] = 6,
		["SkillPassiveId"] = 107211,
		["DamageType"] = 0,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_800_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/omniknight_purification.vpcf",0,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10721}
			}
		}
	},
	[10722] = {
		["id"] = 10722,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_1000"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10722}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/pudge_meathook_chain.vpcf",3,-1,-1,-1,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {"107221_1"}
			}
		}
	},
	[107221] = {
		["id"] = 107221,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/pudge_meathook_chain.vpcf",3,-1,-1,-1,0}
			}
		}
	},
	[10731] = {
		["id"] = 10731,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10731}
			}
		}
	},
	[10732] = {
		["id"] = 10732,
		["Quality"] = 6,
		["PassiveId"] = 10732,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_900","3_600_200","2_500_1_150"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10732}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/invoker_deafening_blast_ti6_1.vpcf","3_50",2,-1,-1,"1_50"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/invoker_deafening_blast_ti6_2.vpcf","3_50",2,-1,-1,"1_50"}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 0,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/invoker_deafening_blast_ti6_3.vpcf","3_50",2,-1,-1,"1_50"}
			}
		}
	},
	[10733] = {
		["id"] = 10733,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {3},
		["Radius"] = {1000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 3,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_450_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10733}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/kez_hungering_blades_2.vpcf",0,2}
			}
		}
	},
	[10741] = {
		["id"] = 10741,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"2_600","3_400_1200"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10741}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/jakiro_macropyre.vpcf","1_0_600",4,-1,-1,0}
			}
		}
	},
	[10742] = {
		["id"] = 10742,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,107421,"1_0_0",0,1,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.1,
				["Type"] = 20,
				["Params"] = {0,"2_1000",0,"2_1000_1"}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0.1,
				["Type"] = 24,
				["Params"] = {1002,107421}
			}
		}
	},
	[107421] = {
		["id"] = 107421,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1500},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10742}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/dawnbreaker_ambient_solar_flare.vpcf",0,2}
			}
		}
	},
	[10743] = {
		["id"] = 10743,
		["Quality"] = 6,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10743}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/enigma_blackhole_ti5.vpcf","0_50",3}
			}
		}
	},
	[10751] = {
		["id"] = 10751,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 5,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,107511,"1_800_270",2,4,1}
			}
		}
	},
	[107511] = {
		["id"] = 107511,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,9,"1_150_360","8_800_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10751}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/nyx_assassin_impale_ti6_spikes.vpcf",3}
			}
		}
	},
	[10752] = {
		["id"] = 10752,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10752}
			}
		}
	},
	[10753] = {
		["id"] = 10753,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10753}
			}
		}
	},
	[10761] = {
		["id"] = 10761,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,107611,"1_200_270",2,3,0}
			}
		}
	},
	[107611] = {
		["id"] = 107611,
		["Quality"] = 4,
		["DamageType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,9,"1_100_360","8_20000","5_200_80_600"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_shadow_demon/shadow_demon_disruption.vpcf",0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10761}
			}
		}
	},
	[10762] = {
		["id"] = 10762,
		["Quality"] = 1,
		["PassiveId"] = 10762,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {1500},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_250_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10762}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/gs_fall20_immortal_soul_debuff.vpcf","2_20",1}
			}
		}
	},
	[107621] = {
		["id"] = 107621,
		["Quality"] = 1,
		["PassiveId"] = 107621,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {40},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/pudge/pudge_ti10_immortal/pudge_ti10_immortal_meathook_chain_glow.vpcf","0_100",-1,-1,-1,6}
			}
		}
	},
	[10763] = {
		["id"] = 10763,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1800},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 28
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,107631,"1_300_120",2,5,0}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/stormspirit_overload_discharge.vpcf",0,1}
			}
		}
	},
	[107631] = {
		["id"] = 107631,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"1_300_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,107632}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_muerta/muerta_base_attack.vpcf","1_100",-1,-1,2,"0_100"}
			}
		}
	},
	[107632] = {
		["id"] = 107632,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,1},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10763,0}
			}
		}
	},
	[1077] = {
		["id"] = 1077,
		["Quality"] = 1,
		["PassiveId"] = 10771,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[10771] = {
		["id"] = 10771,
		["Quality"] = 1,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 13,
				["Params"] = {5008,2,20,2,0,0}
			}
		}
	},
	[1078] = {
		["id"] = 1078,
		["Quality"] = 1,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,"1_250_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10781}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/enchantress_2021_crimson_ground_pulse.vpcf",0,1}
			}
		}
	},
	[1079] = {
		["id"] = 1079,
		["Quality"] = 1,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10791,1}
			}
		}
	},
	[1080] = {
		["id"] = 1080,
		["Quality"] = 1,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 1,
				["Type"] = 21,
				["Params"] = {10801}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/gs_fall20_immortal_soul_debuff.vpcf","2_20",1}
			}
		}
	},
	[1081] = {
		["id"] = 1081,
		["Quality"] = 1,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,0,1}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10811,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_pugna/pugna_life_drain.vpcf","0_400",-1,-1,-1,1}
			}
		}
	},
	[10811] = {
		["id"] = 10811,
		["Quality"] = 1,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_2000_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10812,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10813,0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/slark_immortal_dark_pact_pulses_rings.vpcf",1,0}
			}
		}
	},
	[10812] = {
		["id"] = 10812,
		["Quality"] = 1,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,0}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 1,
				["Params"] = {"ACT_DOTA_RUN",2}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10813,0}
			}
		}
	},
	[1082] = {
		["id"] = 1082,
		["Quality"] = 1,
		["PassiveId"] = 10821,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0
	},
	[10821] = {
		["id"] = 10821,
		["Quality"] = 1,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10822}
			}
		}
	},
	[1083] = {
		["id"] = 1083,
		["Quality"] = 4,
		["PassiveId"] = 10831,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10831,"1_500_270",2,4,32}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10831}
			}
		}
	},
	[10831] = {
		["id"] = 10831,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 29,
				["Params"] = {6005,1,32,5,0,0}
			}
		}
	},
	[10841] = {
		["id"] = 10841,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10841}
			}
		}
	},
	[10842] = {
		["id"] = 10842,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10842}
			}
		}
	},
	[1085] = {
		["id"] = 1085,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1500},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.3,
				["Type"] = 27,
				["Params"] = {10851}
			}
		}
	},
	[10851] = {
		["id"] = 10851,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {1500},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5,0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/units/heroes/hero_pugna/pugna_life_drain.vpcf","0_400",-1,-1,-1,1}
			}
		}
	},
	[1086] = {
		["id"] = 1086,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {1500},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,"1_200_360","2_300_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10861}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/elder_titan_ti7_ambient_spiral_rev.vpcf","6_200"}
			}
		}
	},
	[10861] = {
		["id"] = 10861,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {1500},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {10861,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/econ/items/juggernaut/jugg_fall20_immortal/jugg_fall20_immortal_healing_ward_death.vpcf",0}
			}
		}
	},
	[1087] = {
		["id"] = 1087,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {1500},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_300_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10871,1}
			}
		}
	},
	[1088] = {
		["id"] = 1088,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10881,"1_1200_300",2,6,32}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 0,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10881}
			}
		}
	},
	[10881] = {
		["id"] = 10881,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {1},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 29,
				["Params"] = {6004,1,15,6,0,0}
			}
		}
	},
	[1089] = {
		["id"] = 1089,
		["Quality"] = 4,
		["PassiveId"] = 10891,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {0},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1090] = {
		["id"] = 1090,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1090}
			}
		}
	},
	[10901] = {
		["id"] = 10901,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,"6_200",0,"2_1000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/muerta_base_attack_alt_cd_reduction.vpcf",1,-1,-1,2,0}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10902}
			}
		}
	},
	[10902] = {
		["id"] = 10902,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10901,1}
			}
		}
	},
	[1091] = {
		["id"] = 1091,
		["Quality"] = 4,
		["PassiveId"] = 1091,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1091,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/ogre_magi_arcana_fireblast.vpcf",0}
			}
		}
	},
	[10911] = {
		["id"] = 10911,
		["Quality"] = 4,
		["SkillPassiveId"] = 10911,
		["DamageType"] = 1,
		["TargetType"] = 1,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			}
		}
	},
	[1092] = {
		["id"] = 1092,
		["Quality"] = 4,
		["PassiveId"] = 1092,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {120},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1092}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/cyclone_fm06_rock_b.vpcf",0}
			}
		}
	},
	[1093] = {
		["id"] = 1093,
		["Quality"] = 4,
		["PassiveId"] = 1093,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0.5,
				["Type"] = 21,
				["Params"] = {1093}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/kez_sai_ultimate_wave.vpcf",0}
			}
		}
	},
	[1094] = {
		["id"] = 1094,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1094}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/maiden_freezing_field_snow_arcana1_shard.vpcf",0,1}
			}
		}
	},
	[1095] = {
		["id"] = 1095,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_600_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/ancient_apparition_ice_blast_final_grid_b_ti5.vpcf",3}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,10951}
			}
		}
	},
	[10951] = {
		["id"] = 10951,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1095,1}
			}
		}
	},
	[1096] = {
		["id"] = 1096,
		["Quality"] = 4,
		["PassiveId"] = 1096,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {120},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["DoIgnoreBuffs"] = 1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,5}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/radiance_owner_proj_fallrewardline_2025.vpcf",0}
			}
		}
	},
	[1097] = {
		["id"] = 1097,
		["Quality"] = 4,
		["PassiveId"] = 1097,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {0},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[1098] = {
		["id"] = 1098,
		["Quality"] = 4,
		["PassiveId"] = 1098,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"1_10000"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,10981,0,0,10,1.5}
			}
		}
	},
	[10981] = {
		["id"] = 10981,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1.5},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1098}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/axe_ti9_gold_call_1.vpcf",0,2}
			}
		}
	},
	[1099] = {
		["id"] = 1099,
		["Quality"] = 4,
		["PassiveId"] = 1099,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_3000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1099,10991}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/blink_dagger_start_sparkles_nexon_hero_cp_2014_1.vpcf",0,2}
			}
		}
	},
	[10991] = {
		["id"] = 10991,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {6},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10991}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/ta_2022_immortal_trap_gold_explosion_shock_1.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 5,
				["Type"] = 21,
				["Params"] = {1099}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 5,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/ta_2022_immortal_trap_gold_explode.vpcf",0}
			}
		}
	},
	[10992] = {
		["id"] = 10992,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_3000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1099,10993}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/blink_dagger_start_sparkles_nexon_hero_cp_2014_1.vpcf",0,2}
			}
		}
	},
	[10993] = {
		["id"] = 10993,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {6},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {10991}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/ta_2022_immortal_trap_gold_explosion_shock_1.vpcf",0}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 5,
				["Type"] = 21,
				["Params"] = {1099}
			},
			[5] = {
				["Index"] = 5,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 5,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/ta_2022_immortal_trap_gold_explode.vpcf",0}
			}
		}
	},
	[1100] = {
		["id"] = 1100,
		["Quality"] = 4,
		["PassiveId"] = 1100,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/dire_rock_golem_attack_model.vpcf","3_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11001}
			}
		}
	},
	[11001] = {
		["id"] = 11001,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {10000},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1100}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/wk_arc_reincarn_streak_inward_style.vpcf",3}
			}
		}
	},
	[1101] = {
		["id"] = 1101,
		["Quality"] = 4,
		["PassiveId"] = 1101,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11011,"1_3000_314",2,8,10}
			}
		}
	},
	[11011] = {
		["id"] = 11011,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360","2_300_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1101}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/invoker_tornado_funnel.vpcf",3}
			}
		}
	},
	[11012] = {
		["id"] = 11012,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11013,"1_3000_314",2,8,10}
			}
		}
	},
	[11013] = {
		["id"] = 11013,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_300_360","2_300_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1101}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/invoker_tornado_funnel.vpcf",3}
			}
		}
	},
	[1102] = {
		["id"] = 1102,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/gate_of_hell_disruption_glow.vpcf","0_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11021}
			}
		}
	},
	[11021] = {
		["id"] = 11021,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1102}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11021,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/teleport_end_fallmjr_2015_lvl2_black_flek.vpcf",0}
			}
		}
	},
	[1103] = {
		["id"] = 1103,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/gate_of_hell_disruption_glow_1.vpcf","0_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11031}
			}
		}
	},
	[11031] = {
		["id"] = 11031,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1103}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11021,1}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/teleport_end_fallmjr_2015_lvl2_black_flek_1.vpcf",0}
			}
		}
	},
	[1104] = {
		["id"] = 1104,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/gate_of_hell_disruption_glow_2.vpcf","0_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11041}
			}
		}
	},
	[11041] = {
		["id"] = 11041,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11021,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1104}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/teleport_end_fallmjr_2015_lvl2_black_flek_2.vpcf",0}
			}
		}
	},
	[1105] = {
		["id"] = 1105,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {5},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,6,0,"2_400_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/gate_of_hell_disruption_glow_3.vpcf","0_100"}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 25,
				["Params"] = {0,11051}
			}
		}
	},
	[11051] = {
		["id"] = 11051,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,3,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {11021,1}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1105}
			},
			[4] = {
				["Index"] = 4,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/teleport_end_fallmjr_2015_lvl2_black_flek_3.vpcf",0}
			}
		}
	},
	[1106] = {
		["id"] = 1106,
		["Quality"] = 4,
		["PassiveId"] = 1106,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {20},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1106}
			}
		}
	},
	[1107] = {
		["id"] = 1107,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_3000_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1107}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/aghanim_blink_ground_rings.vpcf","0_30"}
			}
		}
	},
	[1108] = {
		["id"] = 1108,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {30},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1108}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/remap_bloodseeker_spell_bloodbath_bubbles_.vpcf",0}
			}
		}
	},
	[1109] = {
		["id"] = 1109,
		["Quality"] = 4,
		["PassiveId"] = 1109,
		["DamageType"] = 2,
		["TargetType"] = 2,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,0,"2_1000_1"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 24,
				["Params"] = {1109,11091}
			}
		}
	},
	[11091] = {
		["id"] = 11091,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_600_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1109}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/elder_titan_echo_stomp_1.vpcf",0}
			}
		}
	},
	[1110] = {
		["id"] = 1110,
		["Quality"] = 4,
		["DamageType"] = 1,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {10},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1110}
			}
		}
	},
	[1111] = {
		["id"] = 1111,
		["Quality"] = 4,
		["PassiveId"] = 1111,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11111] = {
		["id"] = 11111,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 26,
				["Params"] = {0,11112,"1_800_314",2,10,10}
			}
		}
	},
	[11112] = {
		["id"] = 11112,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_400_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1111}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/legion_commander_odds_ti7.vpcf",0}
			}
		}
	},
	[1112] = {
		["id"] = 1112,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {15},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,1,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1112}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/hero_snapfire_ultimate_ground_glow_1.vpcf",0}
			}
		}
	},
	[1113] = {
		["id"] = 1113,
		["Quality"] = 4,
		["PassiveId"] = 1113,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {1},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2,"1_500_360"}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 21,
				["Params"] = {1113}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/mk_arcana_spring_fire_base_expanding.vpcf",0}
			}
		}
	},
	[1114] = {
		["id"] = 1114,
		["Quality"] = 4,
		["PassiveId"] = 1114,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1
	},
	[11141] = {
		["id"] = 11141,
		["Quality"] = 4,
		["DamageType"] = 2,
		["TargetType"] = 0,
		["Maxlevel"] = 1,
		["Duration"] = {2},
		["Radius"] = {0},
		["Cd"] = {0},
		["MPCost"] = {0},
		["CastTime"] = 0.1,
		["TimeLine"] = {
			[1] = {
				["Index"] = 1,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 20,
				["Params"] = {0,2}
			},
			[2] = {
				["Index"] = 2,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 27,
				["Params"] = {1114}
			},
			[3] = {
				["Index"] = 3,
				["Active"] = 1,
				["Level"] = {1,99},
				["Time"] = 0,
				["Type"] = 22,
				["Params"] = {0,"particles/skill/finish/death_dt20_mist.vpcf",0}
			}
		}
	}
}
