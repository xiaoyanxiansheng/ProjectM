--[[
	SaveMallRecharge

	字段列表:
		Id* {int} 商品ID
		ViewIndex {int} 充值页显示顺序
		Preposition {int} 前置
		ViewItem* {int} 展示道具
		BackView {string} 后台说明
		Reward {array(array(int, int...), ...)} 奖励物品
		FirstReward {array(array(int, int...), ...)} 首充奖励
		WeekLimit {int} 每周限购
		ForeverLimit {int} 永久限购
		TimeId {int} 时间ID
		LimitHide {bool} 限制时隐藏
		Off {int} 折扣显示
		RMB* {number} 人民币价格
		Dollar* {number} 美元价格

]]
return {
	[10001] = {
		["Id"] = 10001,
		["ViewIndex"] = 11,
		["ViewItem"] = 6980101,
		["BackView"] = "成长秘宝",
		["Reward"] = {{211,180},{4010001,50},{4020001,50},{4010011,50}},
		["WeekLimit"] = 1,
		["Off"] = 91,
		["RMB"] = 18,
		["Dollar"] = 3
	},
	[10002] = {
		["Id"] = 10002,
		["ViewIndex"] = 12,
		["ViewItem"] = 6980102,
		["BackView"] = "突破秘宝",
		["Reward"] = {{211,320},{4010002,20},{4030011,5},{4040002,2}},
		["WeekLimit"] = 1,
		["Off"] = 91,
		["RMB"] = 32,
		["Dollar"] = 5
	},
	[10003] = {
		["Id"] = 10003,
		["ViewIndex"] = 13,
		["ViewItem"] = 6980103,
		["BackView"] = "星空秘宝",
		["Reward"] = {{211,320},{4040001,40},{4030011,5},{4040002,2}},
		["WeekLimit"] = 1,
		["Off"] = 90,
		["RMB"] = 32,
		["Dollar"] = 5
	},
	[10004] = {
		["Id"] = 10004,
		["ViewIndex"] = 14,
		["ViewItem"] = 6980104,
		["BackView"] = "雕纹秘宝",
		["Reward"] = {{211,980},{5040026,1},{4030011,5},{4040002,3}},
		["WeekLimit"] = 1,
		["Off"] = 80,
		["RMB"] = 98,
		["Dollar"] = 15
	},
	[10005] = {
		["Id"] = 10005,
		["ViewIndex"] = 15,
		["ViewItem"] = 6980105,
		["BackView"] = "祈福秘宝",
		["Reward"] = {{211,3280},{4030011,50},{4040002,5}},
		["WeekLimit"] = 1,
		["Off"] = 80,
		["RMB"] = 328,
		["Dollar"] = 50
	},
	[10006] = {
		["Id"] = 10006,
		["ViewIndex"] = 16,
		["ViewItem"] = 6980106,
		["BackView"] = "进化秘宝",
		["Reward"] = {{211,3280},{4010304,1},{4030011,20},{4040002,5}},
		["WeekLimit"] = 1,
		["Off"] = 71,
		["RMB"] = 328,
		["Dollar"] = 50
	},
	[10007] = {
		["Id"] = 10007,
		["ViewIndex"] = 17,
		["ViewItem"] = 6980107,
		["BackView"] = "英雄秘宝",
		["Reward"] = {{211,6480},{5010035,1},{4010001,300},{4040002,10}},
		["WeekLimit"] = 1,
		["Off"] = 78,
		["RMB"] = 648,
		["Dollar"] = 100
	},
	[10008] = {
		["Id"] = 10008,
		["ViewIndex"] = 18,
		["ViewItem"] = 6980108,
		["BackView"] = "专武秘宝",
		["Reward"] = {{211,6480},{5020025,80},{4020001,300},{4040002,10}},
		["WeekLimit"] = 1,
		["Off"] = 76,
		["RMB"] = 648,
		["Dollar"] = 100
	},
	[10009] = {
		["Id"] = 10009,
		["ViewIndex"] = 19,
		["ViewItem"] = 6980109,
		["BackView"] = "法宝秘宝",
		["Reward"] = {{211,6480},{5030035,1},{4010011,500},{4040002,10}},
		["WeekLimit"] = 1,
		["Off"] = 75,
		["RMB"] = 648,
		["Dollar"] = 100
	},
	[11001] = {
		["Id"] = 11001,
		["ViewIndex"] = 21,
		["ViewItem"] = 6980201,
		["BackView"] = "钻石×60",
		["Reward"] = {{211,60}},
		["FirstReward"] = {{211,60}},
		["RMB"] = 6,
		["Dollar"] = 1
	},
	[11002] = {
		["Id"] = 11002,
		["ViewIndex"] = 22,
		["ViewItem"] = 6980202,
		["BackView"] = "钻石×125",
		["Reward"] = {{211,125}},
		["FirstReward"] = {{211,120}},
		["Off"] = 4,
		["RMB"] = 12,
		["Dollar"] = 2
	},
	[11003] = {
		["Id"] = 11003,
		["ViewIndex"] = 23,
		["ViewItem"] = 6980203,
		["BackView"] = "钻石×200",
		["Reward"] = {{211,200}},
		["FirstReward"] = {{211,180}},
		["Off"] = 10,
		["RMB"] = 18,
		["Dollar"] = 3
	},
	[11004] = {
		["Id"] = 11004,
		["ViewIndex"] = 24,
		["ViewItem"] = 6980204,
		["BackView"] = "钻石×360",
		["Reward"] = {{211,360}},
		["FirstReward"] = {{211,320}},
		["Off"] = 11,
		["RMB"] = 32,
		["Dollar"] = 5
	},
	[11005] = {
		["Id"] = 11005,
		["ViewIndex"] = 25,
		["ViewItem"] = 6980205,
		["BackView"] = "钻石×740",
		["Reward"] = {{211,740}},
		["FirstReward"] = {{211,640}},
		["Off"] = 13,
		["RMB"] = 64,
		["Dollar"] = 10
	},
	[11006] = {
		["Id"] = 11006,
		["ViewIndex"] = 26,
		["ViewItem"] = 6980206,
		["BackView"] = "钻石×1150",
		["Reward"] = {{211,1150}},
		["FirstReward"] = {{211,980}},
		["Off"] = 14,
		["RMB"] = 98,
		["Dollar"] = 15
	},
	[11007] = {
		["Id"] = 11007,
		["ViewIndex"] = 27,
		["ViewItem"] = 6980207,
		["BackView"] = "钻石×1520",
		["Reward"] = {{211,1520}},
		["FirstReward"] = {{211,1280}},
		["Off"] = 15,
		["RMB"] = 128,
		["Dollar"] = 20
	},
	[11008] = {
		["Id"] = 11008,
		["ViewIndex"] = 28,
		["ViewItem"] = 6980208,
		["BackView"] = "钻石×2400",
		["Reward"] = {{211,2400}},
		["FirstReward"] = {{211,1980}},
		["Off"] = 17,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[11009] = {
		["Id"] = 11009,
		["ViewIndex"] = 29,
		["ViewItem"] = 6980209,
		["BackView"] = "钻石×4000",
		["Reward"] = {{211,4000}},
		["FirstReward"] = {{211,3280}},
		["Off"] = 18,
		["RMB"] = 328,
		["Dollar"] = 50
	},
	[11010] = {
		["Id"] = 11010,
		["ViewIndex"] = 30,
		["ViewItem"] = 6980210,
		["BackView"] = "钻石×8100",
		["Reward"] = {{211,8100}},
		["FirstReward"] = {{211,6480}},
		["Off"] = 20,
		["RMB"] = 648,
		["Dollar"] = 100
	},
	[12001] = {
		["Id"] = 12001,
		["ViewIndex"] = 1,
		["ViewItem"] = 6980401,
		["BackView"] = "二师兄礼包1",
		["Reward"] = {{211,60},{3115014,1},{4040104,3},{4020001,100}},
		["ForeverLimit"] = 1,
		["LimitHide"] = true,
		["Off"] = 99,
		["RMB"] = 6,
		["Dollar"] = 1
	},
	[12002] = {
		["Id"] = 12002,
		["ViewIndex"] = 1,
		["Preposition"] = 12001,
		["ViewItem"] = 6980402,
		["BackView"] = "二师兄礼包2",
		["Reward"] = {{211,320},{3115014,1},{4010002,50},{4010001,200}},
		["ForeverLimit"] = 1,
		["LimitHide"] = true,
		["Off"] = 96,
		["RMB"] = 32,
		["Dollar"] = 5
	},
	[12003] = {
		["Id"] = 12003,
		["ViewIndex"] = 1,
		["Preposition"] = 12002,
		["ViewItem"] = 6980403,
		["BackView"] = "二师兄礼包3",
		["Reward"] = {{211,1280},{3115014,2},{4030011,10},{4040002,3}},
		["ForeverLimit"] = 1,
		["LimitHide"] = true,
		["Off"] = 83,
		["RMB"] = 98,
		["Dollar"] = 15
	},
	[12004] = {
		["Id"] = 12004,
		["ViewIndex"] = 1,
		["Preposition"] = 12003,
		["ViewItem"] = 6980404,
		["BackView"] = "二师兄礼包4",
		["Reward"] = {{211,3280},{3115014,2},{4030011,20},{4040002,5}},
		["ForeverLimit"] = 1,
		["LimitHide"] = true,
		["Off"] = 73,
		["RMB"] = 328,
		["Dollar"] = 50
	},
	[12005] = {
		["Id"] = 12005,
		["ViewIndex"] = 1,
		["Preposition"] = 12004,
		["ViewItem"] = 6980405,
		["BackView"] = "二师兄礼包5",
		["Reward"] = {{211,6480},{3115014,3},{4030011,40},{4040002,10}},
		["ForeverLimit"] = 1,
		["LimitHide"] = true,
		["Off"] = 70,
		["RMB"] = 648,
		["Dollar"] = 100
	},
	[20001] = {
		["Id"] = 20001,
		["ViewItem"] = 6980301,
		["BackView"] = "战令第1期",
		["ForeverLimit"] = 1,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[20002] = {
		["Id"] = 20002,
		["ViewItem"] = 6980301,
		["BackView"] = "战令第2期",
		["ForeverLimit"] = 1,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[20003] = {
		["Id"] = 20003,
		["ViewItem"] = 6980301,
		["BackView"] = "战令第3期",
		["ForeverLimit"] = 1,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[20004] = {
		["Id"] = 20004,
		["ViewItem"] = 6980301,
		["BackView"] = "战令第4期",
		["ForeverLimit"] = 1,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[20005] = {
		["Id"] = 20005,
		["ViewItem"] = 6980301,
		["BackView"] = "战令第5期",
		["ForeverLimit"] = 1,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[21001] = {
		["Id"] = 21001,
		["ViewItem"] = 6980302,
		["BackView"] = "签到特权",
		["RMB"] = 64,
		["Dollar"] = 10
	},
	[30101] = {
		["Id"] = 30101,
		["ViewItem"] = 211,
		["BackView"] = "抽奖第1期第1档",
		["Reward"] = {{211,320},{4030012,5}},
		["ForeverLimit"] = 1,
		["Off"] = 90,
		["RMB"] = 32,
		["Dollar"] = 5
	},
	[30102] = {
		["Id"] = 30102,
		["ViewItem"] = 211,
		["BackView"] = "抽奖第1期第2档",
		["Reward"] = {{211,980},{4030012,12}},
		["ForeverLimit"] = 1,
		["Off"] = 88,
		["RMB"] = 98,
		["Dollar"] = 15
	},
	[30103] = {
		["Id"] = 30103,
		["ViewItem"] = 211,
		["BackView"] = "抽奖第1期第3档",
		["Reward"] = {{211,1980},{4030012,18},{4040002,2}},
		["ForeverLimit"] = 1,
		["Off"] = 85,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[30104] = {
		["Id"] = 30104,
		["ViewItem"] = 211,
		["BackView"] = "抽奖第1期第4档",
		["Reward"] = {{211,3280},{4030012,25},{4040002,5}},
		["ForeverLimit"] = 1,
		["Off"] = 83,
		["RMB"] = 328,
		["Dollar"] = 50
	},
	[30105] = {
		["Id"] = 30105,
		["ViewItem"] = 211,
		["BackView"] = "抽奖第1期第5档",
		["Reward"] = {{211,6480},{4030012,45},{4040002,10}},
		["ForeverLimit"] = 50,
		["Off"] = 82,
		["RMB"] = 648,
		["Dollar"] = 100
	},
	[40001] = {
		["Id"] = 40001,
		["ViewItem"] = 6980501,
		["BackView"] = "限时直购1",
		["Reward"] = {{211,980},{5020025,60},{4020001,50},{4010011,50},{4040001,20}},
		["ForeverLimit"] = 1,
		["Off"] = 92,
		["RMB"] = 98,
		["Dollar"] = 15
	},
	[40002] = {
		["Id"] = 40002,
		["ViewItem"] = 6980502,
		["BackView"] = "限时直购2",
		["Reward"] = {{211,1980},{4010304,1},{4010001,300},{4010002,100},{4030011,10}},
		["ForeverLimit"] = 1,
		["Off"] = 88,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[40003] = {
		["Id"] = 40003,
		["ViewItem"] = 6980503,
		["BackView"] = "限时直购3",
		["Reward"] = {{211,3280},{4030001,1},{4010001,500},{4010002,200},{4030011,30}},
		["ForeverLimit"] = 1,
		["Off"] = 82,
		["RMB"] = 328,
		["Dollar"] = 50
	},
	[50001] = {
		["Id"] = 50001,
		["ViewIndex"] = 2,
		["ViewItem"] = 6980601,
		["BackView"] = "圣诞礼包1",
		["Reward"] = {{211,320},{5810101,5},{4030012,2}},
		["ForeverLimit"] = 1,
		["TimeId"] = 25122401,
		["LimitHide"] = true,
		["Off"] = 92,
		["RMB"] = 32,
		["Dollar"] = 5
	},
	[50002] = {
		["Id"] = 50002,
		["ViewIndex"] = 2,
		["Preposition"] = 50001,
		["ViewItem"] = 6980602,
		["BackView"] = "圣诞礼包2",
		["Reward"] = {{211,980},{5810101,12},{4030012,5},{4040002,1}},
		["ForeverLimit"] = 1,
		["TimeId"] = 25122401,
		["LimitHide"] = true,
		["Off"] = 90,
		["RMB"] = 98,
		["Dollar"] = 15
	},
	[50003] = {
		["Id"] = 50003,
		["ViewIndex"] = 2,
		["Preposition"] = 50002,
		["ViewItem"] = 6980603,
		["BackView"] = "圣诞礼包3",
		["Reward"] = {{211,1980},{5810101,18},{4030012,8},{4040002,2}},
		["ForeverLimit"] = 1,
		["TimeId"] = 25122401,
		["LimitHide"] = true,
		["Off"] = 88,
		["RMB"] = 198,
		["Dollar"] = 30
	},
	[50004] = {
		["Id"] = 50004,
		["ViewIndex"] = 2,
		["Preposition"] = 50003,
		["ViewItem"] = 6980604,
		["BackView"] = "圣诞礼包4",
		["Reward"] = {{211,3280},{5810101,25},{4030012,12},{4040002,5}},
		["ForeverLimit"] = 1,
		["TimeId"] = 25122401,
		["LimitHide"] = true,
		["Off"] = 86,
		["RMB"] = 328,
		["Dollar"] = 50
	},
	[50005] = {
		["Id"] = 50005,
		["ViewIndex"] = 2,
		["Preposition"] = 50004,
		["ViewItem"] = 6980605,
		["BackView"] = "圣诞礼包5",
		["Reward"] = {{211,6480},{5810101,45},{4030012,20},{4040002,10}},
		["ForeverLimit"] = 10,
		["TimeId"] = 25122401,
		["LimitHide"] = true,
		["Off"] = 85,
		["RMB"] = 648,
		["Dollar"] = 100
	}
}
