general_grievous = Creature:new {
	objectName = "@mob/creature_names:cis_magnaguard",
	mobType = MOB_NPC,
	customName = "General Grievous",
	socialGroup = "self",
	faction = "rebel",
	level = 300,
	chanceHit = 30,
	damageMin = 3450,
	damageMax = 5000,
	baseXp = 45000,
	baseHAM = 3352000,
	baseHAMmax = 3352000,
	armor = 2,
	resists = {75,75,95,95,95,95,95,95,135},
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
	optionsBitmask = AIENABLED + FACTIONAGGRO,
	diet = HERBIVORE,
	scale = 1.2,

	templates = {
		"object/mobile/ep3/general_grievous.iff"
	},
	lootGroups = {

		{
			groups = {
				{group = "restuss_cis", chance = 10000000}
			},
			lootChance = 10000000
		},

		{
			groups = {
				{group = "restuss_cis", chance = 10000000}
			},
			lootChance = 10000000
		},

		{
		groups = {
			{group = "restuss_cis", chance = 10000000}
		},
		lootChance = 10000000
		},

		{
		groups = {
			{group = "restuss_cis", chance = 10000000}
			},
			lootChance = 10000000
		},

		{
			groups = {
				{group = "powerplants", chance = 10000000}
			},
			lootChance = 10000000
		},

		{
			groups = {
				{group = "power_crystals", chance = 4000000},
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "named_color_crystals", chance = 10000000},
			},
			lootChance = 10000000
		},

		{
			groups = {
				{group = "xj6_speeder_schem", chance = 2500000},
				{group = "cad_mech_junk", chance = 2500000},
				{group = "tcg_junk", chance = 2500000},
				{group = "lighting_junk", chance = 2500000},
			},
			lootChance = 10000000
		},
	},
	weapons = {"magnaguard_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(general_grievous, "general_grievous")
