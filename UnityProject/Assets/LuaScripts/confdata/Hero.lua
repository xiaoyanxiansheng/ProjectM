--[[
	Hero

	字段列表:
		ID {int} ID
		UnitId {int} 单位表ID
		Proxy {int} 替身类型
		DecomposeItem* {array(int, int...)} 分解道具ID
		SelectLotteryCost {map{[auto] = auto}} 五选一消耗
		ShowAttr {array(int, int...)} 显示属性
		HeroShowAttr {array(int, int...)} 英雄界面显示属性
		Quality* {int} 品质
		InitStar* {int} 初始星级
		StarAttrParams {map{[auto] = auto}} 升星属性基数
		StarAttrParams2 {map{[auto] = auto}} 升星属性基数2
		RoundLevelAttrParams {map{[auto] = auto}} 局内升级属性基数
		Skill {map{[auto] = array(...), ...}} 默认技能
		SuperWeaponItemId {int} 专武碎片ID
		SuperWeaponName {lang} 专武名字
		SuperWeaponModel {array(array(auto, auto...), ...)} 专武模型
		CloneSuperWeaponModel {array(array(auto, auto...), ...)} 分身专武模型
		ViewSuperWeapon {array(string, string...)} 展示场景专武名
		SuperWeaponStarAttrParams {map{[auto] = auto}} 专武升星属性基数

]]
return {
	[12101] = {
		["ID"] = 12101,
		["UnitId"] = 101,
		["DecomposeItem"] = {3012101,20},
		["ShowAttr"] = {1,41,42,51,52},
		["HeroShowAttr"] = {1,21,41,42,511,516,517,518},
		["Quality"] = 2,
		["InitStar"] = 1,
		["StarAttrParams"] = {
			[511] = 1,
			[517] = 2,
			[518] = 2,
			[516] = 10
		},
		["StarAttrParams2"] = {
			[1] = 1,
			[41] = 2,
			[42] = 2,
			[21] = 12
		},
		["RoundLevelAttrParams"] = {
			[1] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		}
	},
	[12201] = {
		["ID"] = 12201,
		["UnitId"] = 201,
		["DecomposeItem"] = {3012201,20},
		["ShowAttr"] = {2,41,42,51,52},
		["HeroShowAttr"] = {2,21,41,42,512,516,517,518},
		["Quality"] = 2,
		["InitStar"] = 1,
		["StarAttrParams"] = {
			[512] = 1,
			[517] = 2,
			[518] = 2,
			[516] = 10
		},
		["StarAttrParams2"] = {
			[2] = 1,
			[41] = 2,
			[42] = 2,
			[21] = 12
		},
		["RoundLevelAttrParams"] = {
			[2] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		}
	},
	[12301] = {
		["ID"] = 12301,
		["UnitId"] = 301,
		["DecomposeItem"] = {3012301,20},
		["ShowAttr"] = {3,41,42,51,52},
		["HeroShowAttr"] = {3,21,41,42,513,516,517,518},
		["Quality"] = 2,
		["InitStar"] = 1,
		["StarAttrParams"] = {
			[513] = 1,
			[517] = 2,
			[518] = 2,
			[516] = 10
		},
		["StarAttrParams2"] = {
			[3] = 1,
			[41] = 2,
			[42] = 2,
			[21] = 12
		},
		["RoundLevelAttrParams"] = {
			[3] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		}
	},
	[14101] = {
		["ID"] = 14101,
		["UnitId"] = 1101,
		["DecomposeItem"] = {3014101,120},
		["SelectLotteryCost"] = {
			[213] = 19
		},
		["ShowAttr"] = {1,41,42,51,52},
		["HeroShowAttr"] = {1,21,41,42,511,516,517,518},
		["Quality"] = 4,
		["InitStar"] = 3,
		["StarAttrParams"] = {
			[511] = 1,
			[517] = 2,
			[518] = 2,
			[516] = 10
		},
		["StarAttrParams2"] = {
			[1] = 1,
			[41] = 2,
			[42] = 2,
			[21] = 12
		},
		["RoundLevelAttrParams"] = {
			[1] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100000}
		},
		["SuperWeaponItemId"] = 3024101,
		["SuperWeaponName"] = "Lew36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_sword_f_01/dot_pc_sword_f_01_weapon2.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_sword_f_02_weapon1.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_14101_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[521] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[14201] = {
		["ID"] = 14201,
		["UnitId"] = 1201,
		["DecomposeItem"] = {3014201,120},
		["SelectLotteryCost"] = {
			[213] = 19
		},
		["ShowAttr"] = {2,41,42,51,52},
		["HeroShowAttr"] = {2,21,41,42,512,516,517,518},
		["Quality"] = 4,
		["InitStar"] = 3,
		["StarAttrParams"] = {
			[512] = 1,
			[517] = 2,
			[518] = 2,
			[516] = 10
		},
		["StarAttrParams2"] = {
			[2] = 1,
			[41] = 2,
			[42] = 2,
			[21] = 12
		},
		["RoundLevelAttrParams"] = {
			[2] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100001}
		},
		["SuperWeaponItemId"] = 3024201,
		["SuperWeaponName"] = "Lgw36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_bow_01/dot_pc_bow_01_weapon_2.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_bow_01_weapon_2.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_14201_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[522] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[14301] = {
		["ID"] = 14301,
		["UnitId"] = 1301,
		["DecomposeItem"] = {3014301,120},
		["SelectLotteryCost"] = {
			[213] = 19
		},
		["ShowAttr"] = {3,41,42,51,52},
		["HeroShowAttr"] = {3,21,41,42,513,516,517,518},
		["Quality"] = 4,
		["InitStar"] = 3,
		["StarAttrParams"] = {
			[513] = 1,
			[517] = 2,
			[518] = 2,
			[516] = 10
		},
		["StarAttrParams2"] = {
			[3] = 1,
			[41] = 2,
			[42] = 2,
			[21] = 12
		},
		["RoundLevelAttrParams"] = {
			[3] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100002}
		},
		["SuperWeaponItemId"] = 3024301,
		["SuperWeaponName"] = "Liw36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_staff_f_01/dot_pc_staff_f_01_weapon_2.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_staff_f_01_weapon_2.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_14301_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[523] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[15101] = {
		["ID"] = 15101,
		["UnitId"] = 2101,
		["DecomposeItem"] = {3015101,60},
		["SelectLotteryCost"] = {
			[213] = 48
		},
		["ShowAttr"] = {1,41,42,51,52},
		["HeroShowAttr"] = {1,21,41,42,511,516,517,518},
		["Quality"] = 5,
		["InitStar"] = 5,
		["StarAttrParams"] = {
			[511] = 1,
			[517] = 3,
			[518] = 3,
			[516] = 15
		},
		["StarAttrParams2"] = {
			[1] = 5,
			[41] = 10,
			[42] = 10,
			[21] = 60
		},
		["RoundLevelAttrParams"] = {
			[1] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100006}
		},
		["SuperWeaponItemId"] = 3025101,
		["SuperWeaponName"] = "Lkw36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_sword_f_02_n/dot_pc_sword_f_02_weapon_2_new.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_sword_f_02_weapon_2_new.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_15101_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[521] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[15103] = {
		["ID"] = 15103,
		["UnitId"] = 2103,
		["DecomposeItem"] = {3015103,60},
		["SelectLotteryCost"] = {
			[213] = 48
		},
		["ShowAttr"] = {1,41,42,51,52},
		["HeroShowAttr"] = {1,21,41,42,511,516,517,518},
		["Quality"] = 5,
		["InitStar"] = 5,
		["StarAttrParams"] = {
			[511] = 1,
			[517] = 3,
			[518] = 3,
			[516] = 15
		},
		["StarAttrParams2"] = {
			[1] = 5,
			[41] = 10,
			[42] = 10,
			[21] = 60
		},
		["RoundLevelAttrParams"] = {
			[1] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100003}
		},
		["SuperWeaponItemId"] = 3025103,
		["SuperWeaponName"] = "Lfw36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_sword_m_02_n/dot_pc_sword_m_02_weapom_2_new.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_sword_m_02_weapom_2_new.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_15103_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[521] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[15201] = {
		["ID"] = 15201,
		["UnitId"] = 2201,
		["DecomposeItem"] = {3015201,60},
		["SelectLotteryCost"] = {
			[213] = 48
		},
		["ShowAttr"] = {2,41,42,51,52},
		["HeroShowAttr"] = {2,21,41,42,512,516,517,518},
		["Quality"] = 5,
		["InitStar"] = 5,
		["StarAttrParams"] = {
			[512] = 1,
			[517] = 3,
			[518] = 3,
			[516] = 15
		},
		["StarAttrParams2"] = {
			[2] = 5,
			[41] = 10,
			[42] = 10,
			[21] = 60
		},
		["RoundLevelAttrParams"] = {
			[2] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100008}
		},
		["SuperWeaponItemId"] = 3025201,
		["SuperWeaponName"] = "Lmw36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_bow_f_02/dot_pc_bow_f_02_weapon_2.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_bow_f_02_weapon_2.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_15201_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[522] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[15203] = {
		["ID"] = 15203,
		["UnitId"] = 2203,
		["DecomposeItem"] = {3015203,60},
		["SelectLotteryCost"] = {
			[213] = 48
		},
		["ShowAttr"] = {2,41,42,51,52},
		["HeroShowAttr"] = {2,21,41,42,512,516,517,518},
		["Quality"] = 5,
		["InitStar"] = 5,
		["StarAttrParams"] = {
			[512] = 1,
			[517] = 3,
			[518] = 3,
			[516] = 15
		},
		["StarAttrParams2"] = {
			[2] = 5,
			[41] = 10,
			[42] = 10,
			[21] = 60
		},
		["RoundLevelAttrParams"] = {
			[2] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100004}
		},
		["SuperWeaponItemId"] = 3025203,
		["SuperWeaponName"] = "Lhw36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_dagger_f_01/dot_pc_dagger_f_01_weapon_2.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_dagger_f_01_weapon_2.vmdl"},{"weapon1","Attach_ACT_DOTA_ATTACK2","mode/other/fenshen/wuqi/dot_pc_dagger_f_01_weapon_2.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_15203_Weapon_2","Hero_15203_Weapon_2_1"},
		["SuperWeaponStarAttrParams"] = {
			[522] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[15301] = {
		["ID"] = 15301,
		["UnitId"] = 2301,
		["DecomposeItem"] = {3015301,60},
		["SelectLotteryCost"] = {
			[213] = 48
		},
		["ShowAttr"] = {3,41,42,51,52},
		["HeroShowAttr"] = {3,21,41,42,513,516,517,518},
		["Quality"] = 5,
		["InitStar"] = 5,
		["StarAttrParams"] = {
			[513] = 1,
			[517] = 3,
			[518] = 3,
			[516] = 15
		},
		["StarAttrParams2"] = {
			[3] = 5,
			[41] = 10,
			[42] = 10,
			[21] = 60
		},
		["RoundLevelAttrParams"] = {
			[3] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100010}
		},
		["SuperWeaponItemId"] = 3025301,
		["SuperWeaponName"] = "Low36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_staff_f_02/dot_pc_staff_f_02_weapon_2.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_staff_f_02_weapon_2.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_15301_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[523] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[15303] = {
		["ID"] = 15303,
		["UnitId"] = 2303,
		["DecomposeItem"] = {3015303,60},
		["SelectLotteryCost"] = {
			[213] = 48
		},
		["ShowAttr"] = {3,41,42,51,52},
		["HeroShowAttr"] = {3,21,41,42,513,516,517,518},
		["Quality"] = 5,
		["InitStar"] = 5,
		["StarAttrParams"] = {
			[513] = 1,
			[517] = 3,
			[518] = 3,
			[516] = 15
		},
		["StarAttrParams2"] = {
			[3] = 5,
			[41] = 10,
			[42] = 10,
			[21] = 60
		},
		["RoundLevelAttrParams"] = {
			[3] = 2,
			[41] = 1,
			[42] = 1,
			[21] = 40,
			[312] = 20
		},
		["Skill"] = {
			[1] = {1100005}
		},
		["SuperWeaponItemId"] = 3025303,
		["SuperWeaponName"] = "Ljw36gs",
		["SuperWeaponModel"] = {{"Attach_ACT_DOTA_ATTACK1","mode/pc_avata/dot_pc_orb_f_02_n/dot_pc_orb_f_02_weapon_2_new.vmdl"}},
		["CloneSuperWeaponModel"] = {{"weapon","Attach_ACT_DOTA_ATTACK1","mode/other/fenshen/wuqi/dot_pc_orb_f_02_weapon_2_new.vmdl"}},
		["ViewSuperWeapon"] = {"Hero_15303_Weapon_2"},
		["SuperWeaponStarAttrParams"] = {
			[523] = 50,
			[527] = 50,
			[528] = 50,
			[526] = 200,
			[105] = 100
		}
	},
	[19001] = {
		["ID"] = 19001,
		["Proxy"] = 1,
		["DecomposeItem"] = {3019001,60},
		["Quality"] = 5,
		["InitStar"] = 5
	},
	[19002] = {
		["ID"] = 19002,
		["Proxy"] = 2,
		["DecomposeItem"] = {3019002,60},
		["Quality"] = 5,
		["InitStar"] = 5
	},
	[19003] = {
		["ID"] = 19003,
		["Proxy"] = 3,
		["DecomposeItem"] = {3019003,60},
		["Quality"] = 5,
		["InitStar"] = 5
	},
	[19004] = {
		["ID"] = 19004,
		["Proxy"] = 0,
		["DecomposeItem"] = {0},
		["Quality"] = 6,
		["InitStar"] = 5
	}
}
