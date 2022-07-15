elite_death_watch_jedi_hunter = Creature:new {
	customName = "a Jedi Hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "death_watch",
	faction = "",
	level = 304,
	chanceHit = 30,
	damageMin = 2400,
	damageMax = 4310,
	baseXp = 27849,
	baseHAM = 425000,
	baseHAMmax = 500000,
	armor = 3,
	resists = {75,65,75,70,70,50,70,40,125},
	--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	scale = 1.1,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
				},
				lootChance = 6000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000},
				},
				lootChance = 5000000
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
						{group = "death_watch_bunker_overlord_shared", chance = 5000000},
						{group = "jetpack_base", chance = 5000000},
					},
					lootChance = 5000000
			},
				{
					groups = {
							{group = "death_watch_weapon_components", chance = 10000000},
						},
						lootChance = 6000000
				},
			{
				groups = {
						{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
						{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
					},
					lootChance = 1500000
			},
			{
				groups = {
						{group = "stap_speeder_schem", chance = 10000000},
					},
					lootChance = 4000000
			},
	},
-- OLD TEMPLATE	weapons = {"firebat_weapons","jedi_gen4_allcolors"},

	primaryWeapon = "firebat_weapons",
	secondaryWeapon = "jedi_gen4_allcolors",
	conversationTemplate = "",

	primaryAttacks = merge(lightsabermaster,fencermaster,brawlermaster,commandomaster,bountyhuntermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(elite_death_watch_jedi_hunter, "elite_death_watch_jedi_hunter")
