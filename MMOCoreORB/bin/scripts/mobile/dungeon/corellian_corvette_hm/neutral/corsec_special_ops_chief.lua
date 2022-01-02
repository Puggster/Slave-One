corsec_special_ops_chief_hm = Creature:new {
	objectName = "@mob/creature_names:corsec_chief_aggro",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "corsec",
	faction = "corsec",
	level = 200,
	chanceHit = 16.0,
	damageMin = 1717,
	damageMax = 3000,
	baseXp = 28512,
	baseHAM = 240000,
	baseHAMmax = 292500,
	armor = 3,
	resists = {75,75,30,10,80,30,10,35,10},
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

	templates = {"object/mobile/dressed_corellia_local_corsec_chief.iff"},
	lootGroups = {
		{
			groups = {
				{group = "powerplants", chance = 3100000},
				{group = "junk", chance = 4000000},
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

CreatureTemplates:addCreatureTemplate(corsec_special_ops_chief_hm, "corsec_special_ops_chief_hm")
