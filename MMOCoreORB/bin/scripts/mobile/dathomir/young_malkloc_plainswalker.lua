young_malkloc_plainswalker = Creature:new {
	objectName = "@mob/creature_names:malkloc_plainswalker_youth",
	socialGroup = "malkloc",
	faction = "",
	level = 55,
	chanceHit = 0.5,
	damageMin = 370,
	damageMax = 450,
	baseXp = 5281,
	baseHAM = 12000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {165,140,5,-1,-1,-1,5,190,-1},
	meatType = "meat_herbivore",
	meatAmount = 1500,
	hideType = "hide_leathery",
	hideAmount = 1350,
	boneType = "bone_mammal",
	boneAmount = 1100,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/young_malkloc.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 0.9,
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"posturedownattack",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(young_malkloc_plainswalker, "young_malkloc_plainswalker")
