mission_marauder_01 = Creature:new {
	objectName = "@mob/creature_names:mission_marauder_sniper",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "endor_marauder",
	faction = "endor_marauder",
	mobType = MOB_NPC,
	level = 47,
	chanceHit = 0.47,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4643,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {15,50,30,30,40,60,60,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_marauder.iff"},

	lootGroups = {
		{
			groups = {
				{group = "marauder_s01_lootschem", chance = 1000000},
				{group = "marauder_s02_lootschem", chance = 3500000},
				{group = "marauder_s03_lootschem", chance = 500000},
				{group = "loot_kit_parts", chance = 4000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000}, 
			}
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_rifle",
	secondaryWeapon = "marauder_melee",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(riflemanmaster,marksmanmaster),
	secondaryAttacks = brawlermaster
}

CreatureTemplates:addCreatureTemplate(mission_marauder_01, "mission_marauder_01")
