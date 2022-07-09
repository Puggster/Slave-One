shadow_collective_thug_mission = Creature:new {
	objectName = "@mob/creature_names:shadow_collective_thug",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 175,
	chanceHit = 2.7,
	damageMin = 795,
	damageMax = 1200,
	baseXp = 12207,
	baseHAM = 30000,
	baseHAMmax = 32000,
	armor = 1,
	resists = {40,40,50,50,40,40,40,-1,-1},
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

  templates =
	{"object/mobile/dressed_black_sun_thug.iff",
	"object/mobile/dressed_2handsword_trainer_02.iff"
},


	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "power_crystals", chance = 600000},
				{group = "color_crystals", chance = 500000},
				{group = "noob_weapons", chance = 1100000},
				{group = "armor_attachments", chance = 1400000},
				{group = "clothing_attachments", chance = 1400000},
			},
			lootChance = 1500000,
		},
		{
			groups = {
				{group = "powerplants", chance = 1000000},
				{group = "lighting_junk", chance = 3000000},
				{group = "jewelry_exp_common", chance = 3000000},
				{group = "jewelry_assem_common", chance = 3000000},

			},
			lootChance = 1000000
		}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "twohand_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(elite2hmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_thug_mission, "shadow_collective_thug_mission")
