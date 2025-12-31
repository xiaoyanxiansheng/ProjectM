--[[
	SkillPassive

	字段列表:
		id {int} 编号
		Cd {array(number, number...)} 技能CD
		Duration {array(number, number...)} 延时(等级)
		Interval {array(number, number...)} 间隔触发(等级)
		BindBuff {int} 绑定BUFF
		AddTriggerProb {array(number, number...)} 触发概率
		RemoveTriggerProb {array(number, number...)} 触发概率
		Level.Id* {int} 索引
		Level.Change* {array(int, int...)} 生效等级范围
		Level.BuffId {array(int, int...)} 触发Buff
		Level.SkillId {array(int, int...)} 触发技能
		Level.AddCondition {string} 激活被动所需条件
		Level.RemoveCondition {string} 移除被动条件

]]
return {
	[102] = {
		["id"] = 102,
		["BindBuff"] = 102,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[10001] = {
		["id"] = 10001,
		["Duration"] = {4,3.8},
		["Interval"] = {1,0.9},
		["AddTriggerProb"] = {5000},
		["RemoveTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {10001},
				["SkillId"] = {10001},
				["AddCondition"] = "if not ishit then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 10001"
			}
		}
	},
	[10002] = {
		["id"] = 10002,
		["AddTriggerProb"] = {10000},
		["RemoveTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {10002},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[10003] = {
		["id"] = 10003,
		["AddTriggerProb"] = {10000},
		["RemoveTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif not isdoskill or not buffins or not casterins or not targetins then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId==20008 and buffins:getdata().BuffId==20000) then return false end\nif not (casterins:GetAttr(52) <= targetins:GetAttr(52)) then return false end\nbuffins:gettable().Effect[4096].Params = {{2,0,10}}\nreturn true"
			}
		}
	},
	[10004] = {
		["id"] = 10004,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[10005] = {
		["id"] = 10005,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return isbuffchange and skillid==10007 and buffid==20000"
			}
		}
	},
	[10006] = {
		["id"] = 10006,
		["Cd"] = {1},
		["AddTriggerProb"] = {10000},
		["RemoveTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {10006},
				["AddCondition"] = "return movespeed < 0.01",
				["RemoveCondition"] = "return movespeed >= 0.01"
			}
		}
	},
	[10007] = {
		["id"] = 10007,
		["Cd"] = {1},
		["AddTriggerProb"] = {10000},
		["RemoveTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {10006},
				["AddCondition"] = "return movedistance >= 200"
			}
		}
	},
	[20001] = {
		["id"] = 20001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {20001},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[200021] = {
		["id"] = 200021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110070) then return false end\nfor i = 3 , 8 do\n    skillins:gettable().TimeLine[i].Active = 1\nend\nreturn true"
			}
		}
	},
	[200022] = {
		["id"] = 200022,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return istimeline and skillid==20002"
			}
		}
	},
	[200031] = {
		["id"] = 200031,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 20003"
			}
		}
	},
	[200032] = {
		["id"] = 200032,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 20003"
			}
		}
	},
	[20004] = {
		["id"] = 20004,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,50},
				["BuffId"] = {200041},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[200041] = {
		["id"] = 200041,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {200042},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[200042] = {
		["id"] = 200042,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {200043},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[200051] = {
		["id"] = 200051,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "istimeline and skillid==20005"
			}
		}
	},
	[200071] = {
		["id"] = 200071,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {200072},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1"
			}
		}
	},
	[3000011] = {
		["id"] = 3000011,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 30001) then return false end\nskillins:gettable().TimeLine[1].Active=0\nskillins:gettable().TimeLine[2].Active=1\nreturn true"
			}
		}
	},
	[3000012] = {
		["id"] = 3000012,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not buffins then return false end\nif not casterins then return false end\nif not targetins then return false end\nif not (skillins:getdata().SkillId ==300001 and buffins:getdata().BuffId == 3000010 then return false end\nif casterins:GetAttr(52) < targetins:GetAttr(52) then return end\nbuff:getdata().Effect[4096].Params={{2,0,2}}\nreturn true"
			}
		}
	},
	[3000021] = {
		["id"] = 3000021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 3000021) then return false end\nskillins:gettable().TimeLine[3].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[300017] = {
		["id"] = 300017,
		["Cd"] = {1},
		["AddTriggerProb"] = {10000},
		["RemoveTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {300017},
				["AddCondition"] = "return movedistance >= 200"
			}
		}
	},
	[300019] = {
		["id"] = 300019,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["RemoveTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {300019},
				["AddCondition"] = "if not isdoskill then return false end\nif not settlementins then return false end\nif not (settlementins.TimeLineIndex == 3) then return false end\nlocal r = settlementins:gettable().RangeParam[1]\nif r > 400 then return false end\ntableadd(settlementins:gettable(),50,\"RangeParam\",1)\nreturn true"
			}
		}
	},
	[300020] = {
		["id"] = 300020,
		["Cd"] = {0.1},
		["BindBuff"] = 300020,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1100000] = {
		["id"] = 1100000,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11000001) then return false end\nskillins:gettable().TimeLine[3].Active=1\nskillins:gettable().TimeLine[4].Active=1\nreturn true"
			}
		}
	},
	[11000001] = {
		["id"] = 11000001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11000001 then return true end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\nsettlementins:gettable().RangeParam = {150,360}\ntable.insert(settlementins:gettable().TargetHitBuffId,11000002)\nreturn true"
			}
		}
	},
	[11000002] = {
		["id"] = 11000002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11000001 then return false end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\nif skillins:getdata().SkillId == 11000001 then\nsettlementins:gettable().RangeParam = {300,360}\nend\nsettlementins:gettable().TargetHitBuffId = {11000001,11000003}\nreturn true"
			}
		}
	},
	[11000003] = {
		["id"] = 11000003,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11000001 then return false end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\nsettlementins:gettable().TargetHitBuffId = {1100000,11000004}\nreturn true"
			}
		}
	},
	[1100001] = {
		["id"] = 1100001,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11000011) then return false end\nskillins:gettable().TimeLine[3].Active=1\nreturn true"
			}
		}
	},
	[11000011] = {
		["id"] = 11000011,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId == 1100001 then\n    for i = 7 , 11 do\n        skillins:gettable().TimeLine[i].Active = 0\n    end\n    for i = 12 , 16 do\n        skillins:gettable().TimeLine[i].Active = 1\n    end\n    return true\nelseif skillins:getdata().SkillId == 11000011 then\n    skillins:gettable().TimeLine[2].Active=0\n    skillins:gettable().TimeLine[4].Active=1\n    skillins:gettable().TimeLine[6].Active=0\n    skillins:gettable().TimeLine[7].Active=1\n    return true\nend\nreturn false"
			}
		}
	},
	[11000012] = {
		["id"] = 11000012,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId == 1100001 then\n    for i = 7 , 11 do\n        skillins:gettable().TimeLine[i].Params[7] = 12\n        skillins:gettable().TimeLine[i].Params[4] = \"1_800_90\"\n    end\n    return true\nelseif skillins:getdata().SkillId == 11000011 then\n    skillins:gettable().TimeLine[2].Active=0\n    skillins:gettable().TimeLine[5].Active=1\n    return true\nend\nreturn false"
			}
		}
	},
	[11000013] = {
		["id"] = 11000013,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId == 1100001 then \n    for i = 7 , 11 do\n        skillins:gettable().TimeLine[i].Params[7] = 8\n        skillins:gettable().TimeLine[i].Params[4] = \"1_1600_60\"\n    end\n    return true\nelseif skillins:getdata().SkillId == 11000011 then\n    skillins:gettable().Duration[1] = 2\n    return true\nend\nreturn false"
			}
		}
	},
	[1100002] = {
		["id"] = 1100002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 11000021 and doSkillData.SkillId ~= 11000023  then return false end\n\nskillins:gettable().TimeLine[4].Active=1\n\nreturn false"
			}
		}
	},
	[11101003] = {
		["id"] = 11101003,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 1110100 and skillId ~= 1110101 then return false end\nlocal buffId = 11000031\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal buff = BuffManagerInstance:GetEntityBuff(casterInsId,buffId)\nlocal stackCount = buff and buff:GetStackCount() or 0\nskillins:getdata().EffectTimes = 1 + stackCount * 0.05\nBuffManagerInstance:RemoveBuff(casterInsId,buffId)\nreturn false"
			}
		}
	},
	[11000021] = {
		["id"] = 11000021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1100002 and doSkillData.SkillId ~= 11000023 then return false end\n\nlocal caster = GetEntityByInsId(doSkillData.CasterInsId)\ncaster:MinusSkillCDBySkillid(doSkillData.SkillId,0,0.5)\n\nreturn false"
			}
		}
	},
	[11000022] = {
		["id"] = 11000022,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1100002  and doSkillData.SkillId ~= 11000023  then return false end\n\nskillins:gettable().TimeLine[1].Active = 1\nskillins:gettable().TimeLine[2].Active = 1\nskillins:gettable().TimeLine[3].Active = 1\nskillins:gettable().TimeLine[5].Params[3] = \"1_800_30/40/50/60/70/80/100/120\"\n\nreturn false"
			}
		}
	},
	[11000023] = {
		["id"] = 11000023,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1100002 or casterins:GetAttr(51) < 900 then return false end\nlocal doSkillData = skillins:getdata()\nlocal newDoSkillData = clone(doSkillData)\nnewDoSkillData.SkillId = 11000023\nSkillManagerInstance:DoSkill(newDoSkillData)\nreturn false"
			}
		}
	},
	[11000031] = {
		["id"] = 11000031,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\n\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 1100003 and skillId ~= 11000031 then return false end\n\nlocal skillLevel = skillins:getdata().SkillLevel\n\nlocal count = 1\nif learnedpassive(insid,11101102) then count = count + 1 end\nif learnedpassive(insid,11101112) then count = count + 1 end\nif learnedpassive(insid,11101122) then count = count + 1 end\nif learnedpassive(insid,11101132) then count = count + 1 end\nif learnedpassive(insid,11101142) then count = count + 1 end\nlocal angle = count * 360 / (count + 1)\nlocal radius = skillLevel > 5 and 450 or 350\nskillins:gettable().TimeLine[1].Params[3] = \"1_\"..radius..\"_360\"\nif skillId == 1100003 then\n    skillins:gettable().TimeLine[3].Params[3] = \"1_\"..radius..\"_\"..angle\nend"
			}
		}
	},
	[11000032] = {
		["id"] = 11000032,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1100003 then return false end\n\nlocal count = #settlementinslist\nlocal buff_id = 11000031\nlocal buff = SkillAPI.GetEntityBuff(insid,buff_id)\nif buff then\n    local stack_count = buff:GetStackCount() + count\n    local lv = buff:GetBuffLevel() > #GetBuffLine(buff_id).MaxStack and #GetBuffLine(buff_id).MaxStack or buff:GetBuffLevel()\n    if stack_count > GetBuffLine(buff_id).MaxStack[lv] then stack_count = GetBuffLine(buff_id).MaxStack[lv]  end\n    BuffManagerInstance:SetStackCount(insid,buff_id,stack_count)\nelse\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = skillins:getdata().CasterInsId\n    doBuffData.BuffId = buff_id\n    doBuffData.InitStackCount = count\n    BuffManagerInstance:AddBuff(doBuffData)\nend\nreturn false"
			}
		}
	},
	[11000033] = {
		["id"] = 11000033,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId ~= 1100003 then return false end\n    local count = 1\n    if learnedpassive(insid,11000033) then count = count + 1 end\n    if learnedpassive(insid,11101102) then count = count + 1 end\n    if learnedpassive(insid,11101112) then count = count + 1 end\n    if learnedpassive(insid,11101122) then count = count + 1 end\n    if learnedpassive(insid,11101132) then count = count + 1 end\n    if learnedpassive(insid,11101142) then count = count + 1 end\n    skillins:gettable().TimeLine[3].Params[5] = count\n    local radius = 300\n    if learnedpassive(insid,11000031) then\n        radius =  skillins:getdata().SkillLevel > 8 and 400 or 350\n    end\n    skillins:gettable().TimeLine[3].Params[3] = \"1_\"..radius..\"_\"..((count - 1) * 360 / count)\n    passiveins.DosettlementCount = count - 1\nend\n\nif isdosettlement then\n    if skillins:getdata().SkillId ~= 1100003 then return false end\n    local times = {1,0.9,0.8,0.7,0.6,0.5}\n    settlementins:gettable().HitInterval = times[passiveins.DosettlementCount]\nend\n\nreturn false"
			}
		}
	},
	[11000034] = {
		["id"] = 11000034,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1100003 then return false end\n\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = hitTargetInsId\n    doBuffData.BuffId = 11000032\n    BuffManagerInstance:AddBuff(doBuffData)\nend\n\nreturn false"
			}
		}
	},
	[1100004] = {
		["id"] = 1100004,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1100004\nif not isskillentercd then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= skillId then return false end\nlocal caster = GetEntityByInsId(doSkillData.CasterInsId)\nif not caster then return false end\ncaster:MinusSkillCDBySkillid(skillId,0,0.5)\nreturn true"
			}
		}
	},
	[11000041] = {
		["id"] = 11000041,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "-- 释放技能\nif isdoskill then\n    local doSkillData = skillins:getdata()\n    if doSkillData.SkillId == 1100004 then\n        skillins:gettable().TimeLine[5].Active = 1\n        local buff = BuffManagerInstance:GetEntityBuff(doSkillData.CasterInsId,11000081)\n        if buff then \n            local doBuffData = buff:getdata()\n            local newDoSkillData = clone(doSkillData)\n            newDoSkillData.SkillId = 11000042\n            newDoSkillData.EffectTimes = newDoSkillData.EffectTimes * doBuffData.GDamageTimes\n            doBuffData.GDamageTimes = 1\n            SkillManagerInstance:DoSkill(newDoSkillData)\n        end\n    end\nend\n\n-- buff结束的时候释放技能\nif isfinishedbuff then\n    local doBuffData = buffins:getdata()\n    if doBuffData.BuffId == 11000041 then\n        local skillins = doBuffData.Skill\n        local newDoSKillData = clone(skillins:getdata())\n        newDoSKillData.SkillId = 11000042\n        newDoSKillData.EffectTimes = newDoSKillData.EffectTimes * doBuffData.GDamageTimes\n        SkillManagerInstance:DoSkill(newDoSKillData)\n    end\nend\nreturn false"
			}
		}
	},
	[11000042] = {
		["id"] = 11000042,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1100004\nif not isskillentercd then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= skillId then return false end\nlocal caster = GetEntityByInsId(doSkillData.CasterInsId)\nif not caster then return false end\ncaster:MinusSkillCDBySkillid(skillId,0,0.5)\nreturn true"
			}
		}
	},
	[11000043] = {
		["id"] = 11000043,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11000041\nif not isdoskill then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= skillId then return false end\n\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 11000044\ndoBuffData.BuffLevel = passiveins:getdata().PassiveLevel\ndoBuffData.Skill = skillins\nPassiveSkillManagerInstance:AddBuff(doBuffData)\n\nreturn true"
			}
		}
	},
	[11000044] = {
		["id"] = 11000044,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ispassiveupdate then\n    local buff = BuffManagerInstance:GetEntityBuff(insid,11000041)\n    if not buff then return false end\n    if not buff:getdata().GDamageTimes then\n        buff:getdata().GDamageTimes = 1\n        buff:getdata().MoveDistance = movedistance\n    end\n    local stack = math.floor((movedistance - buff:getdata().MoveDistance) / 10)\n    if stack < 1 then return false end\n    buff:getdata().GDamageTimes = buff:getdata().GDamageTimes  + stack * 0.01\n    buff:getdata().MoveDistance = movedistance\n    BuffManagerInstance:SetStackCount(insid , 11000041 , buff:GetStackCount() + stack)\nend\nreturn false"
			}
		}
	},
	[11000051] = {
		["id"] = 11000051,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11000051 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_350_360\"\n\nreturn false"
			}
		}
	},
	[11000052] = {
		["id"] = 11000052,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11000051 then return false end\n\nskillins:gettable().TimeLine[5].Active = 1\n\nreturn false"
			}
		}
	},
	[11000053] = {
		["id"] = 11000053,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11000051 then return false end\n\nskillins:gettable().TimeLine[3].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11000054] = {
		["id"] = 11000054,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11000053},
				["AddCondition"] = "if not isdamage then return false end\nif skillins:getdata().SkillId ~= 11000051 then return false end\nFight:ApplyHeal(casterins, casterins, 1100005, 1, 1, {{1,0,0.05 * skillins:getdata().Damage }})\nreturn true"
			}
		}
	},
	[11000061] = {
		["id"] = 11000061,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal skillId = 1100006\nif skillins:getdata().SkillId ~= skillId then return false end\n\nBuffManagerInstance:AddBuffHelper(insid , 11000062 , passiveins:getdata().PassiveLevel, nil , settlementcount)\n\nreturn false"
			}
		}
	},
	[11000062] = {
		["id"] = 11000062,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal skillId = 1100006\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal caster = GetEntityByInsId(casterInsId)\nlocal shieldValue = BuffManagerInstance:GetTotalShieldValue(casterInsId)\nlocal damage = shieldValue * 0.25\n\nif damage > 0 then\nTimer(0.2,function()\nlocal caster = GetEntityByInsId(casterInsId)\nif not caster then return true end\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local target = GetEntityByInsId(hitTargetInsId)\n    if target then \n        FightApplyDamage(caster, target, skillId, 1, 1, {{12,skillId,damage}})\n    end\nend\nreturn true\nend)\nend\n\nlocal shieldInfos = BuffManagerInstance:GetBuffIds(insid, BuffEvent.Shield)\nfor _, info in pairs(shieldInfos) do\n    local buffIns = BuffManagerInstance:GetEntityBuff(insid, info.buffId)\n    if buffIns then\n        buffIns:ResetDuration()\n    end\nend\n\nreturn false"
			}
		}
	},
	[11000063] = {
		["id"] = 11000063,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1100006 then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nlocal r = 1 - caster:GetHP() / caster:GetAttr_MaxHP()\n\nskillins:getdata().EffectTimes = 1 + r * 3\n\nreturn false"
			}
		}
	},
	[11000064] = {
		["id"] = 11000064,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not iscritical then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nif math.random(1,10000) > 3500 then return false end\nlocal newDoSkillData = DoSkillData.New()\nnewDoSkillData.CasterInsId = skillins:getdata().CasterInsId\nnewDoSkillData.SkillId = 11000061\nnewDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\nSkillManagerInstance:DoSkill(newDoSkillData)\n\nreturn false"
			}
		}
	},
	[11000081] = {
		["id"] = 11000081,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1100008\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[4].Active = 0\nskillins:gettable().TimeLine[5].Active = 0\nskillins:gettable().TimeLine[6].Active = 0\nskillins:gettable().TimeLine[7].Active = 0\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11000082)\nif isLearned then\n    skillins:gettable().TimeLine[7].Active = 1\nelse\n    skillins:gettable().TimeLine[5].Active = 1\nend\n\nreturn false"
			}
		}
	},
	[11000082] = {
		["id"] = 11000082,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1100008\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[4].Active = 0\nskillins:gettable().TimeLine[5].Active = 0\nskillins:gettable().TimeLine[6].Active = 0\nskillins:gettable().TimeLine[7].Active = 0\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11000081)\nif isLearned then\n    skillins:gettable().TimeLine[7].Active = 1\nelse\n    skillins:gettable().TimeLine[6].Active = 1\nend\n\nreturn false"
			}
		}
	},
	[11000083] = {
		["id"] = 11000083,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1100008\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Params[3] = \"3_350_400/450/500/550/600/650/700/800\"\n\nreturn false"
			}
		}
	},
	[11000084] = {
		["id"] = 11000084,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nlocal skillId = 1100008\nif skillins:getdata().SkillId ~= skillId then return false end\n\nsettlementins:gettable().HitInterval = 0.5\n\nreturn false"
			}
		}
	},
	[11000101] = {
		["id"] = 11000101,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11000102 then return false end\n\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid , 11000103)\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = isLearned and 0 or 1\nskillins:gettable().TimeLine[5].Active = isLearned and 1 or 0\n\nreturn false"
			}
		}
	},
	[11000102] = {
		["id"] = 11000102,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1100010\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11000103] = {
		["id"] = 11000103,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11000102 then return false end\n\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid , 11000101)\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[4].Active = isLearned and 0 or 1\nskillins:gettable().TimeLine[5].Active = isLearned and 1 or 0\n\nreturn false"
			}
		}
	},
	[11000104] = {
		["id"] = 11000104,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11000101},
				["AddCondition"] = "if ispassiveupdate then\n    if passiveins.GP_PreCasterTime == nil then passiveins.GP_PreCasterTime = Time() end\n    if Time() - passiveins.GP_PreCasterTime >= 1 then\n        passiveins.GP_PreCasterTime = Time()\n        return true\n    end\nend\n\nreturn false"
			}
		}
	},
	[1110010] = {
		["id"] = 1110010,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif not skillins then return false end\nlocal doSkillData = skillins:getdata()                     -- 获取技能数据（普攻数据）\nif not (doSkillData.SkillId == 1) then return false end    -- 不是普攻返回\nlocal casterInsId = doSkillData.CasterInsId                -- 攻击者\nlocal targetInsId = doSkillData.TargetInsId                -- 受击者\nlocal buff = SkillAPI.GetEntityBuff(casterInsId,1110010)\nif not buff then                              \n    SkillAPI.AddEntityBuff(casterInsId,1110010,passiveins:getdata().PassiveLevel)\n    buff = SkillAPI.GetEntityBuff(casterInsId,1110010)\n    buff.GTargetInsId = targetInsId                        -- 受击者保存在Buff实例中，GTargetInsId是自定义属性，如果保存在其他实例中就会有不同的生命周期，这个看需求\nelse\n    if buff.GTargetInsId == targetInsId then                            -- 攻击同一目标\n        local doBuffData = buff:getdata()\n        local stack = 0\n        local max_level = #buff:getlocaltable().MaxStack\n        if max_level > buff:getdata().BuffLevel then\n            stack = buff:getlocaltable().MaxStack[buff:getdata().BuffLevel]\n        else\n            stack = buff:getlocaltable().MaxStack[max_level]\n        end\n        SkillAPI.AddEntityBuff(casterInsId,1110010,passiveins:getdata().PassiveLevel)                   -- 攻击者叠加Buff\n        if learnedpassive(casterInsId,11100102) and buff:GetStackCount() >= stack then -- 这种判断会导致只要层级超过4就会一直触发，是否是需求？\n            SkillAPI.AddEntityBuff(targetInsId,11100103,passiveins:getdata().PassiveLevel)  -- 受击者增加Buff\n        end\n    else                                                                -- 切换目标\n        SkillAPI.RemoveEntityBuff(casterInsId,1110010)\n        SkillAPI.AddEntityBuff(casterInsId,1110010,passiveins:getdata().PassiveLevel)                             \n        buff = SkillAPI.GetEntityBuff(casterInsId,1110010)\n        buff.GTargetInsId = targetInsId \n    end\nend\nreturn true"
			}
		}
	},
	[11100101] = {
		["id"] = 11100101,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif not buffins then return false end\nif not (buffins:getdata().BuffId==1110010) then return false end\nbuffins:gettable().Effect[1024].Params = {{41,2,0.4}}\nreturn true"
			}
		}
	},
	[11100102] = {
		["id"] = 11100102,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110011] = {
		["id"] = 1110011,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100111) then return false end\nskillins:gettable().TimeLine[2].Active = 1\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[11100112] = {
		["id"] = 11100112,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100111) then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn true"
			}
		}
	},
	[1110012] = {
		["id"] = 1110012,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 11100121 then return false end\nskillins:gettable().TimeLine[1].Params[4] = 4\nreturn false"
			}
		}
	},
	[11100121] = {
		["id"] = 11100121,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 11100121 then return false end\nskillins:gettable().TimeLine[1].Params[3] = \"30_30_30_30_30_50\"\nreturn false"
			}
		}
	},
	[11100122] = {
		["id"] = 11100122,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110013] = {
		["id"] = 1110013,
		["BindBuff"] = 1110013,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11100131] = {
		["id"] = 11100131,
		["BindBuff"] = 11100133,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif buffins:getdata().BuffId ~= 1110013 and buffins:getdata().BuffId ~= 11100133 then return false end\nlocal buff1 = SkillAPI.GetEntityBuff(insid,1110013)\nif not buff1 or not learnedpassive(insid,11100132) then return false end\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 11100131\ndoBuffData.BuffLevel = buff1:getdata().BuffLevel\ndoBuffData.Skill = buffins:getdata().Skill\nPassiveSkillManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[11100132] = {
		["id"] = 11100132,
		["BindBuff"] = 11100132,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff and buffins:getdata().BuffId == 11100133 then\n    SkillAPI.RemoveEntityBuff(insid,11100131)\nend\nreturn false"
			}
		}
	},
	[1110014] = {
		["id"] = 1110014,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not iskill then return false end\nlocal lv_count = {2,3,5,7,9,11}\nlocal pro11 = learnedpassive(insid,11100141) and 2 or 1\nlocal pro12 = learnedpassive(insid,11100142) and 2 or 1\nlocal pro1 = 1000 * pro11 * pro12\nlocal pro2 = math.random(1,10000)\nif pro1 < pro2 then return false end\nif passiveins.SummonsInterval and Time() - passiveins.SummonsInterval < 0.1 then return false end\npassiveins.SummonsInterval = Time()\nif table.length(casterins:GetSummonsBySkill(11100141)) >= lv_count[passiveins:getdata().PassiveLevel] then return false end\nlocal newDoSKillData = clone(skillins:getdata())\nnewDoSKillData.SkillId = 11100141\nnewDoSKillData.ParentSkill = skillins\nnewDoSKillData.SkillLevel = passiveins:getdata().PassiveLevel\nSkillManagerInstance:DoSkill(newDoSKillData)\nreturn true"
			}
		}
	},
	[11100141] = {
		["id"] = 11100141,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11100142] = {
		["id"] = 11100142,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[1110020] = {
		["id"] = 1110020,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 1110020 then return false end\nBuffManagerInstance:AddBuffHelper(insid , 11100202 , passiveins:getdata().PassiveLevel)\nreturn false"
			}
		}
	},
	[11100201] = {
		["id"] = 11100201,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11100201 then return false end\nskillins:gettable().TimeLine[1].Params[3] = \"1_300_360\"\nreturn false"
			}
		}
	},
	[1110021] = {
		["id"] = 1110021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11100211] = {
		["id"] = 11100211,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 11100211 then return false end\nskillins:gettable().TimeLine[2].Active = 1\nreturn true"
			}
		}
	},
	[1110022] = {
		["id"] = 1110022,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 1110022 then return false end\nBuffManagerInstance:AddBuffHelper(insid , 11100222 , passiveins:getdata().PassiveLevel)\nreturn true"
			}
		}
	},
	[11100221] = {
		["id"] = 11100221,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11100221},
				["AddCondition"] = "if not ishit then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nlocal buff = SkillAPI.GetEntityBuff(skillins:getdata().CasterInsId,1110022)\nif not buff then return false end\nreturn true"
			}
		}
	},
	[1110023] = {
		["id"] = 1110023,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 1110023 then return false end\n\nskillins:gettable().TimeLine[5].Active = 1\n\nreturn true"
			}
		}
	},
	[11100231] = {
		["id"] = 11100231,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 1110023 then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn true"
			}
		}
	},
	[11100241] = {
		["id"] = 11100241,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId ~= 11100241  then return false end\nskillins:gettable().TimeLine[2].Params[2] = skillins:gettable().TimeLine[2].Params[2] * 2\nreturn true"
			}
		}
	},
	[1110024] = {
		["id"] = 1110024,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\n    local doSkillData = skillins:getdata()\n    local skillId = doSkillData.SkillId\n\n    -- 受到技能11100241伤害，增加毒种子 并且增加 被动11100242\n    if skillId == 11100244 then\n        local skillLevel = skillins:getdata().SkillLevel\n        for _ , hitTargetInsId in ipairs(settlementinslist) do\n            -- 增加被动\n            if not SkillAPI.IsLearnedPassiveSkill(hitTargetInsId,11100242) then\n                SkillAPI.AddPassiveSkill(hitTargetInsId,11100242,skillLevel)\n            end\n            if not SkillAPI.IsLearnedPassiveSkill(hitTargetInsId,11100243) then\n                SkillAPI.AddPassiveSkill(hitTargetInsId,11100243,skillLevel)\n            end\n            -- 增加毒种子buff\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = hitTargetInsId\n            doBuffData.BuffId = 11100241\n            doBuffData.BuffLevel = skillLevel\n            doBuffData.Skill = skillins\n            BuffManagerInstance:AddBuff(doBuffData)\n        end\n    end\n\n    -- 受到技能11100242伤害，增加伤害Buff\n    if skillId == 11100242 then\n        local skillLevel = skillins:getdata().SkillLevel\n        for _ , hitTargetInsId in ipairs(settlementinslist) do\n            -- 增加伤害buff\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = hitTargetInsId\n            doBuffData.BuffId = 11100242\n            doBuffData.BuffLevel = skillLevel\n            doBuffData.Skill = skillins\n            BuffManagerInstance:AddBuff(doBuffData)\n        end        \n    end\nend\n\nreturn false"
			}
		}
	},
	[11100242] = {
		["id"] = 11100242,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "-- 当前逻辑已经存在毒种子buff\n-- 1 受到攻击 增加毒种子buff层数\n-- 2 buff层数满层，删除当前buff\n\nlocal buffId = 11100241\n-- 当前触发被动的实体Id\nlocal entityId = passiveins:getdata().EntityId\n\nif isaddbuff and buffins:getdata().BuffId == buffId then\n    local buffStackCount = buffins:GetStackCount()\n    -- buff层数满层\n    if buffStackCount >= buffins:gettable().MaxStack[1] then\n        BuffManagerInstance:RemoveBuff(entityId,buffId)\n    end\nend\n\n-- 已经存在毒种子Buff，受击后继续增加层数\nif ishitrcv and skillins:getdata().SkillId == 1 then\n    local buff = BuffManagerInstance:GetEntityBuff(entityId,buffId)\n    if buff ~= nil then\n        -- 这里有一个注意点\n        BuffManagerInstance:AddBuff(buff:getdata())\n    end\nend\n\nreturn false"
			}
		}
	},
	[11100243] = {
		["id"] = 11100243,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11100241},
				["AddCondition"] = "-- buff结束\n-- 1 时间到\n-- 2 被提前删除（本技能是满层被提前删除）\nif not isfinishedbuff then return false end\nlocal doBuffData = buffins:getdata()\nif doBuffData.BuffId ~= 11100241 then return false end\n\nSkillAPI.RemovePassiveSkill(doBuffData.EntityId,11100242)\nSkillAPI.RemovePassiveSkill(doBuffData.EntityId,11100243)\n\nlocal doSkillData = doBuffData.Skill:getdata()\nlocal newDoSKillData = clone(doSkillData)\nnewDoSKillData.SkillId = 11100242\nnewDoSKillData.TargetInsId = doBuffData.EntityId\nnewDoSKillData.BuffStackCount = buffins:GetStackCount()\nSkillManagerInstance:DoSkill(newDoSKillData)\n\nreturn false"
			}
		}
	},
	[1110030] = {
		["id"] = 1110030,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110030) then return false end\nskillins:gettable().TimeLine[1].Params[4] = 10\nreturn true"
			}
		}
	},
	[11100301] = {
		["id"] = 11100301,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110030) then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn true"
			}
		}
	},
	[11100302] = {
		["id"] = 11100302,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not skillins or not settlementins then return false end\nif not (skillins:getdata().SkillId == 11100301) then return false end\nif settlementins:getdata().TimeLineIndex ~= 8 then return false end\ntable.insert(settlementins:gettable().TargetHitBuffId,11100302)\nreturn true"
			}
		}
	},
	[1110031] = {
		["id"] = 1110031,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 1110031 then return true end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\nsettlementins:gettable().RangeParam = {300,360}\nreturn true"
			}
		}
	},
	[11100311] = {
		["id"] = 11100311,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not skillins or not settlementins then return false end\nif not (skillins:getdata().SkillId == 1110031) then return false end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\ntable.insert(settlementins:gettable().TargetHitBuffId,11100311)\nreturn true"
			}
		}
	},
	[1110032] = {
		["id"] = 1110032,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100321] = {
		["id"] = 11100321,
		["BindBuff"] = 11100321,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110033] = {
		["id"] = 1110033,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110033) then return false end\nskillins:gettable().TimeLine[2].Active=1\nreturn true"
			}
		}
	},
	[11100331] = {
		["id"] = 11100331,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11100332},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not SkillManagerInstance:IsMainSkill(skillins:getdata()) then return false end\nreturn true"
			}
		}
	},
	[1110034] = {
		["id"] = 1110034,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11100341},
				["AddCondition"] = "if skillins:getdata().FireSkillGP == nil then skillins:getdata().FireSkillGP = 0 end\nlocal preGP = skillins:getdata().FireSkillGP\nlocal curGP = math.floor(movedistance / 150)\nif curGP > preGP then \n    skillins:getdata().FireSkillGP = curGP\n    return true\nend\nreturn false"
			}
		}
	},
	[11100341] = {
		["id"] = 11100341,
		["Duration"] = {0.5},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\nif skillins:getdata().SkillId == 11100341 then\n    skillins:gettable().TimeLine[3].Active = 1\nend\nend\n\nif ishit then \nif skillins:getdata().SkillId == 11100341 then\n    local casterCamp = GetEntityByInsId(insid):GetCamp()\n    for _ , hitTargetInsId in ipairs(settlementinslist) do\n        local hitCamp = GetEntityByInsId(hitTargetInsId):GetCamp()\nif casterCamp == hitCamp then\n        BuffManagerInstance:AddBuffHelper(hitTargetInsId , 11100341 , passiveins:getdata().PassiveLevel)\nend\n    end\nend\nend\n\nreturn false"
			}
		}
	},
	[11100342] = {
		["id"] = 11100342,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11100341 then return true end\nlocal timelineindex = settlementins:getdata().TimeLineIndex\nif timelineindex ~= 1 and timelineindex ~= 3 then return false end\nsettlementins:gettable().RangeParam = {150,360}\nreturn true"
			}
		}
	},
	[1110040] = {
		["id"] = 1110040,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\nif skillins:getdata().SkillId == 1110040 then\n    skillins.CacheAttr52 = casterins:GetAttr(52)\nend\nend\n\nif isaddbuff then\n    local buffId = buffins:getdata().BuffId\n    if buffId ~= 11100401 and buffId ~= 11100403 then return false end\n    local num = 900\n    local attr = (num - skillins.CacheAttr52)\n    if attr < 1 then return false end\n    if buffId == 11100401 then\n        local times = passiveins:getdata().PassiveLevel > 5 and 1.5 or 1\n        buffins:gettable().Effect[1024].Params[1][3] = times * attr\n    end\n    if buffId == 11100403 then\n        buffins:gettable().Effect[1024].Params[1][3] = attr * 50\n    end\nend\nreturn false"
			}
		}
	},
	[11100401] = {
		["id"] = 11100401,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skill_id = 1110040\nif skillins:getdata().SkillId ~= skill_id then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[11100402] = {
		["id"] = 11100402,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skill_id = 1110040\nif skillins:getdata().SkillId ~= skill_id then return false end\nskillins:gettable().TimeLine[2].Active = 1\nreturn false"
			}
		}
	},
	[1110041] = {
		["id"] = 1110041,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100411] = {
		["id"] = 11100411,
		["Cd"] = {0.1},
		["Duration"] = {3},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1110041 then return false end\n\nlocal casterin_attr = casterins:GetAttr(52)\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    if casterin_attr < 300 then \n        local doBuffData = DoBuffData.New()\n        doBuffData.EntityId = hitTargetInsId\n        doBuffData.BuffId = 11100411\n        doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n        doBuffData.Skill = skillins\n        BuffManagerInstance:AddBuff(doBuffData)\n    end\nend\n\nreturn false"
			}
		}
	},
	[11100413] = {
		["id"] = 11100413,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 1110041 then return true end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\nlocal raduis = 300\nif passiveins:getdata().PassiveLevel > 5 then\n    raduis = 350\nend\nif learnedpassive(insid,1110041) then\n    raduis = raduis * 1.5\nend\nsettlementins:gettable().RangeParam = {raduis,360}\nreturn true"
			}
		}
	},
	[1110042] = {
		["id"] = 1110042,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif not skillins then return false end\nlocal skillId = skillins:getdata().SkillId\nif not (skillId == 1110042) then return false end\nif settlementins:getdata().TimeLineIndex == 1 or settlementins:getdata().TimeLineIndex == 2 then\n    for _ , hitTargetInsId in pairs(settlementinslist) do\n        local target = GetEntityByInsId(hitTargetInsId)\n        local distance = math.floor(casterins:MathDistance(target)/100)\n        if distance > 1 then\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = hitTargetInsId\n            doBuffData.BuffId = 11100421\n            doBuffData.BuffLevel = skillins:getdata().SkillLevel\n            doBuffData.Skill = skillins\n            doBuffData.InitStackCount = distance\n            BuffManagerInstance:AddBuff(doBuffData)\n        end\n    end\nend\nreturn true"
			}
		}
	},
	[11100421] = {
		["id"] = 11100421,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100422] = {
		["id"] = 11100422,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if not skillins then return false end\n    if not (skillins:getdata().SkillId == 1110042) then return false end\n    skillins:gettable().TimeLine[1].Active = 0\n    skillins:gettable().TimeLine[2].Active = 1\n    skillins:gettable().TimeLine[3].Active = 0\n    skillins:gettable().TimeLine[4].Active = 0\n    skillins:gettable().TimeLine[5].Active = 1\nend\n\nif ishit then\n    if skillins:getdata().SkillId ~= 1110042 then return false end\n    for _ , hitTargetInsId in ipairs(settlementinslist) do\n        local newDoSkillData = DoSkillData.New()\n        newDoSkillData.SkillId = 11100421\n        newDoSkillData.CasterInsId = insid\n        newDoSkillData.TargetInsId = hitTargetInsId\n        SkillManagerInstance:DoSkill(newDoSkillData)\n    end\nend\n\nreturn false"
			}
		}
	},
	[1110043] = {
		["id"] = 1110043,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1110043 then return false end\nlocal hitCount = #settlementinslist\nif hitCount == 0 then return false end\n\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 11100431\ndoBuffData.BuffLevel = skillins:getdata().SkillLevel\ndoBuffData.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData,function(buff)\n    buff:gettable().Effect[1024].Params[1][3] = hitCount * 700\nend)\n\nreturn false"
			}
		}
	},
	[11100431] = {
		["id"] = 11100431,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1110043 then return false end\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = hitTargetInsId\n    doBuffData.BuffId = 11100432\n    doBuffData.BuffLevel = skillins:getdata().SkillLevel\n    doBuffData.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData)\nend\nreturn false"
			}
		}
	},
	[1110044] = {
		["id"] = 1110044,
		["BindBuff"] = 1110044,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100441] = {
		["id"] = 11100441,
		["BindBuff"] = 11100441,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100442] = {
		["id"] = 11100442,
		["BindBuff"] = 11100442,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110050] = {
		["id"] = 1110050,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 1110050 then return true end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\nsettlementins:gettable().RangeParam = {600,360}\nreturn true"
			}
		}
	},
	[11100501] = {
		["id"] = 11100501,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 1110050 then\n        if learnedpassive(insid,1110050) then\n           skillins:gettable().TimeLine[3].Params[4] = \"1_500_360\"\n        end\n        skillins:gettable().TimeLine[3].Active = 1\n        return true\n    end\nend\nreturn false"
			}
		}
	},
	[1110051] = {
		["id"] = 1110051,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId == 1110051 then\n    casterins.ComboCount = 1\n    casterins:SetSkillScriptCustomData(1110051,\"passive\", {paragrap = 1})\nend\nif skillins:getdata().SkillId == 11100511 then\n    casterins.ComboCount = 2\n    casterins:SetSkillScriptCustomData(11100511,\"passive\", {paragrap = 2})\nend\nif skillins:getdata().SkillId == 11100512 then\n    casterins.ComboCount = 3\n    casterins:SetSkillScriptCustomData(11100512,\"passive\", {paragrap = 3})\nend\nif skillins:getdata().SkillId == 11100513 then\n    if casterins.ComboCount == 2 then\n        skillins:gettable().TimeLine[7].Active = 1\n    end\nend\nif casterins.ComboCount == 2 and skillins:getdata().SkillId == 11100513 then\n    skillins:gettable().TimeLine[4].Active = 1\nend\nreturn true"
			}
		}
	},
	[11100511] = {
		["id"] = 11100511,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11100513 then return false end\nif casterins.ComboCount ~= 3 then return false end\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[11100512] = {
		["id"] = 11100512,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11100513 then return true end\nif settlementins:getdata().TimeLineIndex ~= 4 and settlementins:getdata().TimeLineIndex ~= 5 then return false end\nsettlementins:gettable().RangeParam = {400,600}\nreturn true"
			}
		}
	},
	[1110052] = {
		["id"] = 1110052,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\nif buffins:getdata().BuffId == 1110052 then\n   passiveins.GP_DebuffCounts = nil\nend\nend\n\nif not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal debuffs = SkillAPI.GetEntityBuffs(targetInsId , -1)\nlocal buffCount = table.length(debuffs)\nif buffCount == 0 then return false end\n\nif passiveins.GP_DebuffCounts == nil then passiveins.GP_DebuffCounts = {} end\nif passiveins.GP_DebuffCounts[targetInsId] == nil then passiveins.GP_DebuffCounts[targetInsId] = {} end\n\n-- 计算需要增加Layer\nlocal addLayerCount = 0\nfor _ , debuffinfo in pairs(debuffs) do\n    if passiveins.GP_DebuffCounts[targetInsId][debuffinfo.buffid]==1 then\n    else\n        addLayerCount = addLayerCount + 1\n        passiveins.GP_DebuffCounts[targetInsId][debuffinfo.buffid] = 1\n    end\nend\n\n-- 增加\nBuffManagerInstance:AddBuffHelper(insid , 1110052 , passiveins:getdata().PassiveLevel, nil , addLayerCount , learnedpassive(insid,11100521) and 3 or 1)\n\nreturn false"
			}
		}
	},
	[11100521] = {
		["id"] = 11100521,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11100522] = {
		["id"] = 11100522,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\n    if skillins:getdata().SkillId == 1 then\n         local num = 2000\n         if math.random(1,10000) > num then return false end\n         local buffs = BuffManagerInstance:GetEntityBuffs(skillins:getdata().TargetInsId)\n         for _, buff in pairs(buffs) do\n            if (buff:gettable().GainOrDeBuff == -1) then\n                buff:SetDuration(buff:getlocaltable().Duration[buff:GetBuffLevel()])\n            end\n         end\n    end\nend\nreturn false"
			}
		}
	},
	[1110053] = {
		["id"] = 1110053,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not (skillins:getdata().SkillId == 11100531) then return false end\nskillins:gettable().TimeLine[1].Params[5] = 11100532\nreturn true"
			}
		}
	},
	[11100531] = {
		["id"] = 11100531,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11100531 then return true end\nif settlementins:getdata().TimeLineIndex ~= 2 then return false end\nsettlementins:gettable().HitDisplace = {11100532,3,2,0}\nreturn true"
			}
		}
	},
	[1110054] = {
		["id"] = 1110054,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 1110054 then\n        local debuffs = SkillAPI.GetEntityBuffs(insid , -1)\n        local count = table.length(debuffs)\n        local entity = GetEntityByInsId(insid)\n        Fight:ApplyHeal(entity, entity, 1110054, 1, 1, {{3,0,0.05 + count*0.1}})\n    end\nend\nreturn false"
			}
		}
	},
	[11100541] = {
		["id"] = 11100541,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 1110054 then\n         local buffs = BuffManagerInstance:GetEntityBuffs(skillins:getdata().TargetInsId)\n         for _, buff in pairs(buffs) do\n            if (buff:gettable().GainOrDeBuff == -1) then\n                buff:SetDuration(buff:getlocaltable().Duration[buff:GetBuffLevel()])\n            end\n         end\n    end\nend\nreturn false"
			}
		}
	},
	[1110060] = {
		["id"] = 1110060,
		["BindBuff"] = 1110060,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100601] = {
		["id"] = 11100601,
		["BindBuff"] = 11100601,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100602] = {
		["id"] = 11100602,
		["BindBuff"] = 11100602,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11100603},
				["AddCondition"] = "if isfinishedbuff and buffins:getdata().BuffId == 11100602 then\n    BuffManagerInstance:RemoveBuff(insid,11100603)\nend\nif isaddbuff and buffins:getdata().BuffId == 11100603 then\n    local attr = casterins:GetAttr(162) / 10000 * 2\n    buffins:gettable().Effect[1024].Params[1] = {41,2,attr}\nend\nif isaddbuff and not BuffManagerInstance:GetEntityBuff(insid,11100603) then\n    return true\nend\nreturn false"
			}
		}
	},
	[1110061] = {
		["id"] = 1110061,
		["Interval"] = {10},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\n    if skillins:getdata().SkillId == 1 then\n        local doSkillData = skillins:getdata() \n        local casterInsId = doSkillData.CasterInsId\n        local targets = clone(settlementinslist)\n        if learnedpassive(insid,11100612) and math.random(1,100) <= 40 then\n            for _ , hitTargetInsId in pairs(targets) do\n                local newDoSKillData = clone(skillins:getdata())\n                newDoSKillData.SkillId = 11100611\n                newDoSKillData.SkillLevel = passiveins:getdata().PassiveLevel\n                newDoSKillData.TargetInsId = hitTargetInsId\n                PassiveSkillManagerInstance:DoSkill(newDoSKillData)\n            end\n        end\n\n        local hitCount = table.length(targets)\n        if learnedpassive(insid,11100611) and hitCount > 1 then\n            local newDoSKillData = clone(skillins:getdata())\n            newDoSKillData.SkillId = 11100612\n            newDoSKillData.SkillLevel = passiveins:getdata().PassiveLevel\n            newDoSKillData.TargetInsId = doSkillData.TargetInsId\n            PassiveSkillManagerInstance:DoSkill(newDoSKillData)\n        end\n\n        if hitCount == 1 then\n            SkillAPI.RemoveEntityBuff(casterInsId,11100611)\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = casterInsId\n            doBuffData.BuffId = 1110061\n            doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n            doBuffData.Skill = skillins\n            PassiveSkillManagerInstance:AddBuff(doBuffData)\n        end\n    end\nend\n\nreturn false"
			}
		}
	},
	[11100611] = {
		["id"] = 11100611,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100612] = {
		["id"] = 11100612,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110062] = {
		["id"] = 1110062,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11100621 then return false end\nif settlementins:getdata().TimeLineIndex ~= 1 then return false end\nsettlementins:gettable().RangeType = 1\nsettlementins:gettable().RangeParam = {300,360}\nreturn true"
			}
		}
	},
	[11100621] = {
		["id"] = 11100621,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11100621 then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[1110063] = {
		["id"] = 1110063,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId == 11100631 then\n    local unit = GetEntityByInsId(insid)\n    local splitrange = unit:GetAttr(161)\n    skillins:gettable().TimeLine[1].Params[3] = \"1_\"..splitrange..\"_360\"\nend\nend\n\nif not ishit then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1 then return false end\nif not learnedbuff(insid , 1110063) then return false end\n\nlocal newDoSkillData = clone(doSkillData)\nnewDoSkillData.SkillId = 11100631\nnewDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\nSkillAPI.DoSkill(newDoSkillData)\n\nSkillAPI.RemoveEntityBuff(insid,1110063)\n\nreturn false"
			}
		}
	},
	[11100631] = {
		["id"] = 11100631,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100631) then return false end\nskillins:gettable().TimeLine[4].Active= 1\nskillins:gettable().TimeLine[5].Active= 1\n\nreturn false"
			}
		}
	},
	[11100632] = {
		["id"] = 11100632,
		["Duration"] = {1},
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11100631},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nlocal skillId = skillins:getdata().SkillId\nif not (skillId == 1110063) then return false end\nreturn true"
			}
		}
	},
	[1110064] = {
		["id"] = 1110064,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 1110064 then return false end\nif settlementins:getdata().TimeLineIndex ~= 2 then return false end\ntable.insert(settlementins:gettable().TargetHitBuffId,11100641)\nreturn true"
			}
		}
	},
	[11100641] = {
		["id"] = 11100641,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not (skillins:getdata().SkillId == 1110064) then return false end\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[1110070] = {
		["id"] = 1110070,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110070) then return false end\n\nskillins:gettable().TimeLine[5].Active = 1\nskillins:gettable().TimeLine[6].Active = 1\n\nreturn false"
			}
		}
	},
	[11100701] = {
		["id"] = 11100701,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110070) then return false end\n\nskillins:gettable().TimeLine[9].Active = 1\nskillins:gettable().TimeLine[10].Active = 1\n\nreturn false"
			}
		}
	},
	[11100702] = {
		["id"] = 11100702,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 1110070 then return true end\n\nlocal params = settlementins:gettable().RangeParamMax\nsettlementins:gettable().RangeParamMax = {params[1] + 100,params[2] + 100,360}\n\nreturn true"
			}
		}
	},
	[1110071] = {
		["id"] = 1110071,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif skillins:getdata().SkillId == 1110071 then\n    skillins:gettable().TimeLine[2].Active = 0\n    skillins:gettable().TimeLine[3].Active = 1\nend\nreturn false"
			}
		}
	},
	[11100711] = {
		["id"] = 11100711,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100711) then return false end\nskillins:gettable().TimeLine[4].Active = 0\nskillins:gettable().TimeLine[5].Active = 1\nreturn true"
			}
		}
	},
	[1110072] = {
		["id"] = 1110072,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100721) then return false end\nskillins:gettable().TimeLine[1].Active = 0\nskillins:gettable().TimeLine[2].Active = 1\nreturn true"
			}
		}
	},
	[11100721] = {
		["id"] = 11100721,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110072) then return false end\nfor i = 7 , 11 do \n    skillins:gettable().TimeLine[i].Active = 1\nend\nreturn true"
			}
		}
	},
	[1110073] = {
		["id"] = 1110073,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100731) then return false end\nif learnedpassive(insid,11100731) then\n    skillins:gettable().TimeLine[5].Active = 1\nelse\n    skillins:gettable().TimeLine[4].Active = 1\nend\nreturn true"
			}
		}
	},
	[11100731] = {
		["id"] = 11100731,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100731) then return false end\nskillins:gettable().TimeLine[1].Active = 0\nskillins:gettable().TimeLine[2].Active = 1\nreturn true"
			}
		}
	},
	[1110080] = {
		["id"] = 1110080,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {1110080},
				["AddCondition"] = "if not isskillentercd then return false end\nif not skillins then return false end\nif (skillins:getdata().SkillId == 1) then return false end\n--是否是主技能，只有主技能才能减少cd\nif not skillins:ismain() then return false end\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = 5000\nif learnedpassive(insid,11100802) then prob2 = 10000 end\nif prob1 > prob2 then return false end\nreturn true"
			}
		}
	},
	[11100801] = {
		["id"] = 11100801,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {1110080},
				["AddCondition"] = "if not isskillentercd then return false end\nif not skillins then return false end\nif (skillins:getdata().SkillId == 1) then return false end\n--是否是主技能，只有主技能才能减少cd\nif not skillins:ismain() then return false end\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal lv_probs = {4000,4200,4400,4600,4800,5000}\nlocal skill = SkillAPI.GetDoSkillData(insid,1110080)\nlocal prob2 = GetConfDataLevel(lv_probs,PassiveSkillManagerInstance:GetEntityPassive(insid,1110080):getdata().PassiveLevel)\nif prob1 > prob2 then return false end\nreturn true"
			}
		}
	},
	[11100802] = {
		["id"] = 11100802,
		["Cd"] = {0.1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110075] = {
		["id"] = 1110075,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {1110075},
				["AddCondition"] = "if not ishit then return false end\nif not skillins then return false end\nreturn skillins:getdata().SkillId == 1",
				["RemoveCondition"] = "if not ishit then return false end\nif not skillins then return false end\nif not skillins:getdata().SkillId == 1 then return false end\nreturn settlementcount >= 1"
			}
		}
	},
	[1110074] = {
		["id"] = 1110074,
		["BindBuff"] = 1110074,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100741] = {
		["id"] = 11100741,
		["BindBuff"] = 11100742,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11100742] = {
		["id"] = 11100742,
		["BindBuff"] = 11100741,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110081] = {
		["id"] = 1110081,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nlocal skillId = skillins:getdata().SkillId\nif (skillId == 1110081) then\n    skillins:gettable().TimeLine[2].Active = 0\n    skillins:gettable().TimeLine[3].Active = 1\n    skillins:gettable().TimeLine[1].Params[1] = 2\n    return true\nelseif (skillId == 11100811) then\n    skillins:gettable().TimeLine[2].Active = 0\n    skillins:gettable().TimeLine[3].Active = 0\n    skillins:gettable().TimeLine[8].Active = 1\n    skillins:gettable().TimeLine[9].Active = 1\n    skillins:gettable().Duration = {2}\n    return true\nend\nreturn false"
			}
		}
	},
	[11100811] = {
		["id"] = 11100811,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100811) then return false end\nif learnedpassive(insid,1110081) then\n    for i = 4 , 7 do \n        skillins:gettable().TimeLine[i].Active = 0\n    end\n    for i = 10 , 13 do \n        skillins:gettable().TimeLine[i].Active = 1\n    end\nelse\n    skillins:gettable().TimeLine[4].Active = 1\n    skillins:gettable().TimeLine[5].Active = 1\n    skillins:gettable().TimeLine[6].Active = 1\n    skillins:gettable().TimeLine[7].Active = 1\nend\nreturn true"
			}
		}
	},
	[1110082] = {
		["id"] = 1110082,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11100821},
				["AddCondition"] = "if not ishit then return false end\n\nif not skillins then return false end\n\nif not (skillins:getdata().SkillId == 1) then return false end\n\nreturn learnedbuff(insid,1110082) or learnedbuff(insid,11100821)"
			}
		}
	},
	[11100821] = {
		["id"] = 11100821,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110082) then return false end\nskillins:gettable().TimeLine[1].Active = 0\nskillins:gettable().TimeLine[2].Active = 1\nreturn true"
			}
		}
	},
	[11100822] = {
		["id"] = 11100822,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100821) then return false end\nskillins:gettable().TimeLine[1].Active = 0\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = 1\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[1110083] = {
		["id"] = 1110083,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100831) then return false end\nif learnedpassive(insid,11100831) then\n    skillins:gettable().TimeLine[6].Active = 1\n    skillins:gettable().TimeLine[7].Active = 1\n    skillins:gettable().TimeLine[8].Active = 0\n    skillins:gettable().TimeLine[9].Active = 1\n    skillins:gettable().TimeLine[10].Active = 1\nelse\n    skillins:gettable().TimeLine[6].Active = 1\n    skillins:gettable().TimeLine[7].Active = 1\n    skillins:gettable().TimeLine[8].Active = 1\n    skillins:gettable().TimeLine[10].Active = 1\nend\nreturn true"
			}
		}
	},
	[11100831] = {
		["id"] = 11100831,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100831) then return false end\nskillins:gettable().TimeLine[3].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[1110084] = {
		["id"] = 1110084,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not settlementins then return false end\nif skillins:getdata().SkillId ~= 11100841 then return false end\nlocal timelineindex = settlementins:getdata().TimeLineIndex\nif not (timelineindex == 2 or timelineindex == 3) then return false end\ntable.insert(settlementins:gettable().TargetHitBuffId,11100841)\nreturn true"
			}
		}
	},
	[11100841] = {
		["id"] = 11100841,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100841) then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = 1\nreturn true"
			}
		}
	},
	[1110085] = {
		["id"] = 1110085,
		["Duration"] = {1},
		["Interval"] = {1,1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11100851},
				["AddCondition"] = "if not isaddpassive then return false end\nif not passiveins then return false end\nif not (passiveins:getdata().PassiveId == 1110085) then return false end\nreturn true"
			}
		}
	},
	[11100851] = {
		["id"] = 11100851,
		["Cd"] = {1},
		["Duration"] = {1},
		["Interval"] = {1,1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100851) then return false end\nif not casterins.StandTime then casterins.StandTime = 0 end\nif  movespeed < 0.01 then \n    casterins.StandTime = casterins.StandTime + 1\nelse\n    casterins.StandTime = 0\nend\nif casterins.StandTime > 1 then\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = skillins:getdata().CasterInsId\n    doBuffData.BuffId = 1110085\n    doBuffData.BuffLevel = skillins:getdata().SkillLevel\n    doBuffData.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData)\nend\nreturn true",
				["RemoveCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110085) then return false end\nreturn movespeed > 0.01"
			}
		}
	},
	[1110086] = {
		["id"] = 1110086,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {1110086},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillId == 1110084 then\n    for i = 10 , 17 do\n        skillins:gettable().TimeLine[i].Active = 0\n    end\n    return true\nelseif(skillId == 1110081 or skillId == 1110083) then\n    skillins:gettable().TimeLine[1].Active = 0\n    return true\nend\nreturn false"
			}
		}
	},
	[1110090] = {
		["id"] = 1110090,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11100901},
				["AddCondition"] = "if not isdoskill then return false end\nif not SkillManagerInstance:IsMainSkill(skillins:getdata()) then return false end\nif skillins:getdata().SkillId == 11100901 or skillins:getdata().SkillId == 11100903 then return false end\nreturn true"
			}
		}
	},
	[11100901] = {
		["id"] = 11100901,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100901) then return false end\nlocal doSkillData = skillins:getdata()\nlocal newDoSkillData = clone(doSkillData)\nnewDoSkillData.SkillId = 11100903\nSkillManagerInstance:DoSkill(newDoSkillData)\nreturn true"
			}
		}
	},
	[11100902] = {
		["id"] = 11100902,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100902) then return false end\nskillins:gettable().TimeLine[1].Active = 0\nskillins:gettable().TimeLine[2].Active = 1\nreturn true"
			}
		}
	},
	[1110091] = {
		["id"] = 1110091,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill and skillins:getdata().SkillId == 1110091 then\n    skillins:gettable().Duration = {20}\n    skillins:gettable().TimeLine[2].Params[3] = 20\nend\nif isaddbuff and buffins:getdata().BuffId == 1110091 then\n    buffins:SetDuration(20)\nend\nreturn false"
			}
		}
	},
	[11100911] = {
		["id"] = 11100911,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {1110091},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110091 then return false end\nreturn true"
			}
		}
	},
	[11100912] = {
		["id"] = 11100912,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {0},
				["AddCondition"] = "if not ispassiveupdate then return false end\n\nlocal buff = BuffManagerInstance:GetEntityBuff(insid,11100912)\nif not buff then\npassiveins.GP_DistanceIndex = 0\nreturn false\nend\n\nif passiveins.GP_DistanceIndex == nil then passiveins.GP_DistanceIndex = 0 end\nif passiveins.GP_Distances == nil then \npassiveins.GP_Distances = {500,470,410,350,290,290}\npassiveins.GP_ReduceCDs = {0.1,0.15,0.25,0.35,0.45,0.5}\nend\n\nlocal passiveLevel = passiveins:getdata().PassiveLevel\nlocal distance = GetConfDataLevel(passiveins.GP_Distances,passiveLevel)\nlocal reduceCD = GetConfDataLevel(passiveins.GP_ReduceCDs,passiveLevel)\nlocal curDistanceIndex = math.floor(movedistance/distance)\nif passiveins.GP_DistanceIndex < curDistanceIndex then\n    passiveins.GP_DistanceIndex = curDistanceIndex\n    local caster = GetEntityByInsId(insid)\n    caster:MinusAllSkillCD(reduceCD,0)\nend\n\nreturn false"
			}
		}
	},
	[1110092] = {
		["id"] = 1110092,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nlocal skillId = 1110092\nlocal skill_msg = casterins:GetSkillMessage(skillId)\nif not skill_msg or skill_msg.status ~= UnitSkillStatusType.CD then return false end\nif passiveins.GP_DistanceIndex == nil then passiveins.GP_DistanceIndex = 0 end\nlocal distance = 100\nlocal reduceCD = 0.5\nlocal curDistanceIndex = math.floor(movedistance/distance)\nif passiveins.GP_DistanceIndex < curDistanceIndex then\n    passiveins.GP_DistanceIndex = curDistanceIndex\n    local caster = GetEntityByInsId(insid)\n    caster:MinusSkillCDBySkillid(skillId,reduceCD,0)\nend\nreturn false"
			}
		}
	},
	[11100921] = {
		["id"] = 11100921,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 11100921) then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = 1\nreturn true"
			}
		}
	},
	[1110093] = {
		["id"] = 1110093,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins or not settlementins then return false end\nif not (skillins:getdata().SkillId == 1110093) then return false end\nif learnedpassive(insid,11100931) then return false end\nif (settlementins:gettable().RangeParam[1] >= 600) then return false end\nif movedistance > 400 then\n    settlementins:gettable().RangeParam[1] = 600;\n    return false;\nend\nif not (movedistance >= 100 and movedistance <= 400 and movespeed > 1) then return false end\nsettlementins:gettable().RangeParam[1] = settlementins:gettable().RangeParam[1] + 10\nreturn true"
			}
		}
	},
	[11100931] = {
		["id"] = 11100931,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins then return false end\nif not (skillins:getdata().SkillId == 1110093) then return false end\nskillins:gettable().TimeLine[2].Active = 1\nreturn true"
			}
		}
	},
	[11100932] = {
		["id"] = 11100932,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif not skillins or not settlementins then return false end\nif not (skillins:getdata().SkillId == 1110093 and settlementins:getdata().TimeLineIndex == 3) then return false end\nsettlementins:gettable().HitInterval = 0.2\nreturn true"
			}
		}
	},
	[11100933] = {
		["id"] = 11100933,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins or not settlementins then return false end\nif not (skillins:getdata().SkillId == 1110093) then return false end\nif settlementins:gettable().RangeParam[1] >= 800 then return false end\nif movedistance > 800 then\n    settlementins:gettable().RangeParam[1] = 800;\n    return false;\nend\nif not (movedistance >= 100 and movedistance <= 800 and movespeed > 1) then return false end\nsettlementins:gettable().RangeParam[1] = settlementins:gettable().RangeParam[1] + 10\nreturn true"
			}
		}
	},
	[1110094] = {
		["id"] = 1110094,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11100941 then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[11100941] = {
		["id"] = 11100941,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not (skillins:getdata().SkillId == 11100941) then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_300_360\"\n\nreturn false"
			}
		}
	},
	[1110095] = {
		["id"] = 1110095,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {1110095},
				["AddCondition"] = "if not ishit then return false end\nif not skillins then return false end\nif (skillins:getdata().SkillId == 1) then return false end\nreturn settlementcount >= 1"
			}
		}
	},
	[1110096] = {
		["id"] = 1110096,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {1110096},
				["AddCondition"] = "if not ishit then return false end\nif not skillins then return false end\nif (skillins:getdata().SkillId == 1) then return false end\nreturn settlementcount >= 1"
			}
		}
	},
	[11101001] = {
		["id"] = 11101001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110100\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[6].Active = 1\nreturn true"
			}
		}
	},
	[11101002] = {
		["id"] = 11101002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110100\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = 1\nreturn true"
			}
		}
	},
	[11101011] = {
		["id"] = 11101011,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110101\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[4].Active = 0\nskillins:gettable().TimeLine[5].Active = 1\nreturn false"
			}
		}
	},
	[11101012] = {
		["id"] = 11101012,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\nif skillins:getdata().SkillId == 1110101 then\nif skillins.GSettlementInsList == nil then\n    skillins.GSettlementInsList = settlementinslist\nelse\nfor _, tempInsId in pairs(settlementinslist) do\n    local inIndex = table.ContainValue(skillins.GSettlementInsList,tempInsId)\n    if inIndex == 0 then\n        table.insert(skillins.GSettlementInsList,tempInsId)\n    end\nend\nend\n\nend\nend\n\nif isdofinishskill then\nif skillins:getdata().SkillId == 1110101 then\nlocal insIds = skillins.GSettlementInsList\nskillins.GSettlementInsList = nil\nlocal hitCount = insIds and #insIds or 0\nif hitCount > 0 then\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 11000031\ndoBuffData.BuffLevel = passiveins:getdata().PassiveLevel\ndoBuffData.InitStackCount = hitCount\nPassiveSkillManagerInstance:AddBuff(doBuffData)\nend\nend\nend\n\nreturn false"
			}
		}
	},
	[11101021] = {
		["id"] = 11101021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110102\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[11101022] = {
		["id"] = 11101022,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101023] = {
		["id"] = 11101023,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal buff1 = BuffManagerInstance:GetEntityBuff(casterInsId,11101021)\nlocal buff2 = BuffManagerInstance:GetEntityBuff(casterInsId,11101022)\nif (not buff1) and (not buff2) then return false end\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101022)\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = casterInsId\ndoBuffData.BuffId = 11000031\ndoBuffData.BuffLevel = passiveins:getdata().PassiveLevel\nlocal count = #settlementinslist\nif isLearned then\n    for i = 1, #settlementinslist, 1 do\n        if math.random(1,10000) <= 1500 then\n            count = count + 1\n        end\n    end\nend\nif learnedbuff(insid,11000031) then\n    doBuffData.AddStackCount = count;\nelse\n    doBuffData.InitStackCount = count;\nend\nBuffManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[11101031] = {
		["id"] = 11101031,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101032] = {
		["id"] = 11101032,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110103\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[1].Params[3] = \"1_500_360\"\nreturn false"
			}
		}
	},
	[11101033] = {
		["id"] = 11101033,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 1110103 then return false end\nlocal buffCount = skillins.GBuffCount11101033 or 0\nif learnedpassive(insid , 11101031) and buffCount > 0 then\n    local caster = GetEntityByInsId(insid)\n    if caster then caster:MinusAllSkillCD(buffCount,0) end\nend\nend\n\nif isdoskill then\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 1110103 then return false end\nlocal buffId = 11000031\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal buff = BuffManagerInstance:GetEntityBuff(casterInsId,buffId)\nskillins.GBuffCount11101033 = buff and buff:GetStackCount() or 0\nskillins:getdata().EffectTimes = skillins.GBuffCount11101033 + 1\nBuffManagerInstance:RemoveBuff(casterInsId,buffId)\nend\n\nreturn false"
			}
		}
	},
	[11101041] = {
		["id"] = 11101041,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110104\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11101042] = {
		["id"] = 11101042,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif buffins:getdata().BuffId ~= 11101041 then return false end\nbuffins:getdata().EffectTimes = buffins:getdata().EffectTimes * 2\n\nreturn false"
			}
		}
	},
	[11101043] = {
		["id"] = 11101043,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\n\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 11000031\nBuffManagerInstance:AddBuff(doBuffData)\n\nreturn false"
			}
		}
	},
	[11101101] = {
		["id"] = 11101101,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110110 then return false end\nskillins:gettable().TimeLine[2].Active = 1\nreturn false"
			}
		}
	},
	[11101102] = {
		["id"] = 11101102,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110110 then return false end\nskillins:gettable().TimeLine[1].Params[3] = \"1_400_360\"\nreturn false"
			}
		}
	},
	[11101103] = {
		["id"] = 11101103,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local doSkillData = skillins:getdata()\nlocal casterPosition = GetEntityPosition(doSkillData.CasterInsId)\nlocal skillTimeLine = skillins:GetSkillTimeLine()\nlocal position = skillTimeLine:GetNewPosition()\nlocal radius = skillTimeLine:GetNewRangeParams().y\nif (casterPosition - position):Length() <= radius then\n    settlementins:gettable().HitInterval = 0.25\nelse\n    settlementins:gettable().HitInterval = 0.5\nend\nreturn false"
			}
		}
	},
	[11101111] = {
		["id"] = 11101111,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillins:getdata().SkillId == 1110111 then\n    skillins:gettable().TimeLine[4].Active = 0\n    skillins:gettable().TimeLine[5].Active = 1\nend\nif skillins:getdata().SkillId == 11101111 then\n    skillins:gettable().TimeLine[3].Active = 0\n    skillins:gettable().TimeLine[4].Active = 1\nend\nreturn false"
			}
		}
	},
	[11101112] = {
		["id"] = 11101112,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110111 then return false end\n\n    skillins:gettable().TimeLine[6].Active = 0\n    skillins:gettable().TimeLine[7].Active = 1\n\nreturn false"
			}
		}
	},
	[11101121] = {
		["id"] = 11101121,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110112\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[4].Active = 1\nreturn false"
			}
		}
	},
	[11101122] = {
		["id"] = 11101122,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101123] = {
		["id"] = 11101123,
		["Interval"] = {1},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill and skillins:getdata().SkillId == 1110112 then\n    local isPassive = PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid,11101122)\n    local skillLevel = skillins:getdata().SkillLevel\n    local isWeapon = skillLevel > 8\n    skillins.Cache_EffectTimes = (isWeapon or (isPassive and not isWeapon)) and 1.5 or 1\n    if isPassive and isWeapon then skillins.Cache_EffectTimes = 2.25 end\nend\n\nif ishit then\nif skillins:getdata().SkillId == 1110112 then\nif settlementins:getdata().TimeLineIndex == 2 then\n    local passiveLevel = passiveins:getdata().PassiveLevel\n    local hitCount = #settlementinslist\n    local buff = BuffManagerInstance:GetEntityBuff(insid , 11101121)\n    if buff == nil then\n        BuffManagerInstance:AddBuffHelper(insid,11101121,passiveLevel,nil ,hitCount,skillins.Cache_EffectTimes)\n    else\n        buff:SetStackCount(hitCount)\n        buff:Reset(0)\n    end\nend\nend\nend\n\nreturn false"
			}
		}
	},
	[11101131] = {
		["id"] = 11101131,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then \n    if skillins:getdata().SkillId == 1110113 then\n        skillins:gettable().TimeLine[2].Active = 1\n    end\nend\n\nif isaddbuff then\n    if buffins:getdata().BuffId == 11101131 then\n        local buffCount = skillins.GP_DebuffCount or 0\n        if buffCount > 0 then\n            buffins:gettable().Effect[33554432].Params[1][2] = 0.25 + buffCount * 0.25\n        end\n    end\nend\nreturn false"
			}
		}
	},
	[11101132] = {
		["id"] = 11101132,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then \n    if skillins:getdata().SkillId == 1110113 then\n        skillins:gettable().TimeLine[3].Active = 1\n    end\nend\nreturn false"
			}
		}
	},
	[11101133] = {
		["id"] = 11101133,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110113 then return false end\nskillins.GP_DebuffCount = #SkillAPI.GetEntityBuffs(insid , -1)\nBuffManagerInstance:ClearNegativeControlBuff(skillins:getdata().CasterInsId)\nreturn false"
			}
		}
	},
	[11101141] = {
		["id"] = 11101141,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110114 then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[11101142] = {
		["id"] = 11101142,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110114\nif skillins:getdata().SkillId ~= skillId then return false end\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\ncaster:MinusSkillCDBySkillid(skillId,5,0)\nreturn false"
			}
		}
	},
	[11101201] = {
		["id"] = 11101201,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 11101201\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\nreturn false"
			}
		}
	},
	[11101202] = {
		["id"] = 11101202,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110120\nif skillins:getdata().SkillId ~= skillId then return false end\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\ncaster:MinusSkillCDBySkillid(skillId,0,0.5)\nreturn false"
			}
		}
	},
	[11101203] = {
		["id"] = 11101203,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    local doBuffData = buffins:getdata()\n    if doBuffData.Skill and doBuffData.Skill:getdata().SkillId == 1110120 then\n        local skillData = doBuffData.Skill:getdata()\n        if insid == skillData.CasterInsId then\n            local newDoSKillData = clone(skillData)\n            newDoSKillData.SkillId = 11101201\n            SkillManagerInstance:DoSkill(newDoSKillData)\n        end\n    end\nend\n\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110120 then return false end\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal startPos = GetEntityPosition(casterInsId)\nlocal targetPos = GetEntityPosition(targetInsId)\nlocal centerPos = (startPos + targetPos) * 0.5\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101201)\nlocal time = (targetPos - startPos):Length() / 1200 --(isLearned and 1500 or 200)\n\nlocal doBuffData1 = DoBuffData.New()\ndoBuffData1.EntityId = casterInsId\ndoBuffData1.BuffId = 1003\ndoBuffData1.BuffLevel = skillins:getdata().SkillLevel\ndoBuffData1.Skill = skillins\ndoBuffData1.EndPosition = centerPos\ndoBuffData1.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData1 , function(buff)\n    buff:SetDuration(time)\nend)\n\nlocal doBuffData2 = DoBuffData.New()\ndoBuffData2.EntityId = targetInsId\ndoBuffData2.BuffId = 1003\ndoBuffData2.BuffLevel = skillins:getdata().SkillLevel\ndoBuffData2.Skill = skillins\ndoBuffData2.EndPosition = centerPos\nBuffManagerInstance:AddBuff(doBuffData2 , function(buff)\n    buff:SetDuration(time)\nend)\n\nreturn false"
			}
		}
	},
	[11101211] = {
		["id"] = 11101211,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110121 then return false end\nskillins:gettable().TimeLine[8].Active = 1\nreturn true"
			}
		}
	},
	[11101212] = {
		["id"] = 11101212,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101221] = {
		["id"] = 11101221,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110122\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[6].Active = 1\nreturn true"
			}
		}
	},
	[11101222] = {
		["id"] = 11101222,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110122\nif skillins:getdata().SkillId ~= skillId then return false end\nskillins:gettable().TimeLine[2].Params[3] = 30\nskillins:gettable().TimeLine[6].Params[3] = 30\nreturn true"
			}
		}
	},
	[11101231] = {
		["id"] = 11101231,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101232] = {
		["id"] = 11101232,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101233] = {
		["id"] = 11101233,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff and buffins:getdata().BuffId == 11101121 then\n    casterins.RoundFriendCount = 0\nend\n\nif ispassiveupdate then\n    local lv = passiveins:getdata().PassiveLevel\n    local ranges = {150,200,250,350,450,700}\n    local buff = learnedpassive(insid,11101232) and 11101232 or 11101231\n    local foes = casterins:GetUnitsByArea(ranges[lv > table.length(ranges) and table.length(ranges) or lv],EnumUnitCamp.Player)\n    local learn_p = learnedpassive(insid,11101231)\n    local num = 0\n    for _, foe in pairs(foes) do\n        if learn_p and foe:IsCloneUnit() then\n            num = num + 1\n        elseif foe:GetType() == 1 and foe:GetInsid() ~= insid then\n            num = num + 1\n        end\n    end\n    if not casterins.RoundFriendCount or not passiveins.NoFirstEnter then\n        passiveins.NoFirstEnter = true\n        casterins.RoundFriendCount = 0\n    end\n    local lv_max_tack = #GetBuffLine(buff).MaxStack\n    local max_stack = GetBuffLine(buff).MaxStack[lv > lv_max_tack and lv_max_tack or lv]\n    if table.length(foes) > max_stack then\n        num = max_stack\n    end\n    if num == 0 then\n        casterins.RoundFriendCount = 0\n        BuffManagerInstance:RemoveBuff(insid,buff)\n    else\n        BuffManagerInstance:AddBuffHelper(insid,buff,lv,function () end,num - casterins.RoundFriendCount)\n        casterins.RoundFriendCount = num\n    end\nend\n\nreturn false"
			}
		}
	},
	[11101241] = {
		["id"] = 11101241,
		["AddTriggerProb"] = {3500},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\n\nBuffManagerInstance:AddBuffHelper(skillins:getdata().TargetInsId , 1031 , passiveins:getdata().PassiveLevel , function(buff)\n    buff:SetDuration(3)\nend)\n\nreturn false"
			}
		}
	},
	[11101242] = {
		["id"] = 11101242,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not (skillins:getdata().SkillId==1110124) then return false end\nskillins:gettable().TimeLine[2].Params[3] = 8\nreturn true"
			}
		}
	},
	[1110130] = {
		["id"] = 1110130,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~=  11101301 then return false end\n\n    for _ , hitTargetInsId in pairs(settlementinslist) do\n        BuffManagerInstance:AddBuffHelper(hitTargetInsId,1110130,passiveins:getdata().PassiveLevel)\n    end\n\nreturn false"
			}
		}
	},
	[11101301] = {
		["id"] = 11101301,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nlocal count = 0\nif not casterins then return false end\nif not casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = 0\nend\nif learnedpassive(insid,11101301) then count = count + 1 end\nif learnedpassive(insid,11101311) then count = count + 1 end\nif learnedpassive(insid,11101321) then count = count + 1 end\nif learnedpassive(insid,11101331) then count = count + 1 end\nif learnedpassive(insid,11101342) then count = count + 1 end\nif learnedpassive(insid,11000041) then count = count + 1 end\n\nif count ~= casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = count\n    casterins:AddPassiveSkill(11101303,count)\nend\nreturn false"
			}
		}
	},
	[11101302] = {
		["id"] = 11101302,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101303] = {
		["id"] = 11101303,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1110131] = {
		["id"] = 1110131,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11101301 then return false end\nlocal parentSkillIns = skillins:getdata().ParentSkill\nif parentSkillIns and parentSkillIns:getdata().SkillId ~= 1110131 then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[11101311] = {
		["id"] = 11101311,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nlocal count = 0\nif not casterins then return false end\nif not casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = 0\nend\nif learnedpassive(insid,11101301) then count = count + 1 end\nif learnedpassive(insid,11101311) then count = count + 1 end\nif learnedpassive(insid,11101321) then count = count + 1 end\nif learnedpassive(insid,11101331) then count = count + 1 end\nif learnedpassive(insid,11101342) then count = count + 1 end\nif learnedpassive(insid,11000041) then count = count + 1 end\n\nif count ~= casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = count\n    casterins:AddPassiveSkill(11101303,count)\nend\nreturn false"
			}
		}
	},
	[1110132] = {
		["id"] = 1110132,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\n    local parentSkill = skillins:getdata().ParentSkill\n    if parentSkill and parentSkill:getdata().SkillId == 1110132 and skillins:getdata().SkillId == 11101301 then\n    for _ , hitTargetInsId in pairs(settlementinslist) do\n        BuffManagerInstance:AddBuffHelper(hitTargetInsId,1110132,passiveins:getdata().PassiveLevel,function(buff)\n            buff:SetDuration(2)\n        end)\n    end\n    end\nend\nreturn false"
			}
		}
	},
	[11101321] = {
		["id"] = 11101321,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nlocal count = 0\nif not casterins then return false end\nif not casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = 0\nend\nif learnedpassive(insid,11101301) then count = count + 1 end\nif learnedpassive(insid,11101311) then count = count + 1 end\nif learnedpassive(insid,11101321) then count = count + 1 end\nif learnedpassive(insid,11101331) then count = count + 1 end\nif learnedpassive(insid,11101342) then count = count + 1 end\nif learnedpassive(insid,11000041) then count = count + 1 end\n\nif count ~= casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = count\n    casterins:AddPassiveSkill(11101303,count)\nend\nreturn false"
			}
		}
	},
	[1110133] = {
		["id"] = 1110133,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11101301 then return false end\nlocal parentSkillIns = skillins:getdata().ParentSkill\nif parentSkillIns and parentSkillIns:getdata().SkillId ~= 1110133 then return false end\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[3].Active = 1\nreturn true"
			}
		}
	},
	[11101331] = {
		["id"] = 11101331,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nlocal count = 0\nif not casterins then return false end\nif not casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = 0\nend\nif learnedpassive(insid,11101301) then count = count + 1 end\nif learnedpassive(insid,11101311) then count = count + 1 end\nif learnedpassive(insid,11101321) then count = count + 1 end\nif learnedpassive(insid,11101331) then count = count + 1 end\nif learnedpassive(insid,11101342) then count = count + 1 end\nif learnedpassive(insid,11000041) then count = count + 1 end\n\nif count ~= casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = count\n    casterins:AddPassiveSkill(11101303,count)\nend\nreturn false"
			}
		}
	},
	[1110134] = {
		["id"] = 1110134,
		["BindBuff"] = 11101342,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101341] = {
		["id"] = 11101341,
		["BindBuff"] = 11101343,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101342] = {
		["id"] = 11101342,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nlocal count = 0\nif not casterins then return false end\nif not casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = 0\nend\nif learnedpassive(insid,11101301) then count = count + 1 end\nif learnedpassive(insid,11101311) then count = count + 1 end\nif learnedpassive(insid,11101321) then count = count + 1 end\nif learnedpassive(insid,11101331) then count = count + 1 end\nif learnedpassive(insid,11101342) then count = count + 1 end\nif learnedpassive(insid,11000041) then count = count + 1 end\n\nif count ~= casterins.SkillComPassiveCount then\n    casterins.SkillComPassiveCount = count\n    casterins:AddPassiveSkill(11101303,count)\nend\nreturn false"
			}
		}
	},
	[11101401] = {
		["id"] = 11101401,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101402] = {
		["id"] = 11101402,
		["BindBuff"] = 11101402,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101403] = {
		["id"] = 11101403,
		["BindBuff"] = 11101401,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isaddbuff and passiveins.LimitMaxSpeed then\n    if buffins:getdata().BuffId == 11101401 then\n        local effects = {20,30,40,50,60,65}\n        local effect = effects[passiveins:getdata().PassiveLevel > #effects and #effects or passiveins:getdata().PassiveLevel] * (passiveins.LimitMaxSpeed - passiveins.Attr_51)\n        buffins:gettable().Effect[1024].Params = {{212,1,effect}}\n    end\n    if buffins:getdata().BuffId == 11101402 then\n        buffins:gettable().Effect[1024].Params = {{105,1,50 * (passiveins.LimitMaxSpeed - passiveins.Attr_51)}}\n    end\nend\nif ispassiveupdate then\n    -- 是否有隐藏技能\n    local has_hide_skill = false\n    if learnedpassive(insid,11101401) then\n        has_hide_skill = true\n    end\n    if passiveins.HasHideSkill ~= has_hide_skill then\n        passiveins.Attr_51 = 0\n        passiveins.HasHideSkill = has_hide_skill\n        passiveins.LimitMaxSpeed = has_hide_skill and 900 or 700\n    end\n\n    -- 是否有组合技能\n    local has_com_skill = false\n    if learnedpassive(insid,11101402) then\n        has_com_skill = true\n    end\n    if passiveins.HasComSkill ~= has_com_skill then\n        passiveins.Attr_51 = 0\n        passiveins.HasComSkill = has_com_skill\n    end\n\n    if not passiveins.Attr_51 then\n        passiveins.Attr_51 = 0\n        passiveins.LimitMaxSpeed = 700\n    end\n    if casterins:GetAttr(51) ~= passiveins.Attr_51 then\n        BuffManagerInstance:RemoveBuff(insid,11101401)\n        passiveins.Attr_51 = casterins:GetAttr(51)\n        if passiveins.HasComSkill then BuffManagerInstance:RemoveBuff(insid,11101402) end\n        if (not passiveins.LimitMaxSpeed) or casterins:GetAttr(51) >= passiveins.LimitMaxSpeed then return false end\n        BuffManagerInstance:AddBuffHelper(insid,11101401,passiveins:getdata().PassiveLevel,function() end,1)\n        if passiveins.HasComSkill then\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = insid\n            doBuffData.BuffId = 11101402\n            doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n            -- BuffManagerInstance:AddBuffHelper(insid,11101402,passiveins:getdata().PassiveLevel,function() end,1)\n            PassiveSkillManagerInstance:AddBuff(doBuffData)\n        end\n    end\nend\nreturn false"
			}
		}
	},
	[11101411] = {
		["id"] = 11101411,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 11101411 then\n        skillins:gettable().TimeLine[1].Params[3] = \"1_250_360\"\n    end\nend"
			}
		}
	},
	[11101412] = {
		["id"] = 11101412,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 11101411 then\n        skillins:gettable().TimeLine[2].Active = 0\n        skillins:gettable().TimeLine[3].Active = 1\n    end\nend"
			}
		}
	},
	[11101421] = {
		["id"] = 11101421,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\n\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1 then return false end\n\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(doSkillData.CasterInsId , 11101423)\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = isLearned and 1000 or 500\nif prob1 > prob2 then return false end\n\nlocal newDoSkillData = clone(doSkillData)\nnewDoSkillData.SkillId = 11101421\nnewDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\nSkillManagerInstance:DoSkill(newDoSkillData)\n\nreturn false"
			}
		}
	},
	[11101422] = {
		["id"] = 11101422,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 11101421 then\n        skillins:gettable().TimeLine[2].Active = 0\n        skillins:gettable().TimeLine[3].Active = 1\n    end\nend\n\nreturn false"
			}
		}
	},
	[11101423] = {
		["id"] = 11101423,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101431] = {
		["id"] = 11101431,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\n\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1 then return false end\n\n-- 技能间隔\nlocal lv_intervals = {10,8,6,4,2,1.5};\nlocal interval = lv_intervals[#lv_intervals < passiveins:getdata().PassiveLevel and #lv_intervals or passiveins:getdata().PassiveLevel]\nif casterins.HitSkillIntevilTime and interval > Time() - casterins.HitSkillIntevilTime then return false end\n\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(doSkillData.CasterInsId , 11101433)\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = isLearned and 3000 or 1500\nif prob1 > prob2 then return false end\n\nlocal newDoSKillData = clone(doSkillData)\nnewDoSKillData.SkillId = 11101431\nSkillManagerInstance:DoSkill(newDoSKillData)\ncasterins:SetSkillScriptCustomData(1110143,\"passive\", {end_time = Time() + interval})\ncasterins.HitSkillIntevilTime = Time()\nreturn false"
			}
		}
	},
	[11101432] = {
		["id"] = 11101432,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 11101431 then\n        skillins:gettable().TimeLine[1].Params[3] = \"1_350_360\"\n    end\nend\nreturn false"
			}
		}
	},
	[11101433] = {
		["id"] = 11101433,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101441] = {
		["id"] = 11101441,
		["Cd"] = {0.5},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\n\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1 then return false end\n\nif not passiveins.SkillIntervalTime then\n    passiveins.SkillIntervalTime = 0\nend\n\nlocal interval = learnedpassive(insid,11101442) and 0.5 or 2\n\nif Time() - passiveins.SkillIntervalTime < interval then return false end\n\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(doSkillData.CasterInsId , 11101443)\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = isLearned and 2600 or 1300\nif prob1 > prob2 then return false end\ncasterins:SetSkillScriptCustomData(1110144,\"passive\", {end_time = Time() + interval})\npassiveins.SkillIntervalTime = Time()\nlocal newDoSkillData = clone(doSkillData)\nnewDoSkillData.SkillId = 11101441\nnewDoSkillData.SkillLevel = GetEntitySkillLevel(insid,1110144)\nSkillManagerInstance:DoSkill(newDoSkillData)\nreturn false"
			}
		}
	},
	[11101442] = {
		["id"] = 11101442,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101443] = {
		["id"] = 11101443,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101501] = {
		["id"] = 11101501,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110150 then return false end\nskillins:gettable().TimeLine[4].Active = 1\nreturn true"
			}
		}
	},
	[11101502] = {
		["id"] = 11101502,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillId == 1110150 or skillId == 11101501 then\n    skillins:gettable().TimeLine[1].Params[3] = \"3_500_100\"\nend\nreturn false"
			}
		}
	},
	[11101511] = {
		["id"] = 11101511,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 1110151 then\n        skillins:gettable().TimeLine[4].Active = 1\n    end\nend\nreturn false"
			}
		}
	},
	[11101512] = {
		["id"] = 11101512,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 11101511 then\n        skillins:gettable().TimeLine[3].Active = 1\n    end\nend\nreturn false"
			}
		}
	},
	[11101521] = {
		["id"] = 11101521,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nif skillins:getdata().SkillId ~= 1110152 then return false end\n\nlocal caster = GetEntityByInsId(insid)\ncaster:MinusSkillCDBySkillid(1110152,5,0)\n\nreturn false"
			}
		}
	},
	[11101522] = {
		["id"] = 11101522,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId == 1110152 then\n        skillins:gettable().TimeLine[5].Active = 1\n    end\nend\nreturn false"
			}
		}
	},
	[11101531] = {
		["id"] = 11101531,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit and learnedbuff(insid,11101531) then\n    local doSkillData = skillins:getdata()\n    if doSkillData.SkillId == 1 then\n        local lv_cds = {0.2,0.2,0.2,0.2,0.2,0.3};\n        local cd = GetConfDataLevel(lv_cds,passiveins:getdata().PassiveLevel)\n        local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(doSkillData.CasterInsId , 11101533)\n        local reduceCD = isLearned and 2 * cd or cd\n        local entity = GetEntityByInsId(doSkillData.CasterInsId)\n\n        entity:MinusAllSkillCD(reduceCD,0)\n    end\nend\nreturn false"
			}
		}
	},
	[11101532] = {
		["id"] = 11101532,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110153 then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[11101533] = {
		["id"] = 11101533,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11101541] = {
		["id"] = 11101541,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1 then return false end\nlocal buff = BuffManagerInstance:GetEntityBuff(doSkillData.CasterInsId , 11101541)\nif not buff then return false end\nlocal targetInsId = doSkillData.TargetInsId\nif learnedpassive(insid,11101544) then\n    PassiveSkillManagerInstance:Add(targetInsId, 11101543, doSkillData.SkillLevel)\nend\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = targetInsId\ndoBuffData.BuffId = 11101542\ndoBuffData.BuffLevel = doSkillData.SkillLevel\ndoBuffData.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[11101542] = {
		["id"] = 11101542,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110154 then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11101543] = {
		["id"] = 11101543,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdeath then return false end\nlocal doSkillData = skillins:getdata()\nlocal targetInsId = doSkillData.TargetInsId\nlocal targetPosition = doSkillData.Position\nlocal buff = BuffManagerInstance:GetEntityBuff(targetInsId , 11101542)\nif buff then\n    -- TODO 范围暂定10000\n    local minDistance = 1000\n    local units = Units:GetUnitsByArea(targetPosition,minDistance,nil,nil)\n    local nearestInsId = 0\n    for _,entity in pairs(units) do\n        local entityInsId = entity:GetInsid()\n        if targetInsId ~= entityInsId and doSkillData.TargetCamp == entity:GetCamp() then\n            local distance = (targetPosition - entity:GetPosition()):Length()\n            if distance < minDistance then\n                minDistance = distance\n                nearestInsId = entityInsId\n            end\n        end\n    end\n    if nearestInsId > 0 then\n        PassiveSkillManagerInstance:Add(nearestInsId, 11101542, doSkillData.SkillLevel)\n        local doBuffData = clone(buff:getdata())\n        doBuffData.EntityId = nearestInsId\n        BuffManagerInstance:AddBuff(doBuffData)\n    end\nend\n\nreturn false"
			}
		}
	},
	[11101544] = {
		["id"] = 11101544,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101601] = {
		["id"] = 11101601,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 1110160 then return false end\n\nskillins:gettable().DamageType = 0\n\nreturn false"
			}
		}
	},
	[11101602] = {
		["id"] = 11101602,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11101601 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_350_360\"\n\nreturn false"
			}
		}
	},
	[11101631] = {
		["id"] = 11101631,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\nif skillins:getdata().SkillId == 1110163 then\n    skillins:gettable().TimeLine[5].Active = 1\nend\nend\n\nif isdamage then\nif skillins:getdata().SkillId == 1110163 then\n    local entity = GetEntityByInsId(insid)\n    Fight:ApplyHeal(entity, entity, 1110163, 1, 1, {{1,0,0.05 * skillins:getdata().Damage}})\nend\nend\n\nreturn false"
			}
		}
	},
	[11101632] = {
		["id"] = 11101632,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110163 then return false end\n\nskillins:gettable().TimeLine[2].Params[3] = \"1_225_360\"\n\nreturn false"
			}
		}
	},
	[11101633] = {
		["id"] = 11101633,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdosettlement then\n    if not settlementins then return false end\n    if skillins:getdata().SkillId ~= 1110163 then return false end\n    if settlementins:getdata().TimeLineIndex ~= 4 then return false end\n    local lv_times = {2,2.2,2.4,2.6,2.8,3,3.2,3.5}\n    local distance = lv_times[skillins:getdata().SkillLevel] * 50\n    settlementins:gettable().HitDisplace = {1110163,2,1,distance,50}\n    return true\nend\nif ishit then\n    if skillins:getdata().SkillId ~= 1110163 then return false end\n    local doSkillData = skillins:getdata()\n    for _, hitTargetInsId in pairs(settlementinslist) do\n        local newDoSkillData = clone(doSkillData)\n        newDoSkillData.SkillId = 11101631\n        newDoSkillData.TargetInsId = hitTargetInsId\n        newDoSkillData.ParentSkill = skillins\n        SkillManagerInstance:DoSkill(newDoSkillData)\n    end\nend\nreturn false"
			}
		}
	},
	[11101621] = {
		["id"] = 11101621,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101622] = {
		["id"] = 11101622,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110162 then return false end\n\nskillins:gettable().Duration = {10}\n\nreturn false"
			}
		}
	},
	[11101611] = {
		["id"] = 11101611,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110161 then return false end\n\nskillins:gettable().TimeLine[2].Params[3] = \"11101611_0.3\"\n\nreturn false"
			}
		}
	},
	[11101612] = {
		["id"] = 11101612,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101613] = {
		["id"] = 11101613,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal doSkillData = skillins:getdata()\nlocal skillId = doSkillData.SkillId\nlocal casterInsId = doSkillData.CasterInsId\n\nif skillId == 11101611 then\n    local position = GetEntityPosition(casterInsId)\n    local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId, 11101612)\n    local radius = isLearned and 800 or 600\n    local units = Units:GetUnitsByArea(position,radius,nil,true)\n    DrawDebugFan(position, radius, 360, Vector(1,0,0), 0.2 ,Vector(0, 255, 0))\n    local casterCamp = GetEntityByInsId(casterInsId):GetCamp()\n    local unitList = {}\n    for insId , unit in pairs(units) do\n        local unitCamp = unit: GetCamp()\n        if unitCamp ~= 0 and unitCamp ~= casterCamp then\n            table.insert(unitList, insId)\n        end\n    end\n    skillins.CheckInsIdList = unitList\n    skillins.CheckInsIdIndex = 1\n    skillins.CheckInsIdCount = #unitList\n\n    if skillins.CheckInsIdCount == 0 then\n        skillins:gettable().TimeLine[2].Active = 0\n    end\nend\n\nif skillId == 11101612 then\n    if doSkillData.ParentSkill.CheckInsIdIndex > doSkillData.ParentSkill.CheckInsIdCount then\n        doSkillData.ParentSkill.CheckInsIdIndex = 1\n    end\n    local newTargetInsId = doSkillData.ParentSkill.CheckInsIdList[doSkillData.ParentSkill.CheckInsIdIndex]\n    doSkillData.PositionNew.StartPosition = doSkillData.PositionNew.EndPosition\n    skillins:SetTarget(newTargetInsId)\n    doSkillData.ParentSkill.CheckInsIdIndex = doSkillData.ParentSkill.CheckInsIdIndex + 1\nend\n\nreturn false"
			}
		}
	},
	[11101641] = {
		["id"] = 11101641,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11101643 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_300_360\"\n\nreturn false"
			}
		}
	},
	[11101642] = {
		["id"] = 11101642,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillid = 1110164\nif skillins:getdata().SkillId ~= skillid then return false end\nlocal summons = casterins:GetSummonsBySkill(skillid)\nfor _, summon in pairs(summons) do\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = summon.Unit:GetInsid()\n    doBuffData.BuffId = 11101642\n    doBuffData.BuffLevel = skillins:getdata().SkillLevel\n    doBuffData.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData)\nend\nreturn false"
			}
		}
	},
	[11101701] = {
		["id"] = 11101701,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110170 then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[11101702] = {
		["id"] = 11101702,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101703] = {
		["id"] = 11101703,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not iskill then return false end\nlocal doSkillData = skillins:getdata()\nlocal casterInsId = doSkillData.CasterInsId\nlocal targetInsId = doSkillData.TargetInsId\nlocal targetPosition = doSkillData.Position\n\nlocal buff = BuffManagerInstance:GetEntityBuff(targetInsId , 11101701)\nif buff then\n    local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101702)\n    local minDistance = isLearned and 600 or 350\n    DrawDebugFan(targetPosition, minDistance, 360, Vector(1,0,0), 0.2 ,Vector(0, 255, 0))\n    local units = Units:GetUnitsByArea(targetPosition,minDistance,nil,nil)\n    local nearestInsId = 0\n    for _,entity in pairs(units) do\n        local entityInsId = entity:GetInsid()\n        if targetInsId ~= entityInsId and doSkillData.TargetCamp == entity:GetCamp() then\n            local distance = (targetPosition - entity:GetPosition()):Length()\n            if distance < minDistance then\n                minDistance = distance\n                nearestInsId = entityInsId\n            end\n        end\n    end\n    if nearestInsId > 0 then\n        local doBuffData = clone(buff:getdata())\n        doBuffData.EntityId = nearestInsId\n        BuffManagerInstance:AddBuff(doBuffData)\n\n        local buff2 = BuffManagerInstance:GetEntityBuff(targetInsId , 11101702)\n        if buff2 then\n            local doBuffData = clone(buff2:getdata())\n            doBuffData.EntityId = nearestInsId\n            BuffManagerInstance:AddBuff(doBuffData)\n        end\n    end\nend\n\nreturn false"
			}
		}
	},
	[11101711] = {
		["id"] = 11101711,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\nif not learnedpassive(insid,11101713) then return false end\nlocal casterInsId = skillins:getdata().CasterInsId\nBuffManagerInstance:AddBuffHelper(casterInsId , 1031 , passiveins:getdata().PassiveLevel , function(buff)\n    buff:SetDuration(5)\nend)\nreturn false"
			}
		}
	},
	[11101712] = {
		["id"] = 11101712,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101713] = {
		["id"] = 11101713,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal buff = BuffManagerInstance:GetEntityBuff(targetInsId , 11101712)\nif not buff then return false end\n\nlocal isLearned1 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(targetInsId , 11101711)\nlocal isLearned2 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(targetInsId , 11101712)\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = casterInsId\ndoBuffData.BuffId = 11101711\nBuffManagerInstance:AddBuff(doBuffData,function(buff)\n    local duration = (isLearned1 and 2 or 1) * buff:GetDuration()\n    buff:SetDuration(duration)\n    if isLearned2 then\n        buff:gettable().MaxStack = {10} \n    end\nend)\n\nreturn false"
			}
		}
	},
	[11101721] = {
		["id"] = 11101721,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110172 then return false end\n\nskillins:gettable().TimeLine[5].Active = 1\nreturn false"
			}
		}
	},
	[11101722] = {
		["id"] = 11101722,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101723] = {
		["id"] = 11101723,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1110172 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal isLearned2 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101722)\nfor _ , hitTargetInsId in pairs(settlementinslist) do\n    local doBuffData1 = DoBuffData.New()\n    doBuffData1.EntityId = hitTargetInsId\n    doBuffData1.BuffId = 11101721\n    doBuffData1.BuffLevel = skillins:getdata().SkillLevel\n    doBuffData1.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData1,function(buff)\n        buff:SetDuration(buff:GetDuration() * (isLearned2 and 2 or 1))\n    end)\n\n    local doBuffData2 = DoBuffData.New()\n    doBuffData2.EntityId = hitTargetInsId\n    doBuffData2.BuffId = 11101722\n    doBuffData2.BuffLevel = skillins:getdata().SkillLevel\n    doBuffData2.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData2,function(buff)\n        buff:SetDuration(buff:GetDuration() * (isLearned2 and 2 or 1))\n    end)\nend\n\nreturn false"
			}
		}
	},
	[11101731] = {
		["id"] = 11101731,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1110173 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\n\nfor _ , hitTargetInsId in pairs(settlementinslist) do\n    local gainBuffCount = #SkillAPI.GetEntityBuffs(hitTargetInsId , -1)\n    if gainBuffCount == 0 then\n        BuffManagerInstance:AddBuffHelper(hitTargetInsId , 1031 , passiveins:getdata().PassiveLevel , function(buff)\n            buff:SetDuration(8)\n        end)\n    end\nend\n\nreturn false"
			}
		}
	},
	[11101732] = {
		["id"] = 11101732,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110173 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_250_360\"\n\nreturn false"
			}
		}
	},
	[11101733] = {
		["id"] = 11101733,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1110173 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101731)\nfor _ , hitTargetInsId in pairs(settlementinslist) do\n    local gainBuffCount = #SkillAPI.GetEntityBuffs(hitTargetInsId , -1)\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = hitTargetInsId\n    doBuffData.BuffId = 11101731\n    doBuffData.BuffLevel = skillins:getdata().SkillLevel\n    doBuffData.Skill = skillins\n    if gainBuffCount > 0 then\n\n        doBuffData.EffectTimes = 1 + gainBuffCount * 0.5 --(isLearned and 0.75 or 0.5)\n    end\n    BuffManagerInstance:AddBuff(doBuffData)\nend\n\nreturn false"
			}
		}
	},
	[11101741] = {
		["id"] = 11101741,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101742] = {
		["id"] = 11101742,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101743] = {
		["id"] = 11101743,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1110174 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal gainTargetCount = 0\nlocal isLearned1 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101741)\nlocal isLearned2 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101742)\nfor _ , hitTargetInsId in pairs(settlementinslist) do\n    local gainBuffCount = #SkillAPI.GetEntityBuffs(hitTargetInsId , -1)\n    if gainBuffCount > 0 then\n        gainTargetCount = gainTargetCount + gainBuffCount\n        local doBuffData = DoBuffData.New()\n        doBuffData.EntityId = hitTargetInsId\n        doBuffData.BuffId = 11101741\n        doBuffData.BuffLevel = skillins:getdata().SkillLevel\n        doBuffData.Skill = skillins\n        BuffManagerInstance:AddBuff(doBuffData,function(buff)\n            buff:SetDuration(buff:GetDuration() * (isLearned2 and 2 or 1))\n        end)\n    end\nend\n\nif isLearned1 and gainTargetCount > 0 then\n    local buff = BuffManagerInstance:GetEntityBuff(insid,11101742);\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = casterInsId\n    doBuffData.BuffId = 11101742\n    doBuffData.BuffLevel = skillins:getdata().SkillLevel\n    doBuffData.Skill = skillins\n    doBuffData.InitStackCount = gainTargetCount + (buff and buff:GetStackCount() or 0)\n    BuffManagerInstance:RemoveBuff(insid,11101742)\n    BuffManagerInstance:AddBuff(doBuffData)\nend\n\nreturn false"
			}
		}
	},
	[11101801] = {
		["id"] = 11101801,
		["BindBuff"] = 11101805,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    if buffins:getdata().BuffId == 11101805 then\n        BuffManagerInstance:RemoveBuff(insid , 11101802)\n    end\nend\nif not ispassiveupdate then return false end\nif passiveins:getdata().PassiveId ~= 11101801 then return false end\nlocal hp = math.floor(((casterins:GetAttr_MaxHP() - casterins:GetHP()) / casterins:GetAttr_MaxHP() * 1000 + 0.5) / 10)\nif passiveins.LostHp and hp == passiveins.LostHp then return false end\npassiveins.LostHp = hp\nBuffManagerInstance:RemoveBuff(insid,11101802)\nif hp == 0 then return false end\nBuffManagerInstance:AddBuffHelper(insid,11101802,passiveins:getdata().PassiveLevel,function()end,hp)\nreturn false"
			}
		}
	},
	[11101802] = {
		["id"] = 11101802,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11101803},
				["AddCondition"] = "if not isdamage then return false end\n\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal casterInsId = skillins:getdata().CasterInsId\n\nif targetInsId == insid and casterInsId == insid then\n    return true\nend\nreturn false"
			}
		}
	},
	[11101803] = {
		["id"] = 11101803,
		["BindBuff"] = 11101804,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    if buffins:getdata().BuffId == 11101804 then\n        BuffManagerInstance:RemoveBuff(insid , 11101801)\n    end\nend\nif not ispassiveupdate then return false end\nif passiveins:getdata().PassiveId ~= 11101803 then return false end\nlocal hp = math.floor(((casterins:GetAttr_MaxHP() - casterins:GetHP()) / casterins:GetAttr_MaxHP() * 1000 + 0.5) / 10)\nif passiveins.LostHp and hp == passiveins.LostHp then return false end\npassiveins.LostHp = hp\nBuffManagerInstance:RemoveBuff(insid,11101801)\nif hp == 0 then return false end\nBuffManagerInstance:AddBuffHelper(insid,11101801,passiveins:getdata().PassiveLevel,function()end,hp)\nreturn false"
			}
		}
	},
	[11101811] = {
		["id"] = 11101811,
		["BindBuff"] = 11101812,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101812] = {
		["id"] = 11101812,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110181\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\ncaster:MinusSkillCDBySkillid(skillId,3,0)\n\nreturn false"
			}
		}
	},
	[11101821] = {
		["id"] = 11101821,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110182\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11101822] = {
		["id"] = 11101822,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101823] = {
		["id"] = 11101823,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdamage then return false end\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal buff = BuffManagerInstance:GetEntityBuff(targetInsId,11101821)\nif not buff then return false end\n\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101822)\nlocal damageValue = skillins:getdata().Damage\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = casterInsId\ndoBuffData.BuffId = 11101822\ndoBuffData.BuffLevel = skillins:getdata().SkillLevel\ndoBuffData.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData,function(buff)\n    buff:gettable().Effect[4096].HealthParams = {{1,0,damageValue * (isLearned and 0.75 or 0.5)}}\nend)\n\nreturn false"
			}
		}
	},
	[11101831] = {
		["id"] = 11101831,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110183 then return false end\n\nskillins:gettable().TimeLine[3].Params[3] = \"1_100_330\"\nskillins:gettable().TimeLine[3].Params[5] = skillins:gettable().TimeLine[3].Params[5] * 2\n\nreturn false"
			}
		}
	},
	[11101832] = {
		["id"] = 11101832,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101833] = {
		["id"] = 11101833,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal doSkillData = skillins:getdata()\nlocal skillId = doSkillData.SkillId\nlocal casterInsId = doSkillData.CasterInsId\n\nif skillId == 1110183 then\n    local position = GetEntityPosition(casterInsId)\n    local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId, 11101832)\n    local radius = isLearned and 650 or 500\n    local units = Units:GetUnitsByArea(position,radius,nil,true)\n    DrawDebugFan(position, radius, 360, Vector(1,0,0), 0.2 ,Vector(0, 255, 0))\n    local casterCamp = GetEntityByInsId(casterInsId):GetCamp()\n    local unitList = {}\n    for insId , unit in pairs(units) do\n        local unitCamp = unit: GetCamp()\n        if unitCamp ~= 0 and unitCamp ~= casterCamp then\n            table.insert(unitList, insId)\n        end\n    end\n    skillins.CheckInsIdList = unitList\n    skillins.CheckInsIdIndex = 1\n    skillins.CheckInsIdCount = #unitList\n    if skillins.CheckInsIdCount == 0 then\n        skillins:gettable().TimeLine[2].Params[5] = 0\n    end\nend\n\nif skillId == 11101831 then\n    if doSkillData.ParentSkill.CheckInsIdIndex > doSkillData.ParentSkill.CheckInsIdCount then\n        doSkillData.ParentSkill.CheckInsIdIndex = 1\n    end\n    local newTargetInsId = doSkillData.ParentSkill.CheckInsIdList[doSkillData.ParentSkill.CheckInsIdIndex]\n    doSkillData.PositionNew.StartPosition = doSkillData.PositionNew.EndPosition\n    skillins:SetTarget(newTargetInsId)\n    doSkillData.ParentSkill.CheckInsIdIndex = doSkillData.ParentSkill.CheckInsIdIndex + 1\nend\n\nif skillId ==  1110183 then\n    Fight:ApplyDirectlyDamageNotBuff(casterins,casterins,casterins:GetAttr_MaxHP() * 0.005,1)\nend\n\nreturn false"
			}
		}
	},
	[11101841] = {
		["id"] = 11101841,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 11101841\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11101842] = {
		["id"] = 11101842,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110184 then return false end\n\nskillins:gettable().TimeLine[5].Active = 1\n\nreturn false"
			}
		}
	},
	[11101843] = {
		["id"] = 11101843,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110184 then return false end\nlocal lv_percents = {0.1,0.2,0.3,0.4,0.5,0.5}\nlocal damage = lv_percents[skillins:getdata().SkillLevel] * casterins:GetAttr_MaxHP() * 0.01\nlocal unit = Units:GetUnitByInsid(insid)\nFight:ApplyDirectlyDamageNotBuff(unit, unit, damage, skillins:getdata().SkillId)\nreturn false"
			}
		}
	},
	[11101901] = {
		["id"] = 11101901,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110190 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_400_360\"\n\nreturn false"
			}
		}
	},
	[11101902] = {
		["id"] = 11101902,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isshieldchange then return false end\n\nlocal entity = GetEntityByInsId(insid)\nFight:ApplyHeal(entity, entity, 1110190, 1, 1, {{1,0,0.1 * shieldchangeins.reduceshieldvalue}})\n\nreturn false"
			}
		}
	},
	[11101903] = {
		["id"] = 11101903,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal skillId = 1110190\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal caster = GetEntityByInsId(casterInsId)\nlocal shieldValue = BuffManagerInstance:GetTotalShieldValue(casterInsId)\nlocal damage = shieldValue * 1\nif damage > 0 then\n    local isLearned = false --PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101902)\n    if isLearned then damage = damage * 1.5 end\n\n    for _ , hitTargetInsId in ipairs(settlementinslist) do\n        local target = GetEntityByInsId(hitTargetInsId)\n        FightApplyDamage(caster, target, skillId, 1, 1, {{12,skillId,damage}})\n    end \nend\nBuffManagerInstance:ClearEntityShield(casterInsId)\nreturn false"
			}
		}
	},
	[11101911] = {
		["id"] = 11101911,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isfinishedbuff then return false end\nlocal skillId = 1110191\nif buffins:getdata().BuffId ~= 11101911 then return false end\n\nlocal shieldValue = BuffManagerInstance:GetTotalShieldValue(buffins:getdata().EntityId)\n\nif shieldValue > 0 then\n    Fight:ApplyHeal(casterins, casterins, skillId, 1, 1, {{1,0,shieldValue*0.5}})\nend\n\nreturn false"
			}
		}
	},
	[11101912] = {
		["id"] = 11101912,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11101913] = {
		["id"] = 11101913,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110191 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11101912)\nlocal caster = GetEntityByInsId(casterInsId)\nlocal hp = caster:GetAttr_MaxHP() - caster:GetHP()\nif hp > 0 then\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = casterInsId\ndoBuffData.BuffId = 11101911\ndoBuffData.BuffLevel = passiveins:getdata().PassiveLevel\nBuffManagerInstance:AddBuff(doBuffData,function(buff)\n    buff:gettable().Effect[33554432].Params = {{0,hp * (isLearned and 1 or 0.5)}}\nend)\nend\n\nreturn false"
			}
		}
	},
	[11101921] = {
		["id"] = 11101921,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110192\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11101922] = {
		["id"] = 11101922,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110192\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\ncaster:MinusSkillCDBySkillid(skillId,3,0)\n\nreturn false"
			}
		}
	},
	[11101923] = {
		["id"] = 11101923,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local buffId = 11101921\nif isdamage then\n    local targetInsId = skillins:getdata().TargetInsId\n    local buff = BuffManagerInstance:GetEntityBuff(targetInsId,buffId)\n    if buff then\n        buff.GPTotalDamage = (buff.GPTotalDamage or 0) + skillins:getdata().Damage\n\n    end\nend\n\nif isfinishedbuff then\n    local totalDamage = buffins.GPTotalDamage or 0\n    local times = {1,3,5,7,10,10}\n    if buffins:getdata().BuffId == buffId and totalDamage > 0 then\n        buffins.GPTotalDamage = 0\n        local level = passiveins:getdata().PassiveLevel\n        local doBuffData = DoBuffData.New()\n        doBuffData.EntityId = buffins:getdata().EntityId\n        doBuffData.BuffId = 11101922\n        doBuffData.BuffLevel = level\n        BuffManagerInstance:AddBuff(doBuffData,function(buff)\n            buff:gettable().Effect[33554432].Params = {{0,totalDamage * times[level]}}\n        end)\n    end\nend\nreturn false"
			}
		}
	},
	[11101931] = {
		["id"] = 11101931,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 11101931 then return false end\n\nBuffManagerInstance:AddBuffHelper(insid , 11101932 , passiveins:getdata().PassiveLevel, nil , settlementcount)\n\nreturn false"
			}
		}
	},
	[11101932] = {
		["id"] = 11101932,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110193\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\ncaster:MinusSkillCDBySkillid(skillId,3,0)\n\nreturn false"
			}
		}
	},
	[11101941] = {
		["id"] = 11101941,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110194\nif skillins:getdata().SkillId ~= skillId then return false end\n\nBuffManagerInstance:AddBuffHelper(insid , 11101943 , passiveins:getdata().PassiveLevel, nil , 5)\n\nreturn false"
			}
		}
	},
	[11101942] = {
		["id"] = 11101942,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110194\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Params[3] = \"1_500_360\"\n\nreturn false"
			}
		}
	},
	[11102001] = {
		["id"] = 11102001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110200\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Active = 1\nskillins:gettable().TimeLine[3].Active = 1\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11102002] = {
		["id"] = 11102002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110200\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\ncaster:MinusSkillCDBySkillid(skillId,3,0)\n\nreturn false"
			}
		}
	},
	[11102003] = {
		["id"] = 11102003,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110200\nif skillins:getdata().SkillId ~= skillId then return false end\nlocal lv = skillins:getdata().SkillLevel\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal caster = GetEntityByInsId(casterInsId)\nlocal hp = caster:GetAttr_MaxHP() * 0.1\nFight:ApplyDirectlyDamageNotBuff(caster, caster, hp, skillins:getdata().SkillId)\nlocal isLearned = false--PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102001)\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = casterInsId\ndoBuffData.BuffId = 11102001\ndoBuffData.BuffLevel = lv\ndoBuffData.EffectTimes = isLearned and 1.5 or 1\nBuffManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[11102011] = {
		["id"] = 11102011,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdeath then return false end\n\nlocal buffId = 11102011\nlocal buff = BuffManagerInstance:GetEntityBuff(insid , buffId)\nif buff == nil then return false end\n\nlocal casterInsId = buff:getdata().Skill:getdata().CasterInsId\n-- 回血\nlocal doBuffData = clone(buff:getdata())\ndoBuffData.EntityId = casterInsId\ndoBuffData.BuffId = 11102012\nPassiveSkillManagerInstance:AddBuff(doBuffData)\n-- 转移\nlocal targetCamp = GetEntityByInsId(insid):GetCamp()\nlocal targetPosition = GetEntityPosition(insid)\nlocal minDistance = 300\nDrawDebugFan(targetPosition, minDistance, 360, Vector(1,0,0), 0.2 ,Vector(0, 255, 0))\nlocal units = Units:GetUnitsByArea(targetPosition,minDistance,targetCamp,nil)\nlocal nearestInsId = 0\nfor _,entity in pairs(units) do\n    local entityInsId = entity:GetInsid()\n    if insid ~= entityInsId then\n        local distance = (targetPosition - entity:GetPosition()):Length()\n        if distance < minDistance and not targetins:IsBoss() then\n            minDistance = distance\n            nearestInsId = entityInsId\n        end\n    end\nend\nif nearestInsId > 0 then\n    local doSkillData = DoSkillData.New()\n    doSkillData.SkillId = 1110201\n    doSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n    doSkillData.CasterInsId = casterInsId\n    doSkillData.TargetInsId = nearestInsId\n    doSkillData.IsManual = false\n    SkillManagerInstance:DoSkill(doSkillData)\nend\n\nreturn false"
			}
		}
	},
	[11102012] = {
		["id"] = 11102012,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102013] = {
		["id"] = 11102013,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110201\nif skillins:getdata().SkillId ~= skillId then return false end\n\nif targetins:IsBoss() then\n    skillins:Finish(true,true);\n    return false;\nend\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal level = passiveins:getdata().PassiveLevel\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = targetInsId\ndoBuffData.BuffId = 11102011\ndoBuffData.BuffLevel = level\ndoBuffData.InsIds = {casterInsId}\ndoBuffData.Skill = skillins\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102012)\nBuffManagerInstance:AddBuff(doBuffData,function(buff)\n    buff:SetDuration(isLearned and 15 or 7)\nend)\nlocal isLearned1 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102011)\nif isLearned1 then\n    PassiveSkillManagerInstance:Add(targetInsId, 11102011, level)\nend\n\nlocal doSkillData = DoSkillData.New()\ndoSkillData.SkillId = isLearned and 11102012 or 11102011\ndoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\ndoSkillData.CasterInsId = targetInsId\ndoSkillData.TargetInsId = casterInsId\nSkillManagerInstance:DoSkill(doSkillData)\n\nreturn false"
			}
		}
	},
	[11102021] = {
		["id"] = 11102021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110202\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[5].Active = 1\n\nreturn false"
			}
		}
	},
	[11102022] = {
		["id"] = 11102022,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110202\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:getdata().EffectTimes = 40.0 / 15.0\n\nreturn false"
			}
		}
	},
	[11102031] = {
		["id"] = 11102031,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102032] = {
		["id"] = 11102032,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nlocal buffId = buffins:getdata().BuffId\nif buffId ~= 11102031 and buffId ~= 11102032 then return false end\n\nbuffins:SetDuration(24)\n\nreturn false"
			}
		}
	},
	[11102033] = {
		["id"] = 11102033,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\n\nlocal target = GetEntityByInsId(insid)\nlocal curHp = target:GetHP()\nif passiveins.GPreHP == nil then\n    passiveins.GPreHP = curHp\nelse\n    local maxHp = target:GetAttr_MaxHP()\n    local preHp = passiveins.GPreHP\n    local hp_1 = math.ceil(curHp / maxHp * 10)\n    local hp_2 = math.ceil(preHp / maxHp * 10)\n    local lossHP = hp_2 - hp_1\n    passiveins.GPreHP = curHp\n    if lossHP >= 1 then\n        local doBuffData = DoBuffData.New()\n        doBuffData.EntityId = insid\n        doBuffData.BuffId = 11102031\n        doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n        doBuffData.InitStackCount = lossHP\n        BuffManagerInstance:AddBuff(doBuffData)\n        local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid , 11102031)\n        if isLearned then\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = insid\n            doBuffData.BuffId = 11102032\n            doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n            BuffManagerInstance:AddBuff(doBuffData)\n        end\n    end\nend"
			}
		}
	},
	[11102041] = {
		["id"] = 11102041,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110204\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 0\n\nreturn false"
			}
		}
	},
	[11102042] = {
		["id"] = 11102042,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110204\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Params[3] = 7\nskillins:gettable().TimeLine[3].Params[3] = 7\n\nreturn false"
			}
		}
	},
	[11102101] = {
		["id"] = 11102101,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102102] = {
		["id"] = 11102102,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 11102101\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_300_360\"\n\nreturn false"
			}
		}
	},
	[11102103] = {
		["id"] = 11102103,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not iscritical then return false end\n\nlocal lv_intervals = {2,1.8,1.4,1,0.6,0.5}\n\nlocal interval = lv_intervals[passiveins:getdata().PassiveLevel]\nif passiveins.SkillCdTime and Time() - passiveins.SkillCdTime < interval then return false end\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102101)\n\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = isLearned and 4500 or 3000\nif prob1 > prob2 then return false end\npassiveins.SkillCdTime = Time()\nlocal doSkillData = DoSkillData.New()\ndoSkillData.SkillId = 11102101\ndoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\ndoSkillData.CasterInsId = casterInsId\ndoSkillData.TargetInsId = targetInsId\nSkillManagerInstance:DoSkill(doSkillData)\ncasterins:SetSkillScriptCustomData(1110210,\"passive\", {end_time = Time() + interval})\nreturn false"
			}
		}
	},
	[11102111] = {
		["id"] = 11102111,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102112] = {
		["id"] = 11102112,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102113] = {
		["id"] = 11102113,
		["AddTriggerProb"] = {200,500,1000,1500,2500,2500},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal isLearned1 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102111)\nlocal isLearned2 = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102112)\n\nif passiveins.GP_Intervals == nil then\n    passiveins.GP_Intervals = {3,3,3,3,3,2.5};\nend\nlocal interval = GetConfDataLevel(passiveins.GP_Intervals,passiveins:getdata().PassiveLevel);\n\nlocal isActive = false\nif passiveins:getdata().GPreActiveTime == nil then\n    passiveins:getdata().GPreActiveTime = Time()\n    isActive = true\nelse\n\n    local curTime = Time()\n    local preActiveTime = passiveins:getdata().GPreActiveTime\n    if curTime - preActiveTime > (isLearned2 and interval * 0.5 or interval) then\n        isActive = true\n        passiveins:getdata().GPreActiveTime = curTime\n    end\nend\n\nif isActive then\n    casterins:SetSkillScriptCustomData(1110211,\"passive\", {end_time = Time() + (isLearned2 and interval * 0.5 or interval)})\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = targetInsId\n    doBuffData.BuffId = isLearned1 and 11102112 or 11102111\n    doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n    BuffManagerInstance:AddBuff(doBuffData)\nend"
			}
		}
	},
	[11102121] = {
		["id"] = 11102121,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 11102121\nif skillins:getdata().SkillId ~= skillId then return false end\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = 4000\nif prob1 > prob2 then return false end\nskillins:gettable().TimeLine[3].Active = 1\nreturn false"
			}
		}
	},
	[11102122] = {
		["id"] = 11102122,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102123] = {
		["id"] = 11102123,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not iscritical then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102122)\n\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = isLearned and 3000 or 2000\n\nif prob1 > prob2 then return false end\n\nlocal doSkillData = DoSkillData.New()\ndoSkillData.SkillId = 11102121\ndoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\ndoSkillData.CasterInsId = casterInsId\ndoSkillData.TargetInsId = targetInsId\nSkillManagerInstance:DoSkill(doSkillData)\n\nreturn false"
			}
		}
	},
	[11102131] = {
		["id"] = 11102131,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102132] = {
		["id"] = 11102132,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102133] = {
		["id"] = 11102133,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdamage then return false end\n\nif skillins:getdata().SkillId ~= 1 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\n\nif casterInsId ~= insid then return false end\n\nif skillins:getdata().DamageType == 2 then\n    local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102132)\n    if isLearned then \n        local doBuffData = DoBuffData.New()\n        doBuffData.EntityId = casterInsId\n        doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n        doBuffData.BuffId = 11102132\n        BuffManagerInstance:AddBuff(doBuffData)\n    end\n    BuffManagerInstance:RemoveBuff(casterInsId , 11102131)\nelse\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = casterInsId\n    doBuffData.BuffId = 11102131\n    doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n    BuffManagerInstance:AddBuff(doBuffData,function(buff)\n        local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102131)\n        if isLearned then\n            buff:gettable().MaxStack = {10}\n        end\n    end)\n    if not PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102131) then return false end\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = casterInsId\n    doBuffData.BuffId = 11102133\n    doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n    PassiveSkillManagerInstance:AddBuff(doBuffData)\nend\n\nreturn false"
			}
		}
	},
	[11102141] = {
		["id"] = 11102141,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110214\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal entityId = skillins:getdata().CasterInsId\nlocal waitDeleteBuffs = {}\nlocal buffs = BuffManagerInstance:GetEntityBuffs(entityId)\nfor buffId, buff in pairs(buffs) do\n    if buff:gettable().DesignType == 1 then\n        table.insert(waitDeleteBuffs, buffId)\n    end\nend\nfor _, buffId in ipairs(waitDeleteBuffs) do\n    BuffManagerInstance:RemoveBuff(entityId,buffId)\nend\n\nreturn false"
			}
		}
	},
	[11102142] = {
		["id"] = 11102142,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isaddbuff and buffins:getdata().BuffId == 11102141 then\n    buffins:SetDuration(buffins:GetBuffLevel() > 5 and 12 or 10)\nend\nreturn false"
			}
		}
	},
	[11102501] = {
		["id"] = 11102501,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110250\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\nskillins:gettable().TimeLine[5].Active = 1\n\nreturn true"
			}
		}
	},
	[11102502] = {
		["id"] = 11102502,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110250\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11102521] = {
		["id"] = 11102521,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nlocal skillId = 1110252\nif skillins:getdata().SkillId ~= skillId then return false end\n\nsettlementins:gettable().HitInterval = 0.5\n\nreturn false"
			}
		}
	},
	[11102522] = {
		["id"] = 11102522,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110252\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().Duration = {8}\n\nreturn false"
			}
		}
	},
	[11102511] = {
		["id"] = 11102511,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102512] = {
		["id"] = 11102512,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif buffins:getdata().BuffId ~= 1110251 then return false end\nbuffins:gettable().Duration = {12}\nreturn false"
			}
		}
	},
	[11102513] = {
		["id"] = 11102513,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\n\nlocal buff = BuffManagerInstance:GetEntityBuff(insid,1110251)\nif not buff then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102511)\nlocal prob1 = math.random(1,10000)  -- 随机概率\nlocal prob2 = isLearned and 10000 or 5000\n\nif prob1 > prob2 then return false end\n\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = targetInsId\ndoBuffData.BuffId = 11000082\ndoBuffData.BuffLevel = passiveins:getdata().PassiveLevel\ndoBuffData.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData)\n\nreturn false"
			}
		}
	},
	[11102531] = {
		["id"] = 11102531,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102532] = {
		["id"] = 11102532,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102533] = {
		["id"] = 11102533,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal skillId = 1110253\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\n\nlocal times = 0.5\nlocal caster = GetEntityByInsId(casterInsId)\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102532)\nif isLearned then times = 0.7 end\n\nlocal value = caster:GetAttr(2)\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local target = GetEntityByInsId(hitTargetInsId)\n    local damage = 0\n    local buff = BuffManagerInstance:GetEntityBuff(hitTargetInsId,11000082)\n    if buff then\n        BuffManagerInstance:RemoveBuff(hitTargetInsId,11000082)    \n        damage = math.max(buff:GetStackCount(),1) * times * value + 1.5 * value\n    elseif PassiveSkillManagerInstance:IsLearnedPassiveSkill(casterInsId , 11102531) then\n        damage = 1.5 * value\n    end\nprint(\"====2\" ,damage )\n    if damage > 0 then\n        FightApplyDamage(caster, target, skillId, 1, 1, {{12,skillId,damage}})\n    end\nend\n\nreturn false"
			}
		}
	},
	[11102541] = {
		["id"] = 11102541,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110254\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11102542] = {
		["id"] = 11102542,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110254\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[5].Active = 1\n\nreturn false"
			}
		}
	},
	[11102601] = {
		["id"] = 11102601,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11102601 then return false end\nskillins:gettable().TimeLine[1].Params[3] = 20\nreturn false"
			}
		}
	},
	[11102602] = {
		["id"] = 11102602,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11102602},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11102601 then return false end\nreturn true"
			}
		}
	},
	[11102603] = {
		["id"] = 11102603,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11102601},
				["AddCondition"] = "if not iskill then return false end\nlocal lv_skillcd = GetConfDataLevel({2,1.9,1.7,1.5,1.2,1},passiveins:getdata().PassiveLevel)\nif passiveins.SkillCdTime and Time() - passiveins.SkillCdTime < lv_skillcd then return false end\ncasterins:SetSkillScriptCustomData(1110260,\"passive\", {end_time = Time() + lv_skillcd})\npassiveins.SkillCdTime = Time()\nreturn true"
			}
		}
	},
	[11102604] = {
		["id"] = 11102604,
		["BindBuff"] = 11102603,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[11102611] = {
		["id"] = 11102611,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 11102611\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Active = 1\n\nreturn false"
			}
		}
	},
	[11102612] = {
		["id"] = 11102612,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102621] = {
		["id"] = 11102621,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102622] = {
		["id"] = 11102622,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110262 then return false end\nlocal summons = casterins:GetSummons()\nlocal summonsCount = table.length(summons)\nif summonsCount <= 0 then return false end\nfor _, summon in pairs(summons) do\n    SkillAPI.AddPassiveSkill(summon.Unit:GetInsid(),11102624,1)\nend\nreturn false"
			}
		}
	},
	[11102623] = {
		["id"] = 11102623,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110262 then return false end\nlocal level = skillins:getdata().SkillLevel\nlocal level_ranges = {300,400,500,600,750,750}\nlocal range = level_ranges[level] or level_ranges[8]\n\nlocal insPosition = GetEntityPosition(insid)\nDrawDebugFan(insPosition, range, 360, Vector(1,0,0), 0.2 ,Vector(0, 255, 0))\n\nlocal healthCount = 0\nlocal summons = casterins:GetSummons()\nif table.length(summons) <= 0 then return false end\nfor _, summon in pairs(summons) do\n    if casterins:MathDistance(summon.Unit) <= range then\n        healthCount = healthCount + 1\n        casterins:SetSummonsLifeByUnit(summon.Unit,summon.Life - 2)\n        BuffManagerInstance:AddBuffHelper(summon.Unit:GetInsid(),1110262,passiveins:getdata().PassiveLevel,function() end,1)\n    end\nend\n\nif PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid,11102621) and healthCount > 0 then\n    local entity = GetEntityByInsId(insid)\n    Fight:ApplyHeal(entity, entity, 1110262, 1, 1, {{3,0,0.05*healthCount}})\nend\n\nreturn false"
			}
		}
	},
	[11102624] = {
		["id"] = 11102624,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif buffins:getdata().BuffId ~= 11102621 then return false end\nbuffins:gettable().Duration = {30} \nreturn true"
			}
		}
	},
	[11102631] = {
		["id"] = 11102631,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110263 then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11102632] = {
		["id"] = 11102632,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110263 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_300_360\"\n\nreturn false"
			}
		}
	},
	[11102641] = {
		["id"] = 11102641,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110264\nif skillins:getdata().SkillId ~= skillId then return false end\nif targetins:GetCamp() == casterins:GetCamp() then return false end\nskillins:gettable().TimeLine[2].Active = 1\n\nreturn false"
			}
		}
	},
	[11102642] = {
		["id"] = 11102642,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11102643] = {
		["id"] = 11102643,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = 1110264\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nlocal casterPosition = GetEntityPosition(casterInsId)\nlocal targetPosition = GetEntityPosition(targetInsId)\nlocal duration = 0\n\nlocal target = Units:GetUnitByInsid(targetInsId)\nif target and casterins:GetCamp() ~= target:GetCamp() then\n    local doBuffData3 = DoBuffData.New()\n    doBuffData3.EntityId = targetInsId\n    doBuffData3.BuffId = 11102641\n    doBuffData3.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData3)\nend\n\nlocal doBuffData1 = DoBuffData.New()\ndoBuffData1.EntityId = casterInsId\ndoBuffData1.BuffId = 1003\ndoBuffData1.EndPosition = targetPosition\nBuffManagerInstance:AddBuff(doBuffData1 , function(buff)\n    buff:SetDuration(duration)\nend)\n\nlocal doBuffData2 = DoBuffData.New()\ndoBuffData2.EntityId = targetInsId\ndoBuffData2.BuffId = 1003\ndoBuffData2.EndPosition = casterPosition\nBuffManagerInstance:AddBuff(doBuffData2 , function(buff)\n    buff:SetDuration(duration)\nend)\n\nreturn false"
			}
		}
	},
	[11102701] = {
		["id"] = 11102701,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isaddbuff then \n    if buffins:getdata().BuffId == 11102702 then\n        buffins:gettable().DurationBuffId = {}\n    end\nend\n\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110270 then return false end\n\nskillins:gettable().TimeLine[2].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11102702] = {
		["id"] = 11102702,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdosettlement then return false end\nif skillins:getdata().SkillId ~= 1110270 then return false end\n\nsettlementins:gettable().HitDisplace[5] = 1000\n\nreturn false"
			}
		}
	},
	[11102711] = {
		["id"] = 11102711,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11102711 then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11102712] = {
		["id"] = 11102712,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110271 then return false end\n\nskillins:gettable().Duration = {12}\n\nreturn false"
			}
		}
	},
	[11102713] = {
		["id"] = 11102713,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\n    if skillins:getdata().SkillId == 1 then\n        local doSkillData = clone(skillins:getdata())\n        doSkillData.SkillId = 11102711\n        doSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n        doSkillData.StartPosition = GetEntityPosition(skillins:getdata().TargetInsId)\n        SkillManagerInstance:DoSkill(doSkillData)\n    end\nend\n\nreturn false"
			}
		}
	},
	[11102721] = {
		["id"] = 11102721,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110272 then return false end\n\nskillins:gettable().TimeLine[2].Params[5] = 3\n\nreturn false"
			}
		}
	},
	[11102722] = {
		["id"] = 11102722,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11102721 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_300_360\"\n\nreturn false"
			}
		}
	},
	[11102723] = {
		["id"] = 11102723,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 11102721 then return false end\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal casterPosition = GetEntityPosition(casterInsId)\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local targetPosition = GetEntityPosition(hitTargetInsId)\n    local damageTimes = (casterPosition - targetPosition):Length() * 0.001\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = hitTargetInsId\n    doBuffData.BuffId = 11102721\n    doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n    doBuffData.EffectTimes = doBuffData.EffectTimes * (0.4 + damageTimes)\n    doBuffData.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData)\nend        \n\nreturn false"
			}
		}
	},
	[11102731] = {
		["id"] = 11102731,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110273 then return false end\n\nskillins:gettable().TimeLine[2].Params[6] = 0.5\n\nreturn false"
			}
		}
	},
	[11102732] = {
		["id"] = 11102732,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110273 then return false end\n\nskillins:gettable().Duration = {6}\n\nreturn false"
			}
		}
	},
	[11102741] = {
		["id"] = 11102741,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110274 then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11102742] = {
		["id"] = 11102742,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110274 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_200_360\"\n\nreturn false"
			}
		}
	},
	[11103001] = {
		["id"] = 11103001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110300\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Params[3] = \"1_200_315\"\nskillins:gettable().TimeLine[2].Params[5] = 4\n\nreturn false"
			}
		}
	},
	[11103002] = {
		["id"] = 11103002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110300\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11103011] = {
		["id"] = 11103011,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11103011\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11103012] = {
		["id"] = 11103012,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110301\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11103021] = {
		["id"] = 11103021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110302\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11103022] = {
		["id"] = 11103022,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110302\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\n\nreturn false"
			}
		}
	},
	[11103031] = {
		["id"] = 11103031,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110303\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[3].Active = 1\nskillins:gettable().TimeLine[4].Active = 1\nskillins:gettable().TimeLine[5].Active = 1\n\nreturn false"
			}
		}
	},
	[11103032] = {
		["id"] = 11103032,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110303\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[6].Active = 1\n\nreturn false"
			}
		}
	},
	[11103041] = {
		["id"] = 11103041,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 11103042 then return false end\nskillins:gettable().TimeLine[4].Active = 1\nreturn false"
			}
		}
	},
	[11103042] = {
		["id"] = 11103042,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110304\nif skillins:getdata().SkillId ~= skillId then return false end\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nif not caster then return false end\ncaster:MinusSkillCDBySkillid(skillId,5,0)\nreturn false"
			}
		}
	},
	[11103101] = {
		["id"] = 11103101,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110310\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal newSkillData = clone(skillins:getdata())\nnewSkillData.SkillId = 11103101\nPassiveSkillManagerInstance:DoSkill(newSkillData)\n\nreturn false"
			}
		}
	},
	[11103102] = {
		["id"] = 11103102,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110310\nif not isskillentercd then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nif not caster then return false end\ncaster:MinusSkillCDBySkillid(skillId,5,0)\n\nreturn false"
			}
		}
	},
	[11103103] = {
		["id"] = 11103103,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110310\nif isdoskill then\n    if skillins:getdata().SkillId ~= skillId then return false end\n\n    local index = math.random(1,3)\n    skillins:gettable().TimeLine[2].Active = index == 1 and 1 or 0\n    skillins:gettable().TimeLine[3].Active = index == 1 and 1 or 0\n    skillins:gettable().TimeLine[4].Active = index == 2 and 1 or 0\n    skillins:gettable().TimeLine[5].Active = index == 2 and 1 or 0\n    skillins:gettable().TimeLine[6].Active = index == 3 and 1 or 0\n    skillins:gettable().TimeLine[7].Active = index == 3 and 1 or 0\n\nend\n\n\nif ishit then\n    if skillins:getdata().SkillId ~= skillId then return false end\n    if skillins:gettable().TimeLine[6].Active == 0 then return false end\n    for _,target_insId in pairs(settlementinslist) do\n        local unit = GetEntityByInsId(target_insId)\n        local doBuffData = DoBuffData.New()\n        doBuffData.EntityId = target_insId\n        doBuffData.BuffId = 11103103\n        doBuffData.BuffLevel = skillins:getdata().SkillLevel\n        doBuffData.Skill = skillins\n        local attr = unit:GetMainAttr()\n        BuffManagerInstance:AddBuff(doBuffData,function(buff)\n            buff:gettable().Effect[1024].Params ={{attr,2,0.4,0.45,0.55,0.65,0.75,0.75}}\n        end)\n    end\nend\n\nreturn false"
			}
		}
	},
	[11103111] = {
		["id"] = 11103111,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110311 then return false end\n\nskillins:gettable().TimeLine[8].Active = 1\n\nreturn false"
			}
		}
	},
	[11103112] = {
		["id"] = 11103112,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110311\nif not isskillentercd then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nif not caster then return false end\ncaster:MinusSkillCDBySkillid(skillId,5,0)\n\nreturn false"
			}
		}
	},
	[11103113] = {
		["id"] = 11103113,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110311\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n-- local index = 3\nlocal index = math.random(1,3)\nskillins:gettable().TimeLine[2].Active = index == 1 and 1 or 0\nskillins:gettable().TimeLine[3].Active = index == 1 and 1 or 0\nskillins:gettable().TimeLine[4].Active = index == 2 and 1 or 0\nskillins:gettable().TimeLine[5].Active = index == 2 and 1 or 0\nskillins:gettable().TimeLine[6].Active = index == 3 and 1 or 0\nskillins:gettable().TimeLine[7].Active = index == 3 and 1 or 0\n\nreturn false"
			}
		}
	},
	[11103121] = {
		["id"] = 11103121,
		["AddTriggerProb"] = {500},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110312\nif skillins:getdata().SkillId ~= skillId then return false end\ncasterins:MinusSkillCDBySkillid(skillId,0,1)\nreturn false"
			}
		}
	},
	[11103122] = {
		["id"] = 11103122,
		["AddTriggerProb"] = {500},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal skillId = 1110312\nif skillins:getdata().SkillId ~= skillId then return false end\ncasterins:MinusSkillCDBySkillid(skillId,0,1)\nreturn false"
			}
		}
	},
	[11103131] = {
		["id"] = 11103131,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11103132] = {
		["id"] = 11103132,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11103133] = {
		["id"] = 11103133,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1110313 then return false end\nlocal camp = casterins:GetCamp()\nlocal isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid,11103131)\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local target = GetEntityByInsId(hitTargetInsId)\n    local buffs = BuffManagerInstance:GetEntityBuffs(hitTargetInsId)\n\n    local buffCount = table.length(buffs) + 1\n\n    if buffCount > 0 then\n        if target:GetCamp() ~= camp then\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = hitTargetInsId\n            doBuffData.BuffId = 11103131\n            doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n            doBuffData.Skill = skillins\n            doBuffData.InitStackCount = buffCount\n\n            BuffManagerInstance:AddBuff(doBuffData)\n        elseif isLearned then\n            local newDoSkillData = DoSkillData.New()\n            newDoSkillData.SkillId = 11103131\n            newDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n            newDoSkillData.CasterInsId = insid\n            newDoSkillData.HitTargetId = hitTargetInsId\n            newDoSkillData.Position = GetEntityPosition(hitTargetInsId)\n            newDoSkillData.EffectTimes = buffCount\n\n            SkillManagerInstance:DoSkill(newDoSkillData)\n        end\n    end\n\nend\nreturn false"
			}
		}
	},
	[11103141] = {
		["id"] = 11103141,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1110314 then return false end\n\nlocal casterInsId = skillins:getdata().CasterInsId\nlocal targetInsId = skillins:getdata().TargetInsId\nif not casterInsId or not targetInsId then return false end\n\nlocal casterCamp = GetEntityByInsId(casterInsId):GetCamp()\nlocal targetCamp = GetEntityByInsId(targetInsId):GetCamp()\nif casterCamp == targetCamp then return false end\n\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11103142] = {
		["id"] = 11103142,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 1110314\nif not isskillentercd then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nif not caster then return false end\ncaster:MinusSkillCDBySkillid(skillId,4,0)\n\nreturn false"
			}
		}
	},
	[11103143] = {
		["id"] = 11103143,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif buffins:getdata().BuffId ~= 11103141 then return false end\nlocal target = buffins:getdata().Skill:getdata().TargetInsId\nlocal buffs = BuffManagerInstance:GetEntityBuffs(target)\n\nlocal num  = table.length(buffs)\n\nBuffManagerInstance:RemoveBuffAll(target)\nif num > 0 then\n    buffins:gettable().Effect[4096].StackCountParams = {{1 * num}}\nelse\n    buffins:gettable().Effect[4096].Params = {{1,0,0}}\nend\n\nreturn false"
			}
		}
	},
	[11103201] = {
		["id"] = 11103201,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11103201\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_300_360\"\n\nreturn false"
			}
		}
	},
	[11103202] = {
		["id"] = 11103202,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11103201\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[1].Params[5] = \"5_1500\"\n\nreturn false"
			}
		}
	},
	[11103203] = {
		["id"] = 11103203,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11103201},
				["AddCondition"] = "if ispassiveupdate then\n    local intervals = {8,7,6,5,4,3}\n    local intervalTime = intervals[passiveins:getdata().PassiveLevel]\n    local maxCount = 10\n    if passiveins.GP_PreCasterTime == nil then passiveins.GP_PreCasterTime = Time() end\n    if Time() - passiveins.GP_PreCasterTime >= intervalTime then\n        local skillCount = SkillManagerInstance:GetSkillCount(insid , 11103201)\n        if skillCount < maxCount then\n            casterins:SetSkillScriptCustomData(1110320,\"passive\", {end_time = Time() + intervalTime})\n            passiveins.GP_PreCasterTime = Time()\n            return true\n        end\n    end\nend\n\nreturn false"
			}
		}
	},
	[11103211] = {
		["id"] = 11103211,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11103212] = {
		["id"] = 11103212,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 11103212 and skillId ~= 11103213 then return false end\n\nskillins:gettable().TimeLine[1].Params[3] = \"1_150_360\"\n\nreturn false"
			}
		}
	},
	[11103213] = {
		["id"] = 11103213,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11103211},
				["AddCondition"] = "if ispassiveupdate then\n    if passiveins.Glv_max_counts == nil then \n        passiveins.Glv_max_counts = {1,2,4,6,8,8}\n    end\n    if passiveins.Glv_max_interval == nil then \n        passiveins.Glv_max_interval = {6,5,4.5,4,3,1.5}\n        passiveins.Glv_max_interval2 = {3,2.5,2.25,2,1.5,0.75}\n    end\n    local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid,11103211)\n    local lv_max_counts = passiveins.Glv_max_counts\n    local lv_max_interval = isLearned and passiveins.Glv_max_interval2 or passiveins.Glv_max_interval\n    local intervalTime = lv_max_interval[passiveins:getdata().PassiveLevel]\n    local maxCount = lv_max_counts[passiveins:getdata().PassiveLevel]\n    if not passiveins.GP_PreCasterTime or Time() - passiveins.GP_PreCasterTime >= intervalTime then\n        local skillCount = SkillManagerInstance:GetSkillCount(insid , 11103212)\n        if skillCount < maxCount then\n            casterins:SetSkillScriptCustomData(1110321,\"passive\", {end_time = Time() + intervalTime})\n            passiveins.GP_PreCasterTime = Time()\n            return true\n        end\n    end\nend\nreturn false"
			}
		}
	},
	[11103214] = {
		["id"] = 11103214,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 11103212 then return false end\nlocal doSkillData = skillins:getdata()\nlocal newDoSkillData = clone(doSkillData)\nnewDoSkillData.SkillId = 11103213\nSkillManagerInstance:DoSkill(newDoSkillData)\nreturn true"
			}
		}
	},
	[11103221] = {
		["id"] = 11103221,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11103222] = {
		["id"] = 11103222,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[11103223] = {
		["id"] = 11103223,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {11103221},
				["AddCondition"] = "if isdamage then\n    local buff_id = 11103221\n    if skillins:getdata().SkillId ~= 1 then return false end\n    local buff = BuffManagerInstance:GetEntityBuff(insid,buff_id)\n    casterins:SetSkillScriptCustomData(1110322,\"passive\", {interval = passiveins.AddBuffIntervalTime})\n    passiveins.GP_PreCasterTime = Time()\n    if buff then\n        BuffManagerInstance:RemoveBuff(skillins:getdata().CasterInsId,buff_id)\n        return false\n    end\nend\n\nif isaddbuff then\n    if buffins:getdata().BuffId ~= 11103221 then return false end\n    if not learnedpassive(insid,11103222) then return false end\n    buffins:gettable().Effect[5].StackCountParams = {{1.10,1.20,1.30,1.40,1.50,1.60,1.70,1.80,1.80,2.0,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3.00,3.1,3.2,3.3,3.4,3.5,3.6,3.7,3.80,3.9,4.0}}\n    return false\nend\n\nif ispassiveupdate then\n    local isLearned = PassiveSkillManagerInstance:IsLearnedPassiveSkill(insid , 11103221)\n    passiveins.AddBuffIntervalTime = isLearned and 2.5 or 5\n    if passiveins.GP_PreCasterTime == nil then passiveins.GP_PreCasterTime = Time() end\n    if Time() - passiveins.GP_PreCasterTime >= passiveins.AddBuffIntervalTime then\n        passiveins.GP_PreCasterTime = Time()\n        casterins:SetSkillScriptCustomData(1110322,\"passive\", {end_time = Time() + passiveins.AddBuffIntervalTime})\n        return true\n    end\nend\n\nreturn false"
			}
		}
	},
	[11103231] = {
		["id"] = 11103231,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11103231\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal islearned = SkillAPI.IsLearnedPassiveSkill(insid,11103232)\nif islearned then\nskillins:gettable().TimeLine[1].Params[3] = \"1_600_120\"\nelse\nskillins:gettable().TimeLine[1].Params[3] = \"1_600_90\"\nend\n\nreturn false"
			}
		}
	},
	[11103232] = {
		["id"] = 11103232,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11103231\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nlocal islearned = SkillAPI.IsLearnedPassiveSkill(insid,11103231)\nif islearned then\nskillins:gettable().TimeLine[1].Params[3] = \"1_600_120\"\nelse\nskillins:gettable().TimeLine[1].Params[3] = \"1_500_120\"\nend\nskillins:gettable().TimeLine[3].Active = 0\nskillins:gettable().TimeLine[4].Active = 1\n\nreturn false"
			}
		}
	},
	[11103233] = {
		["id"] = 11103233,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11103231},
				["AddCondition"] = "if ispassiveupdate then\n    local intervals = {8,6.5,5,3.5,2,1.5}\n    local intervalTime = intervals[passiveins:getdata().PassiveLevel]\n    if passiveins.GP_PreCasterTime == nil then passiveins.GP_PreCasterTime = Time() end\n    if Time() - passiveins.GP_PreCasterTime >= intervalTime then\n        passiveins.GP_PreCasterTime = Time()\n        casterins:SetSkillScriptCustomData(1110323,\"passive\", {end_time = Time() + intervalTime})\n        return true\n    end\nend\n\nreturn false"
			}
		}
	},
	[11103241] = {
		["id"] = 11103241,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11103241\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n\nskillins:gettable().TimeLine[2].Params[3] = 60\n\nreturn false"
			}
		}
	},
	[11103242] = {
		["id"] = 11103242,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local skillId = 11103241\nif not isdoskill then return false end\nif skillins:getdata().SkillId ~= skillId then return false end\n    local attr = casterins:GetAttr(65) * 0.0001 * 0.5\n    skillins:gettable().TimeLine[2].Params[5] = attr\nreturn false"
			}
		}
	},
	[11103243] = {
		["id"] = 11103243,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11103241},
				["AddCondition"] = "if ispassiveupdate then\n    local intervalTime = 5\n    local lv_count = {3,4,6,8,10,11}\n    if table.length(casterins:GetSummonsBySkill(11103241)) >= lv_count[passiveins:getdata().PassiveLevel] then return false end\n    if passiveins.GP_PreCasterTime == nil then passiveins.GP_PreCasterTime = Time() end\n    if Time() - passiveins.GP_PreCasterTime >= intervalTime then\n        passiveins.GP_PreCasterTime = Time()\n        return true\n    end\nend\nreturn false"
			}
		}
	},
	[1200010] = {
		["id"] = 1200010,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {12000101},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\n\nreturn #settlementinslist == 1"
			}
		}
	},
	[1200011] = {
		["id"] = 1200011,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {12000111},
				["AddCondition"] = "if ishit then\nif skillins:getdata().SkillId == 1 then\n    local targetInsId = skillins:getdata().TargetInsId\n    local preHitTargetInsId = passiveins.GP_PreHitTargetInsId\n    if passiveins.GP_ContinueAttack and preHitTargetInsId and preHitTargetInsId == targetInsId then\n         return true\n    end\n    passiveins.GP_PreHitTargetInsId = targetInsId\nend\nend\n\nif ispassiveupdate then\n    local position = GetEntityPosition(insid)\n    if passiveins.GP_PrePosition == nil then passiveins.GP_PrePosition = position end\n    if passiveins.GP_PreTime == nil then passiveins.GP_PreTime = Time() end\n    if (Time() - passiveins.GP_PreTime) < 1 then \n        passiveins.GP_ContinueAttack = false\n        return false \n    end\n    if (passiveins.GP_PrePosition - position):Length() > 0.001 then\n        passiveins.GP_ContinueAttack = false\n        passiveins.GP_PreTime = Time()\n        passiveins.GP_PrePosition = position\n        return false \n    end\n    passiveins.GP_ContinueAttack = true\nend\n\nreturn false"
			}
		}
	},
	[1200012] = {
		["id"] = 1200012,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\nif skillins:getdata().SkillId == 1 then\n    if passiveins.GP_HitCount == nil then passiveins.GP_HitCount = 0 end\n    if passiveins.GP_PreHitTargetInsId == nil then passiveins.GP_PreHitTargetInsId = 0 end\n    local targetInsId = skillins:getdata().TargetInsId\n    local preHitTargetInsId = passiveins.GP_PreHitTargetInsId\n    if preHitTargetInsId ~= targetInsId then\n        passiveins.GP_HitCount = 1\n        passiveins.GP_PreHitTargetInsId = targetInsId\n    else\n        passiveins.GP_HitCount = passiveins.GP_HitCount + 1\n        if passiveins.GP_HitCount >= 5 then \n           passiveins.GP_HitCount = 0\n           local level = passiveins:getdata().PassiveLevel\n           SkillManagerInstance:DoSkillHelper(12000121,level,skillins:getdata().CasterInsId , targetInsId)\n        end\n    end\nend\nend\n\nreturn false"
			}
		}
	},
	[1200021] = {
		["id"] = 1200021,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {12000211},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId == 1 then return false end\nif skillins:getdata().ParentSkill ~= nil then return false end -- 不判断子技能\nreturn true"
			}
		}
	},
	[1200020] = {
		["id"] = 1200020,
		["BindBuff"] = 12000201,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isaddbuff then\n    if buffins:getdata().BuffId == 12000201 then\n        local passiveLevel = passiveins:getdata().PassiveLevel\n        local entity = GetEntityByInsId(insid)\n        BuffManagerInstance:AddBuffHelper(insid,entity:IsRangedAttacker() and 12000202 or 12000203,passiveLevel)\n    end\nend\n\nif isfinishedbuff then\n    if buffins:getdata().BuffId == 12000201 then\n        BuffManagerInstance:RemoveBuff(insid , 12000202)\n        BuffManagerInstance:RemoveBuff(insid , 12000203)\n    end\nend\n\nreturn false"
			}
		}
	},
	[1200022] = {
		["id"] = 1200022,
		["AddTriggerProb"] = {1500},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\ncaster:MinusAnySkillCD(1,0,1)\nreturn false"
			}
		}
	},
	[1200030] = {
		["id"] = 1200030,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local time = Time()\nif ishit then\n    if skillins:getdata().SkillId == 1 then \n        passiveins.GP_ActictiveTime = time\n        passiveins.GP_ActiveIntervalTime = time\n    end\nend\n\nif ispassiveupdate then\n    if passiveins.GP_ActictiveTime == nil then passiveins.GP_ActictiveTime = time end\n    if Time() - passiveins.GP_ActictiveTime >= 5 then\n        if passiveins.GP_ActiveIntervalTime == nil then passiveins.GP_ActiveIntervalTime = time end\n        if time - passiveins.GP_ActiveIntervalTime >= 1 then\n            passiveins.GP_ActiveIntervalTime = time\n            BuffManagerInstance:AddBuffHelper(insid,12000301,passiveins:getdata().PassiveLevel)\n        end\n    end\nend\n\nreturn false"
			}
		}
	},
	[1200031] = {
		["id"] = 1200031,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\n\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local target = GetEntityByInsId(hitTargetInsId)\n    BuffManagerInstance:AddBuffHelper(hitTargetInsId,12000311,passiveins:getdata().PassiveLevel)\nend \n\nreturn false"
			}
		}
	},
	[1200032] = {
		["id"] = 1200032,
		["BindBuff"] = 12000322,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local buffId = 12000321\nif ishitrcv then\n    if skillins:getdata().SkillId ~= 1 and BuffManagerInstance:GetEntityBuff(insid , buffId) ~= nil then\n        passiveins.GP_ActictiveTime = Time()\n        BuffManagerInstance:RemoveBuff(insid,buffId)\n    end\nend\n\nif isfinishedbuff then\n    if buffins:getdata().BuffId == 12000322 then\n        BuffManagerInstance:RemoveBuff(insid , 12000321)\n    end\nend\n\nif ispassiveupdate then\n    if passiveins.GP_ActictiveTime == nil then passiveins.GP_ActictiveTime = Time() end\n    if BuffManagerInstance:GetEntityBuff(insid , buffId) == nil then\n        if Time() - passiveins.GP_ActictiveTime >= 20 then\n            passiveins.GP_ActictiveTime = Time()\n            BuffManagerInstance:AddBuffHelper(insid,buffId,passiveins:getdata().PassiveLevel)\n        end\n    end\nend\n\nreturn false"
			}
		}
	},
	[1200040] = {
		["id"] = 1200040,
		["AddTriggerProb"] = {1500},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdamage then\nif insid == skillins:getdata().TargetInsId then\n    BuffManagerInstance:AddBuffHelper(skillins:getdata().CasterInsId,12000401,passiveins:getdata().PassiveLevel)\nend\nend\n\nreturn false"
			}
		}
	},
	[1200041] = {
		["id"] = 1200041,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdamage then\nif insid == skillins:getdata().TargetInsId then\n    BuffManagerInstance:AddBuffHelper(insid,12000411,passiveins:getdata().PassiveLevel)\nend\nend\n\nreturn false"
			}
		}
	},
	[1200042] = {
		["id"] = 1200042,
		["AddTriggerProb"] = {1500},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdamage then\nif insid == skillins:getdata().TargetInsId then\n    BuffManagerInstance:AddBuffHelper(insid,12000421,passiveins:getdata().PassiveLevel)\nend\nend\n\nreturn false"
			}
		}
	},
	[1200050] = {
		["id"] = 1200050,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\n\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    BuffManagerInstance:AddBuffHelper(hitTargetInsId,12000501,passiveins:getdata().PassiveLevel)\nend \n\nreturn false"
			}
		}
	},
	[1200051] = {
		["id"] = 1200051,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\n\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    BuffManagerInstance:AddBuffHelper(hitTargetInsId,12000511,passiveins:getdata().PassiveLevel)\nend \n\nreturn false"
			}
		}
	},
	[1200052] = {
		["id"] = 1200052,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\n\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    BuffManagerInstance:AddBuffHelper(hitTargetInsId,12000521,passiveins:getdata().PassiveLevel)\nend \n\nreturn false"
			}
		}
	},
	[1200060] = {
		["id"] = 1200060,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\n\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    BuffManagerInstance:AddBuffHelper(hitTargetInsId,12000601,passiveins:getdata().PassiveLevel)\nend \n\nreturn false"
			}
		}
	},
	[1200061] = {
		["id"] = 1200061,
		["BindBuff"] = 12000612,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\n\nlocal ins = GetEntityByInsId(insid)\nlocal insPosition = GetEntityPosition(insid)\nlocal minDistance = 400\nDrawDebugFan(insPosition, minDistance, 360, Vector(1,0,0), 0.2 ,Vector(0, 255, 0))\nlocal units = Units:GetUnitsByArea(insPosition,minDistance,nil,nil)\nlocal unitInsId = 0\nfor _,entity in pairs(units) do\n    if entity:GetCamp() ~= 0 and ins:GetCamp() ~= entity:GetCamp() then  \n        if unitInsId == 0 then\n            unitInsId = entity:GetInsid()\n        else\n            return false\n        end\n    end\nend\n\nif unitInsId ~= 0 then\n    BuffManagerInstance:AddBuffHelper(unitInsId,12000611,passiveins:getdata().PassiveLevel)\nend\n\nreturn false"
			}
		}
	},
	[1200062] = {
		["id"] = 1200062,
		["BindBuff"] = 12000622,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local buffId = 12000621\nif ishitrcv then\n    if skillins:getdata().SkillId == 1 and BuffManagerInstance:GetEntityBuff(insid , buffId) ~= nil then\n        BuffManagerInstance:RemoveBuff(insid,buffId)\n        passiveins.GP_ActictiveTime = Time()\n    end\nend\n\nif ispassiveupdate then\n    if passiveins.GP_ActictiveTime == nil then passiveins.GP_ActictiveTime = Time() end\n    if BuffManagerInstance:GetEntityBuff(insid , buffId) == nil then\n        if Time() - passiveins.GP_ActictiveTime >= 15 then\n            BuffManagerInstance:AddBuffHelper(insid,buffId,passiveins:getdata().PassiveLevel)\n            passiveins.GP_ActictiveTime = Time()\n        end\n    end\nend\n\nif isfinishedbuff then\n    if buffins:getdata().BuffId == 12000622 then\n        BuffManagerInstance:RemoveBuff(insid , 12000621)\n    end\nend\n\nreturn false"
			}
		}
	},
	[1200070] = {
		["id"] = 1200070,
		["BindBuff"] = 12000702,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\n    if skillins:getdata().SkillId == 1 then\n        BuffManagerInstance:RemoveBuff(insid,12000701)\n    end\nend\n\nif ishit then\n    if skillins:getdata().SkillId ~= 1 then\n        if #settlementinslist >= 2 then\n            BuffManagerInstance:AddBuffHelper(insid,12000701,passiveins:getdata().PassiveLevel)\n        end\n    end\nend\n\nif isfinishedbuff then\n    if buffins:getdata().BuffId == 12000702 then\n        BuffManagerInstance:RemoveBuff(insid , 12000701)\n    end\nend\n\nreturn false"
			}
		}
	},
	[1200071] = {
		["id"] = 1200071,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "local buffId = 12000711\nif isskillentercd then\n    local skillId = skillins:getdata().SkillId\n    if skillId ~= 1 and SkillManagerInstance:IsMainSkill(skillins:getdata()) then\n        if BuffManagerInstance:GetEntityBuff(insid,buffId) then\n            BuffManagerInstance:RemoveBuff(insid,buffId)\n            local caster = GetEntityByInsId(insid)\n            caster:MinusSkillCDBySkillid(skillId,0,1)\n        end\n    end\nend\n\nif ishit then\n    if skillins:getdata().SkillId == 1 then\n        BuffManagerInstance:AddBuffHelper(insid,buffId,passiveins:getdata().PassiveLevel)\n    end\nend\n\nreturn false"
			}
		}
	},
	[1200072] = {
		["id"] = 1200072,
		["BindBuff"] = 12000722,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    local skillId = skillins:getdata().SkillId\n    if skillId ~= 1 and SkillManagerInstance:IsMainSkill(skillins:getdata()) then\n        local buff = BuffManagerInstance:GetEntityBuff(insid,12000721)\n        if buff then\n            skillins:getdata().EffectTimes = skillins:getdata().EffectTimes * buff:GetStackCount()\n            BuffManagerInstance:RemoveBuff(insid,12000721)\n        end\n    end\nend\n\nif ishit then\n    if skillins:getdata().SkillId == 1 then\n        BuffManagerInstance:AddBuffHelper(insid,12000721,passiveins:getdata().PassiveLevel,nil,#settlementinslist)\n    end\nend\n\nif isfinishedbuff then\n    if buffins:getdata().BuffId == 12000722 then\n        BuffManagerInstance:RemoveBuff(insid , 12000721)\n    end\nend\n\nreturn false"
			}
		}
	},
	[1200080] = {
		["id"] = 1200080,
		["BindBuff"] = 12000802,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    if buffins:getdata().BuffId == 12000802 then\n        BuffManagerInstance:RemoveBuff(insid , 12000801)\n    end\nend\n\nif not ispassiveupdate then return false end\n\nlocal curPosition = GetEntityPosition(insid)\nif passiveins.GP_ActiveTime == nil then passiveins.GP_ActiveTime = Time() end\nif passiveins.GP_PrePosition == nil then passiveins.GP_PrePosition = curPosition end\nif (curPosition - passiveins.GP_PrePosition):Length() <= 0.001 then\n    if (Time() - passiveins.GP_ActiveTime) >= 1 then\n        passiveins.GP_ActiveTime = Time()\n        BuffManagerInstance:AddBuffHelper(insid,12000801,passiveins:getdata().PassiveLevel)\n    end\nelse\n    passiveins.GP_PrePosition = curPosition\n    passiveins.GP_ActiveTime = Time()\n    BuffManagerInstance:RemoveBuff(insid,12000801)\nend\n\nreturn false"
			}
		}
	},
	[1200081] = {
		["id"] = 1200081,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {12000811},
				["AddCondition"] = "if not ispassiveupdate then return false end\n\nlocal curPosition = GetEntityPosition(insid)\nlocal time = Time()\nif passiveins.GP_ActiveTime == nil then passiveins.GP_ActiveTime = time end\nif passiveins.GP_PrePosition == nil then passiveins.GP_PrePosition = curPosition end\nlocal moveSpeedAtrr = GetEntityByInsId(insid):GetAttr(51)\nif moveSpeedAtrr < 510 then\n    if (time - passiveins.GP_ActiveTime) >= 3 then\n        if (time - passiveins.GP_ActiveSkillTime) >= 1 then\n            passiveins.GP_ActiveSkillTime = time\n            return true\n        end\n    else\n        passiveins.GP_ActiveSkillTime = time\n    end\nelse\n    passiveins.GP_PrePosition = curPosition\n    passiveins.GP_ActiveTime = time\nend\n\nreturn false"
			}
		}
	},
	[1200082] = {
		["id"] = 1200082,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\n\nlocal curPosition = GetEntityPosition(insid)\nif passiveins.GP_ActiveTime == nil then passiveins.GP_ActiveTime = Time() end\nif passiveins.GP_PrePosition == nil then passiveins.GP_PrePosition = curPosition end\nif (curPosition - passiveins.GP_PrePosition):Length() <= 0.001 then\n    if (Time() - passiveins.GP_ActiveTime) >= 1 then\n        passiveins.GP_ActiveTime = Time()\n        BuffManagerInstance:AddBuffHelper(insid,12000821,passiveins:getdata().PassiveLevel)\n    end\nelse\n    passiveins.GP_PrePosition = curPosition\n    passiveins.GP_ActiveTime = Time()\nend\n\nreturn false"
			}
		}
	},
	[1200090] = {
		["id"] = 1200090,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not SkillManagerInstance:IsMainSkill(skillins:getdata()) then return false end\n\nBuffManagerInstance:AddBuffHelper(insid,12000901,passiveins:getdata().PassiveLevel)\n\nreturn false"
			}
		}
	},
	[1200091] = {
		["id"] = 1200091,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdamage then return false end\nif skillins:getdata().TargetInsId ~= insid then return false end\n\nif passiveins.GP_PreHp == nil then passiveins.GP_PreHp = 1 end\nlocal caster = GetEntityByInsId(insid)\nlocal r = caster:GetHP() / caster:GetAttr_MaxHP()\nif passiveins.GP_PreHp >= 0.5 and r < 0.5 then\n    BuffManagerInstance:AddBuffHelper(skillins:getdata().CasterInsId,12000911,passiveins:getdata().PassiveLevel)-- TODO缺少来源\nend\npassiveins.GP_PreHp = r\n\nreturn false"
			}
		}
	},
	[1200092] = {
		["id"] = 1200092,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\n\nlocal hitList = {}\nif passiveins.GP_HitedList == nil then passiveins.GP_HitedList = {} end\nfor _ , entityId in ipairs(settlementinslist) do\n    if table.ContainValue(passiveins.GP_HitedList, entityId) == 0 then\n        table.insert(passiveins.GP_HitedList , entityId)\n        table.insert(hitList,entityId)\n    end\nend\n\nlocal hitCount = #hitList\nif hitCount > 0 then\nBuffManagerInstance:AddBuffHelper(insid,12000921,passiveins:getdata().PassiveLevel,function(buff)\nend,hitCount)\nend\n\nreturn false"
			}
		}
	},
	[12001001] = {
		["id"] = 12001001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishitrcv then\n    if not passiveins.IntervalTime or Time() - passiveins.IntervalTime > 30 then\n        passiveins.IntervalTime = Time()\n        BuffManagerInstance:AddBuffHelper(insid,12001001,passiveins:getdata().PassiveLevel)\n    end\nend\nreturn false"
			}
		}
	},
	[12001011] = {
		["id"] = 12001011,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\nlocal pro1 = 1500\nlocal pro2 = math.random(0,10000)\nif pro1 < pro2 then return false end\nBuffManagerInstance:AddBuffHelper(insid,12001011,passiveins:getdata().PassiveLevel)\nreturn false"
			}
		}
	},
	[12001021] = {
		["id"] = 12001021,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishpchange then return false end\nif not casterins then return false end\nlocal hp = math.floor((casterins:GetAttr_MaxHP() - casterins:GetHP()) / casterins:GetAttr_MaxHP() / 0.05)\nif (hp == 0 and learnedbuff(insid,12001021)) then\n    BuffManagerInstance:RemoveBuff(insid,12001021)\nend\nif (hp == 0) or (passiveins.CurrentHp  and passiveins.CurrentHp == hp) then return false end\npassiveins.CurrentHp = hp\nBuffManagerInstance:RemoveBuff(insid,12001021)\nBuffManagerInstance:AddBuffHelper(insid,12001021,passiveins:getdata().PassiveLevel,function() end,hp)\nreturn false"
			}
		}
	},
	[12001101] = {
		["id"] = 12001101,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {12001101},
				["AddCondition"] = "if not isdoskill or not skillins:ismain() then return false end\nlocal fos = casterins:GetUnitsByArea(300,casterins:GetFoeCamp())\nif table.GetAnyOne(fos) then return false end\nreturn true"
			}
		}
	},
	[12001111] = {
		["id"] = 12001111,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {12001111},
				["AddCondition"] = "if not isskillentercd then return false end\nlocal pro1 = 4000\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\ncasterins:MinusSkillCDBySkillid(skillins:getdata().SkillId,0,1)\nreturn true"
			}
		}
	},
	[12001121] = {
		["id"] = 12001121,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 12001121\ndoBuffData.BuffLevel = skillins:getdata().SkillLevel\ndoBuffData.Skill = skillins\ndoBuffData.AddStackCount = settlementcount\nBuffManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[12001201] = {
		["id"] = 12001201,
		["BindBuff"] = 12001201,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff and buffins:getdata().BuffId == 12001201 then\n    BuffManagerInstance:RemoveBuff(insid,12001202)\n    return false\nend\n\nif ispassiveupdate then\n    local hero = casterins:ConvertHero()\n    if not hero then return false end\n    local hero_skill_count = 0\n    for i = 1, hero:GetSkillSpaceMax('main') do\n        local msg = hero:GetSkillShortcutMessage('main', i)\n        if msg then\n            local hero_msg = hero:GetSkillMessage(msg.skill_ids[msg.pointer][1])\n            if hero_msg then\n                hero_skill_count = hero_skill_count + ((hero_msg.cd or (hero_msg.script_custom and hero_msg.script_custom[\"passive\"] and hero_msg.script_custom[\"passive\"][\"end_time\"])) and 1 or 0)\n            end\n        end\n    end\n    if hero_skill_count >= 6 and (not learnedbuff(insid,12001202)) then\n        BuffManagerInstance:AddBuffHelper(insid,12001202)\n    elseif hero_skill_count < 6 and learnedbuff(insid,12001202) then\n        BuffManagerInstance:RemoveBuff(insid,12001202)\n    end\n    return false\nend\n\nreturn false"
			}
		}
	},
	[12001211] = {
		["id"] = 12001211,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nfor _, _targetInsid in pairs(settlementinslist) do\n    local targetins = Units:GetUnitByInsid(_targetInsid)\n    if not targetins then return false end\n    if casterins:MathDistance(targetins) <= 300 then\n        local doBuffData = DoBuffData.New()\n        doBuffData.EntityId = _targetInsid\n        doBuffData.BuffId = 12001211\n        doBuffData.Skill = skillins\n        BuffManagerInstance:AddBuff(doBuffData)\n    end\nend\nreturn false"
			}
		}
	},
	[12001221] = {
		["id"] = 12001221,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill or not skillins:ismain() then return false end\n\nlocal hero = casterins:ConvertHero()\nif not hero then return false end\nlocal is_main_skill = false\nfor i = 1, hero:GetSkillSpaceMax('main') do\n    local msg = hero:GetSkillShortcutMessage('main', i)\n    if msg and msg.skill_ids[1][1] == skillins:getdata().SkillId then\n        is_main_skill = true\n    end\nend\n\nif not is_main_skill then return false end\n\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 12001221\ndoBuffData.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[12001301] = {
		["id"] = 12001301,
		["BindBuff"] = 12001301,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff and buffins:getdata().BuffId == 12001301 then\n    BuffManagerInstance:RemoveBuff(insid,12001302)\n    BuffManagerInstance:RemoveBuff(insid,12001303)\n    return false\nend\n\nif ispassiveupdate then\n    local hero = casterins:ConvertHero()\n    if not hero then return false end\n    local hero_skill_count = 0\n    for i = 1, hero:GetSkillSpaceMax('main') do\n        local msg = hero:GetSkillShortcutMessage('main', i)\n        if msg then\n            local skillTableLine = clone(GetSkillLine(msg.skill_ids[1][1]))\n            if not skillTableLine.TimeLine then\n                hero_skill_count = hero_skill_count + 1\n            end\n        end\n    end\n    if hero_skill_count == 0 and learnedbuff(12001302) then\n        BuffManagerInstance:RemoveBuff(insid,12001302)\n        BuffManagerInstance:RemoveBuff(insid,12001303)\n    end\n    if hero_skill_count == 0 or (passiveins.HeroSkillCount and passiveins.HeroSkillCount == hero_skill_count) then return false end\n    passiveins.HeroSkillCount = hero_skill_count\n    BuffManagerInstance:RemoveBuff(insid,12001302)\n    BuffManagerInstance:RemoveBuff(insid,12001303)\n    if casterins:IsRangedAttacker() then\n        BuffManagerInstance:AddBuffHelper(insid,12001302,1,function () end,hero_skill_count)\n    else\n        BuffManagerInstance:AddBuffHelper(insid,12001303,1,function () end,hero_skill_count)\n    end\n    return false\nend\n\n\nreturn false"
			}
		}
	},
	[12001311] = {
		["id"] = 12001311,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff then return false end\nif buffins:gettable().DesignType ~= 1 then return false end\nif passiveins.SkillCD12001311 and Time() - passiveins.SkillCD12001311 <= 20 then return false end\nbuffins:SetDuration(0)\npassiveins.SkillCD12001311 = Time()\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 12001311\nPassiveSkillManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[12001321] = {
		["id"] = 12001321,
		["BindBuff"] = 12001321,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff and buffins:getdata().BuffId == 12001321 then\n    BuffManagerInstance:RemoveBuff(insid,12001322)\n    return false\nend\n\nif isaddbuff then\n    if buffins:getdata().BuffId ~= 12001321 then return false end\n    if not casterins:IsRangedAttacker() then return false end\n    BuffManagerInstance:AddBuffHelper(insid,12001322)\n    return false\nend\n\nreturn false"
			}
		}
	},
	[12001401] = {
		["id"] = 12001401,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill or not skillins:ismain() then return false end\nBuffManagerInstance:AddBuffHelper(insid,12001401)"
			}
		}
	},
	[12001411] = {
		["id"] = 12001411,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {12001111},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nlocal pro1 = 4000\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\ncasterins:MinusAnySkillCD(1,0,1)\nreturn true"
			}
		}
	},
	[12001421] = {
		["id"] = 12001421,
		["BindBuff"] = 12001421,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    if buffins:getdata().BuffId ~= 12001421 then return false end\n    BuffManagerInstance:RemoveBuff(insid,12001422)\n    return false\nend\n\nif isdamage then\n    if skillins:getdata().CasterInsId == insid then return false end \n    if not learnedbuff(insid,12001422) then return false end\n    BuffManagerInstance:RemoveBuff(insid,12001422)\n    return false\nend\n\nif ispassiveupdate then\n    if learnedbuff(insid,12001422) then\n        passiveins.BuffUseTime12001422 = Time()\n        return false\n    end\n    if passiveins.BuffUseTime12001422 and Time() - passiveins.BuffUseTime12001422 <= 10 then return false end\n    passiveins.BuffUseTime12001422 = Time()\n    BuffManagerInstance:AddBuffHelper(insid,12001422)\n    return false\nend\n\nreturn false"
			}
		}
	},
	[12001501] = {
		["id"] = 12001501,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId == 1 then return false end\nlocal pro1 = 5000\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nif skillins:gettable().DamageType == 1 then return false end\nfor _, _targetInsid in ipairs(settlementinslist) do\n    BuffManagerInstance:AddBuffHelper(_targetInsid,12001501)\nend\nreturn false"
			}
		}
	},
	[12001511] = {
		["id"] = 12001511,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {12001511},
				["AddCondition"] = "if not isdoskill then return false end\nif not skillins:ismain() then return false end\nlocal pro1 = 4000\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nreturn true"
			}
		}
	},
	[12001521] = {
		["id"] = 12001521,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {12001521},
				["AddCondition"] = "if not isdoskill or not skillins:ismain() then return false end\nif not passiveins.UseSkillCount1200152 then\n    passiveins.UseSkillCount1200152 = 0\nend\npassiveins.UseSkillCount1200152 = passiveins.UseSkillCount1200152 + 1\nif passiveins.UseSkillCount1200152 < 5 then return false end\npassiveins.UseSkillCount1200152 = 0\nreturn true"
			}
		}
	},
	[12001601] = {
		["id"] = 12001601,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not passiveins.KillCount then\n    passiveins.KillCount = 0\nend\n\nif isdamage then\n    if skillins:getdata().CasterInsId ~= insid then return false end\n    if skillins:getdata().SkillId == 1 then return false end\n    local target = Units:GetUnitByInsid(skillins:getdata().TargetInsId)\n    if target and target:IsAlive() then return false end\n    passiveins.KillCount = passiveins.KillCount + 1\n    return false\nend\n\nif ispassiveupdate then\n    if passiveins.KillCount <= 0 then return false end\n    local count = passiveins.KillCount\n    passiveins.KillCount = 0\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = insid\n    doBuffData.BuffId = 12001601\n    doBuffData.InitStackCount = count\n    PassiveSkillManagerInstance:AddBuff(doBuffData)\n    return false\nend\n\nreturn false"
			}
		}
	},
	[12001611] = {
		["id"] = 12001611,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nif skillins:getdata().CasterInsId == insid then return false end\nlocal pro1 = 3500\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nBuffManagerInstance:AddBuffHelper(skillins:getdata().CasterInsId,12001611)\nreturn false"
			}
		}
	},
	[12001621] = {
		["id"] = 12001621,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {12001621},
				["AddCondition"] = "casterins:GetUnitsByArea(1500,EnumUnitCamp.Monster)\n\nif not ispassiveupdate then return false end\nif casterins.UseSkillTime1200162 and Time() - casterins.UseSkillTime1200162 < 30 then return false end\nlocal units = casterins:GetUnitsByArea(3000,EnumUnitCamp.Monster)\nif table.length(units) < 50 then return false end\ncasterins.UseSkillTime1200162 = Time()\nreturn true"
			}
		}
	},
	[12001701] = {
		["id"] = 12001701,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {12001701},
				["AddCondition"] = "if not ispassiveupdate then return false end\nif passiveins.UseSkillTime1200170 and Time() - passiveins.UseSkillTime1200170 < 2 then return false end\nif casterins:GetAttr(51) > 510 then return false end\npassiveins.UseSkillTime1200170 = Time()\nreturn true"
			}
		}
	},
	[12001711] = {
		["id"] = 12001711,
		["BindBuff"] = 12001712,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    if buffins:getdata().BuffId ~= 12001712 then return false end\n    BuffManagerInstance:RemoveBuff(insid,12001711)\n    return false\nend\n\nif ispassiveupdate then\n    if not passiveins.Movedistance12001711 or movedistance - passiveins.Movedistance12001711 > 1  then\n        passiveins.Movedistance12001711 = movedistance\n        BuffManagerInstance:RemoveBuff(insid,12001711)\n        return false\n    end\n    if passiveins.AddBuffCd12001711 and Time() - passiveins.AddBuffCd12001711 < 1 then return false end\n    passiveins.AddBuffCd12001711 = Time()\n    BuffManagerInstance:AddBuffHelper(insid,12001711)\n    return false\nend\n\nreturn false"
			}
		}
	},
	[12001721] = {
		["id"] = 12001721,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\nif skillins:getdata().CasterInsId == insid then return false end\nlocal target = Units:GetUnitByInsid(skillins:getdata().CasterInsId)\nif not target then return false end\nif casterins:MathDistance(target) > 600 then return false end\nlocal newDoSkillData = clone(skillins:getdata())\nnewDoSkillData.SkillId = 12001721\nnewDoSkillData.TargetInsId = skillins:getdata().CasterInsId\nnewDoSkillData.CasterInsId = skillins:getdata().TargetInsId\nSkillManagerInstance:DoSkill(newDoSkillData)\nreturn false"
			}
		}
	},
	[12001801] = {
		["id"] = 12001801,
		["BindBuff"] = 12001802,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    if buffins:getdata().BuffId ~= 12001802 then return false end\n    BuffManagerInstance:RemoveBuff(insid,12001801)\n    return false\nend\n\nif ispassiveupdate then\n    local hero = casterins:ConvertHero()\n    if not hero then return false end\n    local hero_skill_count = 0\n\n    for i = 1, hero:GetSkillSpaceMax('main') do\n        local msg = hero:GetSkillShortcutMessage('main', i)\n        if msg then\n            hero_skill_count = hero_skill_count + 1\n        end\n    end\n\n    if passiveins.HeroSkillCount and hero_skill_count == passiveins.HeroSkillCount then return false end\n    passiveins.HeroSkillCount = hero_skill_count\n    BuffManagerInstance:RemoveBuff(insid,12001801)\n    BuffManagerInstance:AddBuffHelper(insid,12001801,1,function() end,hero_skill_count)\n    return false\nend\n\nreturn false"
			}
		}
	},
	[12001811] = {
		["id"] = 12001811,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\nif skillins:getdata().CasterInsId == insid then return false end\nlocal pro1 = 5000\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nBuffManagerInstance:AddBuffHelper(skillins:getdata().CasterInsId,12001811)\nreturn false"
			}
		}
	},
	[12001821] = {
		["id"] = 12001821,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {12001821},
				["AddCondition"] = "if not passiveins.UseSkillList then\n    passiveins.UseSkillList = {}\nend\nif isdofinishskill then\n    table.remove_value(passiveins.UseSkillList,skillins:getdata().SkillId)\nend\nif isdamage then\n    if skillins:getdata().CasterInsId ~= insid then return false end\n    if skillins:getdata().SkillId == 12001822 or skillins:getdata().SkillId == 1 then return false end\n    if table.isInclude(passiveins.UseSkillList,skillins:getdata().SkillId) then return false end\n    table.insert(passiveins.UseSkillList,skillins:getdata().SkillId)\n    return true\nend\nreturn false"
			}
		}
	},
	[2000000] = {
		["id"] = 2000000,
		["BindBuff"] = 2000000,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {20000001},
				["AddCondition"] = "if not isdamage then return false end\nlocal doSkillData = skillins:getdata()\nif insid ~= doSkillData.TargetInsId then return false end\nif not supposeddie then return false end\nif not SkillAPI.GetEntityBuff(insid,2000000) then return  false end\n\nBuffManagerInstance:RemoveBuff(insid,2000000)\nreturn true"
			}
		}
	},
	[2000001] = {
		["id"] = 2000001,
		["BindBuff"] = 2000001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "return false"
			}
		}
	},
	[2000002] = {
		["id"] = 2000002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {2000002},
				["AddCondition"] = "if not isdoskill then return false end\nif not SkillManagerInstance:IsMainSkill(skillins:getdata()) then return false end\nreturn true"
			}
		}
	},
	[2000003] = {
		["id"] = 2000003,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {2000003},
				["AddCondition"] = "if not iskill then return false end\nreturn true"
			},
			[2] = {
				["Id"] = 2,
				["Change"] = {1,99},
				["SkillId"] = {1},
				["AddCondition"] = "if not isdeath then return false end\nreturn true"
			}
		}
	},
	[2000004] = {
		["id"] = 2000004,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdamage then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nif skillins:getdata().CasterInsId ~= insid then return false end\nif skillins:getdata().DamageType ~= 1 then return false end\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nlocal hp = caster:GetAttr_MaxHP() * 0.01\nFight:ApplyDirectlyDamageNotBuff(caster, caster, hp, 2000004)\nreturn false"
			}
		}
	},
	[2000005] = {
		["id"] = 2000005,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not iscritical then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nlocal hp = caster:GetAttr_MaxHP() * 0.01\nFight:ApplyDirectlyDamageNotBuff(caster, caster, hp, 2000005)\nreturn false"
			}
		}
	},
	[2000006] = {
		["id"] = 2000006,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif not SkillManagerInstance:IsMainSkill(skillins:getdata()) then return false end\nlocal caster = GetEntityByInsId(skillins:getdata().CasterInsId)\nlocal hp = caster:GetAttr_MaxHP() * 0.02\nFight:ApplyDirectlyDamageNotBuff(caster, caster, hp, 2000006)\nreturn false"
			}
		}
	},
	[2000007] = {
		["id"] = 2000007,
		["BindBuff"] = 2000007,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[2000008] = {
		["id"] = 2000008,
		["BindBuff"] = 2000008,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[2000009] = {
		["id"] = 2000009,
		["BindBuff"] = 2000009,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[2000010] = {
		["id"] = 2000010,
		["BindBuff"] = 2000010,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[2000012] = {
		["id"] = 2000012,
		["BindBuff"] = 20000121,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ispassiveupdate then\n    if casterins:GetHP() <= 1 and learnedbuff(insid,20000121) then\n        Fight:ApplyHeal(casterins, casterins, 2000012, 1, 1, {{3,0,1 }})\n        BuffManagerInstance:RemoveBuff(insid,20000121)\n        return false;\n    end\nend\nreturn false"
			}
		}
	},
	[10481] = {
		["id"] = 10481,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 10481 then return false end\nif settlementins:getdata().TimeLineIndex ~= 3 then return false end\nif not settlementinslist then\n    return false\nend\nif not skillins.HitTargetId or not table.isInclude(settlementinslist, skillins.HitTargetId) then\n    skillins.HitTargetId = table.random(settlementinslist, 1)[1]\nend\nlocal doSkillData = DoSkillData.New()\ndoSkillData.SkillId = 10482\ndoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\ndoSkillData.CasterInsId = skillins:getdata().CasterInsId\ndoSkillData.TargetInsId = skillins.HitTargetId\nSkillManagerInstance:DoSkill(doSkillData)\nreturn false"
			}
		}
	},
	[10493] = {
		["id"] = 10493,
		["Interval"] = {0.5},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nif passiveins.IntervalTime1049 and Time() - passiveins.IntervalTime1049 < 1 then return false end\npassiveins.IntervalTime1049 = Time()\nlocal ins = GetEntityByInsId(insid)\nlocal insPosition = GetEntityPosition(insid)\nlocal minDistance = 600\nDrawDebugFan(insPosition, minDistance, 360, Vector(1,0,0), 0.2 ,Vector(0, 255, 0))\nlocal units = Units:GetUnitsByArea(insPosition,minDistance,nil,nil)\nfor _,entity in pairs(units) do\n    local entityInsId = entity:GetInsid()\n    if insid ~= entityInsId and ins:GetCamp() == entity:GetCamp() then\n        local distance = (insPosition - entity:GetPosition()):Length()\n        if distance < minDistance then\n            BuffManagerInstance:AddBuffHelper(entityInsId , 10491 , passiveins:getdata().PassiveLevel, nil , 1 , 1 , true)\n        end\n    end\nend\nreturn false"
			}
		}
	},
	[10643] = {
		["id"] = 10643,
		["AddTriggerProb"] = {2000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal doSkillData = skillins:getdata()\nif doSkillData.SkillId ~= 1 then return false end\n\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = skillins:getdata().TargetInsId\ndoBuffData.BuffId = 1031\nBuffManagerInstance:AddBuff(doBuffData,function(buff)\nbuff:SetDuration(1)\nend)\n\nreturn false"
			}
		}
	},
	[107211] = {
		["id"] = 107211,
		["AddTriggerProb"] = {5000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\n\nfor _ , hitTargetInsId in ipairs(settlementinslist) do\n    local debuffs = SkillAPI.GetEntityBuffs(hitTargetInsId, -1)\n    for _ , buff in ipairs(debuffs) do\n        BuffManagerInstance:RemoveBuff(hitTargetInsId,buff.buffid)\n    end\nend \n\nreturn false"
			}
		}
	},
	[10732] = {
		["id"] = 10732,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 10732 then return false end\nlocal num = math.random(3,5)\nfor i = 3, 5, 1 do\n    if i == num then\n        skillins:gettable().TimeLine[i].Active = 1\n    else\n        skillins:gettable().TimeLine[i].Active = 0\n    end\nend\nreturn fase"
			}
		}
	},
	[10762] = {
		["id"] = 10762,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 10762 then return false end\nlocal use_skill_cd = 5\nlocal hp = casterins:GetHP() / casterins:GetAttr_MaxHP()\nif hp < 0.3 then\n    use_skill_cd = 2\nelseif hp < 0.5 then\n    use_skill_cd = 4\nend\nif not casterins.LastUseSkillTime then\n    casterins.LastUseSkillTime = 0\nend\n\nlocal foe_list = settlementinslist\n\nif Time() - casterins.LastUseSkillTime > use_skill_cd then\n    casterins.LastUseSkillTime = Time()\n    -- 释放技能\n    local doSkillData = clone(skillins:getdata())\n    doSkillData.SkillId = 10763\n    SkillManagerInstance:DoSkill(doSkillData)\nend\n\nfor _, target_insid in ipairs(foe_list) do\n    if not SkillAPI.IsLearnedPassiveSkill(target_insid, 107621) then\n        SkillAPI.AddPassiveSkill(target_insid,107621,1)\n        local newDoSkillData = DoSkillData.New()\n        newDoSkillData.CasterInsId = target_insid\n        newDoSkillData.SkillId = 107621\n        newDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n        newDoSkillData.Position = skillins:getdata().Position\n        SkillManagerInstance:DoSkill(newDoSkillData)\n    end\nend\n\nreturn false"
			}
		}
	},
	[107621] = {
		["id"] = 107621,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isfinishedbuff then\n    if buffins:getdata().BuffId ~= 10762 then return false end\n    local skill = SkillManagerInstance:GetSkillLogic(insid,107621)\n    if not skill then return false end\n    SkillManagerInstance:DoFinishSkill(skill)\n    SkillAPI.RemovePassiveSkill(insid,107621)\nend\nreturn false"
			}
		}
	},
	[10771] = {
		["id"] = 10771,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdeath then \nlocal doSkillData = clone(skillins:getdata())\ndoSkillData.SkillId = 10771\nSkillManagerInstance:DoSkill(doSkillData)\nreturn true\nelseif isdoskill then \nif skillins:getdata().SkillId ~= 10771 then return false end\nskillins:gettable().TimeLine[2].Params[1] = casterins:GetUnitId()\n\nreturn true\nend\nreturn false"
			}
		}
	},
	[10821] = {
		["id"] = 10821,
		["BindBuff"] = 10821,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[10831] = {
		["id"] = 10831,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {10832},
				["AddCondition"] = "if not isdoskill then return end\nif skillins:getdata().SkillId ~= 10831 then return end\nif casterins:GetHP() / casterins:GetAttr_MaxHP() > 0.3 then\n    return true\nend\nreturn false"
			}
		}
	},
	[10851] = {
		["id"] = 10851,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill then\n    if skillins:getdata().SkillId ~= 1085 then return end\n    local summons = casterins:GetSummons()\n    local count = 0\n    for k, val in pairs(summons) do\n        count = count + 1\n        local doSkillData = clone(skillins:getdata())\n        doSkillData.SkillId = 10851\n        doSkillData.TargetInsId = val.Unit:GetInsid()\n        doSkillData.StartPosition = GetEntityPosition(val.Unit:GetInsid())\n        SkillManagerInstance:DoSkill(doSkillData)\n    end\n    casterins.KillSummonHeadHp = count * 0.1\nelseif isaddbuff then\n    if buffins:getdata().BuffId ~= 10851 then return end\n    buffins:gettable().Effect[4096].HealthParams = {{3,0,casterins.KillSummonHeadHp}}\n    casterins.KillSummonHeadHp = 0\n    local summons = casterins:GetSummons()\n    for k, val in pairs(summons) do\n        val.Unit:Kill()\n    end\nend\nreturn false"
			}
		}
	},
	[10881] = {
		["id"] = 10881,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["BuffId"] = {10832},
				["AddCondition"] = "if not isdoskill then return end\nif skillins:getdata().SkillId ~= 10831 then return end\nif casterins:GetHP() / casterins:GetAttr_MaxHP() > 0.3 then\n    return true\nend\nreturn false"
			}
		}
	},
	[10891] = {
		["id"] = 10891,
		["BindBuff"] = 10891,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99}
			}
		}
	},
	[1091] = {
		["id"] = 1091,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isdoskill then return false end\nif skillins:getdata().SkillId ~= 1091 then return false end\nlocal skill = SkillManagerInstance:GetSkillLogic(skillins:getdata().TargetInsId,10911)\nif skill then\n    SkillManagerInstance:DoFinishSkill(skill,true)\nend\nlocal newDoSkillData = DoSkillData.New()\nnewDoSkillData.CasterInsId = skillins:getdata().TargetInsId\nnewDoSkillData.SkillId = 10911\nnewDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\nSkillManagerInstance:DoSkill(newDoSkillData)"
			}
		}
	},
	[10911] = {
		["id"] = 10911,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nlocal buff = BuffManagerInstance:GetEntityBuff(insid,1091)\nif not buff then return false end\nif not buff:getdata().MoveDistance then\n    buff:getdata().MoveDistance = movedistance\nend\nif movedistance - buff:getdata().MoveDistance < 100 then return false end\nbuff:getdata().MoveDistance = movedistance\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = insid\ndoBuffData.BuffId = 10911\ndoBuffData.BuffLevel = buff:getdata().BuffLevel\ndoBuffData.Skill = buff:getdata().Skill\nBuffManagerInstance:AddBuff(doBuffData)\nreturn false"
			}
		}
	},
	[1092] = {
		["id"] = 1092,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1092 then return false end\nfor _,_hitinsid in ipairs(settlementinslist) do\n    local doSkillData = skillins:getdata()\n    local newDoSkillData = clone(doSkillData)\n    newDoSkillData.SkillId = 1091\n    newDoSkillData.TargetInsId = _hitinsid\n    SkillManagerInstance:DoSkill(newDoSkillData)\nend\nreturn false"
			}
		}
	},
	[1093] = {
		["id"] = 1093,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1093 then return false end\nfor _,_hitinsid in ipairs(settlementinslist) do\n    local doSkillData = skillins:getdata()\n    local newDoSkillData = clone(doSkillData)\n    newDoSkillData.SkillId = 1091\n    newDoSkillData.TargetInsId = _hitinsid\n    SkillManagerInstance:DoSkill(newDoSkillData)\nend\nreturn false"
			}
		}
	},
	[1096] = {
		["id"] = 1096,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdoskill and skillins:getdata().SkillId == 1096 then\n    BuffManagerInstance:AddBuffHelper(insid,1096)\n    local buffs = SkillAPI.GetEntityBuffs(insid,-1)\n    for _, buff in ipairs(buffs) do\n        SkillAPI.RemoveEntityBuff(insid,buff.buffid)\n    end\nend\n-- buffins:SetDuration(0)\nif isaddbuff then\n    if not learnedbuff(insid,1096) then return false end\n    if buffins:gettable().GainOrDeBuff == -1 then\n        buffins:SetDuration(0)\n    end\nend\nreturn false"
			}
		}
	},
	[1097] = {
		["id"] = 1097,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nif not passiveins.LockHitTargetInsid or (passiveins.LockHitTargetInsid ~= skillins:getdata().TargetInsId) then\n    BuffManagerInstance:RemoveBuff(insid,1097)\nend\npassiveins.LockHitTargetInsid = skillins:getdata().TargetInsId\nBuffManagerInstance:AddBuffHelper(insid,1097,passiveins:getdata().PassiveLevel)\nreturn false"
			}
		}
	},
	[1098] = {
		["id"] = 1098,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit and skillins:getdata().SkillId == 10981 then\n    passiveins.IsSkillHit = true\nend\nif isdofinishskill then\n    if skillins:getdata().SkillId ~= 1098 then return false end\n    if passiveins.IsSkillHit then\n        passiveins.IsSkillHit = false\n        return false\n    end\n    local foes = casterins:GetViewFoe()\n    local foe = table.random(foes,1)[1]\n    if not foe then return false end\n    local newDoSkillData = DoSkillData.New()\n    newDoSkillData.CasterInsId = insid\n    newDoSkillData.SkillId = 1099\n    newDoSkillData.TargetInsId = foe:GetInsid()\n    newDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n    SkillManagerInstance:DoSkill(newDoSkillData)\nend\nreturn false"
			}
		}
	},
	[1099] = {
		["id"] = 1099,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if isdofinishskill then\n    if skillins:getdata().SkillId ~= 10991 then return false end\n    local newDoSkillData = DoSkillData.New()\n    newDoSkillData.CasterInsId = insid\n    newDoSkillData.SkillId = 11012\n    newDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n    -- newDoSkillData.StartPosition = casterins:GetPosition()\n    newDoSkillData.Position = casterins:GetPosition()\n    SkillManagerInstance:DoSkill(newDoSkillData)\nend\nreturn false"
			}
		}
	},
	[1100] = {
		["id"] = 1100,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit and (skillins:getdata().SkillId == 10981 or skillins:getdata().SkillId == 11011 or skillins:getdata().SkillId == 11013) then\n    -- if skillins:gettable().IsUseSkill1100 then return end\n    if not skillins:gettable().SkillHitList then\n        skillins:gettable().SkillHitList = {}\n    end\n    for _,_hitinsid in ipairs(settlementinslist) do\n        if not table.isInclude(skillins:gettable().SkillHitList,_hitinsid) then\n            table.insert(skillins:gettable().SkillHitList,_hitinsid)\n            local newDoSkillData = DoSkillData.New()\n            newDoSkillData.CasterInsId = insid\n            newDoSkillData.SkillId = 1100\n            newDoSkillData.TargetInsId = _hitinsid\n            newDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n            SkillManagerInstance:DoSkill(newDoSkillData)\n        end\n    end\nend\nreturn false"
			}
		}
	},
	[1101] = {
		["id"] = 1101,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit and skillins:getdata().SkillId == 11011 then\n    passiveins.IsSkillHit = true\nend\nif isdofinishskill then\n    if skillins:getdata().SkillId ~= 1101 then return false end\n    if passiveins.IsSkillHit then\n        passiveins.IsSkillHit = false\n        return false\n    end\n    local foes = casterins:GetViewFoe()\n    local foe = table.random(foes,1)[1]\n    if not foe then return false end\n    local newDoSkillData = DoSkillData.New()\n    newDoSkillData.CasterInsId = insid\n    newDoSkillData.SkillId = 10992\n    newDoSkillData.TargetInsId = foe:GetInsid()\n    newDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\n    SkillManagerInstance:DoSkill(newDoSkillData)\nend\nreturn false"
			}
		}
	},
	[1106] = {
		["id"] = 1106,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishitrcv then\n    if not learnedbuff(insid,1106) then return false end\n    local cast_unit = Units:GetUnitByInsid(skillins:getdata().CasterInsId)\n    if cast_unit:GetCamp() == casterins:GetCamp() then return end\n    if not passiveins.DamageCount then\n        passiveins.DamageCount = 0\n    end\n    passiveins.DamageCount = passiveins.DamageCount + 1\nend\nif isfinishedbuff then\n    if buffins:getdata().BuffId ~= 1106 then return false end\n    if not passiveins.DamageCount or passiveins.DamageCount < 1 then return false end\n    local count = passiveins.DamageCount\n    passiveins.DamageCount = 0\n    BuffManagerInstance:AddBuffHelper(insid,11061,1,function() end,count)\nend\nreturn false"
			}
		}
	},
	[1109] = {
		["id"] = 1109,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit and skillins:getdata().SkillId == 11091 then\n    passiveins.IsSkillHit = true\nend\nif isdofinishskill then\n    if skillins:getdata().SkillId ~= 11091 then return false end\n    if passiveins.IsSkillHit then\n        passiveins.IsSkillHit = false\n        return false\n    end\n    local doSkillData = skillins:getdata()\n    local newDoSkillData = clone(doSkillData)\n    newDoSkillData.SkillId = 1107\n    newDoSkillData.ParentSkill = skillins\n    SkillManagerInstance:DoSkill(newDoSkillData)\nend\nreturn false"
			}
		}
	},
	[1111] = {
		["id"] = 1111,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11111},
				["AddCondition"] = "if not ispassiveupdate then return false end\nif passiveins.SkillIntervalTime and Time() - passiveins.SkillIntervalTime < 2 then return false end\npassiveins.SkillIntervalTime = Time()\nreturn true"
			}
		}
	},
	[1113] = {
		["id"] = 1113,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1113 then return false end\nif settlementcount <= 1 then return false end\nfor _, _hitInsid in ipairs(settlementinslist) do\n    local buff = SkillAPI.GetEntityBuff(_hitInsid,1113)\n    if buff then\n        buff:gettable().DurationBuffId = {11131}\n    end\nend\nreturn false"
			}
		}
	},
	[1114] = {
		["id"] = 1114,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {11141},
				["AddCondition"] = "if isaddbuff then\n    if not passiveins.SkillCd1114 or passiveins.SkillCd1114 >= 90 then return false end\n    if not passiveins.CurrentLayer then\n        local dungeon = Flow:GetDungeon()\n        local layer = 1\n        if dungeon then\n            layer = dungeon:GetLayer()\n        end\n        passiveins.CurrentLayer = layer\n    end\n\n    if passiveins.CurrentLayer <= 1 then return false end\n\n    if (buffins:gettable().GainOrDeBuff == -1) then \n        buffins:SetDuration(0)\n    end\n    return false\nend\n\nif ispassiveupdate then\n    if not passiveins.SkillCd1114 then\n        passiveins.SkillTime1114 = Time()\n        passiveins.HeroSatus = {}\n        local bless_is_have = false\n        local dungeon = Flow:GetDungeon()\n        if dungeon then\n            local player = table.GetAnyOne(dungeon:GetParticipants())\n            if player then\n                local bless = player:GetFitment(fitment_bless):GetBlessById(27)\n                if bless then\n                    bless_is_have = true\n                end\n            end\n        end\n        passiveins.SkillCd1114 = bless_is_have and 240 or 120\n    end\n\n    local dungeon = Flow:GetDungeon()\n    if dungeon then\n        local heros = dungeon:GetParticipantHeros()\n        for _, hero in pairs(heros) do\n            if (passiveins.HeroSatus[hero:GetInsid()] and not hero:IsAlive() and hero:IsAlive() ~= passiveins.HeroSatus[hero:GetInsid()]) then\n                passiveins.SkillCd1114 = passiveins.SkillCd1114 + 20\n            end\n            passiveins.HeroSatus[hero:GetInsid()] = hero:IsAlive()\n        end\n    end\n\n    if Time() - passiveins.SkillTime1114 <= passiveins.SkillCd1114 then return false end\n    passiveins.SkillTime1114 = Time()\n    passiveins.SkillCd1114 = 30\n    return true\nend\n\nreturn false"
			}
		}
	},
	[1340000] = {
		["id"] = 1340000,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\nlocal pros = {500,600,7000,850,1000}\nlocal pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nif not passiveins.IntervalTime1340000 then\n    passiveins.IntervalTime1340000 = 0\nend\nif Time() - passiveins.IntervalTime1340000 < 1 then return false end\npassiveins.IntervalTime1340000 = Time()\nBuffManagerInstance:AddBuffHelper(insid,13400001,passiveins:getdata().PassiveLevel)\nreturn false"
			}
		}
	},
	[1340001] = {
		["id"] = 1340001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if iskill then\n    local pros = {500,520,540,560,600}\n    local pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\n    local pro2 = math.random(0,10000)\n    if pro2 > pro1 then return false end\n    local doBuffData1 = DoBuffData.New()\n    doBuffData1.EntityId = insid\n    doBuffData1.BuffId = 13400011\n    doBuffData1.BuffLevel = passiveins:getdata().PassiveLevel\n    doBuffData1.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData1)\n    return false\nend\n\nif ispassiveupdate then\n    if casterins:GetAttr_MaxHP() - casterins:GetHP() <= 0 then return false end\n    if casterins:IsFighting() then return false end\n    local buff = BuffManagerInstance:GetEntityBuff(insid,13400011)\n    if not buff then return false end\n    local hp = GetConfDataLevel({0.002,0.003,0.004,0.005,0.006},buff:GetBuffLevel())\n    local need_count = math.ceil((casterins:GetAttr_MaxHP() - casterins:GetHP()) / casterins:GetAttr_MaxHP() / hp)\n    local use_count = 0\n    if need_count > buff:GetStackCount() then\n        use_count = buff:GetStackCount()\n        BuffManagerInstance:RemoveBuff(insid,13400011)\n    else\n        use_count = need_count\n        BuffManagerInstance:SetStackCount(insid,13400011,buff:GetStackCount() - need_count)\n    end\n    local doBuffData2 = DoBuffData.New()\n    doBuffData2.EntityId = insid\n    doBuffData2.BuffId = 13400012\n    doBuffData2.BuffLevel = passiveins:getdata().PassiveLevel\n    doBuffData2.Skill = skillins\n    BuffManagerInstance:AddBuff(doBuffData2,function(buffs)\n        buffs:gettable().Effect[4096].HealthParams = {{3,0,hp * use_count}}\n    end)\nend"
			}
		}
	},
	[1350000] = {
		["id"] = 1350000,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if ishit then\n    if skillins:getdata().SkillId == 1 then return false end\n    local pros = {1000,1400,1800,2200,2600}\n    local pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\n    local pro2 = math.random(0,10000)\n    if pro2 > pro1 then return false end\n    for _ , hitTargetInsId in ipairs(settlementinslist) do\n        local target = Units:GetUnitByInsid(hitTargetInsId)\n        if target:GetCamp() ~= casterins:GetCamp() then\n            local doBuffData = DoBuffData.New()\n            doBuffData.EntityId = hitTargetInsId\n            doBuffData.BuffId = 13500001\n            doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n            doBuffData.Skill = skillins\n            BuffManagerInstance:AddBuff(doBuffData,function(buffs)\n                local lv_attr = GetConfDataLevel({0.02,0.04,0.06,0.08,0.1},passiveins:getdata().PassiveLevel) * casterins:GetAttr(3)\n                buffs:gettable().Effect[1024].Params = {{42,2,-lv_attr}}\n            end)\n            BuffManagerInstance:AddBuffHelper(hitTargetInsId,13500002,passiveins:getdata().PassiveLevel)\n        end\n    end\nend\nreturn false"
			}
		}
	},
	[1350001] = {
		["id"] = 1350001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\nlocal pros = {800,900,1000,1100,1200}\nlocal pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = skillins:getdata().TargetInsId\ndoBuffData.BuffId = 13500012\ndoBuffData.BuffLevel = passiveins:getdata().PassiveLevel\ndoBuffData.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData)\nBuffManagerInstance:AddBuffHelper(skillins:getdata().CasterInsId,13500011,passiveins:getdata().PassiveLevel)\nreturn true"
			}
		}
	},
	[1350002] = {
		["id"] = 1350002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal pros = {800,900,1000,1100,1200}\nlocal pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = casterins:GetInsid()\ndoBuffData.BuffId = 13500021\ndoBuffData.BuffLevel = passiveins:getdata().PassiveLevel\nBuffManagerInstance:AddBuff(doBuffData)\nreturn true"
			}
		}
	},
	[1350003] = {
		["id"] = 1350003,
		["BindBuff"] = 13500031,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff or buffins:getdata().BuffId ~= 13500031 then return false end\nlocal pro = GetConfDataLevel({0.02,0.04,0.06,0.08,0.1},passiveins:getdata().PassiveLevel)\nbuffins:gettable().Effect[0].Params = {{33,pro,1,1}}\nreturn false"
			}
		}
	},
	[1350004] = {
		["id"] = 1350004,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ispassiveupdate then return false end\nif not passiveins.IntervalTime1350004 then\n    passiveins.IntervalTime1350004 = 0\nend\nif Time() - passiveins.IntervalTime1350004 < 5 then return false end\npassiveins.IntervalTime1350004 = Time()\nlocal newDoSkillData = DoSkillData.New()\nnewDoSkillData.CasterInsId = insid\nnewDoSkillData.SkillId = 13500041\nnewDoSkillData.SkillLevel = passiveins:getdata().PassiveLevel\nSkillManagerInstance:DoSkill(newDoSkillData)\nreturn false"
			}
		}
	},
	[1360000] = {
		["id"] = 1360000,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nif skillins:getdata().SkillId ~= 1 then return false end\n\nlocal pros = {1000,1100,1200,1300,1500}\nlocal pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\n\nlocal level = passiveins:getdata().PassiveLevel\nlocal targetInsId = skillins:getdata().TargetInsId\n\nlocal doBuffData = DoBuffData.New()\ndoBuffData.EntityId = targetInsId\ndoBuffData.BuffId = 13600002\ndoBuffData.BuffLevel = level\ndoBuffData.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData)\n\nlocal doBuffData2 = DoBuffData.New()\ndoBuffData2.EntityId = targetInsId\ndoBuffData2.BuffId = 13600001\ndoBuffData2.BuffLevel = level\ndoBuffData2.Skill = skillins\nBuffManagerInstance:AddBuff(doBuffData2)\n\nreturn true"
			}
		}
	},
	[1360001] = {
		["id"] = 1360001,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["SkillId"] = {13600012},
				["AddCondition"] = "if ispassiveupdate then\n    if passiveins.GP_PreCasterTime == nil then passiveins.GP_PreCasterTime = Time() end\n    if Time() - passiveins.GP_PreCasterTime >= 3 then\n        passiveins.GP_PreCasterTime = Time()\n        return true\n    end\nend\nreturn false"
			}
		}
	},
	[1360002] = {
		["id"] = 1360002,
		["Cd"] = {15},
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishitrcv then return false end\n\nlocal pros = {200,400,600,800,1000}\nlocal pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\nlocal pro2 = math.random(0,10000)\nlocal pro3 = math.random(0,10000)\n\nif not passiveins.IntervalTime13600022 then\n    passiveins.IntervalTime13600022 = 0\nend\n\nif not passiveins.IntervalTime13600021 then\n    passiveins.IntervalTime13600021 = 0\nend\nif pro2 <= pro1 and (Time() - passiveins.IntervalTime13600021 > 15) then\n    passiveins.IntervalTime13600021 = Time()\n    local doBuffData = DoBuffData.New()\n    doBuffData.EntityId = insid\n    doBuffData.BuffId = 13600021\n    doBuffData.BuffLevel = passiveins:getdata().PassiveLevel\n    BuffManagerInstance:AddBuff(doBuffData)\nend\n\nif pro3 <= pro1 and casterins:GetHP() / casterins:GetAttr_MaxHP() < 0.5 and (Time() - passiveins.IntervalTime13600022 > 15) then\n    passiveins.IntervalTime13600022 = Time()\n    local doBuffData2 = DoBuffData.New()\n    doBuffData2.EntityId = insid\n    doBuffData2.BuffId = 13600022\n    doBuffData2.BuffLevel = passiveins:getdata().PassiveLevel\n    BuffManagerInstance:AddBuff(doBuffData2)\nend\n\nreturn false"
			}
		}
	},
	[1350005] = {
		["id"] = 1350005,
		["BindBuff"] = 13500051,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not isaddbuff or buffins:getdata().BuffId ~= 13500051 then return false end\nlocal pro = GetConfDataLevel({0.01,0.015,0.02,0.025,0.03},passiveins:getdata().PassiveLevel)\nlocal hp = GetConfDataLevel({0.3,0.6,0.9,1.2,1.5},passiveins:getdata().PassiveLevel)\nbuffins:gettable().Effect[0].Params = {{34,pro,hp,1}}\nreturn false"
			}
		}
	},
	[1340002] = {
		["id"] = 1340002,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal pros = {100,150,200,250,300}\nlocal pro1 = GetConfDataLevel(pros,passiveins:getdata().PassiveLevel)\nlocal pro2 = math.random(0,10000)\nif pro2 > pro1 then return false end\nlocal level = passiveins:getdata().PassiveLevel\nlocal entitys = Units:GetUnitsByCamp(EnumUnitCamp.Player)\nfor entityId,_ in pairs(entitys) do\n    BuffManagerInstance:AddBuffHelper(entityId,13400021,level)\nend\nreturn false"
			}
		}
	},
	[10401] = {
		["id"] = 10401,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 1040 then return false end\nlocal count = #settlementinslist\nif count == 0 then return false end\n\nBuffManagerInstance:AddBuffHelper(insid , 1040 , passiveins:getdata().PassiveLevel, nil , count , effectTimes)\n\nreturn false"
			}
		}
	},
	[10402] = {
		["id"] = 10402,
		["AddTriggerProb"] = {10000},
		["Level"] = {
			[1] = {
				["Id"] = 1,
				["Change"] = {1,99},
				["AddCondition"] = "if not ishit then return false end\nlocal skillId = skillins:getdata().SkillId\nif skillId ~= 10401 then return false end\nlocal count = #settlementinslist\nif count == 0 then return false end\n\nBuffManagerInstance:AddBuffHelper(insid , 10401 , passiveins:getdata().PassiveLevel, nil , count , effectTimes)\n\nreturn false"
			}
		}
	}
}
