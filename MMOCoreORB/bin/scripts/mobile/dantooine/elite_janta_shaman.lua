elite_janta_shaman = Creature:new {
	objectName = "@mob/creature_names:elite_janta_shaman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 260,
	chanceHit = 4.65,
	damageMin = 2270,
	damageMax = 2650,
	baseXp = 25830,
	baseHAM = 32000,
	baseHAMmax = 64000,
	armor = 1,
	resists = {20,40,20,20,100,100,20,-1,20}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
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
			lootChance = 9500000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(elite_janta_shaman, "elite_janta_shaman")
