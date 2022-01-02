elite_janta_soothsayer = Creature:new {
	objectName = "@mob/creature_names:elite_janta_soothsayer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 260,
	chanceHit = 10.65,
	damageMin = 1250,
	damageMax = 1710,
	baseXp = 21738,
	baseHAM = 110000,
	baseHAMmax = 144400,
	armor = 1,
	resists = {30,30,50,25,25,25,25,-1,125}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
			{group = "junk", chance = 5000000},
			{group = "janta_elite", chance = 5000000},
			},
			lootChance = 9500000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(elite_janta_soothsayer, "elite_janta_soothsayer")
