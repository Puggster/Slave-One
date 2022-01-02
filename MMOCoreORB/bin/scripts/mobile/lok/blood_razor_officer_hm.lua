blood_razor_officer_hm = Creature:new {
	objectName = "@mob/creature_names:blood_razor_officer",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 340,
	chanceHit = 10.43,
	damageMin = 2335,
	damageMax = 2780,
	baseXp = 34006,
	baseHAM = 99100,
	baseHAMmax = 155100,
	armor = 2,
	resists = {170,170,60,50,70,60,60,30,130},
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
		"object/mobile/dressed_blood_razor_pirate_officer_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_officer_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_officer_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_officer_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_officer_wee_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "bloodrazor_elite", chance = 1800000},
				{group = "vibrovis_g", chance = 4000000},
				{group = "color_crystals", chance = 1600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000},
				{group = "bloodrazor_common", chance = 1500000},
				{group = "wearables_uncommon", chance = 500000},
			},
			lootChance = 10000000,
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
	primaryAttacks = merge(pistoleermaster,pikemanmaster,tkamaster,brawlermaster,marksmanmaster),
	secondaryAttacks = merge(tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(blood_razor_officer_hm, "blood_razor_officer_hm")
