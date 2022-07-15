poison_acklay = Creature:new {
	objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	mobType = MOB_CARNIVORE,
	customName = "a deranged Acklay",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 157,
	chanceHit = 40,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 28549,
	baseHAM = 190000,
	baseHAMmax = 215000,
	armor = 3,
	resists = {180,65,170,170,60,60,60,60,110},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 25,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 8000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=200"},
		{"creatureareapoison","stateAccuracyBonus=200"},
		{"posturedownattack","stateAccuracyBonus=50"},
	}
}

CreatureTemplates:addCreatureTemplate(poison_acklay, "poison_acklay")
