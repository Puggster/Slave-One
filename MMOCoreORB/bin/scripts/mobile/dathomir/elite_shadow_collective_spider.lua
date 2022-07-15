elite_shadow_collective_spider = Creature:new {
	objectName = "@mob/creature_names:elite_shadow_collective_spider",
	mobType = MOB_CARNIVORE,
	socialGroup = "shadow_collective",
	faction = "",
	level = 126,
	chanceHit = 4.75,
	damageMin = 1230,
	damageMax = 1970,
	baseXp = 11953,
	baseHAM = 121000,
	baseHAMmax = 142142,
	armor = 2,
	resists = {75,75,35,30,30,30,15,30,-1},
	meatType = "meat_insect",
	meatAmount = 1111,
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
	hues = { 17, 18, 19, 20, 21, 22, 23, 24 },
	scale = 2.67,
	lootGroups = {
		{
			groups = {
					{group = "fire_breathing_spider", chance = 4000000},
					{group = "rancor_common", chance = 3000000},
					{group = "armor_all", chance = 1000000},
					{group = "wearables_all", chance = 2000000}
					},
			lootChance = 3780000
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

CreatureTemplates:addCreatureTemplate(elite_shadow_collective_spider, "elite_shadow_collective_spider")
