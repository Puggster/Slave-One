fbase_rebel_elite_sand_rat_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_cis_elite_sand_rat_hard",
	mobType = MOB_ANDROID,
	socialGroup = "rebel",
	faction = "rebel",
	level = 140,
	chanceHit = 5.0,
	damageMin = 845,
	damageMax = 1400,
	baseXp = 14000,
	baseHAM = 32000,
	baseHAMmax = 45000,
	armor = 2,
	resists = {0,0,140,200,-1,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
			"object/mobile/death_watch_battle_droid_02.iff"
			},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 6000000},
				{group = "weapons_all", chance = 1250000},
				{group = "armor_all", chance = 1250000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "rebel_weapons_light",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(marksmanmaster,brawlermaster,pistoleermid),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_elite_sand_rat_hard, "fbase_rebel_elite_sand_rat_hard")
