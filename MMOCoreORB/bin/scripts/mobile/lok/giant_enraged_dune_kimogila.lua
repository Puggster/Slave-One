giant_enraged_dune_kimogila = Creature:new {
	--objectName = "@mob/creature_names:giant_dune_kimogila",
	mobType = MOB_CARNIVORE,
	customName = "a giant Enraged Dune Kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 333,
	chanceHit = 18.5,
	damageMin = 1595,
	damageMax = 2500,
	baseXp = 32504,
	baseHAM = 299000,
	baseHAMmax = 399000,
	armor = 2,
	resists = {175,160,165,200,175,165,200,175,30},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.6,
	lootGroups = {
	 {
	        groups = {
				{group = "giant_dune_kimo_common", chance = 3500000},
				{group = "kimogila_common", chance = 6500000},
			},
			lootChance = 10000000,
groups = {
		{group = "giant_dune_kimo_common", chance = 3500000},
		{group = "kimogila_common", chance = 6500000},
	},
	lootChance = 10000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_enraged_dune_kimogila, "giant_enraged_dune_kimogila")
