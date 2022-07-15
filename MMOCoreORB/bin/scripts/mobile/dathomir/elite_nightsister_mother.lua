elite_nightsister_mother = Creature:new {
	--objectName = "@mob/creature_names:elite_nightsister_mother",
	mobType = MOB_NPC,
	customName = "a Nightsister Mother",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "nightsister",
	level = 302,
	chanceHit = 26.5,
	damageMin = 1888,
	damageMax = 2500,
	specialDamageMult = 4.0,
	baseXp = 28549,
	baseHAM = 265000,
	baseHAMmax = 300000,
	armor = 3,
	resists = {65,45,55,180,50,50,50,20,115},
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

	templates = {"object/mobile/dressed_dathomir_nightsister_spellweaver.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nightsister_common", chance = 7000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000},
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "nightsister_cargo_pocket_g", chance = 4000000},
				{group = "wearables_rare", chance = 4000000},
				{group = "jedi_paintings", chance = 2000000},
				--{group = "holocron_dark", chance = 500000},
			  --group = "holocron_light", chance = 500000},
			},
			lootChance = 3000000
		},
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "mixed_force_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(tkamaster,pikemanmaster,brawlermaster,forcepowermaster),
	secondaryAttacks = merge(tkamaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(elite_nightsister_mother, "elite_nightsister_mother")
