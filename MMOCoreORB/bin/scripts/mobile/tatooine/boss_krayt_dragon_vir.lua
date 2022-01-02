boss_krayt_dragon_vir = Creature:new {
	--objectName = "@mob/creature_names:krayt_dragon_ancient",
	customName = "Vir'anax'sath (a krayt dragon)",
	socialGroup = "krayt",
	faction = "",
	level = 420,
	chanceHit = 30.0,
	damageMin = 3000,
	damageMax = 4000,
	baseXp = 38549,
	baseHAM = 510000,
	baseHAMmax = 701000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,5},
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
	scale = 1.75,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 11, 12, 13, 14, 15, 16, 17, 18 },
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
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"strongdisease","stateAccuracyBonus=100"},
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(boss_krayt_dragon_vir, "boss_krayt_dragon_vir")
