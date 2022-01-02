ancient_gnarled_rancor = Creature:new {
	objectName = "@mob/creature_names:ancient_gnarled_rancor",
	mobType = MOB_CARNIVORE,
	socialGroup = "rancor",
	faction = "",
	level = 188,
	chanceHit = 0.47,
	damageMin = 795,
	damageMax = 900,
	baseXp = 14552,
	baseHAM = 39700,
	baseHAMmax = 91900,
	armor = 1,
	resists = {20,130,20,150,150,150,20,20,110},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 876,
	boneType = "bone_mammal",
	boneAmount = 775,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/rancor_hue.iff",
	scale = 0.9,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 6000000},
			--{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 6920000
		}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"knockdownattack",""}, {"",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(ancient_gnarled_rancor, "ancient_gnarled_rancor")
