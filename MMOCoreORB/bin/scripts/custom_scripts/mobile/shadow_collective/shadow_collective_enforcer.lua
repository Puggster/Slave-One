shadow_collective_enforcer = Creature:new {
	customName = "a Shadow Collective Enforcer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 296,
	chanceHit = 2.85,
	damageMin = 1070,
	damageMax = 2150,
	baseXp = 17207,
	baseHAM = 99000,
	baseHAMmax = 156000,
	armor = 2,
	resists = {90,90,45,45,65,65,60,60,120},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.25,

	templates = {
	"object/mobile/dressed_tatooine_jabba_enforcer.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "powerplants", chance = 2500000},
				{group = "underworld_common", chance = 5000000},
				{group = "shadow_schematics", chance = 2500000},
			},
			lootChance = 9500000
		},
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 10000000
		},
	},
	weapons = {"blasterfist_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_enforcer, "shadow_collective_enforcer")
