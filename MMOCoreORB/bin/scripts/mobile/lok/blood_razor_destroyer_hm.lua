blood_razor_destroyer_hm = Creature:new {
	objectName = "@mob/creature_names:blood_razor_destroyer",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 337,
	chanceHit = 10.42,
	damageMin = 2385,
	damageMax = 3080,
	baseXp = 38224,
	baseHAM = 71000,
	baseHAMmax = 99000,
	armor = 1,
	resists = {60,60,60,50,70,60,60,30,120},
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
		"object/mobile/dressed_blood_razor_pirate_destroyer_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_destroyer_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_destroyer_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_destroyer_tran_m.iff"
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

CreatureTemplates:addCreatureTemplate(blood_razor_destroyer_hm, "blood_razor_destroyer_hm")
