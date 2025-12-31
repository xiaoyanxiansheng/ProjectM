--[[
	SkillBuff

	字段列表:
		Id {int} 编号
		ClientShow {int} 客户端显示
		DesignType {int} Buff设计类型
		AttrType {int} Buff属性类型
		GainOrDeBuff {int} 增益减益Buff
		ActiveProb {array(number, number...)} 激活概率
		Duration {array(number, number...)} 持续时间（秒）
		DurationSkillId {array(number, number...)} 结束技能
		DurationBuffId {array(number, number...)} 结束Buff
		OverlayType {int} 叠加类型
		MaxStack {array(int, int...)} 最大叠加层数
		MaxStackBuffId {int} 最大叠加层数Buff
		MaxStackDelete {int} 最大叠加层数删除Buff
		MaxStackReset {int} 最大叠加层数是否重置
		ParticlePathCP {int} 特效路径位置控制点
		ParticlePath {string} 特效路径
		ParticleAttachment {string} 特效附加点
		ParticleOffsetZ {number} 特效偏移
		Anim {string} 动作
		Effect.Type {int} 类型
		Effect.Params {array(array(auto, auto...), ...)} 参数
		Effect.StackCountParams {array(array(auto, auto...), ...)} 层级倍数
		Effect.HealthParams {array(array(auto, auto...), ...)} 治疗参数
		Effect.DamageParams {array(array(auto, auto...), ...)} 伤害参数

]]
return {
	[10001] = {
		["Id"] = 10001,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {5000,6000,7000},
		["Duration"] = {5,6,7},
		["OverlayType"] = 2,
		["MaxStack"] = {5,10,15},
		["MaxStackBuffId"] = 0,
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{11,1,100},{12,2,0.5},{13,2,0.5}}
			},
			[2] = {
				["Type"] = 2,
				["Params"] = {{500}}
			}
		}
	},
	[10002] = {
		["Id"] = 10002,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {5,10,15},
		["MaxStackBuffId"] = 10003,
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[128] = {
				["Type"] = 128
			},
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{1,5,10}}
			}
		}
	},
	[10003] = {
		["Id"] = 10003,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{-2,0}}
			}
		}
	},
	[10004] = {
		["Id"] = 10004,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {5000,6000,7000},
		["Duration"] = {60},
		["OverlayType"] = 2,
		["MaxStack"] = {3},
		["MaxStackBuffId"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{151,1,100,200,300},{152,1,50,100,150}}
			}
		}
	},
	[10006] = {
		["Id"] = 10006,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["MaxStackBuffId"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{151,1,100,200,300},{152,1,50,100,150}}
			}
		}
	},
	[20000] = {
		["Id"] = 20000,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 0,
		["MaxStack"] = {0},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[20001] = {
		["Id"] = 20001,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1000},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["MaxStackBuffId"] = 200011,
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[128] = {
				["Type"] = 128,
				["Params"] = {{0.1,0.2,0.3,0.4,0.5},{0.2,0.3,0.4,0.5,0.6}}
			}
		}
	},
	[200011] = {
		["Id"] = 200011,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,1,-100}}
			}
		}
	},
	[20002] = {
		["Id"] = 20002,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-1},{51,1,-10000},{52,2,-1},{52,1,-10000}}
			}
		}
	},
	[20003] = {
		["Id"] = 20003,
		["ActiveProb"] = {10000},
		["Duration"] = {0.4},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{400,0}}
			}
		}
	},
	[200041] = {
		["Id"] = 200041,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"164_212",3,0.1,0.2}}
			}
		}
	},
	[200042] = {
		["Id"] = 200042,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"162_41",3,0.2,0.3}}
			}
		}
	},
	[200043] = {
		["Id"] = 200043,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024
			}
		}
	},
	[200051] = {
		["Id"] = 200051,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,2,1}}
			},
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,1,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}},
				["DamageParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			}
		}
	},
	[200052] = {
		["Id"] = 200052,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,2,1}}
			}
		}
	},
	[200071] = {
		["Id"] = 200071,
		["ActiveProb"] = {5000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,2,1}}
			}
		}
	},
	[200072] = {
		["Id"] = 200072,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {2},
		["MaxStackBuffId"] = 200073,
		["MaxStackReset"] = 1,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf"
	},
	[200073] = {
		["Id"] = 200073,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[8192] = {
				["Type"] = 8192,
				["Params"] = {{200071}}
			}
		}
	},
	[20010] = {
		["Id"] = 20010,
		["ActiveProb"] = {10000},
		["Duration"] = {0.1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[20011] = {
		["Id"] = 20011,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}}
			}
		}
	},
	[101] = {
		["Id"] = 101,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/econ/items/primal_beast/primal_beast_2022_prestige/primal_beast_2022_prestige_onslaught_charge_dust_front.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}}
			}
		}
	},
	[102] = {
		["Id"] = 102,
		["ActiveProb"] = {10000},
		["Duration"] = {9999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			}
		}
	},
	[3000000] = {
		["Id"] = 3000000,
		["ClientShow"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/econ/events/fall_2022/mjollnir/mjollnir_shield_fall2022.vpcf",
		["ParticleOffsetZ"] = 200,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			}
		}
	},
	[3000010] = {
		["Id"] = 3000010,
		["ClientShow"] = 0,
		["ActiveProb"] = {10000},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			}
		}
	},
	[3000011] = {
		["Id"] = 3000011,
		["ClientShow"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 200,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			}
		}
	},
	[3000020] = {
		["Id"] = 3000020,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}}
			}
		}
	},
	[3000031] = {
		["Id"] = 3000031,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,2,1}}
			},
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			}
		}
	},
	[3000041] = {
		["Id"] = 3000041,
		["AttrType"] = 2,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{300}}
			}
		}
	},
	[3000101] = {
		["Id"] = 3000101,
		["ActiveProb"] = {10000},
		["Duration"] = {0.6},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[3000121] = {
		["Id"] = 3000121,
		["ClientShow"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/crystal_maiden_frostbite.vpcf",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			}
		}
	},
	[3000131] = {
		["Id"] = 3000131,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/phoenix_fire_spirit_burn.vpcf",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,2,1}}
			}
		}
	},
	[3000141] = {
		["Id"] = 3000141,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 3,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}}
			}
		}
	},
	[300015] = {
		["Id"] = 300015,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1,2,3,4,5},{1,0,1,1.2,1.4,1.6,1.8}}
			}
		}
	},
	[300018] = {
		["Id"] = 300018,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["Effect"] = {
			[32768] = {
				["Type"] = 32768,
				["Params"] = {{1.1,1.2,1.3,1.4,1.5}}
			}
		}
	},
	[300019] = {
		["Id"] = 300019,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[131072] = {
				["Type"] = 131072,
				["Params"] = {{1.1,1.2,1.3,1.4,1.5}}
			}
		}
	},
	[300020] = {
		["Id"] = 300020,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/function/finish/curlnoise_test.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[524288] = {
				["Type"] = 524288
			}
		}
	},
	[1100000] = {
		["Id"] = 1100000,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.2,2.4,2.6,3}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11000001] = {
		["Id"] = 11000001,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.2,2.4,2.6,3}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11000002] = {
		["Id"] = 11000002,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 4,
		["ParticlePath"] = "particles/skill/finish/baby_roshan_desert_sands_ambient_loadout.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-0.9}}
			}
		}
	},
	[11000003] = {
		["Id"] = 11000003,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_trail_04c.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,-150}}
			}
		}
	},
	[11000004] = {
		["Id"] = 11000004,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[1100001] = {
		["Id"] = 1100001,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.2,2.4,2.6,3}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11000011] = {
		["Id"] = 11000011,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.2,2.4,2.6,3}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11000012] = {
		["Id"] = 11000012,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.2,2.4,2.6,3}},
				["DamageParams"] = {{2,0,2,2}}
			}
		}
	},
	[11000013] = {
		["Id"] = 11000013,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.7,1.9,2.1,2.5}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[1100002] = {
		["Id"] = 1100002,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.6,1.7}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11000031] = {
		["Id"] = 11000031,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {40,50,60,70,90,100},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_axe/axe_armor.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[11000032] = {
		["Id"] = 11000032,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/star_emblem_brokenshield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.35}}
			}
		}
	},
	[11000033] = {
		["Id"] = 11000033,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1,1,1,1,1,1,1,1,1.2}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[1100004] = {
		["Id"] = 1100004,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[11000041] = {
		["Id"] = 11000041,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/units/heroes/hero_keeper_of_the_light/keeper_of_the_light_spirit_form_ambient.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[11000042] = {
		["Id"] = 11000042,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.5}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11000043] = {
		["Id"] = 11000043,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.5}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11000044] = {
		["Id"] = 11000044,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/regen/fountain_regen_fall2022_lvl3.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,150}}
			}
		}
	},
	[11000051] = {
		["Id"] = 11000051,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,2}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11000052] = {
		["Id"] = 11000052,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,2}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11000053] = {
		["Id"] = 11000053,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/dragon_knight_transform_green_coreglow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW"
	},
	[11000061] = {
		["Id"] = 11000061,
		["ActiveProb"] = {10000},
		["Duration"] = {1.5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.5}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11000062] = {
		["Id"] = 11000062,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{1,2,0.1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}}
			}
		}
	},
	[11000081] = {
		["Id"] = 11000081,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {3},
		["MaxStackBuffId"] = 110000811,
		["MaxStackDelete"] = 1,
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[110000811] = {
		["Id"] = 110000811,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["DurationSkillId"] = {0},
		["OverlayType"] = 3,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/heavens_halberd.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0.5,1}}
			}
		}
	},
	[11000082] = {
		["Id"] = 11000082,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {10,15,20,25,35,40},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_brewmaster/brewmaster_drunken_stance_earth_body.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,1,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35}},
				["DamageParams"] = {{2,0,2,0.3}}
			}
		}
	},
	[11000083] = {
		["Id"] = 11000083,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {10,15,20,25,35,40},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_brewmaster/brewmaster_drunken_stance_earth_body.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1,1,1,1,1,1,1,1,1,1,1,1.1}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11000101] = {
		["Id"] = 11000101,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,2,-0.5}}
			}
		}
	},
	[11000102] = {
		["Id"] = 11000102,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{62,1,1500}},
				["StackCountParams"] = {{1,2,3,4,5}}
			}
		}
	},
	[11000103] = {
		["Id"] = 11000103,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.5,1.5,1.5,2}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11000104] = {
		["Id"] = 11000104,
		["AttrType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[1110010] = {
		["Id"] = 1110010,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,2.4,2.8,3.2,4,5},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePath"] = "particles/econ/events/fall_2022/regen/fountain_regen_fall2022_lvl3.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.2}},
				["StackCountParams"] = {{1,2,3,4,5}}
			}
		}
	},
	[11100103] = {
		["Id"] = 11100103,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/aghanim_debug_ring.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.1}}
			}
		}
	},
	[1110011] = {
		["Id"] = 1110011,
		["DesignType"] = 1,
		["AttrType"] = 2,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{150}}
			}
		}
	},
	[11100111] = {
		["Id"] = 11100111,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_primal_beast/primal_beast_onslaught_charge_active.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11100112] = {
		["Id"] = 11100112,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1,1.5,2,2.5,3,3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11100113] = {
		["Id"] = 11100113,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1,1.5,2,2.5,3,3},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 200,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}},
				["HealthParams"] = {{1,0,1.1,1.2,1.3},{2,0,1,5,10,15}}
			}
		}
	},
	[1110012] = {
		["Id"] = 1110012,
		["ActiveProb"] = {10000},
		["Duration"] = {0.2},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_primal_beast/primal_beast_onslaught_charge_active.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[1110013] = {
		["Id"] = 1110013,
		["DesignType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/econ/events/spring_2021/fountain_regen_spring_2021_orbit.vpcf",
		["Effect"] = {
			[32768] = {
				["Type"] = 32768,
				["Params"] = {{1,0.9,0.8,0.7,0.6,0.5}}
			},
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"161_41_1_0_0.001/0.002/0.004/0.006/0.008/0.01",3,1}}
			}
		}
	},
	[11100131] = {
		["Id"] = 11100131,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"162_41_1_0_0.00001/0.00002/0.00004/0.00006/0.00008/0.0001",3,1},{"163_41_1_0_0.001/0.002/0.004/0.006/0.008/0.01",3,1},{"165_41_1_0_0.00001/0.00002/0.00004/0.00006/0.00008/0.0001",3,1},{"166_41_1_0_0.001/0.002/0.004/0.006/0.008/0.01",3,1}}
			}
		}
	},
	[11100132] = {
		["Id"] = 11100132,
		["DesignType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"164_212_1",3,1}},
				["StackCountParams"] = {{2000}}
			}
		}
	},
	[11100133] = {
		["Id"] = 11100133,
		["DesignType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1}
	},
	[1110014] = {
		["Id"] = 1110014,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_chen/chen_divine_favor.vpcf"
	},
	[1110020] = {
		["Id"] = 1110020,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/storm_spirit/storm_spirit_orchid_hat/stormspirit_orchid_ball_lightning.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11100201] = {
		["Id"] = 11100201,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,2}}
			}
		}
	},
	[11100202] = {
		["Id"] = 11100202,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_baekho_ambient_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{202,1,2000}}
			}
		}
	},
	[1110021] = {
		["Id"] = 1110021,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 20,
		["ParticlePath"] = "particles/units/heroes/heroes_underlord/underlord_dark_rift_ring.vpcf",
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{23,1,10000}},
				["DamageParams"] = {{1,0,1}}
			}
		}
	},
	[11100211] = {
		["Id"] = 11100211,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {20}
	},
	[11100212] = {
		["Id"] = 11100212,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.02}}
			}
		}
	},
	[1110022] = {
		["Id"] = 1110022,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/storm_spirit/storm_spirit_orchid_hat/stormspirit_orchid_ball_lightning.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[32768] = {
				["Type"] = 32768,
				["Params"] = {{1.05,1.1,1.15,1.2,1.25,1.3,1.35,1.4,1.45,1.5,1.55,1.6,1.65,1.7,1.75,1.8,1.85,1.9,1.95,2,2.05,2.1,2.15,2.2,2.25},{1.07,1.14,1.21,1.28,1.35,1.42,1.49,1.56,1.63,1.7,1.77,1.84,1.91,1.98,2.05,2.12,2.19,2.26,2.33,2.4,2.47,2.54,2.61,2.68,2.75},{1.11,1.22,1.33,1.44,1.55,1.66,1.77,1.88,1.99,2.1,2.21,2.32,2.43,2.54,2.65,2.76,2.87,2.98,3.09,3.2,3.31,3.42,3.53,3.64,3.75},{1.15,1.3,1.45,1.6,1.75,1.9,2.05,2.2,2.35,2.5,2.65,2.8,2.95,3.1,3.25,3.4,3.55,3.7,3.85,4,4.15,4.3,4.45,4.6,4.75},{1.2,1.4,1.6,1.8,2,2.2,2.4,2.6,2.8,3,3.2,3.4,3.6,3.8,4,4.2,4.4,4.6,4.8,5,5.2,5.4,5.6,5.8,6}}
			}
		}
	},
	[11100221] = {
		["Id"] = 11100221,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{161,1,30}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[11100222] = {
		["Id"] = 11100222,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,2,0.5}}
			}
		}
	},
	[1110023] = {
		["Id"] = 1110023,
		["DesignType"] = 1,
		["AttrType"] = 2,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/storm_spirit/storm_spirit_orchid_hat/stormspirit_orchid_ball_lightning.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11100231] = {
		["Id"] = 11100231,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/storm_spirit/storm_spirit_orchid_hat/stormspirit_orchid_ball_lightning.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11100232] = {
		["Id"] = 11100232,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 1,
		["ParticlePath"] = "particles/skill/finish/skywrath_arcana_ancient_seal_debuff.vpcf",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[1110024] = {
		["Id"] = 1110024,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_alchemist/alchemist_unstable_concoction_explosion.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.2}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11100241] = {
		["Id"] = 11100241,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/oracle/oracle_ti10_immortal/oracle_ti10_immortal_purifyingflames_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50
	},
	[11100242] = {
		["Id"] = 11100242,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2,2,2,2,2,2.2}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[1110030] = {
		["Id"] = 1110030,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2}},
				["DamageParams"] = {{2,0,2,1}}
			},
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-0.3}}
			}
		}
	},
	[11100301] = {
		["Id"] = 11100301,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0
	},
	[11100302] = {
		["Id"] = 11100302,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[262144] = {
				["Type"] = 262144,
				["Params"] = {{5,300}}
			}
		}
	},
	[11100303] = {
		["Id"] = 11100303,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0
	},
	[1110031] = {
		["Id"] = 1110031,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.5,4,4.5,5,5.5,6,6.5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_siren/siren_net_parent.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11100311] = {
		["Id"] = 11100311,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,2}}
			}
		}
	},
	[1110032] = {
		["Id"] = 1110032,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["StackCountParams"] = {{1}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11100321] = {
		["Id"] = 11100321,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/fountain_regen_ti10_energy.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"52_164_1_1",3,1}},
				["StackCountParams"] = {{0.00333334}}
			}
		}
	},
	[1110033] = {
		["Id"] = 1110033,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15,15.5,16.5,17.5,19,19},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/fountain_regen_ti10_energy.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"41_115/0.3/0.4/0.6/0.8/1/1.1_1",3,1}}
			}
		}
	},
	[11100331] = {
		["Id"] = 11100331,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15,15.5,16.5,17.5,19,19},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/hw_fx/golem_terror_telegraph_guardian.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"41_115/0.3/0.4/0.6/0.8/1/1.1_1",3,1}}
			}
		}
	},
	[11100332] = {
		["Id"] = 11100332,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[16384] = {
				["Type"] = 16384,
				["Params"] = {{0,1,1}}
			}
		}
	},
	[11100333] = {
		["Id"] = 11100333,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15,15.5,16.5,17.5,19,19},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/hw_fx/golem_terror_telegraph_guardian.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{2,2,0.05,0.1,0.15,0.2,0.25,0.3}}
			}
		}
	},
	[1110034] = {
		["Id"] = 1110034,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,0.5,0.5,0.5,0.5,0.5,1}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11100341] = {
		["Id"] = 11100341,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,500}}
			}
		}
	},
	[11100401] = {
		["Id"] = 11100401,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,3,4,5,7,7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{161,1,0},{52,4,900}}
			}
		}
	},
	[11100402] = {
		["Id"] = 11100402,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,3,4,5,7,7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{412,1,10000}}
			}
		}
	},
	[11100403] = {
		["Id"] = 11100403,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,3,4,5,7,7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{212,1,0}}
			}
		}
	},
	[1110041] = {
		["Id"] = 1110041,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5,1,2,3,4,4},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11100411] = {
		["Id"] = 11100411,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/units/heroes/hero_primal_beast/primal_beast_rock_throw_impact.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[1110042] = {
		["Id"] = 1110042,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/mjollnir/mjollnir_shield_fall2022.vpcf",
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{10}}
			}
		}
	},
	[11100421] = {
		["Id"] = 11100421,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9}},
				["DamageParams"] = {{2,0,1,0.5}}
			}
		}
	},
	[1110043] = {
		["Id"] = 1110043,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5,6,8,10,12,12},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_shadowshaman/shadow_shaman_ward_damage_reduction_aura.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"42_42_2_0_0",3,0.15,0.17,0.19,0.2,0.25,0.35}}
			}
		}
	},
	[11100431] = {
		["Id"] = 11100431,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5,6,8,10,12,12},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_roshan_darkmoon_glow_1.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,1,0}}
			}
		}
	},
	[11100432] = {
		["Id"] = 11100432,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[1110044] = {
		["Id"] = 1110044,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,-20,-80,-140,-200,-300},{41,2,0.2,0.4,0.6,1,1.2}},
				["DamageParams"] = {{23,0,1,41,1.5},{1,0,1,1.2,1.4,1.6,1.8,2,2.2,2.4}}
			}
		}
	},
	[11100441] = {
		["Id"] = 11100441,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{1,2,0.25}},
				["DamageParams"] = {{23,0,1,41,1.5},{1,0,1,1.2,1.4,1.6,1.8,2,2.2,2.4}}
			}
		}
	},
	[11100442] = {
		["Id"] = 11100442,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{26,1,1000}},
				["DamageParams"] = {{23,0,1,41,1.5},{1,0,1,1.2,1.4,1.6,1.8,2,2.2,2.4}}
			}
		}
	},
	[1110050] = {
		["Id"] = 1110050,
		["ActiveProb"] = {10000},
		["Duration"] = {2.1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 3,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/high_five/towers/dire_tower_2021/high_five_dire_tower_2021_travel_fire.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,1,1}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[1110051] = {
		["Id"] = 1110051,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11100511] = {
		["Id"] = 11100511,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{200}}
			}
		}
	},
	[11100512] = {
		["Id"] = 11100512,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {4},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_shadowshaman/shadow_shaman_ward_damage_reduction_aura.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-0.9}}
			}
		}
	},
	[11100513] = {
		["Id"] = 11100513,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {4},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/econ/items/skywrath_mage/skywrath_arcana/skywrath_arcana_rod_of_atos_debuff_ground.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-0.9}}
			}
		}
	},
	[1110052] = {
		["Id"] = 1110052,
		["AttrType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {4,4.5,5,5.5,6,7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5,7,9,14,20,25},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/riki/riki_crownfall_immortal_weapon/riki_crownfall_immortal_tricksd.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.25}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}}
			}
		}
	},
	[11100521] = {
		["Id"] = 11100521,
		["AttrType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {4,4.5,5,5.5,6,7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5,7,9,14,20,25},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/riki/riki_crownfall_immortal_weapon/riki_crownfall_immortal_tricksd.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,1.75,2.5,3.25,4,4.75}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}}
			}
		}
	},
	[1110053] = {
		["Id"] = 1110053,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1.5}}
			}
		}
	},
	[11100531] = {
		["Id"] = 11100531,
		["DesignType"] = 1,
		["AttrType"] = 3,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11100532] = {
		["Id"] = 11100532,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11100541] = {
		["Id"] = 11100541,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[1110060] = {
		["Id"] = 1110060,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{1,2,0.1,0.15,0.25,0.35,0.5,0.55}}
			}
		}
	},
	[11100601] = {
		["Id"] = 11100601,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"161_211_1",3,1}},
				["StackCountParams"] = {{10}}
			}
		}
	},
	[11100602] = {
		["Id"] = 11100602,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"163_41_1",3,1}},
				["StackCountParams"] = {{2}}
			}
		}
	},
	[11100603] = {
		["Id"] = 11100603,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0},{162,2,-1}}
			}
		}
	},
	[1110061] = {
		["Id"] = 1110061,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.3,3.9,4.5,5.1,5.7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.5}}
			}
		}
	},
	[11100611] = {
		["Id"] = 11100611,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.3,3.9,4.5,5.1,5.7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,-0.3}}
			}
		}
	},
	[11100612] = {
		["Id"] = 11100612,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.3,3.9,4.5,5.1,5.7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_divine_ambient.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-0.9}}
			}
		}
	},
	[11100613] = {
		["Id"] = 11100613,
		["DesignType"] = 1,
		["AttrType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{150}}
			}
		}
	},
	[1110062] = {
		["Id"] = 1110062,
		["AttrType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{200}}
			}
		}
	},
	[11100621] = {
		["Id"] = 11100621,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[11100622] = {
		["Id"] = 11100622,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_muerta/muerta_spell_fear_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[262144] = {
				["Type"] = 262144,
				["Params"] = {{1,300}}
			}
		}
	},
	[11100623] = {
		["Id"] = 11100623,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[1110063] = {
		["Id"] = 1110063,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {6},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0
	},
	[11100631] = {
		["Id"] = 11100631,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[16384] = {
				["Type"] = 16384,
				["Params"] = {{1110063,2,1}}
			}
		}
	},
	[11100632] = {
		["Id"] = 11100632,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[1110064] = {
		["Id"] = 1110064,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[3] = {
				["Type"] = 3,
				["Params"] = {{600}}
			}
		}
	},
	[11100641] = {
		["Id"] = 11100641,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_huskar/huskar_inner_fire_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[2048] = {
				["Type"] = 2048
			},
			[1] = {
				["Type"] = 1
			}
		}
	},
	[11100642] = {
		["Id"] = 11100642,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/regen/fountain_regen_fall2022_lvl3.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,500}}
			}
		}
	},
	[11100731] = {
		["Id"] = 11100731,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11100733] = {
		["Id"] = 11100733,
		["DesignType"] = 1,
		["AttrType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{150}}
			}
		}
	},
	[11100711] = {
		["Id"] = 11100711,
		["DesignType"] = 1,
		["AttrType"] = 2,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11100712] = {
		["Id"] = 11100712,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.7}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11100721] = {
		["Id"] = 11100721,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-9000}}
			}
		}
	},
	[1110080] = {
		["Id"] = 1110080,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[16384] = {
				["Type"] = 16384,
				["Params"] = {{1,1,0.1},{1,1,0.2},{1,1,0.3},{1,1,0.4},{1,1,0.5},{1,1,0.6}}
			}
		}
	},
	[11100801] = {
		["Id"] = 11100801,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[16384] = {
				["Type"] = 16384,
				["Params"] = {{1,1,0.5}}
			}
		}
	},
	[1110075] = {
		["Id"] = 1110075,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[32768] = {
				["Type"] = 32768,
				["Params"] = {{1.05,1.1,1.15,1.2,1.25,1.3,1.35,1.4,1.45,1.5,1.55,1.6,1.65,1.7,1.75,1.8,1.85,1.9,1.95,2,2.05,2.1,2.15,2.2,2.25,2.3,2.35,2.4,2.45,2.5,2.55,2.6,2.65,2.7,2.75,2.8,2.85,2.9,2.95,3}}
			}
		}
	},
	[1110074] = {
		["Id"] = 1110074,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{66,1,20,60,100,150,200,300}}
			}
		}
	},
	[11100741] = {
		["Id"] = 11100741,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{62,1,1000}}
			}
		}
	},
	[11100811] = {
		["Id"] = 11100811,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.7}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11100742] = {
		["Id"] = 11100742,
		["ActiveProb"] = {10000},
		["Duration"] = {99999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{3,2,0.25}}
			}
		}
	},
	[1110082] = {
		["Id"] = 1110082,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {12},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{53,1,200,250,300,350,400,425}}
			}
		}
	},
	[11100821] = {
		["Id"] = 11100821,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {20},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{53,1,200,250,300,350,400,425}}
			}
		}
	},
	[1110083] = {
		["Id"] = 1110083,
		["DesignType"] = 1,
		["AttrType"] = 2,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{15}}
			}
		}
	},
	[11100841] = {
		["Id"] = 11100841,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_blue_ambient_4.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-100}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[1110085] = {
		["Id"] = 1110085,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {999},
		["MaxStackReset"] = 1,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,300}}
			}
		}
	},
	[1110086] = {
		["Id"] = 1110086,
		["AttrType"] = 4,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,2,-100000}}
			}
		}
	},
	[1110091] = {
		["Id"] = 1110091,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,100}}
			}
		}
	},
	[11100911] = {
		["Id"] = 11100911,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{202,1,500}}
			}
		}
	},
	[11100912] = {
		["Id"] = 11100912,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0
	},
	[1110092] = {
		["Id"] = 1110092,
		["ActiveProb"] = {10000},
		["Duration"] = {0.1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[16384] = {
				["Type"] = 16384,
				["Params"] = {{1110092,1,0.5}}
			}
		}
	},
	[11100931] = {
		["Id"] = 11100931,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[1110094] = {
		["Id"] = 1110094,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[11100941] = {
		["Id"] = 11100941,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,2}}
			}
		}
	},
	[1110095] = {
		["Id"] = 1110095,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,1,3500}}
			}
		}
	},
	[1110096] = {
		["Id"] = 1110096,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {2000},
		["Duration"] = {4},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,300}}
			}
		}
	},
	[1110101] = {
		["Id"] = 1110101,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/spirit_breaker/spirit_breaker_iron_surge/spirit_breaker_charge_iron.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11101011] = {
		["Id"] = 11101011,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 3,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11101012] = {
		["Id"] = 11101012,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 3,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11101021] = {
		["Id"] = 11101021,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_phoenix/phoenix_supernova_egg_loadout.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[11101022] = {
		["Id"] = 11101022,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_phoenix/phoenix_supernova_egg_loadout.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,150}},
				["StackCountParams"] = {{1}}
			}
		}
	},
	[11101001] = {
		["Id"] = 11101001,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1.5}}
			}
		}
	},
	[11101002] = {
		["Id"] = 11101002,
		["DesignType"] = 1,
		["AttrType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/econ/items/primal_beast/primal_beast_2022_prestige/primal_beast_2022_prestige_onslaught_charge_dust_front.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{75}}
			}
		}
	},
	[11101003] = {
		["Id"] = 11101003,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11101031] = {
		["Id"] = 11101031,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.003,0.007,0.011,0.015,0.019,0.02}}
			}
		}
	},
	[11101032] = {
		["Id"] = 11101032,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.004}}
			}
		}
	},
	[11101041] = {
		["Id"] = 11101041,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,4,6,8,10,10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/items2_fx/vindicators_axe_armor.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,0.5}}
			}
		}
	},
	[11101042] = {
		["Id"] = 11101042,
		["AttrType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,4,6,8,10,10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/items2_fx/vindicators_axe_armor.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{404,1,10000},{408,1,10000}}
			}
		}
	},
	[11101101] = {
		["Id"] = 11101101,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,4,5,6,7,8,9,10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1,1,1,1,1,1.5}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[1110111] = {
		["Id"] = 1110111,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.5,4,4.5,5,5.5,6,7},
		["OverlayType"] = 2,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{200}}
			}
		}
	},
	[11101111] = {
		["Id"] = 11101111,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,4,5,6,7,8,9,10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11101112] = {
		["Id"] = 11101112,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/troll_warlord_bersekers_net.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4] = {
				["Type"] = 4
			}
		}
	},
	[11101121] = {
		["Id"] = 11101121,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/fountain_regen_ti10_lvl3.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.1,0.1,0.1,0.1,0.1,0.15}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[11101122] = {
		["Id"] = 11101122,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.5,4,4.5,5,5.5,6,7},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0
	},
	[11101123] = {
		["Id"] = 11101123,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,4,5,6,7},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/fountain_regen_ti10_lvl3.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{412,1,10000}}
			}
		}
	},
	[11101131] = {
		["Id"] = 11101131,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.25}}
			}
		}
	},
	[11101132] = {
		["Id"] = 11101132,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,500}},
				["DamageParams"] = {{1,0,5}}
			}
		}
	},
	[11101133] = {
		["Id"] = 11101133,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[268435456] = {
				["Type"] = 268435456,
				["Params"] = {{1}}
			}
		}
	},
	[11101141] = {
		["Id"] = 11101141,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,2.5,3,3.5,4,4.5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_spirit_breaker/spirit_breaker_haste_owner.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"51_51_2",3,1}}
			}
		}
	},
	[11101142] = {
		["Id"] = 11101142,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_spirit_breaker/spirit_breaker_haste_owner.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[11101201] = {
		["Id"] = 11101201,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[11101211] = {
		["Id"] = 11101211,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {6,6,6,6,6,8},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11101212] = {
		["Id"] = 11101212,
		["GainOrDeBuff"] = 2,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.5,4,4.5,5,5.5,6,7},
		["OverlayType"] = 2,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11101213] = {
		["Id"] = 11101213,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {6},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/windranger_arcana_hud_ambient.vpcf",
		["ParticleOffsetZ"] = 10,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,200}}
			}
		}
	},
	[11101214] = {
		["Id"] = 11101214,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[11101221] = {
		["Id"] = 11101221,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[11101222] = {
		["Id"] = 11101222,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/windranger_arcana_hud_ambient.vpcf",
		["ParticleOffsetZ"] = 10,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,500}}
			}
		}
	},
	[11101231] = {
		["Id"] = 11101231,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/teleport/teleport_ti10_cable.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{161,1,35}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[11101232] = {
		["Id"] = 11101232,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/teleport/teleport_ti10_cable.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{161,1,50}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[11101241] = {
		["Id"] = 11101241,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {4},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/spring_2021/teleport_start_spring_2021_core.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"51_52_1",3,1}},
				["StackCountParams"] = {{1}}
			}
		}
	},
	[1110130] = {
		["Id"] = 1110130,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_huskar/huskar_inner_fire_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[11101301] = {
		["Id"] = 11101301,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,1.5}}
			}
		}
	},
	[1110131] = {
		["Id"] = 1110131,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/earthshaker/earthshaker_arcana/earthshaker_arcana_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			},
			[4] = {
				["Type"] = 4
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[1110132] = {
		["Id"] = 1110132,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/drow/drow_arcana/drow_arcana_silenced.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			}
		}
	},
	[1110133] = {
		["Id"] = 1110133,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 20,
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[11101341] = {
		["Id"] = 11101341,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/diretide_2020/attack_modifier/attack_modifier_fall20_launch_flash.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.03,0.06,0.09,0.12,0.15,0.15}}
			}
		}
	},
	[11101342] = {
		["Id"] = 11101342,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 20,
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{2,2,0.5}}
			}
		}
	},
	[11101343] = {
		["Id"] = 11101343,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/econ/courier/courier_ti10/courier_ti10_lvl5_fly_ref_darksmoke.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{22,4,0},{23,4,0},{24,4,0},{25,4,0},{26,4,0}}
			}
		}
	},
	[11101401] = {
		["Id"] = 11101401,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/seasonal_reward_line_fall_2025/lotus_orb_fallrewardline_2025_rings.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{212,1,0}}
			}
		}
	},
	[11101402] = {
		["Id"] = 11101402,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,0}}
			}
		}
	},
	[11101421] = {
		["Id"] = 11101421,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/skywrath_mage/skywrath_arcana/skywrath_arcana_rod_of_atos_debuff_ground.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-15}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[11101411] = {
		["Id"] = 11101411,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3,3,3,3,4},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_troll_warlord/troll_warlord_net_cast_main.vpcf",
		["Effect"] = {
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11101412] = {
		["Id"] = 11101412,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11101422] = {
		["Id"] = 11101422,
		["GainOrDeBuff"] = 2,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.5,4,4.5,5,5.5,6,7},
		["OverlayType"] = 2,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11101423] = {
		["Id"] = 11101423,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11101501] = {
		["Id"] = 11101501,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["DurationSkillId"] = {11101501},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 20,
		["ParticleOffsetZ"] = 30
	},
	[11101502] = {
		["Id"] = 11101502,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11101511] = {
		["Id"] = 11101511,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11101512] = {
		["Id"] = 11101512,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11101513] = {
		["Id"] = 11101513,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.5}}
			}
		}
	},
	[11101521] = {
		["Id"] = 11101521,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,450}},
				["DamageParams"] = {{1,0,5}}
			}
		}
	},
	[11101522] = {
		["Id"] = 11101522,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}},
				["DamageParams"] = {{1,0,5}}
			}
		}
	},
	[11101523] = {
		["Id"] = 11101523,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,2}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11101531] = {
		["Id"] = 11101531,
		["ActiveProb"] = {10000},
		["Duration"] = {7},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[11101532] = {
		["Id"] = 11101532,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,150}}
			}
		}
	},
	[11101541] = {
		["Id"] = 11101541,
		["ActiveProb"] = {10000},
		["Duration"] = {5,6,7,8,9,9},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/units/heroes/hero_venomancer/venomancer_venomousgale_cloud_trail_b.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[11101542] = {
		["Id"] = 11101542,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 4,
		["ParticlePath"] = "particles/units/heroes/hero_venomancer/venomancer_noxious_contagion_buff_secondary.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,1,1,1,1,1,1.1}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11101543] = {
		["Id"] = 11101543,
		["ActiveProb"] = {10000},
		["Duration"] = {5,6,7,8,9,9},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/courier_roshan_darkmoon_glow_1.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{404,1,10000}}
			}
		}
	},
	[11101601] = {
		["Id"] = 11101601,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["DurationSkillId"] = {11101601},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/winter_wyvern/winter_wyvern_ti7/wyvern_cold_embrace_ti7buff.vpcf",
		["Effect"] = {
			[1] = {
				["Type"] = 1
			},
			[4] = {
				["Type"] = 4
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[11101602] = {
		["Id"] = 11101602,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 200,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,2}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11101611] = {
		["Id"] = 11101611,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {20,20,20,20,20,25},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/generic_gameplay/rune_doubledamage_owner.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 200,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{201,2,-0.05}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[11101612] = {
		["Id"] = 11101612,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,41,1}}
			}
		}
	},
	[11101613] = {
		["Id"] = 11101613,
		["ActiveProb"] = {10000},
		["Duration"] = {6,6,6,6,6,9},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW"
	},
	[11101621] = {
		["Id"] = 11101621,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[1110163] = {
		["Id"] = 1110163,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11101631] = {
		["Id"] = 11101631,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[1110164] = {
		["Id"] = 1110164,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/high_five_travel_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"2_41_2",3,1}}
			}
		}
	},
	[11101641] = {
		["Id"] = 11101641,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,200,100,50,33,25,22}}
			}
		}
	},
	[11101642] = {
		["Id"] = 11101642,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{53,1,300}}
			}
		}
	},
	[11101643] = {
		["Id"] = 11101643,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,2}}
			}
		}
	},
	[11101701] = {
		["Id"] = 11101701,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_ancient_apparition/ancient_apparition_cold_feet_frozen.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11101702] = {
		["Id"] = 11101702,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,1,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11101711] = {
		["Id"] = 11101711,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_blue_ambient_4.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-50}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[11101712] = {
		["Id"] = 11101712,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_obsidian_destroyer/obsidian_destroyer_scepter_shield.vpcf",
		["ParticleOffsetZ"] = -70
	},
	[11101713] = {
		["Id"] = 11101713,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[11101721] = {
		["Id"] = 11101721,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/skill/finish/lich_ice_spire_column_ground.vpcf",
		["ParticleOffsetZ"] = 20,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,-0.15}},
				["HealthParams"] = {{3,0,1}}
			}
		}
	},
	[11101722] = {
		["Id"] = 11101722,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/faceless_void_time_walk.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,-1500}},
				["HealthParams"] = {{3,0,1}}
			}
		}
	},
	[11101723] = {
		["Id"] = 11101723,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[11101724] = {
		["Id"] = 11101724,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_slardar/slardar_broken_shield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.4}}
			}
		}
	},
	[11101731] = {
		["Id"] = 11101731,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11101741] = {
		["Id"] = 11101741,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11101742] = {
		["Id"] = 11101742,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.3}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[11101801] = {
		["Id"] = 11101801,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,100,200,300,400,500,550}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[11101802] = {
		["Id"] = 11101802,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{23,1,2}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[11101803] = {
		["Id"] = 11101803,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/pangolier_defense_stance_shield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,0.5}}
			}
		}
	},
	[11101804] = {
		["Id"] = 11101804,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/seasonal_reward_line_fall_2025/radiant_fountain_regen_fallrewardline_2025_smoke.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW"
	},
	[11101805] = {
		["Id"] = 11101805,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/seasonal_reward_line_fall_2025/radiant_fountain_regen_fallrewardline_2025_wavey_winds.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW"
	},
	[11101811] = {
		["Id"] = 11101811,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/antimage_counter_model.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[134217728] = {
				["Type"] = 134217728,
				["Params"] = {{1,0.25,0.1,0.05,0.02,"0.0.0125"}}
			}
		}
	},
	[11101812] = {
		["Id"] = 11101812,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{33,1,1}}
			}
		}
	},
	[11101821] = {
		["Id"] = 11101821,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/magnus_ti10_head_crimson_antler_core.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 400
	},
	[11101822] = {
		["Id"] = 11101822,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_oracle/oracle_false_promise_break_heal.vpcf",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{1,0,0}}
			}
		}
	},
	[11101832] = {
		["Id"] = 11101832,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,2}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11101841] = {
		["Id"] = 11101841,
		["ActiveProb"] = {10000},
		["Duration"] = {0.2},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11101842] = {
		["Id"] = 11101842,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1.5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,600}}
			}
		}
	},
	[11101843] = {
		["Id"] = 11101843,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[11101911] = {
		["Id"] = 11101911,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5,6,8,10,12,12},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_ogre_magi/ogre_magi_fire_shield_bubble.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432
			}
		}
	},
	[11101921] = {
		["Id"] = 11101921,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/hoodwink_2022_immortal_sharpshooter.vpcf"
	},
	[11101922] = {
		["Id"] = 11101922,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5,5,5,5,5,15},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_ogre_magi/ogre_magi_fire_shield_bubble.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432
			}
		}
	},
	[11101923] = {
		["Id"] = 11101923,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{121,1,5000}}
			}
		}
	},
	[1110193] = {
		["Id"] = 1110193,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/stormspirit_orchid_ball_lightning.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}}
			}
		}
	},
	[11101931] = {
		["Id"] = 11101931,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[11101932] = {
		["Id"] = 11101932,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}}
			}
		}
	},
	[11101941] = {
		["Id"] = 11101941,
		["DesignType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/agh/agh_aura_fall2022_lvl2.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,0.4,0.6,0.8,1,1.2,1.2}}
			},
			[1] = {
				["Type"] = 1
			},
			[4] = {
				["Type"] = 4
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[11101942] = {
		["Id"] = 11101942,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,3,3,3,3,3,3.5}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11101943] = {
		["Id"] = 11101943,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}}
			}
		}
	},
	[11102001] = {
		["Id"] = 11102001,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5,6,7,8,9,9},
		["OverlayType"] = 1,
		["MaxStack"] = {5,10,15,20,30,35},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/units/heroes/hero_grimstroke/grimstroke_darkartistry_proj_vector_ink_spray.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.2}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}}
			}
		}
	},
	[11102002] = {
		["Id"] = 11102002,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1.5}}
			}
		}
	},
	[11102011] = {
		["Id"] = 11102011,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[524288] = {
				["Type"] = 524288,
				["Params"] = {{1}}
			}
		}
	},
	[11102012] = {
		["Id"] = 11102012,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{2,0,1,0.1}}
			}
		}
	},
	[11102021] = {
		["Id"] = 11102021,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 1,
		["ParticlePath"] = "particles/econ/items/slark/slark_fall20_immortal/slark_fall20_shadow_dance_water_swirls.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.15}}
			}
		}
	},
	[11102022] = {
		["Id"] = 11102022,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,2}}
			}
		}
	},
	[11102031] = {
		["Id"] = 11102031,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {12},
		["OverlayType"] = 1,
		["MaxStack"] = {5,8,11,14,20,20},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/drow_arcana_weapon_debut_ambient_flywheel_disc_glow_v2.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{152,1,100,150,200,250,300,350}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[11102032] = {
		["Id"] = 11102032,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {12},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,200}}
			}
		}
	},
	[11102041] = {
		["Id"] = 11102041,
		["ActiveProb"] = {10000},
		["Duration"] = {999999},
		["OverlayType"] = 2,
		["MaxStack"] = {5,7,9,11,13,15,17,20},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_medusa/medusa_mana_shield_buff.vpcf",
		["Effect"] = {
			[1048576] = {
				["Type"] = 1048576,
				["Params"] = {{0}}
			}
		}
	},
	[11102042] = {
		["Id"] = 11102042,
		["ActiveProb"] = {10000},
		["Duration"] = {12},
		["OverlayType"] = 2,
		["MaxStack"] = {5,7,9,11,13,15,17,20},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{21},{22}},
				["StackCountParams"] = {{1,2,3}}
			}
		}
	},
	[11102101] = {
		["Id"] = 11102101,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1.5}}
			}
		}
	},
	[11102111] = {
		["Id"] = 11102111,
		["DesignType"] = 1,
		["AttrType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/windrunner/windranger_arcana/windranger_arcana_focusfire_start_tornado_sprite.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[11102112] = {
		["Id"] = 11102112,
		["DesignType"] = 1,
		["AttrType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/windrunner/windranger_arcana/windranger_arcana_focusfire_start_tornado_sprite.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}}
			}
		}
	},
	[11102121] = {
		["Id"] = 11102121,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,2}},
				["DamageParams"] = {{2,0,1,1}}
			}
		}
	},
	[11102131] = {
		["Id"] = 11102131,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3,7,11,15,20,20},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 5,
		["ParticlePath"] = "particles/econ/items/lanaya/ta_ti9_immortal_shoulders/ta_ti9_immortal_swirl_03.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,1,500,500,500,500,500,550}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[11102132] = {
		["Id"] = 11102132,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,100}}
			}
		}
	},
	[11102133] = {
		["Id"] = 11102133,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {3},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,100}},
				["StackCountParams"] = {{1,2,3}}
			}
		}
	},
	[11102141] = {
		["Id"] = 11102141,
		["ActiveProb"] = {10000},
		["Duration"] = {5,5,5,5,5,6},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 1,
		["ParticlePath"] = "particles/econ/items/ember_spirit/ember_ti9/ember_ti9_flameguard_shield.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[268435456] = {
				["Type"] = 268435456,
				["Params"] = {{1}}
			}
		}
	},
	[11102501] = {
		["Id"] = 11102501,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,1.5}}
			}
		}
	},
	[11102502] = {
		["Id"] = 11102502,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_blue_ambient_5.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-300}}
			}
		}
	},
	[1110251] = {
		["Id"] = 1110251,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 1,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[11102541] = {
		["Id"] = 11102541,
		["DesignType"] = 1,
		["AttrType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/windrunner/windranger_arcana/windranger_arcana_focusfire_start_tornado_sprite.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11102542] = {
		["Id"] = 11102542,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,1.5}}
			}
		}
	},
	[11102543] = {
		["Id"] = 11102543,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_blue_ambient_4.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-200}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[11102601] = {
		["Id"] = 11102601,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0
	},
	[11102602] = {
		["Id"] = 11102602,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{53,1,250}},
				["StackCountParams"] = {{1,2,3}}
			}
		}
	},
	[11102603] = {
		["Id"] = 11102603,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[512] = {
				["Type"] = 512
			}
		}
	},
	[11102611] = {
		["Id"] = 11102611,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_blue_ambient_4.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{161,1,200}}
			}
		}
	},
	[1110262] = {
		["Id"] = 1110262,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0
	},
	[11102621] = {
		["Id"] = 11102621,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/regen/fountain_regen_fall2022_lvl3.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,500,500,500,500,500,650}}
			}
		}
	},
	[11102631] = {
		["Id"] = 11102631,
		["ActiveProb"] = {10000},
		["Duration"] = {3,3.5,4,4.5,5,7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/items2_fx/heavens_halberd.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[11102632] = {
		["Id"] = 11102632,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,1.5}}
			}
		}
	},
	[11102641] = {
		["Id"] = 11102641,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,2}}
			}
		}
	},
	[11102701] = {
		["Id"] = 11102701,
		["AttrType"] = 2,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[11102702] = {
		["Id"] = 11102702,
		["AttrType"] = 2,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["DurationBuffId"] = {11102703},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[11102703] = {
		["Id"] = 11102703,
		["DesignType"] = 1,
		["AttrType"] = 3,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {4},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[11102711] = {
		["Id"] = 11102711,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[11102712] = {
		["Id"] = 11102712,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,0.2,0.22,0.26,0.3,0.35,0.35}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11102721] = {
		["Id"] = 11102721,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 3,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,1}}
			}
		}
	},
	[11102731] = {
		["Id"] = 11102731,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,0.5}}
			}
		}
	},
	[11102741] = {
		["Id"] = 11102741,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {6},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/drow/drow_arcana/drow_arcana_silenced_v2.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			},
			[65536] = {
				["Type"] = 65536
			}
		}
	},
	[11102742] = {
		["Id"] = 11102742,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,1.5}}
			}
		}
	},
	[11103001] = {
		["Id"] = 11103001,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,2}}
			}
		}
	},
	[11103011] = {
		["Id"] = 11103011,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[11103012] = {
		["Id"] = 11103012,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {6},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_muerta/muerta_spell_fear_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[262144] = {
				["Type"] = 262144,
				["Params"] = {{3,300}}
			}
		}
	},
	[11103021] = {
		["Id"] = 11103021,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5,1.5,1.5,1.5,1.5,1.7}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11103022] = {
		["Id"] = 11103022,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,2500}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[11103031] = {
		["Id"] = 11103031,
		["ActiveProb"] = {10000},
		["Duration"] = {2,2.2,2.6,3,3.5,4},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/mirana_2021_immortal_moonlight_recipient.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0.5,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11103041] = {
		["Id"] = 11103041,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0
	},
	[11103042] = {
		["Id"] = 11103042,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[11103101] = {
		["Id"] = 11103101,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/spirit_vessel_heal_ember.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.01,0.011,0.013,0.015,0.017,0.017}}
			}
		}
	},
	[11103102] = {
		["Id"] = 11103102,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,300,310,330,350,370,370}}
			}
		}
	},
	[11103103] = {
		["Id"] = 11103103,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{11,2,0.4,0.45,0.55,0.65,0.75,0.75}}
			}
		}
	},
	[11103111] = {
		["Id"] = 11103111,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/slardar/slardar_ti10_head/slardar_ti10_broken_shield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.1,-0.12,-0.16,-0.2,-0.25,-0.25}}
			}
		}
	},
	[11103112] = {
		["Id"] = 11103112,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/star_emblem_brokenshield_caster.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,-0.15,-0.16,-0.18,-0.2,-0.22,-0.22}}
			}
		}
	},
	[11103113] = {
		["Id"] = 11103113,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/econ/items/drow/drow_ti9_immortal/drow_ti9_marksman_embers.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-50,-60,-80,-100,-120,-120}}
			}
		}
	},
	[11103114] = {
		["Id"] = 11103114,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/econ/items/drow/drow_ti9_immortal/drow_ti9_marksman_embers.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[11103121] = {
		["Id"] = 11103121,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/aghanim_blink_warmup.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[16384] = {
				["Type"] = 16384,
				["Params"] = {{1,2,1}}
			}
		}
	},
	[11103131] = {
		["Id"] = 11103131,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1,1,1,1,1,1.5}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11103141] = {
		["Id"] = 11103141,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/econ/items/juggernaut/ancient_exile/ancient_exile_healing_ward_flame.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["StackCountParams"] = {{1}},
				["HealthParams"] = {{3,0,0.01,0.015,0.02,0.025,0.04,0.05}}
			}
		}
	},
	[11103142] = {
		["Id"] = 11103142,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,2}}
			}
		}
	},
	[11103201] = {
		["Id"] = 11103201,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11103211] = {
		["Id"] = 11103211,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1.5}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[11103221] = {
		["Id"] = 11103221,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5,7,11,15,20,23},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_roshan_darkmoon_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[5] = {
				["Type"] = 5,
				["Params"] = {{1}},
				["StackCountParams"] = {{1.05,1.1,1.15,1.2,1.25,1.3,1.35,1.4,1.45,1.5,1.55,1.6,1.65,1.7,1.75,1.8,1.85,1.9,1.95,2,2.05,2.1,2.15,2.2,2.25,2.3,2.35,2.4,2.45,2.5}}
			}
		}
	},
	[11103231] = {
		["Id"] = 11103231,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1}}
			}
		}
	},
	[12000101] = {
		["Id"] = 12000101,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/skill/finish/attack2_modifier_fall2022_trail_sploosh.vpcf",
		["ParticleOffsetZ"] = 110,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{211,1,1500}}
			}
		}
	},
	[12000111] = {
		["Id"] = 12000111,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/radiant_fountain_regen_wm_lvl3_wide.vpcf",
		["ParticleOffsetZ"] = 20,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,2,0.15}}
			}
		}
	},
	[12000211] = {
		["Id"] = 12000211,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/pudge_arcana_dismember_bloom_default.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 140,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{152,1,300}}
			}
		}
	},
	[12000201] = {
		["Id"] = 12000201,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/agh/agh_aura_fall2022_parent.vpcf",
		["ParticleOffsetZ"] = 50
	},
	[12000202] = {
		["Id"] = 12000202,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{164,1,2}}
			}
		}
	},
	[12000203] = {
		["Id"] = 12000203,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{161,1,150}}
			}
		}
	},
	[12000301] = {
		["Id"] = 12000301,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/skill/finish/dire_tower_decay_streaks.vpcf",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,500}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[12000311] = {
		["Id"] = 12000311,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/skywrath_mage/skywrath_arcana/skywrath_arcana_rod_of_atos_debuff_ground.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-200}}
			}
		}
	},
	[12000321] = {
		["Id"] = 12000321,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/skill/finish/hand_courier_radiant_lv5_ambient_ring.vpcf",
		["ParticleOffsetZ"] = 120,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{12,1}}
			}
		}
	},
	[12000322] = {
		["Id"] = 12000322,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticleOffsetZ"] = 120
	},
	[12000401] = {
		["Id"] = 12000401,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/skywrath_mage/skywrath_arcana/skywrath_arcana_rod_of_atos_debuff_ground.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-200}}
			}
		}
	},
	[12000411] = {
		["Id"] = 12000411,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/rubick_telekinesis_force_lift_b_gold.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{1,1,100}}
			}
		}
	},
	[12000421] = {
		["Id"] = 12000421,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/econ/items/vengeful/vengeful_arcana/vengeful_arcana_buff_overhead_sphere_edge.vpcf",
		["ParticleOffsetZ"] = 120,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.05}}
			}
		}
	},
	[12000501] = {
		["Id"] = 12000501,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/ls_ti9_open_wounds_gold_wisp.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,-0.1}},
				["StackCountParams"] = {{1,2,3,4,5}}
			}
		}
	},
	[12000511] = {
		["Id"] = 12000511,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/teleport/teleport_ringup_pulse_fall2022.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,-50}},
				["StackCountParams"] = {{1,2,3,4,5}}
			}
		}
	},
	[12000521] = {
		["Id"] = 12000521,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_slardar/slardar_broken_shield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.1}}
			}
		}
	},
	[12000601] = {
		["Id"] = 12000601,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {6},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/drow/drow_arcana/drow_arcana_silenced.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			}
		}
	},
	[12000611] = {
		["Id"] = 12000611,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {6},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_snapfire/hero_snapfire_shells_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.15}}
			}
		}
	},
	[12000621] = {
		["Id"] = 12000621,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/black_king_bar_overhead_sphere.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{11,1}}
			}
		}
	},
	[12000622] = {
		["Id"] = 12000622,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12000701] = {
		["Id"] = 12000701,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{164,1,3}}
			}
		}
	},
	[12000702] = {
		["Id"] = 12000702,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12000711] = {
		["Id"] = 12000711,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {1500},
		["Duration"] = {30},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12000721] = {
		["Id"] = 12000721,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 5,
		["ParticlePath"] = "particles/econ/items/lanaya/ta_ti9_immortal_shoulders/ta_ti9_immortal_swirl_03.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,500}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[12000722] = {
		["Id"] = 12000722,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 5,
		["ParticlePath"] = "particles/econ/items/lanaya/ta_ti9_immortal_shoulders/ta_ti9_immortal_swirl_03.vpcf",
		["ParticleOffsetZ"] = 0
	},
	[12000801] = {
		["Id"] = 12000801,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {100},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/seasonal_reward_line_fall_2025/lotus_orb_fallrewardline_2025_swirl_wind.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{66,1,50}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}}
			}
		}
	},
	[12000802] = {
		["Id"] = 12000802,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {100},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/seasonal_reward_line_fall_2025/lotus_orb_fallrewardline_2025_swirl_wind.vpcf",
		["ParticleOffsetZ"] = 0
	},
	[12000821] = {
		["Id"] = 12000821,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {100},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{62,1,1000}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}}
			}
		}
	},
	[12000901] = {
		["Id"] = 12000901,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/kobold_speed_buff.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,100}},
				["StackCountParams"] = {{1,2,3,4,5}}
			}
		}
	},
	[12000911] = {
		["Id"] = 12000911,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[12000921] = {
		["Id"] = 12000921,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {100},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/lotus_orb_shell.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.02}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}}
			}
		}
	},
	[12001001] = {
		["Id"] = 12001001,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/skill/finish/hand_courier_radiant_lv5_ambient_ring.vpcf",
		["ParticleOffsetZ"] = 120,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{12,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}}
			}
		}
	},
	[12001011] = {
		["Id"] = 12001011,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/skill/finish/lotus_orb_shell.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[12001021] = {
		["Id"] = 12001021,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/seeds_of_serenity_healing_pluses_1.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{23,1,50}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[12001111] = {
		["Id"] = 12001111,
		["ActiveProb"] = {10000},
		["Duration"] = {0.3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12001121] = {
		["Id"] = 12001121,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_huskar/huskar_inner_fire_debuff_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,1,2000}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[12001201] = {
		["Id"] = 12001201,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12001202] = {
		["Id"] = 12001202,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 1,
		["ParticlePath"] = "particles/skill/finish/ember_ti9_flameguard_shield.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[268435456] = {
				["Type"] = 268435456,
				["Params"] = {{1}}
			},
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{125,1,20000}}
			}
		}
	},
	[12001211] = {
		["Id"] = 12001211,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[12001221] = {
		["Id"] = 12001221,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {20},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/skill/finish/lotus_orb_shell.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20}}
			}
		}
	},
	[12001301] = {
		["Id"] = 12001301,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12001302] = {
		["Id"] = 12001302,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {6},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{164,1,1}},
				["StackCountParams"] = {{1,2,3,4,5,6}}
			}
		}
	},
	[12001303] = {
		["Id"] = 12001303,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {6},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{161,1,60}},
				["StackCountParams"] = {{1,2,3,4,5,6}}
			}
		}
	},
	[12001311] = {
		["Id"] = 12001311,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 1,
		["ParticlePath"] = "particles/skill/finish/ember_ti9_flameguard_shield.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[268435456] = {
				["Type"] = 268435456,
				["Params"] = {{1}}
			}
		}
	},
	[12001321] = {
		["Id"] = 12001321,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12001322] = {
		["Id"] = 12001322,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{53,1,300}}
			}
		}
	},
	[12001323] = {
		["Id"] = 12001323,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}},
				["StackCountParams"] = {{1,2,3,4,5,6}}
			}
		}
	},
	[12001401] = {
		["Id"] = 12001401,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/regen/fountain_regen_fall2022_lvl3.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,500}}
			}
		}
	},
	[12001421] = {
		["Id"] = 12001421,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12001422] = {
		["Id"] = 12001422,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/seasonal_reward_line_fall_2025/lotus_orb_fallrewardline_2025_shell.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{10,1}}
			}
		}
	},
	[12001501] = {
		["Id"] = 12001501,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[12001511] = {
		["Id"] = 12001511,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,2,2}}
			}
		}
	},
	[12001521] = {
		["Id"] = 12001521,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/drow/drow_arcana/drow_arcana_silenced.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			}
		}
	},
	[12001522] = {
		["Id"] = 12001522,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{30}},
				["DamageParams"] = {{2,0,2,2}}
			}
		}
	},
	[12001601] = {
		["Id"] = 12001601,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}},
				["HealthParams"] = {{3,0,0.01}}
			}
		}
	},
	[12001611] = {
		["Id"] = 12001611,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/items2_fx/heavens_halberd.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[12001621] = {
		["Id"] = 12001621,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/units/heroes/hero_siren/siren_net_parent.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4] = {
				["Type"] = 4
			}
		}
	},
	[12001701] = {
		["Id"] = 12001701,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,1},{2,0,2,1},{2,0,3,1}}
			}
		}
	},
	[12001711] = {
		["Id"] = 12001711,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {100},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{62,1,1000}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}}
			}
		}
	},
	[12001712] = {
		["Id"] = 12001712,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12001721] = {
		["Id"] = 12001721,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[12001801] = {
		["Id"] = 12001801,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {6},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_source_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{62,1,1000}},
				["StackCountParams"] = {{1,2,3,4,5,6}}
			}
		}
	},
	[12001802] = {
		["Id"] = 12001802,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {6},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[12001811] = {
		["Id"] = 12001811,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {7},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[12001821] = {
		["Id"] = 12001821,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	},
	[2000000] = {
		["Id"] = 2000000,
		["ActiveProb"] = {10000},
		["Duration"] = {9999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1048576] = {
				["Type"] = 1048576
			}
		}
	},
	[20000001] = {
		["Id"] = 20000001,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/econ/events/fall_2022/mjollnir/mjollnir_shield_fall2022.vpcf",
		["Effect"] = {
			[1048576] = {
				["Type"] = 1048576
			}
		}
	},
	[2000001] = {
		["Id"] = 2000001,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["OverlayType"] = 1,
		["MaxStack"] = {19},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,-0.05}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19}}
			}
		}
	},
	[2000002] = {
		["Id"] = 2000002,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[16384] = {
				["Type"] = 16384,
				["Params"] = {{0,1,-5}}
			}
		}
	},
	[2000003] = {
		["Id"] = 2000003,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {99999},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["StackCountParams"] = {{1,0.15,0.3,0.45,0.6,0.75,0.9,1.05,1.2,1.35,1.5,1.65,1.8,1.95,2.1,2.25,2.4,2.55,2.7,2.85,3,3.15,3.3,3.45,3.6,3.75,3.9,4.05,4.2,4.35,4.5,4.65,4.8,4.95,5.1,5.25,5.4,5.55,5.7,5.85,6,6.15,6.3,6.45,6.6,6.75,6.9,7.05,7.2,7.35,7.5,7.65,7.8,7.95,8.1,8.25,8.4,8.55,8.7,8.85,9,9.15,9.3,9.45,9.6,9.75,9.9,10.05,10.2,10.35,10.5,10.65,10.8,10.95,11.1,11.25,11.4,11.55,11.7,11.85,12,12.15,12.3,12.45,12.6,12.75,12.9,13.05,13.2,13.35,13.5,13.65,13.8,13.95,14.1,14.25,14.4,14.55,14.7,14.85,15,15.15,15.3,15.45,15.6,15.75,15.9,16.05,16.2,16.35,16.5,16.65,16.8,16.95,17.1,17.25,17.4,17.55,17.7,17.85}}
			}
		}
	},
	[2000007] = {
		["Id"] = 2000007,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[524288] = {
				["Type"] = 524288
			}
		}
	},
	[2000008] = {
		["Id"] = 2000008,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[268435456] = {
				["Type"] = 268435456,
				["Params"] = {{1}}
			}
		}
	},
	[2000009] = {
		["Id"] = 2000009,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{54,4,300},{55,4,300}}
			}
		}
	},
	[2000010] = {
		["Id"] = 2000010,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,3000}}
			}
		}
	},
	[2000011] = {
		["Id"] = 2000011,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/magnus_ti10_head_antler_core.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[512] = {
				["Type"] = 512,
				["Params"] = {{51,1,3000}}
			}
		}
	},
	[20000121] = {
		["Id"] = 20000121,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/wraith_king_reincarnate_slow_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1048576] = {
				["Type"] = 1048576
			}
		}
	},
	[20000122] = {
		["Id"] = 20000122,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,1}}
			}
		}
	},
	[1001] = {
		["Id"] = 1001,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,8}}
			}
		}
	},
	[1002] = {
		["Id"] = 1002,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/econ/items/primal_beast/primal_beast_2022_prestige/primal_beast_2022_prestige_onslaught_charge_dust_front.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{100}}
			}
		}
	},
	[1003] = {
		["Id"] = 1003,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_primal_beast/primal_beast_onslaught_charge_active.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[1004] = {
		["Id"] = 1004,
		["AttrType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[1005] = {
		["Id"] = 1005,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePath"] = "particles/econ/items/primal_beast/primal_beast_2022_prestige/primal_beast_2022_prestige_onslaught_charge_dust_front.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[1006] = {
		["Id"] = 1006,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {5,10,15},
		["MaxStackBuffId"] = 10003,
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[128] = {
				["Type"] = 128
			},
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{1,5,10}}
			}
		}
	},
	[1007] = {
		["Id"] = 1007,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/razor_plasmafield_remap.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,2000}}
			}
		}
	},
	[1008] = {
		["Id"] = 1008,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[512] = {
				["Type"] = 512
			}
		}
	},
	[1009] = {
		["Id"] = 1009,
		["AttrType"] = 4,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/troll_warlord_bersekers_net.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[4] = {
				["Type"] = 4
			}
		}
	},
	[1023] = {
		["Id"] = 1023,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/antimage_blink_start_ti7_golden.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{20}}
			}
		}
	},
	[1031] = {
		["Id"] = 1031,
		["DesignType"] = 1,
		["AttrType"] = 3,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[1033] = {
		["Id"] = 1033,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {7},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.15},{410,0,-5000},{412,0,-5000}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[1034] = {
		["Id"] = 1034,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{42,1,100}},
				["StackCountParams"] = {{1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2}}
			}
		}
	},
	[1035] = {
		["Id"] = 1035,
		["ActiveProb"] = {10000},
		["Duration"] = {0.2},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/primal_beast/primal_beast_2022_prestige/primal_beast_2022_prestige_onslaught_charge_body_emissive.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW"
	},
	[1036] = {
		["Id"] = 1036,
		["DesignType"] = 1,
		["AttrType"] = 3,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[1037] = {
		["Id"] = 1037,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/econ/items/omniknight/omni_2021_immortal/omni_2021_immortal_buff_ring.vpcf",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,1,100}},
				["StackCountParams"] = {{1,2,2.8,3.4,3.9,4.3,4.6,4.8,5,5.1,5.2}}
			}
		}
	},
	[1038] = {
		["Id"] = 1038,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			},
			[2048] = {
				["Type"] = 2048
			},
			[512] = {
				["Type"] = 512
			}
		}
	},
	[1040] = {
		["Id"] = 1040,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["MaxStackReset"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,1,100},{42,1,100}},
				["StackCountParams"] = {{0.15,0.3,0.45,0.6,0.75,0.9,1.05,1.2,1.35,1.5}}
			}
		}
	},
	[10401] = {
		["Id"] = 10401,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/skill/finish/pangolier_defense_stance_shield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,1,100}},
				["StackCountParams"] = {{0.15,0.3,0.45,0.6,0.75,0.9,1.05,1.2,1.35,1.5}}
			}
		}
	},
	[1041] = {
		["Id"] = 1041,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/black_king_bar_avatar.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,5},{125,2,10}}
			}
		}
	},
	[1042] = {
		["Id"] = 1042,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 20,
		["ParticlePath"] = "particles/units/heroes/heroes_underlord/underlord_dark_rift_ring.vpcf",
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0.5,1}},
				["HealthParams"] = {{3,0,0.01}}
			}
		}
	},
	[1043] = {
		["Id"] = 1043,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/jugg_fall20_immortal_healing_ward_death.vpcf",
		["ParticleOffsetZ"] = 30,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,1}}
			}
		}
	},
	[1045] = {
		["Id"] = 1045,
		["DesignType"] = 1,
		["AttrType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[10481] = {
		["Id"] = 10481,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {4},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/skill/finish/winter_wyvern_arctic_attack_trail.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-100}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[104811] = {
		["Id"] = 104811,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 3,
		["ParticlePath"] = "particles/creatures/aghanim/staff_beam_tgt_fire.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[10491] = {
		["Id"] = 10491,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1.5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 1,
		["ParticlePath"] = "particles/skill/finish/star_emblem_friend_shield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,5}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[10521] = {
		["Id"] = 10521,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {3},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/dev/library/base_item_attachment.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,300}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[10531] = {
		["Id"] = 10531,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/items2_fx/heavens_halberd.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[10541] = {
		["Id"] = 10541,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {6},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/dev/library/base_item_attachment.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,150}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[10581] = {
		["Id"] = 10581,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_meepo/meepo_earthbind.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4] = {
				["Type"] = 4
			}
		}
	},
	[10591] = {
		["Id"] = 10591,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {20},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_slardar/slardar_amp_damage.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{125,2,-0.75}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[10621] = {
		["Id"] = 10621,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1.5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/dev/library/base_item_attachment.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,150}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[10651] = {
		["Id"] = 10651,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/omniknight/omni_2021_immortal/omni_2021_immortal_ally.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{11,1}}
			}
		}
	},
	[10652] = {
		["Id"] = 10652,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_omniknight/omniknight_heavenly_grace_buff.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{12,1}}
			}
		}
	},
	[10661] = {
		["Id"] = 10661,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 2,
		["ParticlePath"] = "particles/econ/items/juggernaut/ancient_exile/ancient_exile_healing_ward_flame.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.01}}
			}
		}
	},
	[10671] = {
		["Id"] = 10671,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 3,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_medusa/medusa_mana_shield_buff_ground_b.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{23,1,10000}}
			}
		}
	},
	[10682] = {
		["Id"] = 10682,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {3},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_slardar/slardar_amp_damage.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.3}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[10711] = {
		["Id"] = 10711,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4] = {
				["Type"] = 4
			}
		}
	},
	[10731] = {
		["Id"] = 10731,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/rune_shield_bubble.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[512] = {
				["Type"] = 512
			}
		}
	},
	[10752] = {
		["Id"] = 10752,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/ogre_magi_fire_shield_bubble_outer_1.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{31,1,1}}
			}
		}
	},
	[10753] = {
		["Id"] = 10753,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 1,
		["ParticlePath"] = "particles/skill/finish/medusa_mana_shield_buff_edge_1.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{32,1,1}}
			}
		}
	},
	[10762] = {
		["Id"] = 10762,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0.1},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{-2,0}}
			}
		}
	},
	[10781] = {
		["Id"] = 10781,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/dev/library/base_item_attachment.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,150}}
			}
		}
	},
	[10791] = {
		["Id"] = 10791,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {100},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_axe/axe_armor.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.15}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}}
			}
		}
	},
	[10801] = {
		["Id"] = 10801,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_axe/axe_armor.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{52,1,50}}
			}
		}
	},
	[10811] = {
		["Id"] = 10811,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/oracle_false_promise_break_heal_1.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.05}}
			}
		}
	},
	[10812] = {
		["Id"] = 10812,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {30},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/items/vengeful/vengeful_arcana/vengeful_arcana_wave_of_terror_v2_atmospheric.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,350}}
			}
		}
	},
	[10821] = {
		["Id"] = 10821,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1048576] = {
				["Type"] = 1048576
			}
		}
	},
	[10822] = {
		["Id"] = 10822,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/wraith_king_reincarnate_slow_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,1}}
			}
		}
	},
	[10831] = {
		["Id"] = 10831,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {31},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/force_staff_ti10_glow.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[512] = {
				["Type"] = 512
			}
		}
	},
	[10832] = {
		["Id"] = 10832,
		["DesignType"] = 1,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {31},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[10841] = {
		["Id"] = 10841,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/ogre_magi_fire_shield_bubble_outer.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{31,1,1}}
			}
		}
	},
	[10842] = {
		["Id"] = 10842,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/medusa_mana_shield_buff_edge.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{32,1,1}}
			}
		}
	},
	[10851] = {
		["Id"] = 10851,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {10},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}},
				["HealthParams"] = {{3,0,0.05}}
			}
		}
	},
	[10861] = {
		["Id"] = 10861,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {100},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}},
				["HealthParams"] = {{3,0,0.002}}
			}
		}
	},
	[10871] = {
		["Id"] = 10871,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{3,0,0.04}}
			}
		}
	},
	[10881] = {
		["Id"] = 10881,
		["DesignType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {31},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[10891] = {
		["Id"] = 10891,
		["DesignType"] = 1,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{42,53,0,300,-0.9}}
			}
		}
	},
	[1090] = {
		["Id"] = 1090,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {10901},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[10901] = {
		["Id"] = 10901,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_body_generic_2.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,1,1}},
				["DamageParams"] = {{1,0,8}}
			}
		}
	},
	[1091] = {
		["Id"] = 1091,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/aberrant_default_meathook_fire.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[10911] = {
		["Id"] = 10911,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,4}}
			}
		}
	},
	[1092] = {
		["Id"] = 1092,
		["AttrType"] = 2,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{50}}
			}
		}
	},
	[1094] = {
		["Id"] = 1094,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_blue_ambient_4.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-300}}
			}
		}
	},
	[1095] = {
		["Id"] = 1095,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/troll_warlord_net_cast_main.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4] = {
				["Type"] = 4
			}
		}
	},
	[1096] = {
		["Id"] = 1096,
		["ActiveProb"] = {10000},
		["Duration"] = {120},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleOffsetZ"] = 0
	},
	[1097] = {
		["Id"] = 1097,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/remap_nevermore_shadowraze_end_smoke_1.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.15}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[1098] = {
		["Id"] = 1098,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{150}}
			}
		}
	},
	[1099] = {
		["Id"] = 1099,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[10991] = {
		["Id"] = 10991,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1
			},
			[4] = {
				["Type"] = 4
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[10992] = {
		["Id"] = 10992,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,8}}
			}
		}
	},
	[1100] = {
		["Id"] = 1100,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,8}}
			}
		}
	},
	[1101] = {
		["Id"] = 1101,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,8}}
			},
			[2] = {
				["Type"] = 2,
				["Params"] = {{200}}
			}
		}
	},
	[1102] = {
		["Id"] = 1102,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {20},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/courier/courier_greevil_blue/courier_greevil_blue_ambient_3.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{51,1,-300}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[11021] = {
		["Id"] = 11021,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,8}}
			}
		}
	},
	[1103] = {
		["Id"] = 1103,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {20},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/star_emblem_brokenshield_1.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.4}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[1104] = {
		["Id"] = 1104,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {20},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/rubick_telekinesis_force_debuff_b_gold_1.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{201,2,-0.3}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[1105] = {
		["Id"] = 1105,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {20},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/rubick_telekinesis_force_debuff_b_gold_2.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{105,2,-0.1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[1106] = {
		["Id"] = 1106,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/tidehunter_shell_core.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{10,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[11061] = {
		["Id"] = 11061,
		["ActiveProb"] = {10000},
		["Duration"] = {25},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/lotus_orb_shell_1.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.05}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[1107] = {
		["Id"] = 1107,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["DurationBuffId"] = {11071},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[11071] = {
		["Id"] = 11071,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1] = {
				["Type"] = 1,
				["Params"] = {{2,0,1}}
			},
			[4] = {
				["Type"] = 4,
				["Params"] = {{2,0,1}}
			},
			[2048] = {
				["Type"] = 2048,
				["Params"] = {{2,0,1}}
			}
		}
	},
	[1108] = {
		["Id"] = 1108,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/rubick_telekinesis_force_debuff_b.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0.01}}
			}
		}
	},
	[1109] = {
		["Id"] = 1109,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{300}}
			}
		}
	},
	[11091] = {
		["Id"] = 11091,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1
			},
			[4] = {
				["Type"] = 4
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[1110] = {
		["Id"] = 1110,
		["ActiveProb"] = {10000},
		["Duration"] = {10},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/lotus_orb_fallrewardline_2025_rings.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{12,1}}
			}
		}
	},
	[1111] = {
		["Id"] = 1111,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,8}}
			}
		}
	},
	[1112] = {
		["Id"] = 1112,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{1,0,8}}
			}
		}
	},
	[1113] = {
		["Id"] = 1113,
		["ActiveProb"] = {10000},
		["Duration"] = {0.5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[2] = {
				["Type"] = 2,
				["Params"] = {{0}}
			}
		}
	},
	[11131] = {
		["Id"] = 11131,
		["DesignType"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/generic_stunned.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[1] = {
				["Type"] = 1
			},
			[4] = {
				["Type"] = 4
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[1114] = {
		["Id"] = 1114,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {99},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/wraith_king_ghosts_ambient_beams_f.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,5},{101,1,50000}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99}}
			}
		}
	},
	[13400001] = {
		["Id"] = 13400001,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_crystalmaiden/maiden_shard_frostbite.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.02,0.025,0.03,0.035,0.04}}
			}
		}
	},
	[13400011] = {
		["Id"] = 13400011,
		["ActiveProb"] = {10000},
		["Duration"] = {9999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {30,35,40,45,60},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_body_generic.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0
	},
	[13400012] = {
		["Id"] = 13400012,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{1,0,1}},
				["HealthParams"] = {{3,0,0}}
			}
		}
	},
	[13500001] = {
		["Id"] = 13500001,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,2.5,3,4,5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {2,3,4,5,6},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/star_emblem_brokenshield.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 50,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,0}},
				["StackCountParams"] = {{1,2,3,4,5,6}}
			}
		}
	},
	[13500002] = {
		["Id"] = 13500002,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,2.5,3,4,5},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["MaxStackReset"] = 0,
		["ParticlePath"] = "particles/skill/finish/courier_greevil_body_generic_1.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["Effect"] = {
			[262144] = {
				["Type"] = 262144,
				["Params"] = {{5,300}}
			}
		}
	},
	[13500011] = {
		["Id"] = 13500011,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {2,2.5,3,3.5,4},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {5},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{202,1,200,300,400,500,600}},
				["StackCountParams"] = {{1,2,3,4,5}}
			}
		}
	},
	[13500012] = {
		["Id"] = 13500012,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/radiance_owner_fallrewardline_2025.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,0.1,0.2,0.3,0.4,0.5}}
			}
		}
	},
	[13500021] = {
		["Id"] = 13500021,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {15},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {2,4,6,8,10},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{"2_41/0.02/0.04/0.06/0.08/0.1_1_1",3,1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[13500031] = {
		["Id"] = 13500031,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{33,1,1,1}}
			}
		}
	},
	[13500041] = {
		["Id"] = 13500041,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {5},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/teleport_start_winter_major_2016_a_model.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 100,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{121,1,300,600,900,1200,1500}}
			}
		}
	},
	[13600001] = {
		["Id"] = 13600001,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {5,7,9,11,13},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_muerta/muerta_spell_fear_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4] = {
				["Type"] = 4
			},
			[2048] = {
				["Type"] = 2048
			}
		}
	},
	[13600002] = {
		["Id"] = 13600002,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/units/heroes/hero_muerta/muerta_spell_fear_debuff.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,1,0.1,0.15,0.2,0.25,0.3},{2,0,2,0.1,0.15,0.2,0.25,0.3},{2,0,3,0.1,0.15,0.2,0.25,0.3}}
			}
		}
	},
	[13600011] = {
		["Id"] = 13600011,
		["GainOrDeBuff"] = -1,
		["ActiveProb"] = {10000},
		["Duration"] = {3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/muerta_spell_fear_debuff_detail_1.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{42,2,-0.2,-0.25,-0.3,-0.35,-0.4},{201,1,-500,-1000,-1500,-2000,-2500}}
			}
		}
	},
	[13600021] = {
		["Id"] = 13600021,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1,1.5,2,2.5,3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/seasonal_reward_line_fall_2025/lotus_orb_fallrewardline_2025_shell.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{10,1}}
			}
		}
	},
	[13600022] = {
		["Id"] = 13600022,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {1,1.5,2,2.5,3},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/skill/finish/lotus_orb_shell.vpcf",
		["ParticleAttachment"] = "PATTACH_ROOTBONE_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[33554432] = {
				["Type"] = 33554432,
				["Params"] = {{1,0.05,0.1,0.15,0.2,0.25}}
			}
		}
	},
	[13500051] = {
		["Id"] = 13500051,
		["ActiveProb"] = {10000},
		["Duration"] = {999999999},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[0] = {
				["Type"] = 0,
				["Params"] = {{34,1,1,1}}
			}
		}
	},
	[13400021] = {
		["Id"] = 13400021,
		["GainOrDeBuff"] = 1,
		["ActiveProb"] = {10000},
		["Duration"] = {8},
		["DurationSkillId"] = {0},
		["OverlayType"] = 1,
		["MaxStack"] = {2,3,4,5,10},
		["ParticlePathCP"] = 0,
		["ParticlePath"] = "particles/econ/events/ti10/fountain_regen_ti10_lvl3.vpcf",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[1024] = {
				["Type"] = 1024,
				["Params"] = {{41,2,0.05,0.06,0.07,0.085,0.1}},
				["StackCountParams"] = {{1,2,3,4,5,6,7,8,9,10}}
			}
		}
	},
	[11100701] = {
		["Id"] = 11100701,
		["ActiveProb"] = {10000},
		["Duration"] = {0},
		["DurationSkillId"] = {0},
		["OverlayType"] = 2,
		["MaxStack"] = {1},
		["ParticlePathCP"] = 0,
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["ParticleOffsetZ"] = 0,
		["Effect"] = {
			[4096] = {
				["Type"] = 4096,
				["Params"] = {{2,0,1}},
				["DamageParams"] = {{2,0,3,1.5}}
			}
		}
	}
}
