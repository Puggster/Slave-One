shadow_collective_cll8_binary_load_lifter = Creature:new {
	objectName = "@mob/creature_names:cll8_binary_load_lifter",
	mobType = MOB_ANDROID,
	socialGroup = "shadow_collective",
	level = 324,
	chanceHit = 10.24,
	damageMin = 500,
	damageMax = 1045,
	baseXp = 16200,
	baseHAM = 13000,
	baseHAMmax = 16071,
	armor = 3,
	resists = {65,65,65,35,35,35,25,10,110},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/cll8_binary_load_lifter.iff"
	},
	lootGroups = {},

	primaryWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	secondaryWeapon = "none",
	conversationTemplate = "",

	primaryAttacks = "defaultdroidrangedattack",
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_cll8_binary_load_lifter, "shadow_collective_cll8_binary_load_lifter")
