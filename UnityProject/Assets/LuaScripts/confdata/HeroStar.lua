--[[
	HeroStar

	字段列表:
		Star {int} 星级
		AttrParam* {number} 属性系数
		AttrParam2* {number} 属性系数2
		NeedQuality* {int} 要求品质
		NeedEvolve* {int} 要求进化
		Cost* {array(array(int, int...), ...)} 升到此星消耗
		DecomposeReturnSelf {int} 分解返还本体
		DecomposeReturnType {int} 分解返还同系
		DecomposeCost {map{[auto] = auto}} 分解消耗
		Attrs {array(array(int, int...), ...)} 额外加的属性

]]
return {
	[1] = {
		["Star"] = 1,
		["AttrParam"] = 0.5,
		["AttrParam2"] = 0,
		["NeedQuality"] = 0,
		["NeedEvolve"] = 0,
		["Cost"] = {{1,1}}
	},
	[2] = {
		["Star"] = 2,
		["AttrParam"] = 1,
		["AttrParam2"] = 5,
		["NeedQuality"] = 0,
		["NeedEvolve"] = 0,
		["Cost"] = {{1,1}}
	},
	[3] = {
		["Star"] = 3,
		["AttrParam"] = 1.5,
		["AttrParam2"] = 10,
		["NeedQuality"] = 0,
		["NeedEvolve"] = 0,
		["Cost"] = {{1,1},{1,1}}
	},
	[4] = {
		["Star"] = 4,
		["AttrParam"] = 2.5,
		["AttrParam2"] = 50,
		["NeedQuality"] = 0,
		["NeedEvolve"] = 0,
		["Cost"] = {{2,3},{2,3}},
		["Attrs"] = {{311,1000}}
	},
	[5] = {
		["Star"] = 5,
		["AttrParam"] = 5,
		["AttrParam2"] = 80,
		["NeedQuality"] = 0,
		["NeedEvolve"] = 0,
		["Cost"] = {{1,3},{1,3},{2,3},{2,3},{2,3}},
		["Attrs"] = {{311,2000}}
	},
	[6] = {
		["Star"] = 6,
		["AttrParam"] = 8,
		["AttrParam2"] = 110,
		["NeedQuality"] = 4,
		["NeedEvolve"] = 0,
		["Cost"] = {{1,5}},
		["DecomposeReturnSelf"] = 2,
		["DecomposeCost"] = {
			[211] = 60
		},
		["Attrs"] = {{311,3000}}
	},
	[7] = {
		["Star"] = 7,
		["AttrParam"] = 12,
		["AttrParam2"] = 130,
		["NeedQuality"] = 4,
		["NeedEvolve"] = 0,
		["Cost"] = {{2,5},{2,5}},
		["DecomposeReturnSelf"] = 2,
		["DecomposeReturnType"] = 2,
		["DecomposeCost"] = {
			[211] = 70
		},
		["Attrs"] = {{311,4000}}
	},
	[8] = {
		["Star"] = 8,
		["AttrParam"] = 20,
		["AttrParam2"] = 160,
		["NeedQuality"] = 4,
		["NeedEvolve"] = 0,
		["Cost"] = {{1,5},{3,5}},
		["DecomposeReturnSelf"] = 3,
		["DecomposeReturnType"] = 2,
		["DecomposeCost"] = {
			[211] = 80
		},
		["Attrs"] = {{311,6000}}
	},
	[9] = {
		["Star"] = 9,
		["AttrParam"] = 30,
		["AttrParam2"] = 180,
		["NeedQuality"] = 4,
		["NeedEvolve"] = 0,
		["Cost"] = {{2,5},{3,5}},
		["DecomposeReturnSelf"] = 3,
		["DecomposeReturnType"] = 3,
		["DecomposeCost"] = {
			[211] = 90
		},
		["Attrs"] = {{311,8000}}
	},
	[10] = {
		["Star"] = 10,
		["AttrParam"] = 40,
		["AttrParam2"] = 200,
		["NeedQuality"] = 4,
		["NeedEvolve"] = 0,
		["Cost"] = {{1,5},{2,5},{2,5}},
		["DecomposeReturnSelf"] = 4,
		["DecomposeReturnType"] = 5,
		["DecomposeCost"] = {
			[211] = 100
		},
		["Attrs"] = {{311,10000}}
	},
	[11] = {
		["Star"] = 11,
		["AttrParam"] = 46,
		["AttrParam2"] = 320,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 1,
		["Cost"] = {{2,10}},
		["DecomposeReturnSelf"] = 4,
		["DecomposeReturnType"] = 10,
		["DecomposeCost"] = {
			[211] = 110
		},
		["Attrs"] = {{311,13000}}
	},
	[12] = {
		["Star"] = 12,
		["AttrParam"] = 53,
		["AttrParam2"] = 470,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 1,
		["Cost"] = {{1,5},{2,5},{3,5},{3,5}},
		["DecomposeReturnSelf"] = 5,
		["DecomposeReturnType"] = 11,
		["DecomposeCost"] = {
			[211] = 120
		},
		["Attrs"] = {{311,16000}}
	},
	[13] = {
		["Star"] = 13,
		["AttrParam"] = 60,
		["AttrParam2"] = 600,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 1,
		["Cost"] = {{1,5},{1,5},{2,5}},
		["DecomposeReturnSelf"] = 7,
		["DecomposeReturnType"] = 12,
		["DecomposeCost"] = {
			[211] = 130
		},
		["Attrs"] = {{311,19000}}
	},
	[14] = {
		["Star"] = 14,
		["AttrParam"] = 70,
		["AttrParam2"] = 800,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 1,
		["Cost"] = {{1,5},{2,5},{2,5},{3,5}},
		["DecomposeReturnSelf"] = 8,
		["DecomposeReturnType"] = 14,
		["DecomposeCost"] = {
			[211] = 140
		},
		["Attrs"] = {{311,22000}}
	},
	[15] = {
		["Star"] = 15,
		["AttrParam"] = 90,
		["AttrParam2"] = 1000,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 1,
		["Cost"] = {{1,5},{1,5},{3,5}},
		["DecomposeReturnSelf"] = 10,
		["DecomposeReturnType"] = 14,
		["DecomposeCost"] = {
			[211] = 150
		},
		["Attrs"] = {{311,25000}}
	},
	[16] = {
		["Star"] = 16,
		["AttrParam"] = 104,
		["AttrParam2"] = 1300,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 2,
		["Cost"] = {{2,10},{3,10}},
		["DecomposeReturnSelf"] = 10,
		["DecomposeReturnType"] = 19,
		["DecomposeCost"] = {
			[211] = 160
		},
		["Attrs"] = {{311,28000}}
	},
	[17] = {
		["Star"] = 17,
		["AttrParam"] = 120,
		["AttrParam2"] = 1500,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 2,
		["Cost"] = {{1,5},{2,5},{3,5},{3,5}},
		["DecomposeReturnSelf"] = 11,
		["DecomposeReturnType"] = 20,
		["DecomposeCost"] = {
			[211] = 170
		},
		["Attrs"] = {{311,31000}}
	},
	[18] = {
		["Star"] = 18,
		["AttrParam"] = 138,
		["AttrParam2"] = 1800,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 2,
		["Cost"] = {{1,5},{1,5},{2,5},{2,5}},
		["DecomposeReturnSelf"] = 13,
		["DecomposeReturnType"] = 22,
		["DecomposeCost"] = {
			[211] = 180
		},
		["Attrs"] = {{311,34000}}
	},
	[19] = {
		["Star"] = 19,
		["AttrParam"] = 160,
		["AttrParam2"] = 2100,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 2,
		["Cost"] = {{1,5},{2,5},{2,5},{3,5}},
		["DecomposeReturnSelf"] = 14,
		["DecomposeReturnType"] = 24,
		["DecomposeCost"] = {
			[211] = 190
		},
		["Attrs"] = {{311,37000}}
	},
	[20] = {
		["Star"] = 20,
		["AttrParam"] = 200,
		["AttrParam2"] = 2400,
		["NeedQuality"] = 5,
		["NeedEvolve"] = 2,
		["Cost"] = {{1,5},{1,5},{2,5},{2,5},{3,5}},
		["DecomposeReturnSelf"] = 16,
		["DecomposeReturnType"] = 26,
		["DecomposeCost"] = {
			[211] = 200
		},
		["Attrs"] = {{311,40000}}
	},
	[21] = {
		["Star"] = 21,
		["AttrParam"] = 230,
		["AttrParam2"] = 2700,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 3,
		["Cost"] = {{1,10},{3,10}},
		["DecomposeReturnSelf"] = 20,
		["DecomposeReturnType"] = 26,
		["DecomposeCost"] = {
			[211] = 210
		},
		["Attrs"] = {{311,44000}}
	},
	[22] = {
		["Star"] = 22,
		["AttrParam"] = 260,
		["AttrParam2"] = 3000,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 3,
		["Cost"] = {{1,5},{2,5},{2,5},{3,5}},
		["DecomposeReturnSelf"] = 21,
		["DecomposeReturnType"] = 28,
		["DecomposeCost"] = {
			[211] = 220
		},
		["Attrs"] = {{311,48000}}
	},
	[23] = {
		["Star"] = 23,
		["AttrParam"] = 300,
		["AttrParam2"] = 3300,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 3,
		["Cost"] = {{1,5},{1,5},{2,5},{2,5}},
		["DecomposeReturnSelf"] = 23,
		["DecomposeReturnType"] = 30,
		["DecomposeCost"] = {
			[211] = 230
		},
		["Attrs"] = {{311,52000}}
	},
	[24] = {
		["Star"] = 24,
		["AttrParam"] = 345,
		["AttrParam2"] = 3600,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 3,
		["Cost"] = {{1,5},{1,5},{2,5},{3,5}},
		["DecomposeReturnSelf"] = 25,
		["DecomposeReturnType"] = 31,
		["DecomposeCost"] = {
			[211] = 240
		},
		["Attrs"] = {{311,56000}}
	},
	[25] = {
		["Star"] = 25,
		["AttrParam"] = 430,
		["AttrParam2"] = 4000,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 3,
		["Cost"] = {{1,5},{1,5},{1,5},{2,5},{2,5}},
		["DecomposeReturnSelf"] = 28,
		["DecomposeReturnType"] = 33,
		["DecomposeCost"] = {
			[211] = 250
		},
		["Attrs"] = {{311,60000}}
	},
	[26] = {
		["Star"] = 26,
		["AttrParam"] = 500,
		["AttrParam2"] = 4300,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 4,
		["Cost"] = {{1,10},{3,10},{3,10}},
		["DecomposeReturnSelf"] = 32,
		["DecomposeReturnType"] = 33,
		["DecomposeCost"] = {
			[211] = 260
		},
		["Attrs"] = {{311,64000}}
	},
	[27] = {
		["Star"] = 27,
		["AttrParam"] = 575,
		["AttrParam2"] = 4700,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 4,
		["Cost"] = {{1,5},{2,5},{2,5},{3,5}},
		["DecomposeReturnSelf"] = 33,
		["DecomposeReturnType"] = 35,
		["DecomposeCost"] = {
			[211] = 270
		},
		["Attrs"] = {{311,68000}}
	},
	[28] = {
		["Star"] = 28,
		["AttrParam"] = 660,
		["AttrParam2"] = 5100,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 4,
		["Cost"] = {{1,5},{1,5},{2,5},{2,5}},
		["DecomposeReturnSelf"] = 35,
		["DecomposeReturnType"] = 37,
		["DecomposeCost"] = {
			[211] = 280
		},
		["Attrs"] = {{311,72000}}
	},
	[29] = {
		["Star"] = 29,
		["AttrParam"] = 760,
		["AttrParam2"] = 5500,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 4,
		["Cost"] = {{1,5},{1,5},{2,5},{3,5}},
		["DecomposeReturnSelf"] = 37,
		["DecomposeReturnType"] = 38,
		["DecomposeCost"] = {
			[211] = 290
		},
		["Attrs"] = {{311,76000}}
	},
	[30] = {
		["Star"] = 30,
		["AttrParam"] = 900,
		["AttrParam2"] = 6000,
		["NeedQuality"] = 6,
		["NeedEvolve"] = 4,
		["Cost"] = {{1,5},{1,5},{1,5},{2,5},{2,5}},
		["DecomposeReturnSelf"] = 40,
		["DecomposeReturnType"] = 40,
		["DecomposeCost"] = {
			[211] = 300
		},
		["Attrs"] = {{311,80000}}
	}
}
