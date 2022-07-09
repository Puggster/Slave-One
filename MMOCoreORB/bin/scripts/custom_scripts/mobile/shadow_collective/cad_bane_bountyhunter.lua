cad_bane_bountyhunter = Creature:new {
	customName = "a Bounty Hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 206,
	chanceHit = 2.85,
	damageMin = 1370,
	damageMax = 2250,
	baseXp = 20207,
	baseHAM = 99000,
	baseHAMmax = 111428,
	armor = 1,
	resists = {60,60,40,40,30,30,30,10,120},
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
			lootChance = 6000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "bountyhunter_junk", chance = 10000000},
			},
			lootChance = 500000
		},

	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cad_bane_bountyhunter, "cad_bane_bountyhunter")
