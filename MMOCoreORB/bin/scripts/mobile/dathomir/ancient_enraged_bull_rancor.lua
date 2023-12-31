ancient_enraged_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:ancient_enraged_bull_rancor",
	mobType = MOB_CARNIVORE,
	socialGroup = "rancor",
	faction = "",
	level = 224,
	chanceHit = 1.85,
	damageMin = 770,
	damageMax = 1250,
	baseXp = 24500,
	baseHAM = 69000,
	baseHAMmax = 112420,
	armor = 2,
	resists = {40,170,40,180,180,180,50,50,10},
	meatType = "meat_carnivore",
	meatAmount = 980,
	hideType = "hide_leathery",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 970,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 5000000},
				--{group = "armor_all", chance = 1000000},
				{group = "wearables_all", chance = 5000000}
			},
			lootChance = 6780000
		}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"knockdownattack",""}, {"creatureareaknockdown",""} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(ancient_enraged_bull_rancor, "ancient_enraged_bull_rancor")
