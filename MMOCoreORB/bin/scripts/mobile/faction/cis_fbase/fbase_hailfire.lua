fbase_hailfire = Creature:new {
	objectName = "",
	customName = "A Hailfire Droid",
	mobType = MOB_VEHICLE,
	socialGroup = "rebel",
	faction = "rebel",
	level = 205,
	chanceHit = 11.5,
	damageMin = 1170,
	damageMax = 2050,
	baseXp = 20500,
	baseHAM = 139000,
	baseHAMmax = 200000,
	armor = 3,
	resists = {135,135,-1,200,200,15,15,200,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,

	templates = {"object/mobile/hailfire_droid.iff"},
	lootGroups = {},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = "defaultdroidrangedattack",
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_hailfire, "fbase_hailfire")
