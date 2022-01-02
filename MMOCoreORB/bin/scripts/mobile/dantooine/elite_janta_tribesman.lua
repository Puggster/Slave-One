elite_janta_tribesman = Creature:new {
	objectName = "@mob/creature_names:elite_janta_tribesman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 229,
	chanceHit = 10.33,
	damageMin = 390,
	damageMax = 600,
	baseXp = 21803,
	baseHAM = 45000,
	baseHAMmax = 61000,
	armor = 3,
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
			lootChance = 7500000
		}
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(elite_janta_tribesman, "elite_janta_tribesman")
