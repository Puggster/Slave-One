cad_bane_crewmember = Creature:new {
	customName = "one of Cad's thugs",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 156,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 1250,
	baseXp = 17207,
	baseHAM = 23000,
	baseHAMmax = 56000,
	armor = 1,
	resists = {40,70,45,45,75,35,80,80,115},
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
	scale = .95,

	templates = {
	"object/mobile/dressed_mauler.iff",
	"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
	"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
	"object/mobile/dressed_criminal_thug_human_male_01.iff",
	"object/mobile/dressed_criminal_thug_human_female_01.iff",
	"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
	"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
	"object/mobile/dressed_criminal_thug_bothan_female_01.iff",
	"object/mobile/dressed_criminal_thug_bothan_male_01.iff",
	"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
	"object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
	"object/mobile/dressed_criminal_slicer_human_male_01.iff",
	"object/mobile/dressed_criminal_slicer_human_female_01.iff",
	"object/mobile/dressed_criminal_swooper_zabrak_male_01.iff",
	"object/mobile/dressed_criminal_swooper_zabrak_female_01.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
			},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1500000
		},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(cad_bane_crewmember, "cad_bane_crewmember")
