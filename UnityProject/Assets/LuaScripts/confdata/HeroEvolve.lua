--[[
	HeroEvolve

	字段列表:
		Evolve {int} 进化等级
		NeedQuality* {int} 要求品质
		NeedStar* {int} 要求星级
		NeedLevel* {int} 要求等级
		Cost* {map{[auto] = auto}} 进化消耗
		MustCost* {map{[auto] = auto}} 必成消耗
		SkillOdds* {int} 技能转化率(万分比)
		SoulOdds* {int} 魂魄转化率(万分比)
		Attrs* {array(array(number, number...), ...)} 属性系数

]]
return {
	[1] = {
		["Evolve"] = 1,
		["NeedQuality"] = 5,
		["NeedStar"] = 10,
		["NeedLevel"] = 100,
		["Cost"] = {
			[4010304] = 1
		},
		["MustCost"] = {
			[4010002] = 100
		},
		["SkillOdds"] = 200,
		["SoulOdds"] = 150,
		["Attrs"] = {{12,2000,1},{21,2000,1},{41,2000,1},{42,2000,1}}
	},
	[2] = {
		["Evolve"] = 2,
		["NeedQuality"] = 5,
		["NeedStar"] = 15,
		["NeedLevel"] = 150,
		["Cost"] = {
			[4010304] = 2
		},
		["MustCost"] = {
			[4010002] = 200
		},
		["SkillOdds"] = 160,
		["SoulOdds"] = 120,
		["Attrs"] = {{12,4000,1},{21,4000,1},{41,4000,1},{42,4000,1}}
	},
	[3] = {
		["Evolve"] = 3,
		["NeedQuality"] = 5,
		["NeedStar"] = 20,
		["NeedLevel"] = 200,
		["Cost"] = {
			[4010304] = 4,
			[4010305] = 1
		},
		["MustCost"] = {
			[4010002] = 400
		},
		["SkillOdds"] = 130,
		["SoulOdds"] = 100,
		["Attrs"] = {{12,8000,1},{21,8000,1},{41,8000,1},{42,8000,1}}
	},
	[4] = {
		["Evolve"] = 4,
		["NeedQuality"] = 5,
		["NeedStar"] = 25,
		["NeedLevel"] = 250,
		["Cost"] = {
			[4010304] = 8,
			[4010305] = 2
		},
		["MustCost"] = {
			[4010002] = 800
		},
		["SkillOdds"] = 100,
		["SoulOdds"] = 100,
		["Attrs"] = {{12,12000,1},{21,12000,1},{41,12000,1},{42,12000,1}}
	}
}
