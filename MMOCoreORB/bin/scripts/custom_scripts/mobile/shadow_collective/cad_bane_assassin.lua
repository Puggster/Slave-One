cad_bane_assassin = Creature:new {
	customName = "Cad's top Assassin",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 206,
	chanceHit = 2.85,
	damageMin = 1070,
	damageMax = 2000,
	baseXp = 20207,
	baseHAM = 93000,
	baseHAMmax = 111428,
	armor = 1,
	resists = {60,60,40,40,30,30,30,10,110},
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
	"object/mobile/dressed_criminal_swooper_zabrak_female_01.iff",
	"object/mobile/dressed_criminal_swooper_human_female_01.iff",
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
			lootChance = 2000000
		},
	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,riflemanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cad_bane_assassin, "cad_bane_assassin")
