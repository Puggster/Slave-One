death_watch_pistoleer = Creature:new {
	objectName = "@mob/creature_names:death_watch_pistoleer",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 229,
	chanceHit = 10.50,
	damageMin = 1020,
	damageMax = 1550,
	baseXp = 16794,
	baseHAM = 75000,
	baseHAMmax = 85714,
	armor = 2,
	resists = {60,50,40,40,45,45,40,40,110},
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
	scale = 1.20,

	templates = {"object/mobile/dressed_death_watch_silver.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners",   chance = 5500000},
				{group = "death_watch_bunker_lieutenants", chance = 2500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "bounty_hunter_armor", chance = 1000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
			{group = "death_watch_pistol_schematics", chance = 6000000},
			{group = "death_watch_pistol_barrel_components", chance = 4000000},
			},
			lootChance = 2500000
		}
	},

	primaryWeapon = "pistoleer_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(quickdraw),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(death_watch_pistoleer, "death_watch_pistoleer")
