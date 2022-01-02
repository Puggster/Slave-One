cad_bane_pvp_zone = Creature:new {
	--customName = "Cad Bane",
	objectName = "@mob/creature_names:cad_bane_pvp_zone",
	--randomNameType = NAME_GENERIC,
	--randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 299,
	chanceHit = 8.5,
	damageMin = 1895,
	damageMax = 3500,
	baseXp = 14314,
	baseHAM = 150000,
	baseHAMmax = 302000,
	armor = 3,
	resists = {90,95,80,80,70,75,70,80,10},
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
	"object/mobile/cad_bane.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jewelry_restuss", chance = 5000000},
				{group = "restuss_cis", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups =
			{
				{group = "underworld_common", chance = 5000000},
				{group = "restuss_republic", chance = 2500000},
				{group = "restuss_cis", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "powerplants", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "stap_speeder_schem", chance = 2000000},
				{group = "barc_speeder_schem", chance = 8000000}
			},
			lootChance = 15000000
		},
	},

	weapons = {"pirate_weapons_heavy","pistoleer_weapons"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(cad_bane_pvp_zone, "cad_bane_pvp_zone")
