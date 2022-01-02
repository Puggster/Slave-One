elite_janta_loreweaver = Creature:new {
	objectName = "@mob/creature_names:elite_janta_loreweaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 255,
	chanceHit = 20.6,
	damageMin = 1445,
	damageMax = 1600,
	baseXp = 23373,
	baseHAM = 110000,
	baseHAMmax = 140000,
	armor = 1,
	resists = {25,25,70,65,65,65,65,25,125}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
			{group = "junk", chance = 5000000},
			{group = "janta_elite", chance = 5000000},
			},
			lootChance = 8500000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(elite_janta_loreweaver, "elite_janta_loreweaver")
