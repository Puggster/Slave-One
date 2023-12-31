nilyahin_specialist = Creature:new {
	customName = "Ni'lyahin  Specialist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 86,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 8130,
	baseHAM = 15000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {80,95,40,80,75,75,80,80,185},
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

	templates = {"object/mobile/dressed_rebel_first_lieutenant_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "geonosian_cubes", chance = 2000000},
				{group = "weapon_components", chance = 500000},
				{group = "skill_buffs", chance = 3000000},
				{group = "junk", chance = 2500000},
				{group = "powerplants", chance = 2000000}


			},
			lootChance = 6000000
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

CreatureTemplates:addCreatureTemplate(nilyahin_specialist, "nilyahin_specialist")
