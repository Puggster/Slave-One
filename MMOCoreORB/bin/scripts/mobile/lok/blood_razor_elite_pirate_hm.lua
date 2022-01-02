blood_razor_elite_pirate_hm = Creature:new {
	objectName = "@mob/creature_names:blood_razor_pirate_elite",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 303,
	chanceHit = 10.39,
	damageMin = 1525,
	damageMax = 2460,
	baseXp = 33370,
	baseHAM = 81000,
	baseHAMmax = 99000,
	armor = 1,
	resists = {50,50,50,50,50,40,40,20,110},
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
		"object/mobile/dressed_blood_razor_pirate_elite_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_elite_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_elite_nikto_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "vibrovis_g", chance = 3800000},
				{group = "bloodrazor_elite", chance = 1000000},
				{group = "color_crystals", chance = 2600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000},
				{group = "bloodrazor_common", chance = 2000000}
			},
			lootChance = 10000000,
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,pikemanmaster,tkamaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(blood_razor_elite_pirate_hm, "blood_razor_elite_pirate_hm")
