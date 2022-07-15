death_watch_pikeman = Creature:new {
	objectName = "@mob/creature_names:death_watch_pikeman",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 192,
	chanceHit = 10.5,
	damageMin = 1150,
	damageMax = 1700,
	baseXp = 15314,
	baseHAM = 45000,
	baseHAMmax = 64285,
	armor = 2,
	resists = {75,50,50,50,75,50,50,30,110},
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

	templates = {"object/mobile/dressed_death_watch_red.iff"},
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

	primaryWeapon = "pikeman_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(brawlermaster,elitepikemanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(death_watch_pikeman,"death_watch_pikeman")
