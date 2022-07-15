boss_nightbrother_arzo_suun = Creature:new {
	objectName = "",
	customName = "Arzo Suun (a Nightbrother Leader)",
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 291,
	chanceHit = 30.25,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 37849,
	baseHAM = 280000,
	baseHAMmax = 300000,
	armor = 3,
	resists = {60,70,80,80,60,60,60,60,125},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "object/mobile/dressed_corsair_captain_zab_m.iff" },
	lootGroups = {
		{
			groups = {
				{group = "wearables_scarce", chance = 2000000}, --Eventual cosmetic slot?
				{group = "armor_attachments", chance = 4000000},
				{group = "clothing_attachments", chance = 4000000},
			},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "krayt_pearls_nightbrother", chance = 5000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
					{group = "nightbrother_tooth", chance = 10000000},
			},
			lootChance = 25000000
		},
		{
			groups = {
			{group = "holocron_dark", chance = 10000000},
			},
			lootChance = 10000000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "arzo_suun_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(tkamaster,lightsabermaster),
	secondaryAttacks = merge(tkamaster)
}

CreatureTemplates:addCreatureTemplate(boss_nightbrother_arzo_suun, "boss_nightbrother_arzo_suun")
