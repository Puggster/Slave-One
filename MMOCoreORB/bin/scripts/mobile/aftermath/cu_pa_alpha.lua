cu_pa_alpha = Creature:new {
	customName = "Genetically Enhanced Cu-Pa",
	socialGroup = "cu_pa",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 211,
	chanceHit = 30.0,
	damageMin = 1900,
	damageMax = 3300,
	baseXp = 3560,
	baseHAM = 100000,
	baseHAMmax = 120000,
	armor = 2,
	resists = {50,50,50,50,50,50,50,50,50},
	meatType = "meat_reptilian",
	meatAmount = 215,
	hideType = "hide_bristley",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 115,
	milkType = "milk_wild",
	milk = 100,
	tamingChance = 0.25,
	ferocity = 0,
	scale = 3,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/cu_pa_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/cu_pa_hue.iff",
	lootGroups = {},
	
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "creature_spit_small_yellow",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"",""}, {"stunattack",""} },
	secondaryAttacks = { }

}

CreatureTemplates:addCreatureTemplate(cu_pa_alpha, "cu_pa_alpha")
