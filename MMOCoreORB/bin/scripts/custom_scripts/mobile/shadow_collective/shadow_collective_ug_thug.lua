shadow_collective_ug_thug = Creature:new {
	customName = "an underworld thug",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 256,
	chanceHit = 0.95,
	damageMin = 970,
	damageMax = 1250,
	baseXp = 27207,
	baseHAM = 83000,
	baseHAMmax = 156000,
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
			lootChance = 10000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "noob_weapons", chance = 5000000},
			},
			lootChance = 7000000
		},
	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(tkamaster,pikemanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_ug_thug, "shadow_collective_ug_thug")
