elite_mandalorian_supercommando = Creature:new {
	customName = "a Mandalorian Supercommando",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 27.25,
	damageMin = 2000,
	damageMax = 4310,
	baseXp = 27849,
	baseHAM = 1499999,
	baseHAMmax = 1602000,
	armor = 3,
	resists = {70,60,90,90,50,60,70,30,110},
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
	scale = 1.2,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
				},
				lootChance = 70000000
		},
		{
			groups = {
					{group = "death_watch_bunker_lieutenants", chance = 10000000},
				},
				lootChance = 10000000
		},
		{
			groups = {
					{group = "death_watch_bunker_pack", chance = 10000000},
				},
				lootChance = 10000000
		},
			{
				groups = {
						{group = "barc_speeder_schem", chance = 5000000},
						{group = "stap_speeder_schem", chance = 5000000},
					},
					lootChance = 6000000
			},
			{
				groups = {
						{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
						{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
					},
					lootChance = 9000000
			},
	},

	primaryWeapon = "dark_trooper_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(elite_mandalorian_supercommando, "elite_mandalorian_supercommando")
