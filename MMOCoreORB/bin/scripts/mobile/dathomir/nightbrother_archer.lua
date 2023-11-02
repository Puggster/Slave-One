nightbrother_archer = Creature:new {
	objectName = "@mob/creature_names:nightbrother_archer",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 248,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 101000,
	baseHAMmax = 144285,
	armor = 3,
	resists = {75,45,75,70,70,60,70,40,110},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
	"object/mobile/dressed_creaturehandler_trainer_zabrak_male_01.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "nightbrother_common", chance = 6000000},
				--{group = "armor_attachments", chance = 3000000},
				--{group = "clothing_attachments", chance = 3000000},
				{group = "wearables_scarce", chance = 4000000}
			},
			lootChance = 2500000
		},
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "sniper_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(riflemanmaster),
	secondaryAttacks = {}
}

CreatureTemplates:addCreatureTemplate(nightbrother_archer, "nightbrother_archer")
