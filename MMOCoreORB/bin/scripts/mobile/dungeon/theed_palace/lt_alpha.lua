lt_alpha = Creature:new {
	objectName = "",
	customName = "Lt. Alpha",
	socialGroup = "rebel",
	faction = "rebel",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + CONVERSABLE + INTERESTING + INVULNERABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_lieutenant_lance.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "palaceLtAlphaConvoTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(lt_alpha, "lt_alpha")
