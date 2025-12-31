--[[
	SaveMall

	字段列表:
		Id* {int} 表ID
		ShopType* {int} 所属商店
		ItemId {auto} 商品ID
		ItemCount* {int} 商品数量
		DayLimit {int} 每日限购
		WeekLimit {int} 每周限购
		BatchMax {auto} 批量购买最大次数
		PriceType {auto} 购买价格类型
		Price {auto} 购买价格

]]
return {
	[101] = {
		["Id"] = 101,
		["ShopType"] = 1,
		["ItemId"] = 5010012,
		["ItemCount"] = 1,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 0
	},
	[102] = {
		["Id"] = 102,
		["ShopType"] = 1,
		["ItemId"] = 4010001,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 211,
		["Price"] = 5
	},
	[103] = {
		["Id"] = 103,
		["ShopType"] = 1,
		["ItemId"] = 4010002,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 211,
		["Price"] = 80
	},
	[104] = {
		["Id"] = 104,
		["ShopType"] = 1,
		["ItemId"] = 4010011,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 211,
		["Price"] = 10
	},
	[105] = {
		["Id"] = 105,
		["ShopType"] = 1,
		["ItemId"] = 4020001,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 211,
		["Price"] = 20
	},
	[106] = {
		["Id"] = 106,
		["ShopType"] = 1,
		["ItemId"] = 4040001,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 211,
		["Price"] = 30
	},
	[107] = {
		["Id"] = 107,
		["ShopType"] = 1,
		["ItemId"] = 4030011,
		["ItemCount"] = 1,
		["BatchMax"] = 10,
		["PriceType"] = 211,
		["Price"] = 250
	},
	[108] = {
		["Id"] = 108,
		["ShopType"] = 1,
		["ItemId"] = 4030012,
		["ItemCount"] = 1,
		["BatchMax"] = 10,
		["PriceType"] = 211,
		["Price"] = 600
	},
	[109] = {
		["Id"] = 109,
		["ShopType"] = 1,
		["ItemId"] = 231,
		["ItemCount"] = 100,
		["BatchMax"] = 100,
		["PriceType"] = 211,
		["Price"] = 100
	},
	[151] = {
		["Id"] = 151,
		["ShopType"] = 1,
		["ItemId"] = 5030046,
		["ItemCount"] = 20,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 8000
	},
	[152] = {
		["Id"] = 152,
		["ShopType"] = 1,
		["ItemId"] = 5030045,
		["ItemCount"] = 20,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 3200
	},
	[153] = {
		["Id"] = 153,
		["ShopType"] = 1,
		["ItemId"] = 5030044,
		["ItemCount"] = 20,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 1280
	},
	[154] = {
		["Id"] = 154,
		["ShopType"] = 1,
		["ItemId"] = 5020025,
		["ItemCount"] = 20,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 2560
	},
	[155] = {
		["Id"] = 155,
		["ShopType"] = 1,
		["ItemId"] = 5020024,
		["ItemCount"] = 20,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 500
	},
	[156] = {
		["Id"] = 156,
		["ShopType"] = 1,
		["ItemId"] = 5040026,
		["ItemCount"] = 1,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 2000
	},
	[157] = {
		["Id"] = 157,
		["ShopType"] = 1,
		["ItemId"] = 5040025,
		["ItemCount"] = 1,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 800
	},
	[158] = {
		["Id"] = 158,
		["ShopType"] = 1,
		["ItemId"] = 5040024,
		["ItemCount"] = 1,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 211,
		["Price"] = 300
	},
	[201] = {
		["Id"] = 201,
		["ShopType"] = 2,
		["ItemId"] = 3024101,
		["ItemCount"] = 10,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 212,
		["Price"] = 2500
	},
	[202] = {
		["Id"] = 202,
		["ShopType"] = 2,
		["ItemId"] = 3024201,
		["ItemCount"] = 10,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 212,
		["Price"] = 2500
	},
	[203] = {
		["Id"] = 203,
		["ShopType"] = 2,
		["ItemId"] = 3024301,
		["ItemCount"] = 10,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 212,
		["Price"] = 2500
	},
	[204] = {
		["Id"] = 204,
		["ShopType"] = 2,
		["ItemId"] = 5020015,
		["ItemCount"] = 10,
		["DayLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 212,
		["Price"] = 16000
	},
	[205] = {
		["Id"] = 205,
		["ShopType"] = 2,
		["ItemId"] = 4051001,
		["ItemCount"] = 1,
		["DayLimit"] = 20,
		["BatchMax"] = 20,
		["PriceType"] = 212,
		["Price"] = 400
	},
	[206] = {
		["Id"] = 206,
		["ShopType"] = 2,
		["ItemId"] = 4051002,
		["ItemCount"] = 1,
		["DayLimit"] = 20,
		["BatchMax"] = 20,
		["PriceType"] = 212,
		["Price"] = 400
	},
	[211] = {
		["Id"] = 211,
		["ShopType"] = 2,
		["ItemId"] = 4010001,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 212,
		["Price"] = 50
	},
	[212] = {
		["Id"] = 212,
		["ShopType"] = 2,
		["ItemId"] = 4010002,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 212,
		["Price"] = 800
	},
	[213] = {
		["Id"] = 213,
		["ShopType"] = 2,
		["ItemId"] = 4010011,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 212,
		["Price"] = 100
	},
	[214] = {
		["Id"] = 214,
		["ShopType"] = 2,
		["ItemId"] = 4020001,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 212,
		["Price"] = 200
	},
	[215] = {
		["Id"] = 215,
		["ShopType"] = 2,
		["ItemId"] = 4040001,
		["ItemCount"] = 1,
		["BatchMax"] = 100,
		["PriceType"] = 212,
		["Price"] = 300
	},
	[301] = {
		["Id"] = 301,
		["ShopType"] = 3,
		["ItemId"] = 5010015,
		["ItemCount"] = 1,
		["WeekLimit"] = 3,
		["BatchMax"] = 3,
		["PriceType"] = 213,
		["Price"] = 96
	},
	[302] = {
		["Id"] = 302,
		["ShopType"] = 3,
		["ItemId"] = 5010014,
		["ItemCount"] = 1,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 213,
		["Price"] = 10
	},
	[303] = {
		["Id"] = 303,
		["ShopType"] = 3,
		["ItemId"] = 5010101,
		["ItemCount"] = 1,
		["WeekLimit"] = 3,
		["BatchMax"] = 3,
		["PriceType"] = 213,
		["Price"] = 60
	},
	[304] = {
		["Id"] = 304,
		["ShopType"] = 3,
		["ItemId"] = 5040015,
		["ItemCount"] = 1,
		["WeekLimit"] = 2,
		["BatchMax"] = 2,
		["PriceType"] = 213,
		["Price"] = 8
	},
	[305] = {
		["Id"] = 305,
		["ShopType"] = 3,
		["ItemId"] = 3045001,
		["ItemCount"] = 10,
		["WeekLimit"] = 2,
		["BatchMax"] = 2,
		["PriceType"] = 213,
		["Price"] = 15
	},
	[306] = {
		["Id"] = 306,
		["ShopType"] = 3,
		["ItemId"] = 3045002,
		["ItemCount"] = 10,
		["WeekLimit"] = 2,
		["BatchMax"] = 2,
		["PriceType"] = 213,
		["Price"] = 15
	},
	[307] = {
		["Id"] = 307,
		["ShopType"] = 3,
		["ItemId"] = 3045003,
		["ItemCount"] = 10,
		["WeekLimit"] = 2,
		["BatchMax"] = 2,
		["PriceType"] = 213,
		["Price"] = 15
	},
	[308] = {
		["Id"] = 308,
		["ShopType"] = 3,
		["ItemId"] = 3045006,
		["ItemCount"] = 10,
		["WeekLimit"] = 2,
		["BatchMax"] = 2,
		["PriceType"] = 213,
		["Price"] = 15
	},
	[401] = {
		["Id"] = 401,
		["ShopType"] = 4,
		["ItemId"] = 3030601,
		["ItemCount"] = 10,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 40
	},
	[402] = {
		["Id"] = 402,
		["ShopType"] = 4,
		["ItemId"] = 3114004,
		["ItemCount"] = 1,
		["WeekLimit"] = 1,
		["BatchMax"] = 1,
		["PriceType"] = 214,
		["Price"] = 40
	},
	[403] = {
		["Id"] = 403,
		["ShopType"] = 4,
		["ItemId"] = 4010304,
		["ItemCount"] = 1,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 40
	},
	[404] = {
		["Id"] = 404,
		["ShopType"] = 4,
		["ItemId"] = 3019004,
		["ItemCount"] = 5,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 10
	},
	[405] = {
		["Id"] = 405,
		["ShopType"] = 4,
		["ItemId"] = 3019001,
		["ItemCount"] = 5,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 5
	},
	[406] = {
		["Id"] = 406,
		["ShopType"] = 4,
		["ItemId"] = 3019002,
		["ItemCount"] = 5,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 5
	},
	[407] = {
		["Id"] = 407,
		["ShopType"] = 4,
		["ItemId"] = 3019003,
		["ItemCount"] = 5,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 5
	},
	[408] = {
		["Id"] = 408,
		["ShopType"] = 4,
		["ItemId"] = 5020015,
		["ItemCount"] = 10,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 16
	},
	[409] = {
		["Id"] = 409,
		["ShopType"] = 4,
		["ItemId"] = 5020014,
		["ItemCount"] = 20,
		["WeekLimit"] = 10,
		["BatchMax"] = 10,
		["PriceType"] = 214,
		["Price"] = 5
	}
}
