--[[
	SkillHitShow

	字段列表:
		Id {int} 编号
		HitAnim {string} 受击动作
		HitParticlePath {string} 受击特效
		HitBuffId {int} 受击Buff
		HitDuration {number} 受击Buff持续时间
		HitDistance {number} 受击Buff距离
		HitHeight {number} 受击Buff高度

]]
return {
	[10001] = {
		["Id"] = 10001,
		["HitParticlePath"] = "particles/chen_holy_persuasion_d_remap.vpcf",
		["HitBuffId"] = 10001,
		["HitDuration"] = 0.1,
		["HitDistance"] = 100,
		["HitHeight"] = 50
	},
	[10002] = {
		["Id"] = 10002,
		["HitParticlePath"] = "particles/chen_holy_persuasion_a_remap.vpcf",
		["HitBuffId"] = 0,
		["HitDuration"] = 0,
		["HitDistance"] = 0,
		["HitHeight"] = 0
	}
}
