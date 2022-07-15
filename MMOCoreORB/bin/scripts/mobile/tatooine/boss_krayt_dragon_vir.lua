boss_krayt_dragon_vir = Creature:new {
	--objectName = "@mob/creature_names:krayt_dragon_ancient",
	mobType = MOB_CARNIVORE,
	customName = "Vir'anax'sath (a krayt dragon)",
	socialGroup = "krayt",
	faction = "",
	level = 420,
	chanceHit = 30.0,
	damageMin = 3000,
	damageMax = 4000,
	baseXp = 38549,
	baseHAM = 490000,
	baseHAMmax = 500714,
	armor = 3,
	resists = {80,60, 90, 90, 65, 65, 60, 60, 120},
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
			lootChance = 8000000
		},
		{
					groups = {
					{group = "krayt_tissue_rare", chance = 10000000},
					--{group = "krayt_pearls", chance = 4500000},
			},
			lootChance = 7000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "schem_krayt_backpack_g", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 5000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "krayt_pearls", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 5000000
		},
		{
					groups = {
					{group = "krayt_pearls", chance = 5500000},
					{group = "krayt_pearls", chance = 4500000},--BACKPACKSLOT
			},
			lootChance = 5000000
		},

	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "creature_spit_small_yellow",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"strongdisease","stateAccuracyBonus=100"}, {"creatureareacombo","stateAccuracyBonus=100"}, {"creatureareaknockdown","stateAccuracyBonus=100"}, {"stunattack","stateAccuracyBonus=100"} },
	secondaryAttacks = { {"strongdisease","stateAccuracyBonus=100"}, {"creatureareacombo","stateAccuracyBonus=100"}, {"creatureareaknockdown","stateAccuracyBonus=100"}, {"stunattack","stateAccuracyBonus=100"} }
}

CreatureTemplates:addCreatureTemplate(boss_krayt_dragon_vir, "boss_krayt_dragon_vir")
