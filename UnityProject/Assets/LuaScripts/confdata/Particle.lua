--[[
	Particle

	字段列表:
		Key {string} Key
		Url* {string} 特效路径
		ParticleAttachment* {string} 特效附加方式
		CP* {int} CP点
		AttachPoint {string} 特效绑点
		ParticleOffsetZ {number} 特效偏移

]]
return {
	["drop_gold_monster"] = {
		["Key"] = "drop_gold_monster",
		["Url"] = "particles/function/finish/flopjaw_death_coins.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 0
	},
	["drop_gold_boss"] = {
		["Key"] = "drop_gold_boss",
		["Url"] = "particles/econ/taunts/bounty_hunter/bh_taunt_goldpiles/bh_taunt_goldpiles_pile.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 0
	},
	["respawn"] = {
		["Key"] = "respawn",
		["Url"] = "particles/econ/events/fall_2021/blink_dagger_fall_2021_start_lvl2.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 0
	},
	["transfer_door"] = {
		["Key"] = "transfer_door",
		["Url"] = "particles/function/finish/portal.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 1,
		["ParticleOffsetZ"] = 100
	},
	["transferring"] = {
		["Key"] = "transferring",
		["Url"] = "particles/econ/events/fall_2021/teleport_end_fall_2021_lvl1.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 0
	},
	["gather_box"] = {
		["Key"] = "gather_box",
		["Url"] = "particles/function/finish/jingtai_baoxiang.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 3
	},
	["gather_box_open"] = {
		["Key"] = "gather_box_open",
		["Url"] = "particles/function/finish/chest_dota_0001_vmdl.vmdl.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 3
	},
	["gather_ore_41"] = {
		["Key"] = "gather_ore_41",
		["Url"] = "particles/skill/finish/lich_ti8_chain_frost_flare.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 3,
		["ParticleOffsetZ"] = 50
	},
	["gather_ore_42"] = {
		["Key"] = "gather_ore_42",
		["Url"] = "particles/skill/finish/kunkka_cc_2023_hand_caustics.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0
	},
	["gather_ore_43"] = {
		["Key"] = "gather_ore_43",
		["Url"] = "particles/skill/finish/luna_ti9_crimson_base_attack_trail_stars.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 3,
		["ParticleOffsetZ"] = 100
	},
	["gather_ore_44"] = {
		["Key"] = "gather_ore_44",
		["Url"] = "particles/skill/finish/ti10_cache_pa_frostwind_slayer_head_frost.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 100
	},
	["monster_spawn_2"] = {
		["Key"] = "monster_spawn_2",
		["Url"] = "particles/econ/items/spectre/spectre_arcana/spectre_arcana_minigame_v2_death_target.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 1
	},
	["monster_spawn_1"] = {
		["Key"] = "monster_spawn_1",
		["Url"] = "particles/ui/ui_game_start_hero_spawn.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 0
	},
	["monster_spawn_0"] = {
		["Key"] = "monster_spawn_0",
		["Url"] = "particles/econ/items/spectre/spectre_arcana/spectre_arcana_loadout_spawn_v2.vpcf",
		["ParticleAttachment"] = "PATTACH_WORLDORIGIN",
		["CP"] = 0
	},
	["wing_1"] = {
		["Key"] = "wing_1",
		["Url"] = "particles/function/finish/wing/wing_01.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_2"] = {
		["Key"] = "wing_2",
		["Url"] = "particles/function/finish/wing/wing_02.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_3"] = {
		["Key"] = "wing_3",
		["Url"] = "particles/function/finish/wing/wing_03.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_4"] = {
		["Key"] = "wing_4",
		["Url"] = "particles/function/finish/wing/wing_04.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_5"] = {
		["Key"] = "wing_5",
		["Url"] = "particles/function/finish/wing/wing_05.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_6"] = {
		["Key"] = "wing_6",
		["Url"] = "particles/function/finish/wing/wing_06.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_7"] = {
		["Key"] = "wing_7",
		["Url"] = "particles/function/finish/wing/wing_07.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_8"] = {
		["Key"] = "wing_8",
		["Url"] = "particles/function/finish/wing/wing_08.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_9"] = {
		["Key"] = "wing_9",
		["Url"] = "particles/function/finish/wing/wing_09.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_10"] = {
		["Key"] = "wing_10",
		["Url"] = "particles/function/finish/wing/wing_10.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_11"] = {
		["Key"] = "wing_11",
		["Url"] = "particles/function/finish/wing/wing_11.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["wing_12"] = {
		["Key"] = "wing_12",
		["Url"] = "particles/function/finish/wing/wing_12.vpcf",
		["ParticleAttachment"] = "PATTACH_ATTACHMENT_FOLLOW",
		["CP"] = 0,
		["AttachPoint"] = "attach_attack1"
	},
	["quest"] = {
		["Key"] = "quest",
		["Url"] = "particles/generic_gameplay/stash_newitem_model.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 5,
		["ParticleOffsetZ"] = 350
	},
	["magic_3031401"] = {
		["Key"] = "magic_3031401",
		["Url"] = "particles/function/finish/magic_weapon/3031401.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031402"] = {
		["Key"] = "magic_3031402",
		["Url"] = "particles/function/finish/magic_weapon/3031402.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031403"] = {
		["Key"] = "magic_3031403",
		["Url"] = "particles/function/finish/magic_weapon/3031403.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031501"] = {
		["Key"] = "magic_3031501",
		["Url"] = "particles/function/finish/magic_weapon/3031501.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031502"] = {
		["Key"] = "magic_3031502",
		["Url"] = "particles/function/finish/magic_weapon/3031502.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031503"] = {
		["Key"] = "magic_3031503",
		["Url"] = "particles/function/finish/magic_weapon/3031503.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031504"] = {
		["Key"] = "magic_3031504",
		["Url"] = "particles/function/finish/magic_weapon/3031504.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031505"] = {
		["Key"] = "magic_3031505",
		["Url"] = "particles/function/finish/magic_weapon/3031505.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031506"] = {
		["Key"] = "magic_3031506",
		["Url"] = "particles/function/finish/magic_weapon/3031506.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031601"] = {
		["Key"] = "magic_3031601",
		["Url"] = "particles/function/finish/magic_weapon/3031601.vpcf",
		["ParticleAttachment"] = "PATTACH_POINT_FOLLOW",
		["CP"] = 0
	},
	["magic_3031602"] = {
		["Key"] = "magic_3031602",
		["Url"] = "particles/function/finish/magic_weapon/3031602.vpcf",
		["ParticleAttachment"] = "PATTACH_OVERHEAD_FOLLOW",
		["CP"] = 0
	},
	["magic_3031603"] = {
		["Key"] = "magic_3031603",
		["Url"] = "particles/function/finish/magic_weapon/3031603.vpcf",
		["ParticleAttachment"] = "PATTACH_POINT_FOLLOW",
		["CP"] = 0
	},
	["lottery_towering_bai"] = {
		["Key"] = "lottery_towering_bai",
		["Url"] = "particles/function/finish/lottery/lottery_towering_bai.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 204
	},
	["lottery_towering_zi"] = {
		["Key"] = "lottery_towering_zi",
		["Url"] = "particles/function/finish/lottery/lottery_towering_zi.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 204
	},
	["lottery_towering_jin"] = {
		["Key"] = "lottery_towering_jin",
		["Url"] = "particles/function/finish/lottery/lottery_towering_jin.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 204
	},
	["lottery_bai"] = {
		["Key"] = "lottery_bai",
		["Url"] = "particles/function/finish/lottery/lottery_bai.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 1200
	},
	["lottery_zi"] = {
		["Key"] = "lottery_zi",
		["Url"] = "particles/function/finish/lottery/lottery_zi.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 1200
	},
	["lottery_jin"] = {
		["Key"] = "lottery_jin",
		["Url"] = "particles/function/finish/lottery/lottery_jin.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 1200
	},
	["evolve"] = {
		["Key"] = "evolve",
		["Url"] = "particles/skill/finish/chen_holy_persuasion_a_remap.vpcf",
		["ParticleAttachment"] = "PATTACH_ABSORIGIN",
		["CP"] = 0,
		["ParticleOffsetZ"] = 10
	}
}
