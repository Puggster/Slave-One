corsec_special_ops_sergeant_hm = Creature:new {
	objectName = "@mob/creature_names:corsec_sergeant_aggro",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "corsec",
	faction = "corsec",
	level = 96,
	chanceHit = 0.95,
	damageMin = 930,
	damageMax = 1425,
	baseXp = 13725,
	baseHAM = 30000,
	baseHAMmax = 37500,
	armor = 2,
	resists = {45,45,30,30,80,35,30,35,30},
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

	templates = { "object/mobile/dressed_corsec_officer_human_male_01.iff",
		"object/mobile/dressed_corsec_officer_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1100000},
				{group = "junk", chance = 6000000},
				{group = "clothing_attachments", chance = 750000},
				{group = "armor_attachments", chance = 750000},
				{group = "rebel_officer_common", chance = 400000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},
	weapons = {"corsec_police_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(corsec_special_ops_sergeant_hm, "corsec_special_ops_sergeant_hm")
