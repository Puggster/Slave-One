boss_krayt_dragon_shal = Creature:new {
	--objectName = "@mob/creature_names:krayt_dragon_ancient",
	customName = "Shalyx'har'zan (a krayt dragon)",
	mobType = MOB_CARNIVORE,
	socialGroup = "krayt",
	faction = "",
	level = 420,
	chanceHit = 30.0,
	damageMin = 4270,
	damageMax = 6250,
	baseXp = 58549,
	baseHAM = 900000,
	baseHAMmax = 928571,
	armor = 3,
	resists = {195,80,95,95,75,90,85,85,130},
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
			lootChance = 9500000
		},
		{
					groups = {
					{group = "krayt_tissue_rare", chance = 10000000},
					--{group = "krayt_pearls", chance = 4500000},
			},
			lootChance = 9000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "schem_krayt_backpack_g", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 9500000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "krayt_pearls", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 6000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "krayt_pearls", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 6000000
		},

	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "creature_spit_heavy_flame",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareacombo","stateAccuracyBonus=100"}, {"creatureareaknockdown","stateAccuracyBonus=100"} },
	secondaryAttacks = { {"creatureareacombo","stateAccuracyBonus=100"}, {"creatureareaknockdown","stateAccuracyBonus=100"} }
}

CreatureTemplates:addCreatureTemplate(boss_krayt_dragon_shal, "boss_krayt_dragon_shal")
