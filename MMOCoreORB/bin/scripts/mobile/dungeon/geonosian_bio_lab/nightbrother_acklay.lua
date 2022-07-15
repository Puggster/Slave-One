nightbrother_acklay = Creature:new {
	objectName = "@mob/creature_names:nightbrother_acklay",
	mobType = MOB_CARNIVORE,
	--customName = "a force corrupted Acklay",
	socialGroup = "shadow_collective",
	faction = "",
	level = 220,
	chanceHit = 40,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 38549,
	baseHAM = 290000,
	baseHAMmax = 357857,
	armor = 3,
	resists = {180,170,180,170,50,50,50,30,110},
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
		},
		{
			groups = {
				{group = "nightbrother_common", chance = 10000000}
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "acklay", chance = 10000000}
			},
			lootChance = 1500000
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

CreatureTemplates:addCreatureTemplate(nightbrother_acklay, "nightbrother_acklay")
