nightbrother_creature_handler = Creature:new {
	objectName = "@mob/creature_names:nb_creature_handler",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 270,
	chanceHit = 13.5,
	damageMin = 1550,
	damageMax = 2650,
	baseXp = 25314,
	baseHAM = 111000,
	baseHAMmax = 146428,
	armor = 2,
	resists = {75,55,60,60,45,65,65,30,110},
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
	scale = 1.0,

	templates = {
	--"object/mobile/dressed_spice_collective_eliteguard_zabrak_male_01.iff",
	"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",


	},

	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 4000000},
				{group = "armor_attachments", chance = 4000000},
				{group = "bounty_hunter_armor", chance = 2000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "nightbrother_common", chance = 5000000},
			},
			lootChance = 5000000
		}
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

CreatureTemplates:addCreatureTemplate(nightbrother_creature_handler, "nightbrother_creature_handler")
