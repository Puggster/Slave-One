elite_nightbrother_elder = Creature:new {
	objectName = "@mob/creature_names:elite_nightbrother_elder",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 278,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 241000,
	baseHAMmax = 280000,
	armor = 3,
	resists = {75,55,25,50,50,50,50,20,110},
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
	"object/mobile/dressed_emperors_hand_zabrak_male_01.iff",
	--"object/mobile/dressed_spice_collective_eliteguard_zabrak_male_01",
	},

	lootGroups = {
		{
			groups = {
				{group = "nightbrother_tooth", chance = 2000000},
				{group = "nightbrother_common", chance = 3000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				--{group = "wearables_scarce", chance = 1000000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "nightbrother_tooth", chance = 7000000},
				{group = "nightbrother_common", chance = 3000000},
			},
			lootChance = 2500000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(tkamaster,pikemanmaster,brawlermaster,forcepowermaster),
	secondaryAttacks = merge(tkamaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(elite_nightbrother_elder, "elite_nightbrother_elder")
