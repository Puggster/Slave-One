corsec_special_ops_comissioner_hm = Creature:new {
	objectName = "@mob/creature_names:corsec_commissioner_aggro",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "corsec",
	faction = "corsec",
	level = 226,
	chanceHit = 19.75,
	damageMin = 1905,
	damageMax = 3375,
	baseXp = 32299,
	baseHAM = 312000,
	baseHAMmax = 381000,
	armor = 3,
	resists = {85,85,30,20,80,30,20,35,10},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "object/mobile/dressed_corsec_detective_human_male_01.iff",
		"object/mobile/dressed_corsec_detective_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "hm_vett_schems", chance = 3100000},
				{group = "clothing_attachments", chance = 1750000},
				{group = "armor_attachments", chance = 1750000},
				{group = "rebel_officer_common", chance = 1400000},
				{group = "wearables_all", chance = 2000000}
			},
		},
		{
			groups = {
				{group = "junk", chance = 6000000},
				{group = "powerplants", chance = 4000000},
			},
		},
	},
	weapons = {"corsec_police_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(corsec_special_ops_comissioner_hm, "corsec_special_ops_comissioner_hm")
