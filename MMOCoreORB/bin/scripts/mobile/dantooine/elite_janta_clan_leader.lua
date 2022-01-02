elite_janta_clan_leader = Creature:new {
	objectName = "@mob/creature_names:elite_janta_clan_leader",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 301,
	chanceHit = 27.25,
	damageMin = 2020,
	damageMax = 2550,
	baseXp = 26654,
	baseHAM = 240000,
	baseHAMmax = 310000,
	armor = 3,
	resists = {55,195,195,75,75,55,75,25,125}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dantari_male.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 4000000},
				{group = "vibrovis_g", chance = 2500000},
				{group = "janta_elite", chance = 3500000},
			},
			lootChance = 10000000
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
	weapons = {"fencer_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(elite_janta_clan_leader, "elite_janta_clan_leader")
