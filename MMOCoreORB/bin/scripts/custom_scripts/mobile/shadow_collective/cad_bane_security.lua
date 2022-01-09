cad_bane_security = Creature:new {
	customName = "Cantina Security",
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
	baseHAM = 123000,
	baseHAMmax = 176000,
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
	"object/mobile/warren_imperial_worker_s01.iff",
	"object/mobile/warren_imperial_worker_s02.iff",
	"object/mobile/warren_imperial_worker_s03.iff",
	"object/mobile/warren_imperial_worker_s04.iff",
	"object/mobile/warren_imperial_worker_s05.iff",
	"object/mobile/warren_imperial_worker_s06.iff",
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
	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,elite2hmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cad_bane_security, "cad_bane_security")
