elite_nightbrother_weapons_master = Creature:new {
	objectName = "@mob/creature_names:elite_nightbrother_weapons_master",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
		randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 229,
	chanceHit = 9.5,
	damageMin = 2050,
	damageMax = 2750,
	baseXp = 25314,
	baseHAM = 145000,
	baseHAMmax = 182142,
	armor = 3,
	resists = {75,45,60,60,55,65,65,50,125},
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
	scale = 1.10,
	hues = {19, 20, 21, 22, 23, 24, 25, 26},

	templates = {"object/mobile/dressed_aakuan_champion_zabrak_male_01.iff"},

	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000},
				--{group = "bounty_hunter_armor", chance = 1000000},
			},
			lootChance = 600000
		},
		{
			groups = {
				{group = "power_crystals", chance = 4000000},
				{group = "wearables_rare", chance = 4500000},
				{group = "jedi_paintings", chance = 1500000},
				--{group = "holocron_dark", chance = 500000},
				--{group = "holocron_light", chance = 500000},
			},
			lootChance = 1500000
		},
	},
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

CreatureTemplates:addCreatureTemplate(elite_nightbrother_weapons_master, "elite_nightbrother_weapons_master")
