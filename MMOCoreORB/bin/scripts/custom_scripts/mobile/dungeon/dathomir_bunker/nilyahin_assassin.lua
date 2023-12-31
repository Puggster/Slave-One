nilyahin_assassin = Creature:new {
	customName = "Ni'lyahin Assassin",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 107,
	chanceHit = 1.75,
	damageMin = 670,
	damageMax = 1050,
	baseXp = 10081,
	baseHAM = 29000,
	baseHAMmax = 36000,
	armor = 2,
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

	templates = {"object/mobile/dressed_nym_guard_strong_nikto_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "geonosian_cubes", chance = 2500000},
				{group = "weapon_components", chance = 800000},
				{group = "skill_buffs", chance = 4200000},
				{group = "junk", chance = 2500000}
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

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,swordsmanmaster,pistoleermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nilyahin_assassin, "nilyahin_assassin")
