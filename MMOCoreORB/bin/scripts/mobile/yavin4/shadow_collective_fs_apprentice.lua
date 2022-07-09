shadow_collective_fs_apprentice = Creature:new {
	customName = "a Shadow Collective initiate",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 336,
	chanceHit = 4.85,
	damageMin = 2570,
	damageMax = 3250,
	baseXp = 27202,
	baseHAM = 145000,
	baseHAMmax = 185714,
	armor = 2,
	resists = {60,60,50,50,55,195,50,200,125},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1,

	templates = {"object/mobile/dressed_mauler.iff"},
	lootGroups = {
		{
			groups = {
				{group = "krayt_pearls", chance = 1500000},
				{group = "powerplants", chance = 3500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 1000000},
				{group = "color_crystals", chance = 2000000},
				{group = "armor_attachments", chance = 3500000},
				{group = "clothing_attachments", chance = 3500000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},

	},

	primaryWeapon = "pikeman_weapons",
	secondaryWeapon = "dark_jedi_gen4_pike",
	conversationTemplate = "",

	primaryAttacks = merge(lightsabermaster,elitepikemanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_fs_apprentice, "shadow_collective_fs_apprentice")
