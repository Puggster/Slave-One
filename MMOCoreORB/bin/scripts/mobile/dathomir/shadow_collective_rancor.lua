shadow_collective_rancor = Creature:new {
	objectName = "@mob/creature_names:ancient_bull_rancor",
	mobType = MOB_CARNIVORE,
	socialGroup = "shadow_collective",
	faction = "",
	level = 178,
	chanceHit = 0.925,
	damageMin = 1020,
	damageMax = 1550,
	baseXp = 19336,
	baseHAM = 40000,
	baseHAMmax = 53571,
	armor = 2,
	resists = {60,60,180,180,180,180,180,-1,120},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 950,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wod_mutant_rancor_boss.iff"},
	--hues = { 12, 13, 14, 15, 16, 17, 18, 19 },
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 5000000},
				{group = "armor_all", chance = 1000000},
				{group = "wearables_all", chance = 4000000}
			},
			lootChance = 3960000
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

CreatureTemplates:addCreatureTemplate(shadow_collective_rancor, "shadow_collective_rancor")
