nilyahin_old_guard = Creature:new {
	customName = "Ni'lyahin Old Guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 144,
	chanceHit = 12.25,
	damageMin = 1020,
	damageMax = 1750,
	baseXp = 16794,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 2,
	resists = {80,95,80,80,75,75,40,80,185},
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

	templates = {"object/mobile/dressed_grassland_blood_marauder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "blacksun_rare", chance = 500000},
				{group = "tfa_paintings", chance = 100000},
				{group = "dath_schems", chance = 2000000},
				{group = "skill_buffs", chance = 3700000},
				{group = "weapon_components", chance = 2200000},
				{group = "powerplants", chance = 1500000}

			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "skill_buffs", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 4500000
		},
	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,swordsmanmaster,pistoleermaster,fencermaster,pikemanmaster,riflemanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nilyahin_old_guard, "nilyahin_old_guard")
