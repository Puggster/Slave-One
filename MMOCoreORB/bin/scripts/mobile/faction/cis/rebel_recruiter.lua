rebel_recruiter = Creature:new {
	objectName = "@mob/creature_names:rebel_recruiter",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 20,
	chanceHit = 0.33,
	damageMin = 190,
	damageMax = 200,
	baseXp = 1426,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {0,0,0,40,-1,40,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_recruiter_human_female_01.iff",
		"object/mobile/dressed_rebel_recruiter_human_female_02.iff",
		"object/mobile/dressed_rebel_recruiter_moncal_male_01.iff",
		"object/mobile/dressed_rebel_recruiter_twilek_female_01.iff"},
	lootGroups = {},

	primaryWeapon = "none",
	secondaryWeapon = "none",
	conversationTemplate = "rebelRecruiterConvoTemplate",
	containerComponentTemplate = "FactionRecruiterContainerComponent",

	primaryAttacks = { },
	secondaryAttacks = { }

}

CreatureTemplates:addCreatureTemplate(rebel_recruiter, "rebel_recruiter")
