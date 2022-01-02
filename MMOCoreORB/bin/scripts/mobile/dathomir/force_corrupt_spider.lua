force_corrupt_spider = Creature:new {
	objectName = "",
	mobType = MOB_CARNIVORE,
	customName = "a force corrupted beast",
	socialGroup = "dark_jedi",
	faction = "",
	level = 146,
	chanceHit = 4.75,
	damageMin = 1030,
	damageMax = 1670,
	baseXp = 21953,
	baseHAM = 91000,
	baseHAMmax = 150000,
	armor = 2,
	resists = {155,155,135,130,130,130,15,130,40},
	meatType = "meat_insect",
	meatAmount = 110,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_recluse_giant_kiin_dray.iff"},
	scale = 2.0,
	lootGroups = {
		{
			groups = {
					{group = "fire_breathing_spider", chance = 7000000},
					{group = "noob_weapons", chance = 3000000},
					},
			lootChance = 7780000
		}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "object/weapon/ranged/creature/creature_spit_small_toxicgreen.iff",
	secondaryWeapon = "object/weapon/ranged/creature/creature_spit_small_toxicgreen.iff",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareapoison",""}, {"strongpoison",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(force_corrupt_spider, "force_corrupt_spider")
