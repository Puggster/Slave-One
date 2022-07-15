mother_talzin = Creature:new {
	objectName = "@mob/creature_names:mother_talzin",
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "nightsister",
	level = 337,
	chanceHit = 30.5,
	damageMin = 1888,
	damageMax = 3600,
	specialDamageMult = 4.0,
	baseXp = 98549,
	baseHAM = 1985000,
	baseHAMmax = 2585714,
	armor = 3,
	resists = {80,60,80,80,80,80,50,30,125},
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
			lootChance = 60000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
			},
			lootChance = 70000000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 10000000},
			},
			lootChance = 5000000
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
			lootChance = 5000000
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
			lootChance = 7000000
		},
		{
			groups = {
				{group = "nightsister_cargo_pocket_g", chance = 10000000}
			},
			lootChance = 7000000
		},
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(tkamaster,forcepowermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(mother_talzin, "mother_talzin")
