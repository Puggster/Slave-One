elite_janta_warrior = Creature:new {
	objectName = "@mob/creature_names:elite_janta_warrior",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 232,
	chanceHit = 10.7,
	damageMin = 1495,
	damageMax = 1700,
	baseXp = 21655,
	baseHAM = 62000,
	baseHAMmax = 95000,
	armor = 2,
	resists = {50,50,50,25,25,25,25,-1,125}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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

CreatureTemplates:addCreatureTemplate(elite_janta_warrior, "elite_janta_warrior")
