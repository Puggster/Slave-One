blood_razor_weak_pirate_hm = Creature:new {
	objectName = "@mob/creature_names:blood_razor_pirate_weak",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 250,
	chanceHit = 10.36,
	damageMin = 490,
	damageMax = 1300,
	baseXp = 22730,
	baseHAM = 65000,
	baseHAMmax = 96100,
	armor = 1,
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
		"object/mobile/dressed_blood_razor_pirate_weak_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_wee_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_zab_m.iff"
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
			lootChance = 45000000,
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(blood_razor_weak_pirate_hm, "blood_razor_weak_pirate_hm")
