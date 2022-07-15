force_corrupt_rancor_pvp_zone = Creature:new {
	objectName = "",
	--DJM Pet name--
	customName = "a force corrupted beast",
	mobType = MOB_CARNIVORE,
	socialGroup = "dark_jedi",
	faction = "",
	level = 178,
	chanceHit = 1.025,
	damageMin = 1020,
	damageMax = 1350,
	baseXp = 19336,
	baseHAM = 35000,
	baseHAMmax = 39285,
	armor = 2,
	resists = {60,60,60,50,50,50,50,50,110},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 950,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wod_mutant_rancor_boss.iff"},
	--hues = { 12, 13, 14, 15, 16, 17, 18, 19 },
	scale = .55,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 10000000},
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "restuss_cis", chance = 10000000},
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "jewelry_restuss", chance = 10000000},
			},
			lootChance = 2000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(force_corrupt_rancor_pvp_zone, "force_corrupt_rancor_pvp_zone")
