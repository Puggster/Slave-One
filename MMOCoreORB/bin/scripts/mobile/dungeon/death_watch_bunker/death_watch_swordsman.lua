death_watch_swordsman = Creature:new {
	objectName = "@mob/creature_names:death_watch_swordsman",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
		randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 192,
	chanceHit = 9.5,
	damageMin = 2050,
	damageMax = 2750,
	baseXp = 15314,
	baseHAM = 34000,
	baseHAMmax = 39285,
	armor = 2,
	resists = {75,50,60,60,65,65,65,40,120},
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
	scale = 1.10,

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
			lootChance = 3500000
		},
		{
			groups = {
				{group = "mandalorian_common", chance = 10000000}
			},
			lootChance = 1500000
		},
	},

	primaryWeapon = "twohand_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(elite2hmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(death_watch_swordsman, "death_watch_swordsman")
