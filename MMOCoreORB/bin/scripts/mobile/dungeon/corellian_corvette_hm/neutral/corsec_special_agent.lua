corsec_special_agent_hm = Creature:new {
	objectName = "@mob/creature_names:corsec_agent_aggro",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "corsec",
	faction = "corsec",
	level = 105,
	chanceHit = 1.75,
	damageMin = 1005,
	damageMax = 1575,
	baseXp = 14980,
	baseHAM = 43500,
	baseHAMmax = 54000,
	armor = 2,
	resists = {45,45,30,15,80,30,15,35,10},
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

	templates = { "object/mobile/dressed_corsec_pilot_human_female_01.iff",
		"object/mobile/dressed_corsec_pilot_human_male_01.iff"},
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

CreatureTemplates:addCreatureTemplate(corsec_special_agent_hm, "corsec_special_agent_hm")
