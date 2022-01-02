shadow_collective_disciple_of_maul = Creature:new {
	customName = "a disciple of Maul",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	level = 333,
	chanceHit = 4.75,
	damageMin = 1700,
	damageMax = 2650,
	baseXp = 42424,
	baseHAM = 200000,
	baseHAMmax = 410000,
	armor = 2,
	resists = {75,190,45,190,190,190,190,200,125},
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
	"object/mobile/dressed_creaturehandler_trainer_zabrak_male_01.iff",
	"object/mobile/dressed_spice_collective_eliteguard_zabrak_male_01.iff",
	},

	lootGroups = {
	{
		groups = {
			{group = "krayt_pearls", chance = 2500000},
			{group = "powerplants", chance = 2500000},
			{group = "armor_attachments", chance = 2500000},
			{group = "clothing_attachments", chance = 2500000}
		},
		lootChance = 10000000
	},
	{
		groups = {
			{group = "color_crystals", chance = 10000000},
		},
		lootChance = 10000000
	},
		{
			groups = {
				--{group = "holocron_dark", chance = 3000000},
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
			},
			lootChance = 7500000
		},
		{
			groups = {
				--{group = "holocron_dark", chance = 6000000},
				{group = "noob_weapons", chance = 4000000},
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
			},
			lootChance = 6500000
		},
	},
	weapons = {"dark_jedi_gen4_pike"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,pikemanmaster,lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_disciple_of_maul, "shadow_collective_disciple_of_maul")
