elite_janta_herbalist = Creature:new {
	objectName = "@mob/creature_names:elite_janta_herbalist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 227,
	chanceHit = 2.39,
	damageMin = 605,
	damageMax = 1320,
	baseXp = 12730,
	baseHAM = 52000,
	baseHAMmax = 80000,
	armor = 1,
	resists = {70,70,70,25,25,25,25,-1,-1}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "janta_elite", chance = 5000000},
			},
			lootChance = 7500000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(elite_janta_herbalist, "elite_janta_herbalist")
