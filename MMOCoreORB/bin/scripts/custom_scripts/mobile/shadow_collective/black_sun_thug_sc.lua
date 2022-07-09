black_sun_thug_sc = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_blksun_thug",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 106,
	chanceHit = 0.85,
	damageMin = 600,
	damageMax = 900,
	baseXp = 8130,
	baseHAM = 10000,
	baseHAMmax = 11428,
	armor = 1,
	resists = {30,30,40,35,45,40,45,40,110},
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
	scale = 1.15,

	templates = {"object/mobile/dressed_black_sun_thug.iff"},
	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 6500000},
				{group = "bounty_hunter_armor", chance = 1500000},
				{group = "jetpack_base", chance = 1000000},
				{group = "powerplants", chance = 500000},
				{group = "wearables_uncommon", chance = 500000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "barc_speeder_schem", chance = 10000000},
			},
			lootChance = 250000
		}
	},
	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(black_sun_thug_sc, "black_sun_thug_sc")
