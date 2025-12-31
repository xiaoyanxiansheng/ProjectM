--[[
	FestiveExchange

	字段列表:
		Id* {int} 表ID
		TimeId* {int} 时间ID
		Changes.Index {int} 序号
		Changes.LimitCount {auto} 限购
		Changes.DailyReset {bool} 每日重置
		Changes.CostItems* {map{[auto] = auto}} 消耗道具
		Changes.Reward* {array(array(int, int...), ...)} 奖励道具

]]
return {
	[1] = {
		["Id"] = 1,
		["TimeId"] = 25122401,
		["Changes"] = {
			[1] = {
				["Index"] = 1,
				["LimitCount"] = 1,
				["CostItems"] = {
					[5810102] = 80
				},
				["Reward"] = {{6110011,1}}
			},
			[2] = {
				["Index"] = 2,
				["LimitCount"] = 1,
				["CostItems"] = {
					[5810104] = 10
				},
				["Reward"] = {{6110010,1}}
			},
			[3] = {
				["Index"] = 3,
				["LimitCount"] = 1,
				["CostItems"] = {
					[5810102] = 20
				},
				["Reward"] = {{4010304,1}}
			},
			[4] = {
				["Index"] = 4,
				["LimitCount"] = 1,
				["CostItems"] = {
					[5810102] = 80
				},
				["Reward"] = {{4030001,1}}
			},
			[5] = {
				["Index"] = 5,
				["LimitCount"] = 12,
				["CostItems"] = {
					[5810102] = 15
				},
				["Reward"] = {{3019004,5}}
			},
			[6] = {
				["Index"] = 6,
				["LimitCount"] = 5,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 2,
					[231] = 20
				},
				["Reward"] = {{4040002,1}}
			},
			[7] = {
				["Index"] = 7,
				["LimitCount"] = 10,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 2,
					[231] = 20
				},
				["Reward"] = {{5030025,1}}
			},
			[8] = {
				["Index"] = 8,
				["LimitCount"] = 2,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 3,
					[231] = 30
				},
				["Reward"] = {{5040024,1}}
			},
			[9] = {
				["Index"] = 9,
				["LimitCount"] = 2,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 2,
					[231] = 20
				},
				["Reward"] = {{4010001,40}}
			},
			[10] = {
				["Index"] = 10,
				["LimitCount"] = 2,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 4,
					[231] = 40
				},
				["Reward"] = {{4010002,5}}
			},
			[11] = {
				["Index"] = 11,
				["LimitCount"] = 2,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 4,
					[231] = 40
				},
				["Reward"] = {{4020001,20}}
			},
			[12] = {
				["Index"] = 12,
				["LimitCount"] = 2,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 3,
					[231] = 30
				},
				["Reward"] = {{4010011,30}}
			},
			[13] = {
				["Index"] = 13,
				["LimitCount"] = 2,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 2,
					[231] = 20
				},
				["Reward"] = {{4010201,2}}
			},
			[14] = {
				["Index"] = 14,
				["LimitCount"] = 2,
				["DailyReset"] = true,
				["CostItems"] = {
					[5810103] = 2,
					[231] = 20
				},
				["Reward"] = {{4010202,2}}
			}
		}
	}
}
