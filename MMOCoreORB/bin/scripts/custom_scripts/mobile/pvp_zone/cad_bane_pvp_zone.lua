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
	baseXp = 20314,
	baseHAM = 170000,
	baseHAMmax = 215714,
	armor = 3,
	resists = {70,65,70,70,60,55,50,40,110},
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
			lootChance = 90000000
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
			lootChance = 90000000
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
			lootChance = 5000000
		},
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "pistoleer_weapons",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster),
	secondaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(cad_bane_pvp_zone, "cad_bane_pvp_zone")
