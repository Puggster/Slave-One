quest_nightbrother_assasin = Creature:new {
	objectName = "@mob/creature_names:nightbrother_assasin",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 179,
	chanceHit = 13.5,
	damageMin = 1550,
	damageMax = 2250,
	baseXp = 15314,
	baseHAM = 51000,
	baseHAMmax = 105000,
	armor = 2,
	resists = {75,75,70,70,55,75,75,50,25},
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
	scale = 1.0,

	templates = {"object/mobile/dressed_spice_collective_eliteguard_zabrak_male_01.iff"},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "twohand_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(elite2hmaster),
	secondaryAttacks = merge(tkamaster)

}

CreatureTemplates:addCreatureTemplate(quest_nightbrother_assasin, "quest_nightbrother_assasin")
