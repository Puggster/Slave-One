cis_jedi_master = Creature:new {
	customName = "a Dark Jedi Master",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "self",
	faction = "rebel",
	level = 300,
	chanceHit = 27.25,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25266,
	baseHAM = 151060,
	baseHAMmax = 185020,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,45},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"
		},

		lootGroups = {
			{
				groups = {
				{group = "power_crystals", chance = 1800000},
				{group = "color_crystals", chance = 1700000},
				{group = "jedi_paintings", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "jewelry_exp_common", chance = 1400000},
				{group = "force_hunter_rare", chance = 100000}
				}
			}
		},
	weapons = {"light_jedi_weapons_basic"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(cis_jedi_master, "cis_jedi_master")
