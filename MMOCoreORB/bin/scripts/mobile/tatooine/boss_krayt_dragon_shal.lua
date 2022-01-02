boss_krayt_dragon_shal = Creature:new {
	--objectName = "@mob/creature_names:krayt_dragon_ancient",
	customName = "Shalyx'har'zan (a krayt dragon)",
	socialGroup = "krayt",
	faction = "",
	level = 420,
	chanceHit = 30.0,
	damageMin = 4270,
	damageMax = 6250,
	baseXp = 58549,
	baseHAM = 1210000,
	baseHAMmax = 1301000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,10},
	meatType = "meat_carnivore",
	meatAmount = 1900,
	hideType = "hide_bristley",
	hideAmount = 1900,
	boneType = "bone_mammal",
	boneAmount = 1900,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 3.65,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	lootGroups = {
		{
	        groups = {
					{group = "krayt_tissue_rare", chance = 10000000},
					--{group = "krayt_pearls", chance = 4500000},
			},
			lootChance = 10000000
		},
		{
					groups = {
					{group = "krayt_tissue_rare", chance = 10000000},
					--{group = "krayt_pearls", chance = 4500000},
			},
			lootChance = 10000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "schem_krayt_backpack_g", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 10000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "krayt_pearls", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 10000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "krayt_pearls", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 10000000
		},

	},
	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(boss_krayt_dragon_shal, "boss_krayt_dragon_shal")
