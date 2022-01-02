blood_razor_strong_pirate_hm = Creature:new {
	objectName = "@mob/creature_names:blood_razor_pirate_strong",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 300,
	chanceHit = 10.36,
	damageMin = 1490,
	damageMax = 2300,
	baseXp = 22730,
	baseHAM = 65000,
	baseHAMmax = 96100,
	armor = 2,
	resists = {150,140,15,30,30,30,30,120,140},
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
		"object/mobile/dressed_blood_razor_pirate_strong_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_tran_m.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_wee_m.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_zab_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "tailor_components", chance = 1000000},
				{group = "color_crystals", chance = 2400000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000},
				{group = "bloodrazor_common", chance = 2000000}
			},
			lootChance = 7000000,
		}
	},
	
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "blood_razer_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(pistoleermaster,pikemanmaster,marksmanmaster,tkamaster,brawlermaster),
	secondaryAttacks = merge(tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(blood_razor_strong_pirate_hm, "blood_razor_strong_pirate_hm")
