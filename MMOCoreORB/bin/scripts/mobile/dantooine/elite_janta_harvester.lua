elite_janta_harvester = Creature:new {
	objectName = "@mob/creature_names:elite_janta_harvester",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 240,
	chanceHit = 10.44,
	damageMin = 645,
	damageMax = 1200,
	baseXp = 13915,
	baseHAM = 79300,
	baseHAMmax = 113000,
	armor = 2,
	resists = {20,20,20,25,25,25,25,10,120}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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

CreatureTemplates:addCreatureTemplate(elite_janta_harvester, "elite_janta_harvester")
