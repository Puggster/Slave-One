rebel_midshipman = Creature:new {
	objectName = "@mob/creature_names:cis_battle_droid",
	customName = "A Battle Droid Captain",
	socialGroup = "rebel",
	faction = "rebel",
	mobType = MOB_NPC,
	level = 136,
	chanceHit = 6.25,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 12895,
	baseHAM = 62000,
	baseHAMmax = 75000,
	armor = 0,
	resists = {50,65,0,0,30,30,80,65,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/death_watch_battle_droid_03.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1100000},
				{group = "junk", chance = 4250000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "armor_attachments", chance = 1100000},
				{group = "rebel_officer_common", chance = 1450000},
				{group = "wearables_scarce", chance = 1000000}
			}
		}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "battle_droid_weapons",
	secondaryWeapon = "unarmed",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(pistoleermaster,carbineermaster,marksmanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(rebel_midshipman, "rebel_midshipman")
