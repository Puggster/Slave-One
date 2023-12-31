nilyahin_apprentice = Creature:new {
	customName = "Ni'lyahin Apprentice",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 86,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 7207,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {40,95,80,80,75,75,80,80,185},
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
	scale = 1.15,

	templates = {"object/mobile/dressed_mauler.iff"},
	lootGroups = {
		{
			groups = {
				{group = "geonosian_cubes", chance = 2500000},
				{group = "weapon_components", chance = 500000},
				{group = "skill_buffs", chance = 2000000},
				{group = "junk", chance = 5000000}
			},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "skill_buffs", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1500000
		},
	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nilyahin_apprentice, "nilyahin_apprentice")
