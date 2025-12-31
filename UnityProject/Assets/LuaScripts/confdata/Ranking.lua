--[[
	Ranking

	字段列表:
		ID {int} ID
		CheckRank {int} 检查排名
		CheckText {lang} 检查文本
		RewardText {lang} 奖励文本
		Rewards.Index* {int} 排行ID
		Rewards.Type* {int} 类型
		Rewards.ResultRanking {array(int, int...)} 结算排名区间
		Rewards.CheckCondition {array(array(auto, auto...), ...)} 检查条件
		Rewards.Rewards* {array(array(int, int...), ...)} 奖励

]]
return {
	[101] = {
		["ID"] = 101,
		["CheckRank"] = 10,
		["CheckText"] = "L8e1yn9g",
		["RewardText"] = "Lcf1yn9g",
		["Rewards"] = {
			[101] = {
				["Index"] = 101,
				["Type"] = 2,
				["ResultRanking"] = {1,1},
				["Rewards"] = {{5030045,100},{4010011,1000},{4030011,40},{4040002,10}}
			},
			[102] = {
				["Index"] = 102,
				["Type"] = 2,
				["ResultRanking"] = {2,2},
				["Rewards"] = {{5030045,90},{4010011,900},{4030011,36},{4040002,8}}
			},
			[103] = {
				["Index"] = 103,
				["Type"] = 2,
				["ResultRanking"] = {3,3},
				["Rewards"] = {{5030045,80},{4010011,800},{4030011,32},{4040002,6}}
			},
			[104] = {
				["Index"] = 104,
				["Type"] = 2,
				["ResultRanking"] = {4,5},
				["Rewards"] = {{5030045,70},{4010011,700},{4030011,28},{4040002,4}}
			},
			[105] = {
				["Index"] = 105,
				["Type"] = 2,
				["ResultRanking"] = {6,10},
				["Rewards"] = {{5030045,60},{4010011,600},{4030011,24},{4040002,2}}
			},
			[106] = {
				["Index"] = 106,
				["Type"] = 2,
				["ResultRanking"] = {11,20},
				["Rewards"] = {{5030045,56},{4010011,560},{4030011,22}}
			},
			[107] = {
				["Index"] = 107,
				["Type"] = 2,
				["ResultRanking"] = {21,30},
				["Rewards"] = {{5030045,52},{4010011,520},{4030011,20}}
			},
			[108] = {
				["Index"] = 108,
				["Type"] = 2,
				["ResultRanking"] = {31,50},
				["Rewards"] = {{5030045,48},{4010011,480},{4030011,18}}
			},
			[109] = {
				["Index"] = 109,
				["Type"] = 2,
				["ResultRanking"] = {51,100},
				["Rewards"] = {{5030045,44},{4010011,440},{4030011,16}}
			},
			[110] = {
				["Index"] = 110,
				["Type"] = 2,
				["ResultRanking"] = {101,200},
				["Rewards"] = {{5030045,40},{4010011,400},{4030011,14}}
			},
			[111] = {
				["Index"] = 111,
				["Type"] = 2,
				["ResultRanking"] = {201,500},
				["Rewards"] = {{5030045,38},{4010011,380},{4030011,12}}
			},
			[112] = {
				["Index"] = 112,
				["Type"] = 2,
				["ResultRanking"] = {501,1000},
				["Rewards"] = {{5030045,36},{4010011,360},{4030011,10}}
			},
			[113] = {
				["Index"] = 113,
				["Type"] = 2,
				["ResultRanking"] = {1001,2000},
				["Rewards"] = {{5030045,34},{4010011,340}}
			},
			[114] = {
				["Index"] = 114,
				["Type"] = 2,
				["ResultRanking"] = {2001,5000},
				["Rewards"] = {{5030045,32},{4010011,320}}
			},
			[115] = {
				["Index"] = 115,
				["Type"] = 2,
				["ResultRanking"] = {5001,10000},
				["Rewards"] = {{5030045,30},{4010011,300}}
			},
			[1] = {
				["Index"] = 1,
				["Type"] = 1,
				["CheckCondition"] = {{">=",1}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[2] = {
				["Index"] = 2,
				["Type"] = 1,
				["CheckCondition"] = {{">=",2}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[3] = {
				["Index"] = 3,
				["Type"] = 1,
				["CheckCondition"] = {{">=",3}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[4] = {
				["Index"] = 4,
				["Type"] = 1,
				["CheckCondition"] = {{">=",4}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[5] = {
				["Index"] = 5,
				["Type"] = 1,
				["CheckCondition"] = {{">=",5}},
				["Rewards"] = {{5030045,20},{4010011,400}}
			},
			[6] = {
				["Index"] = 6,
				["Type"] = 1,
				["CheckCondition"] = {{">=",6}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[7] = {
				["Index"] = 7,
				["Type"] = 1,
				["CheckCondition"] = {{">=",7}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[8] = {
				["Index"] = 8,
				["Type"] = 1,
				["CheckCondition"] = {{">=",8}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[9] = {
				["Index"] = 9,
				["Type"] = 1,
				["CheckCondition"] = {{">=",9}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[10] = {
				["Index"] = 10,
				["Type"] = 1,
				["CheckCondition"] = {{">=",10}},
				["Rewards"] = {{5030045,20},{4010011,400}}
			},
			[11] = {
				["Index"] = 11,
				["Type"] = 1,
				["CheckCondition"] = {{">=",11}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[12] = {
				["Index"] = 12,
				["Type"] = 1,
				["CheckCondition"] = {{">=",12}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[13] = {
				["Index"] = 13,
				["Type"] = 1,
				["CheckCondition"] = {{">=",13}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[14] = {
				["Index"] = 14,
				["Type"] = 1,
				["CheckCondition"] = {{">=",14}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[15] = {
				["Index"] = 15,
				["Type"] = 1,
				["CheckCondition"] = {{">=",15}},
				["Rewards"] = {{5030045,20},{4010011,400}}
			},
			[16] = {
				["Index"] = 16,
				["Type"] = 1,
				["CheckCondition"] = {{">=",16}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[17] = {
				["Index"] = 17,
				["Type"] = 1,
				["CheckCondition"] = {{">=",17}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[18] = {
				["Index"] = 18,
				["Type"] = 1,
				["CheckCondition"] = {{">=",18}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[19] = {
				["Index"] = 19,
				["Type"] = 1,
				["CheckCondition"] = {{">=",19}},
				["Rewards"] = {{5030045,10},{4010011,200}}
			},
			[20] = {
				["Index"] = 20,
				["Type"] = 1,
				["CheckCondition"] = {{">=",20}},
				["Rewards"] = {{5030045,20},{4010011,400}}
			}
		}
	}
}
