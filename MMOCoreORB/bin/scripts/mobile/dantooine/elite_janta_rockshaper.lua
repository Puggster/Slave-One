elite_janta_rockshaper = Creature:new {
	objectName = "@mob/creature_names:elite_janta_rockshaper",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 295,
	chanceHit = 27.25,
	damageMin = 1820,
	damageMax = 2250,
	baseXp = 26654,
	baseHAM = 291000,
	baseHAMmax = 369000,
	armor = 3,
	resists = {190,75,75,55,55,55,75,25,125}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = AGGRESSIVE + PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 4000000},
				{group = "vibrovis_g", chance = 2500000},
				{group = "janta_elite", chance = 3500000},
			},
			lootChance = 9500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 2500000},
				{group = "vibrovis_g", chance = 2500000},
				{group = "janta_elite", chance = 5000000},
			},
			lootChance = 5000000
		},
	},
	weapons = {"pikeman_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(elite_janta_rockshaper, "elite_janta_rockshaper")
