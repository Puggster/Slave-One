nuna_alpha = Creature:new {
	customName = "Genetically Modified Nuna",
	socialGroup = "self",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 200,
	chanceHit = 30.0,
	damageMin = 1900,
	damageMax = 3100,
	baseXp = 19200,
	baseHAM = 96000,
	baseHAMmax = 118000,
	armor = 2,
	resists = {45,45,45,45,45,45,45,45,45},
	meatType = "meat_avian",
	meatAmount = 3,
	hideType = "hide_leathery",
	hideAmount = 4,
	boneType = "bone_avian",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	scale = 4,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/nuna.iff"},
	controlDeviceTemplate = "object/intangible/pet/nuna_hue.iff",
	lootGroups = {},
	
		-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
		-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
		primaryWeapon = "unarmed",
		secondaryWeapon = "none",
		conversationTemplate = "",
		
		-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
		-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
		primaryAttacks = { {"",""}, {"stunattack",""} },
		secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nuna_alpha, "nuna_alpha")
