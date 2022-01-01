shadow_collective_4lom = Creature:new {
	customName = "a protocol droid",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 303,
	chanceHit = 1.85,
	damageMin = 1570,
	damageMax = 2850,
	baseXp = 18130,
	baseHAM = 93000,
	baseHAMmax = 150000,
	armor = 1,
	resists = {40,40,60,35,55,70,35,40,110},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = .85,

	templates = {"object/mobile/4lom.iff"},
	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 6000000},
				{group = "powerplants", chance = 2000000},
				{group = "noob_weapons", chance = 2000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "barc_speeder_schem", chance = 5000000},
				{group = "stap_speeder_schem", chance = 5000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"pistoleer_NO_Stun_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,pistoleermaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_4lom, "shadow_collective_4lom")
