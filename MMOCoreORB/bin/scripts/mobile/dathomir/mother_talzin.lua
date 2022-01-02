mother_talzin = Creature:new {
	objectName = "@mob/creature_names:mother_talzin",
	socialGroup = "shadow_collective",
	faction = "nightsister",
	level = 337,
	chanceHit = 30.5,
	damageMin = 1888,
	damageMax = 3600,
	specialDamageMult = 4.0,
	baseXp = 98549,
	baseHAM = 2285000,
	baseHAMmax = 3620069,
	armor = 3,
	resists = {95,195,195,90,90,90,90,90,125},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 2.0,

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_mother.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 5000000},
				{group = "schem_nightsister_backpack_g", chance = 5000000},

			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 5000000},
				{group = "schem_nightsister_backpack_g", chance = 5000000},

			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_paintings", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nightsister_cargo_pocket_g", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nightsister_cargo_pocket_g", chance = 10000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {}, --unarmed
	conversationTemplate = "",
	attacks = merge(tkamaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(mother_talzin, "mother_talzin")
