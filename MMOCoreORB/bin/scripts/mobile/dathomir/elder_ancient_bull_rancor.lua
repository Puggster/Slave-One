elder_ancient_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:elder_ancient_bull_rancor",
	mobType = MOB_CARNIVORE,
	socialGroup = "rancor",
	faction = "",
	level = 264,
	chanceHit = 5.95,
	damageMin = 1620,
	damageMax = 2450,
	baseXp = 33336,
	baseHAM = 142000,
	baseHAMmax = 188571,
	armor = 3,
	resists = {150,165,0,170,170,170,25,25,125},
	meatType = "meat_carnivore",
	meatAmount = 2000,
	hideType = "hide_leathery",
	hideAmount = 2000,
	boneType = "bone_mammal",
	boneAmount = 2000,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.5,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 7000000},
				--{group = "armor_all", chance = 1000000},
				{group = "wearables_all", chance = 3000000}
			},
			lootChance = 4960000
		},
		{
			groups = {
				{group = "rancor_common", chance = 5000000},
				--{group = "armor_all", chance = 1000000},
				{group = "wearables_all", chance = 5000000}
			},
			lootChance = 2960000
		}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareableeding",""}, {"creatureareacombo",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(elder_ancient_bull_rancor, "elder_ancient_bull_rancor")
