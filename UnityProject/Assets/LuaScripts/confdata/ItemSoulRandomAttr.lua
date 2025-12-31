--[[
	ItemSoulRandomAttr

	字段列表:
		Id {int} 编号
		Attrs.Index* {int} 序号
		Attrs.AttrId* {int} 属性ID
		Attrs.Quality {string} 品质
		Attrs.Weight* {int} 权重
		Attrs.Zone* {int} 乘区
		Attrs.Enhance {bool} 受魂魄增强影响
		Attrs.ValueMin* {number} 值：下限
		Attrs.ValueMax {number} 值：上限

]]
return {
	[1] = {
		["Id"] = 1,
		["Attrs"] = {
			[1] = {
				["Index"] = 1,
				["AttrId"] = 1,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 10,
				["ValueMax"] = 20
			},
			[2] = {
				["Index"] = 2,
				["AttrId"] = 2,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 10,
				["ValueMax"] = 20
			},
			[3] = {
				["Index"] = 3,
				["AttrId"] = 3,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 10,
				["ValueMax"] = 20
			},
			[4] = {
				["Index"] = 4,
				["AttrId"] = 11,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 10,
				["ValueMax"] = 20
			},
			[5] = {
				["Index"] = 5,
				["AttrId"] = 12,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3,
				["ValueMax"] = 6
			},
			[6] = {
				["Index"] = 6,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 30,
				["ValueMax"] = 60
			},
			[7] = {
				["Index"] = 7,
				["AttrId"] = 21,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 100,
				["ValueMax"] = 200
			},
			[8] = {
				["Index"] = 8,
				["AttrId"] = 42,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 30,
				["ValueMax"] = 60
			},
			[9] = {
				["Index"] = 9,
				["AttrId"] = 105,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 250,
				["ValueMax"] = 500
			},
			[10] = {
				["Index"] = 10,
				["AttrId"] = 601,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.3,
				["ValueMax"] = 0.6
			},
			[11] = {
				["Index"] = 11,
				["AttrId"] = 602,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.3,
				["ValueMax"] = 0.6
			},
			[12] = {
				["Index"] = 12,
				["AttrId"] = 603,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.3,
				["ValueMax"] = 0.6
			},
			[13] = {
				["Index"] = 13,
				["AttrId"] = 604,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.3,
				["ValueMax"] = 0.6
			},
			[14] = {
				["Index"] = 14,
				["AttrId"] = 605,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.09,
				["ValueMax"] = 0.18
			},
			[15] = {
				["Index"] = 15,
				["AttrId"] = 606,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1.5,
				["ValueMax"] = 3
			},
			[16] = {
				["Index"] = 16,
				["AttrId"] = 607,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.9,
				["ValueMax"] = 1.8
			},
			[17] = {
				["Index"] = 17,
				["AttrId"] = 608,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.9,
				["ValueMax"] = 1.8
			},
			[18] = {
				["Index"] = 18,
				["AttrId"] = 164,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 1,
				["ValueMax"] = 1
			},
			[19] = {
				["Index"] = 19,
				["AttrId"] = 51,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 25,
				["ValueMax"] = 50
			},
			[20] = {
				["Index"] = 20,
				["AttrId"] = 201,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 200,
				["ValueMax"] = 400
			},
			[21] = {
				["Index"] = 21,
				["AttrId"] = 212,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[22] = {
				["Index"] = 22,
				["AttrId"] = 32,
				["Quality"] = "6",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 1,
				["ValueMax"] = 2
			},
			[23] = {
				["Index"] = 23,
				["AttrId"] = 161,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 5,
				["ValueMax"] = 10
			}
		}
	},
	[2] = {
		["Id"] = 2,
		["Attrs"] = {
			[1] = {
				["Index"] = 1,
				["AttrId"] = 1,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[2] = {
				["Index"] = 2,
				["AttrId"] = 2,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[3] = {
				["Index"] = 3,
				["AttrId"] = 3,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[4] = {
				["Index"] = 4,
				["AttrId"] = 11,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[5] = {
				["Index"] = 5,
				["AttrId"] = 12,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 15,
				["ValueMax"] = 30
			},
			[6] = {
				["Index"] = 6,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 150,
				["ValueMax"] = 300
			},
			[7] = {
				["Index"] = 7,
				["AttrId"] = 21,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[8] = {
				["Index"] = 8,
				["AttrId"] = 42,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 150,
				["ValueMax"] = 300
			},
			[9] = {
				["Index"] = 9,
				["AttrId"] = 105,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[10] = {
				["Index"] = 10,
				["AttrId"] = 601,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.9,
				["ValueMax"] = 1.8
			},
			[11] = {
				["Index"] = 11,
				["AttrId"] = 602,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.9,
				["ValueMax"] = 1.8
			},
			[12] = {
				["Index"] = 12,
				["AttrId"] = 603,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.9,
				["ValueMax"] = 1.8
			},
			[13] = {
				["Index"] = 13,
				["AttrId"] = 604,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.9,
				["ValueMax"] = 1.8
			},
			[14] = {
				["Index"] = 14,
				["AttrId"] = 605,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 0.27,
				["ValueMax"] = 0.54
			},
			[15] = {
				["Index"] = 15,
				["AttrId"] = 606,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 4.5,
				["ValueMax"] = 9
			},
			[16] = {
				["Index"] = 16,
				["AttrId"] = 607,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 2.7,
				["ValueMax"] = 5.4
			},
			[17] = {
				["Index"] = 17,
				["AttrId"] = 608,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1.8,
				["ValueMax"] = 3.6
			},
			[18] = {
				["Index"] = 18,
				["AttrId"] = 164,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 1,
				["ValueMax"] = 1
			},
			[19] = {
				["Index"] = 19,
				["AttrId"] = 51,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 40,
				["ValueMax"] = 80
			},
			[20] = {
				["Index"] = 20,
				["AttrId"] = 201,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 300,
				["ValueMax"] = 600
			},
			[21] = {
				["Index"] = 21,
				["AttrId"] = 212,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 600,
				["ValueMax"] = 1200
			},
			[22] = {
				["Index"] = 22,
				["AttrId"] = 32,
				["Quality"] = "6",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 2,
				["ValueMax"] = 4
			},
			[23] = {
				["Index"] = 23,
				["AttrId"] = 161,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 7,
				["ValueMax"] = 15
			}
		}
	},
	[3] = {
		["Id"] = 3,
		["Attrs"] = {
			[1] = {
				["Index"] = 1,
				["AttrId"] = 1,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 350,
				["ValueMax"] = 700
			},
			[2] = {
				["Index"] = 2,
				["AttrId"] = 2,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 350,
				["ValueMax"] = 700
			},
			[3] = {
				["Index"] = 3,
				["AttrId"] = 3,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 350,
				["ValueMax"] = 700
			},
			[4] = {
				["Index"] = 4,
				["AttrId"] = 11,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 350,
				["ValueMax"] = 700
			},
			[5] = {
				["Index"] = 5,
				["AttrId"] = 12,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 105,
				["ValueMax"] = 210
			},
			[6] = {
				["Index"] = 6,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1050,
				["ValueMax"] = 2100
			},
			[7] = {
				["Index"] = 7,
				["AttrId"] = 21,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3500,
				["ValueMax"] = 7000
			},
			[8] = {
				["Index"] = 8,
				["AttrId"] = 42,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1050,
				["ValueMax"] = 2100
			},
			[9] = {
				["Index"] = 9,
				["AttrId"] = 105,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 750,
				["ValueMax"] = 1500
			},
			[10] = {
				["Index"] = 10,
				["AttrId"] = 601,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3.6,
				["ValueMax"] = 7.2
			},
			[11] = {
				["Index"] = 11,
				["AttrId"] = 602,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3.6,
				["ValueMax"] = 7.2
			},
			[12] = {
				["Index"] = 12,
				["AttrId"] = 603,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3.6,
				["ValueMax"] = 7.2
			},
			[13] = {
				["Index"] = 13,
				["AttrId"] = 604,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3.6,
				["ValueMax"] = 7.2
			},
			[14] = {
				["Index"] = 14,
				["AttrId"] = 605,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1.08,
				["ValueMax"] = 2.16
			},
			[15] = {
				["Index"] = 15,
				["AttrId"] = 606,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 18,
				["ValueMax"] = 36
			},
			[16] = {
				["Index"] = 16,
				["AttrId"] = 607,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 10.8,
				["ValueMax"] = 21.6
			},
			[17] = {
				["Index"] = 17,
				["AttrId"] = 608,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 7.2,
				["ValueMax"] = 14.4
			},
			[18] = {
				["Index"] = 18,
				["AttrId"] = 164,
				["Quality"] = "5",
				["Weight"] = 3,
				["Zone"] = 0,
				["ValueMin"] = 1,
				["ValueMax"] = 2
			},
			[19] = {
				["Index"] = 19,
				["AttrId"] = 51,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[20] = {
				["Index"] = 20,
				["AttrId"] = 201,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 400,
				["ValueMax"] = 800
			},
			[21] = {
				["Index"] = 21,
				["AttrId"] = 212,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 750,
				["ValueMax"] = 1500
			},
			[22] = {
				["Index"] = 22,
				["AttrId"] = 32,
				["Quality"] = "6",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 3,
				["ValueMax"] = 6
			},
			[23] = {
				["Index"] = 23,
				["AttrId"] = 161,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 10,
				["ValueMax"] = 20
			}
		}
	},
	[4] = {
		["Id"] = 4,
		["Attrs"] = {
			[1] = {
				["Index"] = 1,
				["AttrId"] = 1,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1050,
				["ValueMax"] = 2100
			},
			[2] = {
				["Index"] = 2,
				["AttrId"] = 2,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1050,
				["ValueMax"] = 2100
			},
			[3] = {
				["Index"] = 3,
				["AttrId"] = 3,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1050,
				["ValueMax"] = 2100
			},
			[4] = {
				["Index"] = 4,
				["AttrId"] = 11,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1050,
				["ValueMax"] = 2100
			},
			[5] = {
				["Index"] = 5,
				["AttrId"] = 12,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 315,
				["ValueMax"] = 630
			},
			[6] = {
				["Index"] = 6,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3150,
				["ValueMax"] = 6300
			},
			[7] = {
				["Index"] = 7,
				["AttrId"] = 21,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 10500,
				["ValueMax"] = 21000
			},
			[8] = {
				["Index"] = 8,
				["AttrId"] = 42,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3150,
				["ValueMax"] = 6300
			},
			[9] = {
				["Index"] = 9,
				["AttrId"] = 105,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 1000,
				["ValueMax"] = 2000
			},
			[10] = {
				["Index"] = 10,
				["AttrId"] = 601,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 21.6,
				["ValueMax"] = 43.2
			},
			[11] = {
				["Index"] = 11,
				["AttrId"] = 602,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 21.6,
				["ValueMax"] = 43.2
			},
			[12] = {
				["Index"] = 12,
				["AttrId"] = 603,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 21.6,
				["ValueMax"] = 43.2
			},
			[13] = {
				["Index"] = 13,
				["AttrId"] = 604,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 21.6,
				["ValueMax"] = 43.2
			},
			[14] = {
				["Index"] = 14,
				["AttrId"] = 605,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 6.48,
				["ValueMax"] = 12.96
			},
			[15] = {
				["Index"] = 15,
				["AttrId"] = 606,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 108,
				["ValueMax"] = 216
			},
			[16] = {
				["Index"] = 16,
				["AttrId"] = 607,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 64.8,
				["ValueMax"] = 129.6
			},
			[17] = {
				["Index"] = 17,
				["AttrId"] = 608,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 28.8,
				["ValueMax"] = 57.6
			},
			[18] = {
				["Index"] = 18,
				["AttrId"] = 164,
				["Quality"] = "5",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 2,
				["ValueMax"] = 4
			},
			[19] = {
				["Index"] = 19,
				["AttrId"] = 51,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[20] = {
				["Index"] = 20,
				["AttrId"] = 201,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[21] = {
				["Index"] = 21,
				["AttrId"] = 212,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 1250,
				["ValueMax"] = 2500
			},
			[22] = {
				["Index"] = 22,
				["AttrId"] = 32,
				["Quality"] = "6",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 4,
				["ValueMax"] = 8
			},
			[23] = {
				["Index"] = 23,
				["AttrId"] = 161,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 15,
				["ValueMax"] = 25
			},
			[24] = {
				["Index"] = 24,
				["AttrId"] = 1,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[25] = {
				["Index"] = 25,
				["AttrId"] = 2,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[26] = {
				["Index"] = 26,
				["AttrId"] = 3,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[27] = {
				["Index"] = 27,
				["AttrId"] = 11,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[28] = {
				["Index"] = 28,
				["AttrId"] = 12,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[29] = {
				["Index"] = 29,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[30] = {
				["Index"] = 30,
				["AttrId"] = 21,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[31] = {
				["Index"] = 31,
				["AttrId"] = 42,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[32] = {
				["Index"] = 32,
				["AttrId"] = 105,
				["Quality"] = "6",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 500,
				["ValueMax"] = 1000
			},
			[33] = {
				["Index"] = 33,
				["AttrId"] = 152,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 20,
				["ValueMax"] = 40
			},
			[34] = {
				["Index"] = 34,
				["AttrId"] = 154,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 5,
				["ValueMax"] = 10
			}
		}
	},
	[5] = {
		["Id"] = 5,
		["Attrs"] = {
			[1] = {
				["Index"] = 1,
				["AttrId"] = 1,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3150,
				["ValueMax"] = 6300
			},
			[2] = {
				["Index"] = 2,
				["AttrId"] = 2,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3150,
				["ValueMax"] = 6300
			},
			[3] = {
				["Index"] = 3,
				["AttrId"] = 3,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3150,
				["ValueMax"] = 6300
			},
			[4] = {
				["Index"] = 4,
				["AttrId"] = 11,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 3150,
				["ValueMax"] = 6300
			},
			[5] = {
				["Index"] = 5,
				["AttrId"] = 12,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 945,
				["ValueMax"] = 1890
			},
			[6] = {
				["Index"] = 6,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 9450,
				["ValueMax"] = 18900
			},
			[7] = {
				["Index"] = 7,
				["AttrId"] = 21,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 31500,
				["ValueMax"] = 63000
			},
			[8] = {
				["Index"] = 8,
				["AttrId"] = 42,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 9450,
				["ValueMax"] = 18900
			},
			[9] = {
				["Index"] = 9,
				["AttrId"] = 105,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 1250,
				["ValueMax"] = 2500
			},
			[10] = {
				["Index"] = 10,
				["AttrId"] = 601,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 64.8,
				["ValueMax"] = 129.6
			},
			[11] = {
				["Index"] = 11,
				["AttrId"] = 602,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 64.8,
				["ValueMax"] = 129.6
			},
			[12] = {
				["Index"] = 12,
				["AttrId"] = 603,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 64.8,
				["ValueMax"] = 129.6
			},
			[13] = {
				["Index"] = 13,
				["AttrId"] = 604,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 64.8,
				["ValueMax"] = 129.6
			},
			[14] = {
				["Index"] = 14,
				["AttrId"] = 605,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 19.44,
				["ValueMax"] = 38.88
			},
			[15] = {
				["Index"] = 15,
				["AttrId"] = 606,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 324,
				["ValueMax"] = 648
			},
			[16] = {
				["Index"] = 16,
				["AttrId"] = 607,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 194.4,
				["ValueMax"] = 388.8
			},
			[17] = {
				["Index"] = 17,
				["AttrId"] = 608,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 86.4,
				["ValueMax"] = 172.8
			},
			[18] = {
				["Index"] = 18,
				["AttrId"] = 164,
				["Quality"] = "5",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 2,
				["ValueMax"] = 4
			},
			[19] = {
				["Index"] = 19,
				["AttrId"] = 51,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[20] = {
				["Index"] = 20,
				["AttrId"] = 201,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 625,
				["ValueMax"] = 1250
			},
			[21] = {
				["Index"] = 21,
				["AttrId"] = 212,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[22] = {
				["Index"] = 22,
				["AttrId"] = 32,
				["Quality"] = "6",
				["Weight"] = 4,
				["Zone"] = 0,
				["ValueMin"] = 4,
				["ValueMax"] = 8
			},
			[23] = {
				["Index"] = 23,
				["AttrId"] = 161,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 18,
				["ValueMax"] = 30
			},
			[24] = {
				["Index"] = 24,
				["AttrId"] = 1,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[25] = {
				["Index"] = 25,
				["AttrId"] = 2,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[26] = {
				["Index"] = 26,
				["AttrId"] = 3,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[27] = {
				["Index"] = 27,
				["AttrId"] = 11,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[28] = {
				["Index"] = 28,
				["AttrId"] = 12,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 1000,
				["ValueMax"] = 2000
			},
			[29] = {
				["Index"] = 29,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[30] = {
				["Index"] = 30,
				["AttrId"] = 21,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[31] = {
				["Index"] = 31,
				["AttrId"] = 42,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[32] = {
				["Index"] = 32,
				["AttrId"] = 105,
				["Quality"] = "6",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[33] = {
				["Index"] = 33,
				["AttrId"] = 152,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 25,
				["ValueMax"] = 50
			},
			[34] = {
				["Index"] = 34,
				["AttrId"] = 154,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 8,
				["ValueMax"] = 16
			}
		}
	},
	[6] = {
		["Id"] = 6,
		["Attrs"] = {
			[1] = {
				["Index"] = 1,
				["AttrId"] = 1,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 9450,
				["ValueMax"] = 18900
			},
			[2] = {
				["Index"] = 2,
				["AttrId"] = 2,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 9450,
				["ValueMax"] = 18900
			},
			[3] = {
				["Index"] = 3,
				["AttrId"] = 3,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 9450,
				["ValueMax"] = 18900
			},
			[4] = {
				["Index"] = 4,
				["AttrId"] = 11,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 9450,
				["ValueMax"] = 18900
			},
			[5] = {
				["Index"] = 5,
				["AttrId"] = 12,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 2835,
				["ValueMax"] = 5670
			},
			[6] = {
				["Index"] = 6,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 28350,
				["ValueMax"] = 56700
			},
			[7] = {
				["Index"] = 7,
				["AttrId"] = 21,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 94500,
				["ValueMax"] = 189000
			},
			[8] = {
				["Index"] = 8,
				["AttrId"] = 42,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 28350,
				["ValueMax"] = 56700
			},
			[9] = {
				["Index"] = 9,
				["AttrId"] = 105,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 1500,
				["ValueMax"] = 3000
			},
			[10] = {
				["Index"] = 10,
				["AttrId"] = 601,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 194.4,
				["ValueMax"] = 388.8
			},
			[11] = {
				["Index"] = 11,
				["AttrId"] = 602,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 194.4,
				["ValueMax"] = 388.8
			},
			[12] = {
				["Index"] = 12,
				["AttrId"] = 603,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 194.4,
				["ValueMax"] = 388.8
			},
			[13] = {
				["Index"] = 13,
				["AttrId"] = 604,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 194.4,
				["ValueMax"] = 388.8
			},
			[14] = {
				["Index"] = 14,
				["AttrId"] = 605,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 58.32,
				["ValueMax"] = 116.64
			},
			[15] = {
				["Index"] = 15,
				["AttrId"] = 606,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 972,
				["ValueMax"] = 1944
			},
			[16] = {
				["Index"] = 16,
				["AttrId"] = 607,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 583.2,
				["ValueMax"] = 1166.4
			},
			[17] = {
				["Index"] = 17,
				["AttrId"] = 608,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 172.8,
				["ValueMax"] = 345.6
			},
			[18] = {
				["Index"] = 18,
				["AttrId"] = 164,
				["Quality"] = "5",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 2,
				["ValueMax"] = 5
			},
			[19] = {
				["Index"] = 19,
				["AttrId"] = 51,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[20] = {
				["Index"] = 20,
				["AttrId"] = 201,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 750,
				["ValueMax"] = 1500
			},
			[21] = {
				["Index"] = 21,
				["AttrId"] = 212,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 2500,
				["ValueMax"] = 5000
			},
			[22] = {
				["Index"] = 22,
				["AttrId"] = 32,
				["Quality"] = "6",
				["Weight"] = 4,
				["Zone"] = 0,
				["ValueMin"] = 5,
				["ValueMax"] = 10
			},
			[23] = {
				["Index"] = 23,
				["AttrId"] = 161,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 20,
				["ValueMax"] = 35
			},
			[24] = {
				["Index"] = 24,
				["AttrId"] = 1,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[25] = {
				["Index"] = 25,
				["AttrId"] = 2,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[26] = {
				["Index"] = 26,
				["AttrId"] = 3,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[27] = {
				["Index"] = 27,
				["AttrId"] = 11,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[28] = {
				["Index"] = 28,
				["AttrId"] = 12,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[29] = {
				["Index"] = 29,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[30] = {
				["Index"] = 30,
				["AttrId"] = 21,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[31] = {
				["Index"] = 31,
				["AttrId"] = 42,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[32] = {
				["Index"] = 32,
				["AttrId"] = 105,
				["Quality"] = "6",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 6000,
				["ValueMax"] = 12000
			},
			[33] = {
				["Index"] = 33,
				["AttrId"] = 152,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 35,
				["ValueMax"] = 70
			},
			[34] = {
				["Index"] = 34,
				["AttrId"] = 154,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 10,
				["ValueMax"] = 20
			}
		}
	},
	[7] = {
		["Id"] = 7,
		["Attrs"] = {
			[1] = {
				["Index"] = 1,
				["AttrId"] = 1,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 28350,
				["ValueMax"] = 56700
			},
			[2] = {
				["Index"] = 2,
				["AttrId"] = 2,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 28350,
				["ValueMax"] = 56700
			},
			[3] = {
				["Index"] = 3,
				["AttrId"] = 3,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 28350,
				["ValueMax"] = 56700
			},
			[4] = {
				["Index"] = 4,
				["AttrId"] = 11,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 28350,
				["ValueMax"] = 56700
			},
			[5] = {
				["Index"] = 5,
				["AttrId"] = 12,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 8505,
				["ValueMax"] = 17010
			},
			[6] = {
				["Index"] = 6,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 85050,
				["ValueMax"] = 170100
			},
			[7] = {
				["Index"] = 7,
				["AttrId"] = 21,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 283500,
				["ValueMax"] = 567000
			},
			[8] = {
				["Index"] = 8,
				["AttrId"] = 42,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 85050,
				["ValueMax"] = 170100
			},
			[9] = {
				["Index"] = 9,
				["AttrId"] = 105,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 2000,
				["ValueMax"] = 4000
			},
			[10] = {
				["Index"] = 10,
				["AttrId"] = 601,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 388.8,
				["ValueMax"] = 777.6
			},
			[11] = {
				["Index"] = 11,
				["AttrId"] = 602,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 388.8,
				["ValueMax"] = 777.6
			},
			[12] = {
				["Index"] = 12,
				["AttrId"] = 603,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 388.8,
				["ValueMax"] = 777.6
			},
			[13] = {
				["Index"] = 13,
				["AttrId"] = 604,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 388.8,
				["ValueMax"] = 777.6
			},
			[14] = {
				["Index"] = 14,
				["AttrId"] = 605,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 116.64,
				["ValueMax"] = 233.28
			},
			[15] = {
				["Index"] = 15,
				["AttrId"] = 606,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1944,
				["ValueMax"] = 3888
			},
			[16] = {
				["Index"] = 16,
				["AttrId"] = 607,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 1166.4,
				["ValueMax"] = 2332.8
			},
			[17] = {
				["Index"] = 17,
				["AttrId"] = 608,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["Enhance"] = true,
				["ValueMin"] = 345.6,
				["ValueMax"] = 691.2
			},
			[18] = {
				["Index"] = 18,
				["AttrId"] = 164,
				["Quality"] = "5",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 3,
				["ValueMax"] = 6
			},
			[19] = {
				["Index"] = 19,
				["AttrId"] = 51,
				["Quality"] = "2",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[20] = {
				["Index"] = 20,
				["AttrId"] = 201,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 1000,
				["ValueMax"] = 2000
			},
			[21] = {
				["Index"] = 21,
				["AttrId"] = 212,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 3000,
				["ValueMax"] = 6000
			},
			[22] = {
				["Index"] = 22,
				["AttrId"] = 32,
				["Quality"] = "6",
				["Weight"] = 5,
				["Zone"] = 0,
				["ValueMin"] = 5,
				["ValueMax"] = 10
			},
			[23] = {
				["Index"] = 23,
				["AttrId"] = 161,
				["Quality"] = "5",
				["Weight"] = 1,
				["Zone"] = 0,
				["ValueMin"] = 25,
				["ValueMax"] = 40
			},
			[24] = {
				["Index"] = 24,
				["AttrId"] = 1,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[25] = {
				["Index"] = 25,
				["AttrId"] = 2,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[26] = {
				["Index"] = 26,
				["AttrId"] = 3,
				["Quality"] = "4",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[27] = {
				["Index"] = 27,
				["AttrId"] = 11,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[28] = {
				["Index"] = 28,
				["AttrId"] = 12,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 5000,
				["ValueMax"] = 10000
			},
			[29] = {
				["Index"] = 29,
				["AttrId"] = 41,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[30] = {
				["Index"] = 30,
				["AttrId"] = 21,
				["Quality"] = "3",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[31] = {
				["Index"] = 31,
				["AttrId"] = 42,
				["Quality"] = "5",
				["Weight"] = 10,
				["Zone"] = 1,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[32] = {
				["Index"] = 32,
				["AttrId"] = 105,
				["Quality"] = "6",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 10000,
				["ValueMax"] = 20000
			},
			[33] = {
				["Index"] = 33,
				["AttrId"] = 152,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 50,
				["ValueMax"] = 100
			},
			[34] = {
				["Index"] = 34,
				["AttrId"] = 154,
				["Quality"] = "7",
				["Weight"] = 10,
				["Zone"] = 0,
				["ValueMin"] = 13,
				["ValueMax"] = 26
			}
		}
	}
}
