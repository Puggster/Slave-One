cad_bane_crewmember = Creature:new {
	customName = "one of Cad's thugs",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 156,
	chanceHit = 0.85,
	damageMin = 670,
	damageMax = 1350,
	baseXp = 17207,
	baseHAM = 33000,
	baseHAMmax = 40000,
	armor = 1,
	resists = {30,50,25,25,55,25,40,20,110},
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
			lootChance = 4000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1000000
		},
	},

	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cad_bane_crewmember, "cad_bane_crewmember")
