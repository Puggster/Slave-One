black_sun_henchman_sc = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_blksun_henchman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 76,
	chanceHit = 0.75,
	damageMin = 520,
	damageMax = 750,
	baseXp = 7207,
	baseHAM = 9969,
	baseHAMmax = 10714,
	armor = 1,
	resists = {25,25,30,25,25,40,25,10,-1},
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

	templates = {"object/mobile/dressed_black_sun_henchman.iff"},
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
				lootChance = 500000
		}
	},
	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(black_sun_henchman_sc, "black_sun_henchman_sc")
