cad_bane_security = Creature:new {
	customName = "Cantina Security",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 196,
	chanceHit = 2.85,
	damageMin = 1270,
	damageMax = 2250,
	baseXp = 20207,
	baseHAM = 100000,
	baseHAMmax = 125714,
	armor = 1,
	resists = {60,60,45,45,30,30,30,30,120},
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
			lootChance = 6000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1500000
		},
	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,elite2hmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cad_bane_security, "cad_bane_security")
