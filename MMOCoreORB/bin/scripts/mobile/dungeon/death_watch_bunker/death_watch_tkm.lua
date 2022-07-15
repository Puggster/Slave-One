death_watch_tkm = Creature:new {
	objectName = "@mob/creature_names:death_watch_tkm",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
		randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 192,
	chanceHit = 10.50,
	damageMin = 1020,
	damageMax = 1700,
	baseXp = 16794,
	baseHAM = 75000,
	baseHAMmax = 85714,
	armor = 2,
	resists = {75,50,70,70,70,60,60,30,120},
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
				{group = "clothing_attachments", chance = 750000},
				{group = "armor_attachments", chance = 750000},
				{group = "bounty_hunter_armor", chance = 500000}
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "blacksun_rare", chance = 5000000},
				{group = "mandalorian_common", chance = 5000000}
			},
			lootChance = 1500000
		},
	},

	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",

	primaryAttacks = merge(brawlermaster,tkamaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(death_watch_tkm, "death_watch_tkm")
