--[[
	Commerce

	字段列表:
		ID {int} ID
		Title {lang} 活动名称
		Time {int} 重置类型
		OpenRegDay {array(int, int...)} 注册天数限制
		Entrance {auto} 所属入口
		ProgressBar {int} 进度条条件
		ViewModel {int} 显示模型
		ViewText {lang} 下面的显示文字
		Tasks.SubID {int} 项ID
		Tasks.Desc {lang} 项描述
		Tasks.Type {int} 项类型
		Tasks.Condition {int} 条件表ID
		Tasks.Cost {map{[auto] = auto}} 兑换消耗
		Tasks.Count {int} 兑换次数
		Tasks.Award {array(array(int, int...), ...)} 奖励

]]
return {
	[10101] = {
		["ID"] = 10101,
		["Title"] = "L3x1yn9g",
		["Time"] = 0,
		["OpenRegDay"] = {0,7},
		["Entrance"] = 101,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "Lf60mm0e",
				["Type"] = 1,
				["Condition"] = 21010101,
				["Award"] = {{211,30},{212,150}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "Lp60mm0e",
				["Type"] = 1,
				["Condition"] = 21010102,
				["Award"] = {{211,40},{212,200}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "Lq60mm0e",
				["Type"] = 1,
				["Condition"] = 21010103,
				["Award"] = {{211,50},{212,250},{2010102,1}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "Lr60mm0e",
				["Type"] = 1,
				["Condition"] = 21010104,
				["Award"] = {{211,60},{212,300}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "Ls60mm0e",
				["Type"] = 1,
				["Condition"] = 21010105,
				["Award"] = {{211,70},{212,350},{2010102,1}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "Lt60mm0e",
				["Type"] = 1,
				["Condition"] = 21010106,
				["Award"] = {{211,80},{212,400}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "Ld80mm0e",
				["Type"] = 1,
				["Condition"] = 21010107,
				["Award"] = {{211,90},{212,450}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "Le80mm0e",
				["Type"] = 1,
				["Condition"] = 21010108,
				["Award"] = {{211,100},{212,500}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "L4a1mm0e",
				["Type"] = 1,
				["Condition"] = 21010109,
				["Award"] = {{211,110},{212,550},{2010102,1}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L5a1mm0e",
				["Type"] = 1,
				["Condition"] = 21010110,
				["Award"] = {{211,50},{212,250}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "L6a1mm0e",
				["Type"] = 1,
				["Condition"] = 21010111,
				["Award"] = {{211,60},{212,300}}
			},
			[12] = {
				["SubID"] = 12,
				["Desc"] = "L7a1mm0e",
				["Type"] = 1,
				["Condition"] = 21010112,
				["Award"] = {{211,70},{212,350}}
			},
			[13] = {
				["SubID"] = 13,
				["Desc"] = "L8a1mm0e",
				["Type"] = 1,
				["Condition"] = 21010113,
				["Award"] = {{211,80},{212,400}}
			},
			[14] = {
				["SubID"] = 14,
				["Desc"] = "L9a1mm0e",
				["Type"] = 1,
				["Condition"] = 21010114,
				["Award"] = {{211,90},{212,450},{2010102,1}}
			}
		}
	},
	[10102] = {
		["ID"] = 10102,
		["Title"] = "Ley1yn9g",
		["Time"] = 0,
		["OpenRegDay"] = {1,7},
		["Entrance"] = 101,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "Lab1mm0e",
				["Type"] = 1,
				["Condition"] = 21010201,
				["Award"] = {{211,120},{212,960},{2030001,2}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "Lbb1mm0e",
				["Type"] = 1,
				["Condition"] = 21010202,
				["Award"] = {{211,100},{212,800}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "Lcb1mm0e",
				["Type"] = 1,
				["Condition"] = 21010203,
				["Award"] = {{211,110},{212,880}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "Ldb1mm0e",
				["Type"] = 1,
				["Condition"] = 21010204,
				["Award"] = {{211,120},{212,960}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "Leb1mm0e",
				["Type"] = 1,
				["Condition"] = 21010205,
				["Award"] = {{211,130},{212,1040}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "Lfb1mm0e",
				["Type"] = 1,
				["Condition"] = 21010206,
				["Award"] = {{211,140},{212,1120},{2030001,2}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010207,
				["Award"] = {{211,30},{212,240}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010208,
				["Award"] = {{211,40},{212,320}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010209,
				["Award"] = {{211,50},{212,400},{2030001,1}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010210,
				["Award"] = {{211,30},{212,240}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010211,
				["Award"] = {{211,40},{212,320},{2030001,1}}
			}
		}
	},
	[10103] = {
		["ID"] = 10103,
		["Title"] = "Lpy1yn9g",
		["Time"] = 0,
		["OpenRegDay"] = {2,7},
		["Entrance"] = 101,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010301,
				["Award"] = {{211,60},{212,600}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010302,
				["Award"] = {{211,70},{212,700}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010303,
				["Award"] = {{211,80},{212,800}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010304,
				["Award"] = {{211,90},{212,900},{2010103,1}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010305,
				["Award"] = {{211,100},{212,1000}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010306,
				["Award"] = {{211,110},{212,1100}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "L46bkbxe",
				["Type"] = 1,
				["Condition"] = 21010307,
				["Award"] = {{211,120},{212,1200},{2010103,1}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010308,
				["Award"] = {{211,50},{212,500}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010309,
				["Award"] = {{211,60},{212,600}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010310,
				["Award"] = {{211,70},{212,700}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010311,
				["Award"] = {{211,80},{212,800},{2010103,1}}
			}
		}
	},
	[10104] = {
		["ID"] = 10104,
		["Title"] = "L0y1yn9g",
		["Time"] = 0,
		["OpenRegDay"] = {3,7},
		["Entrance"] = 101,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010401,
				["Award"] = {{211,30},{212,450}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010402,
				["Award"] = {{211,40},{212,600}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010403,
				["Award"] = {{211,50},{212,750}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010404,
				["Award"] = {{211,60},{212,900},{2160001,1}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010405,
				["Award"] = {{211,70},{212,1050}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010406,
				["Award"] = {{211,80},{212,1200}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010407,
				["Award"] = {{211,90},{212,1350},{2160001,1}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010408,
				["Award"] = {{211,100},{212,1500}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010409,
				["Award"] = {{211,110},{212,1650}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L66bkbxe",
				["Type"] = 1,
				["Condition"] = 21010410,
				["Award"] = {{211,120},{212,1800},{2160001,1}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010411,
				["Award"] = {{211,90},{212,1350}}
			}
		}
	},
	[10105] = {
		["ID"] = 10105,
		["Title"] = "Lbz1yn9g",
		["Time"] = 0,
		["OpenRegDay"] = {4,7},
		["Entrance"] = 101,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "L7b1mm0e",
				["Type"] = 1,
				["Condition"] = 21010501,
				["Award"] = {{211,30},{212,600}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "L8b1mm0e",
				["Type"] = 1,
				["Condition"] = 21010502,
				["Award"] = {{211,40},{212,800}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "L9b1mm0e",
				["Type"] = 1,
				["Condition"] = 21010503,
				["Award"] = {{211,50},{212,1000}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "Lac1mm0e",
				["Type"] = 1,
				["Condition"] = 21010504,
				["Award"] = {{211,60},{212,1200},{2010104,1}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "Lbc1mm0e",
				["Type"] = 1,
				["Condition"] = 21010505,
				["Award"] = {{211,70},{212,1400}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "Lcc1mm0e",
				["Type"] = 1,
				["Condition"] = 21010506,
				["Award"] = {{211,80},{212,1600}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "Ldc1mm0e",
				["Type"] = 1,
				["Condition"] = 21010507,
				["Award"] = {{211,90},{212,1800},{2010104,1}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "Lec1mm0e",
				["Type"] = 1,
				["Condition"] = 21010508,
				["Award"] = {{211,100},{212,2000}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "Lfc1mm0e",
				["Type"] = 1,
				["Condition"] = 21010509,
				["Award"] = {{211,110},{212,2200}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "Lgc1mm0e",
				["Type"] = 1,
				["Condition"] = 21010510,
				["Award"] = {{211,120},{212,2400},{2010104,1}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010511,
				["Award"] = {{211,100},{212,2000}}
			}
		}
	},
	[10106] = {
		["ID"] = 10106,
		["Title"] = "Lic1mm0e",
		["Time"] = 0,
		["OpenRegDay"] = {5,7},
		["Entrance"] = 101,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010601,
				["Award"] = {{211,30},{212,450}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010602,
				["Award"] = {{211,40},{212,600}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010603,
				["Award"] = {{211,50},{212,750}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010604,
				["Award"] = {{211,60},{212,900},{2160001,1}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010605,
				["Award"] = {{211,70},{212,1050}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010606,
				["Award"] = {{211,80},{212,1200}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010607,
				["Award"] = {{211,90},{212,1350},{2160001,1}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010608,
				["Award"] = {{211,100},{212,1500}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010609,
				["Award"] = {{211,110},{212,1650}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L76bkbxe",
				["Type"] = 1,
				["Condition"] = 21010610,
				["Award"] = {{211,120},{212,1800},{2160001,1}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010611,
				["Award"] = {{211,100},{212,1500}}
			}
		}
	},
	[10107] = {
		["ID"] = 10107,
		["Title"] = "Luc1mm0e",
		["Time"] = 0,
		["OpenRegDay"] = {6,7},
		["Entrance"] = 101,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010701,
				["Award"] = {{211,30},{212,600}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010702,
				["Award"] = {{211,40},{212,800}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010703,
				["Award"] = {{211,50},{212,1000},{2010104,1}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010704,
				["Award"] = {{211,60},{212,1200}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010705,
				["Award"] = {{211,70},{212,1400}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010706,
				["Award"] = {{211,80},{212,1600}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010707,
				["Award"] = {{211,90},{212,1800},{2010104,1}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010708,
				["Award"] = {{211,100},{212,2000}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010709,
				["Award"] = {{211,110},{212,2200}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L86bkbxe",
				["Type"] = 1,
				["Condition"] = 21010710,
				["Award"] = {{211,120},{212,2400},{2010104,1}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "L56bkbxe",
				["Type"] = 1,
				["Condition"] = 21010711,
				["Award"] = {{211,100},{212,2000}}
			}
		}
	},
	[10201] = {
		["ID"] = 10201,
		["Title"] = "Lmz1yn9g",
		["Time"] = 0,
		["OpenRegDay"] = {0,20},
		["Entrance"] = 102,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020101,
				["Award"] = {{211,200}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020102,
				["Award"] = {{211,300}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020103,
				["Award"] = {{211,400}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020104,
				["Award"] = {{211,500}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020105,
				["Award"] = {{211,600}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020106,
				["Award"] = {{211,700}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020107,
				["Award"] = {{211,800}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020108,
				["Award"] = {{211,900}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020109,
				["Award"] = {{211,1000}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L96bkbxe",
				["Type"] = 1,
				["Condition"] = 21020110,
				["Award"] = {{211,1200}}
			}
		}
	},
	[10202] = {
		["ID"] = 10202,
		["Title"] = "Lmz1yn9g",
		["Time"] = 0,
		["OpenRegDay"] = {0,30},
		["Entrance"] = 102,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "La7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020201,
				["Award"] = {{211,500},{2030001,1}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "La7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020202,
				["Award"] = {{211,500},{2030001,1}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "La7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020203,
				["Award"] = {{211,500},{2030001,1}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "La7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020204,
				["Award"] = {{211,500},{2030001,1}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "La7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020205,
				["Award"] = {{211,500},{2030001,1}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "Lb7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020206,
				["Award"] = {{211,500},{2030001,2}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "Lb7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020207,
				["Award"] = {{211,500},{2030001,2}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "Lb7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020208,
				["Award"] = {{211,500},{2030001,2}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "Lb7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020209,
				["Award"] = {{211,500},{2030001,2}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "Lb7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020210,
				["Award"] = {{211,500},{2030001,2}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "Lc7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020211,
				["Award"] = {{211,500},{2030001,3}}
			},
			[12] = {
				["SubID"] = 12,
				["Desc"] = "Lc7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020212,
				["Award"] = {{211,500},{2030001,3}}
			},
			[13] = {
				["SubID"] = 13,
				["Desc"] = "Lc7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020213,
				["Award"] = {{211,500},{2030001,3}}
			},
			[14] = {
				["SubID"] = 14,
				["Desc"] = "Lc7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020214,
				["Award"] = {{211,500},{2030001,3}}
			},
			[15] = {
				["SubID"] = 15,
				["Desc"] = "Lc7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020215,
				["Award"] = {{211,500},{2030001,3}}
			},
			[16] = {
				["SubID"] = 16,
				["Desc"] = "Ld7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020216,
				["Award"] = {{211,500},{2030001,4}}
			},
			[17] = {
				["SubID"] = 17,
				["Desc"] = "Ld7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020217,
				["Award"] = {{211,500},{2030001,4}}
			},
			[18] = {
				["SubID"] = 18,
				["Desc"] = "Ld7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020218,
				["Award"] = {{211,500},{2030001,4}}
			},
			[19] = {
				["SubID"] = 19,
				["Desc"] = "Ld7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020219,
				["Award"] = {{211,500},{2030001,4}}
			},
			[20] = {
				["SubID"] = 20,
				["Desc"] = "Ld7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020220,
				["Award"] = {{211,500},{2030001,4}}
			},
			[21] = {
				["SubID"] = 21,
				["Desc"] = "Le7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020221,
				["Award"] = {{211,500},{2030001,5}}
			},
			[22] = {
				["SubID"] = 22,
				["Desc"] = "Le7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020222,
				["Award"] = {{211,500},{2030001,5}}
			},
			[23] = {
				["SubID"] = 23,
				["Desc"] = "Le7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020223,
				["Award"] = {{211,500},{2030001,5}}
			},
			[24] = {
				["SubID"] = 24,
				["Desc"] = "Le7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020224,
				["Award"] = {{211,500},{2030001,5}}
			},
			[25] = {
				["SubID"] = 25,
				["Desc"] = "Le7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020225,
				["Award"] = {{211,500},{2030001,5}}
			},
			[26] = {
				["SubID"] = 26,
				["Desc"] = "Lf7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020226,
				["Award"] = {{211,500},{2030001,6}}
			},
			[27] = {
				["SubID"] = 27,
				["Desc"] = "Lf7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020227,
				["Award"] = {{211,500},{2030001,6}}
			},
			[28] = {
				["SubID"] = 28,
				["Desc"] = "Lf7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020228,
				["Award"] = {{211,500},{2030001,6}}
			},
			[29] = {
				["SubID"] = 29,
				["Desc"] = "Lf7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020229,
				["Award"] = {{211,500},{2030001,6}}
			},
			[30] = {
				["SubID"] = 30,
				["Desc"] = "Lf7bkbxe",
				["Type"] = 1,
				["Condition"] = 21020230,
				["Award"] = {{211,500},{2030001,6}}
			}
		}
	},
	[10301] = {
		["ID"] = 10301,
		["Title"] = "Lr01yn9g",
		["Time"] = 1,
		["Entrance"] = 103,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "Lg7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030101,
				["Award"] = {{201,100},{221,10}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "Lg7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030102,
				["Award"] = {{201,100},{221,10}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "Lg7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030103,
				["Award"] = {{201,200},{221,10}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "Lg7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030104,
				["Award"] = {{201,300},{221,10}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "Lh7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030105,
				["Award"] = {{201,100},{221,10}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "Lh7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030106,
				["Award"] = {{201,200},{221,20}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "Li7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030107,
				["Award"] = {{201,100},{221,10}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "Li7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030108,
				["Award"] = {{201,100},{221,10}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "Lj7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030109,
				["Award"] = {{201,100},{221,10}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "L101yn9g",
				["Type"] = 1,
				["Condition"] = 21030110,
				["Award"] = {{201,200},{221,10}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "Lk7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030111,
				["Award"] = {{201,200},{221,10}}
			},
			[12] = {
				["SubID"] = 12,
				["Desc"] = "Lit3yn9g",
				["Type"] = 1,
				["Condition"] = 21030112,
				["Award"] = {{201,100},{221,10}}
			},
			[13] = {
				["SubID"] = 13,
				["Desc"] = "Ll7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030113,
				["Award"] = {{211,100},{2030001,1}}
			},
			[14] = {
				["SubID"] = 14,
				["Desc"] = "Ll7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030114,
				["Award"] = {{211,150},{2030001,1}}
			},
			[15] = {
				["SubID"] = 15,
				["Desc"] = "Ll7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030115,
				["Award"] = {{211,200},{2030001,1}}
			},
			[16] = {
				["SubID"] = 16,
				["Desc"] = "Ll7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030116,
				["Award"] = {{211,250},{2030001,2}}
			}
		}
	},
	[10302] = {
		["ID"] = 10302,
		["Title"] = "L801yn9g",
		["Time"] = 7,
		["Entrance"] = 103,
		["Tasks"] = {
			[1] = {
				["SubID"] = 1,
				["Desc"] = "Lh7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030201,
				["Award"] = {{211,20},{2030001,1}}
			},
			[2] = {
				["SubID"] = 2,
				["Desc"] = "Lh7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030202,
				["Award"] = {{211,30},{2030001,1}}
			},
			[3] = {
				["SubID"] = 3,
				["Desc"] = "Lh7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030203,
				["Award"] = {{211,40},{2030001,1}}
			},
			[4] = {
				["SubID"] = 4,
				["Desc"] = "Lh7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030204,
				["Award"] = {{211,50},{2030001,2}}
			},
			[5] = {
				["SubID"] = 5,
				["Desc"] = "Lh7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030205,
				["Award"] = {{211,60},{2030001,3},{2160011,5}}
			},
			[6] = {
				["SubID"] = 6,
				["Desc"] = "Lm7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030206,
				["Award"] = {{211,20},{2030001,1}}
			},
			[7] = {
				["SubID"] = 7,
				["Desc"] = "Lm7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030207,
				["Award"] = {{211,30},{2030001,1}}
			},
			[8] = {
				["SubID"] = 8,
				["Desc"] = "Lm7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030208,
				["Award"] = {{211,40},{2030001,1}}
			},
			[9] = {
				["SubID"] = 9,
				["Desc"] = "Lm7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030209,
				["Award"] = {{211,50},{2030001,2}}
			},
			[10] = {
				["SubID"] = 10,
				["Desc"] = "Lm7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030210,
				["Award"] = {{211,60},{2030001,3},{2160001,1}}
			},
			[11] = {
				["SubID"] = 11,
				["Desc"] = "Li7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030211,
				["Award"] = {{211,20},{2030001,1}}
			},
			[12] = {
				["SubID"] = 12,
				["Desc"] = "Li7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030212,
				["Award"] = {{211,30},{2030001,1}}
			},
			[13] = {
				["SubID"] = 13,
				["Desc"] = "Li7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030213,
				["Award"] = {{211,40},{2030001,1}}
			},
			[14] = {
				["SubID"] = 14,
				["Desc"] = "Li7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030214,
				["Award"] = {{211,50},{2030001,2}}
			},
			[15] = {
				["SubID"] = 15,
				["Desc"] = "Li7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030215,
				["Award"] = {{211,60},{2030001,3},{2160011,5}}
			},
			[16] = {
				["SubID"] = 16,
				["Desc"] = "Lj7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030216,
				["Award"] = {{211,20},{2030001,1}}
			},
			[17] = {
				["SubID"] = 17,
				["Desc"] = "Lj7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030217,
				["Award"] = {{211,30},{2030001,1}}
			},
			[18] = {
				["SubID"] = 18,
				["Desc"] = "Lj7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030218,
				["Award"] = {{211,40},{2030001,1}}
			},
			[19] = {
				["SubID"] = 19,
				["Desc"] = "Lj7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030219,
				["Award"] = {{211,50},{2030001,2}}
			},
			[20] = {
				["SubID"] = 20,
				["Desc"] = "Lj7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030220,
				["Award"] = {{211,60},{2030001,3},{2160001,1}}
			},
			[21] = {
				["SubID"] = 21,
				["Desc"] = "Ln7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030221,
				["Award"] = {{211,20},{2030001,1}}
			},
			[22] = {
				["SubID"] = 22,
				["Desc"] = "Ln7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030222,
				["Award"] = {{211,30},{2030001,1}}
			},
			[23] = {
				["SubID"] = 23,
				["Desc"] = "Ln7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030223,
				["Award"] = {{211,40},{2030001,1}}
			},
			[24] = {
				["SubID"] = 24,
				["Desc"] = "Ln7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030224,
				["Award"] = {{211,50},{2030001,2}}
			},
			[25] = {
				["SubID"] = 25,
				["Desc"] = "Ln7bkbxe",
				["Type"] = 1,
				["Condition"] = 21030225,
				["Award"] = {{211,60},{2030001,3},{2160011,5}}
			}
		}
	}
}
