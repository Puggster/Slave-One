dark_jedi_master_pvp_zone = Creature:new {
	objectName = "@mob/creature_names:dj_master_pvp_zone",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "dark_jedi",
	faction = "",
	level = 291,
	chanceHit = 27.25,
	damageMin = 1800,
	damageMax = 2910,
	baseXp = 27849,
	baseHAM = 55000,
	baseHAMmax = 72857,
	armor = 3,
	resists = {70,60,60,60,60,60,60,40,120},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "dark_jedi" },
	lootGroups = {
		{
			groups = {
				{group = "barc_speeder_schem", chance = 1000000},
				{group = "armor_attachments", chance = 4500000},
				{group = "clothing_attachments", chance = 4500000},
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "restuss_cis", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "powerplants", chance = 10000000},
			},
			lootChance = 500000
		},
	},

	primaryWeapon = "arzo_suun_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(lightsabermaster,forcepowermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(dark_jedi_master_pvp_zone, "dark_jedi_master_pvp_zone")
