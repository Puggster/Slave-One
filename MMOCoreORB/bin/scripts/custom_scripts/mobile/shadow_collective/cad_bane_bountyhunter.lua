cad_bane_bountyhunter = Creature:new {
	customName = "a Bounty Hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 196,
	chanceHit = 2.85,
	damageMin = 1070,
	damageMax = 2150,
	baseXp = 17207,
	baseHAM = 99000,
	baseHAMmax = 156000,
	armor = 1,
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
	scale = .95,

	templates = {
	"object/mobile/dressed_bountyhunter_trainer_01.iff",
	--"object/mobile/dressed_bountyhunter_trainer_03.iff",
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
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "bountyhunter_junk", chance = 10000000},
			},
			lootChance = 500000
		},

	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(cad_bane_bountyhunter, "cad_bane_bountyhunter")
