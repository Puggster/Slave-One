cis_droideka_restuss = Creature:new {
	objectName = "@mob/creature_names:cis_droideka_trials",
	--customName = "A Separatist Heavy Droideka (Cortosis-Shielded)",
	mobType = MOB_ANDROID,
	socialGroup = "rebel",
	faction = "rebel",
	level = 225,
	chanceHit = 5.75,
	damageMin = 970,
	damageMax = 1850,
	baseXp = 21859,
	baseHAM = 95000,
	baseHAMmax = 150000,
	armor = 2,
	resists = {65,65,35,50,50,55,55,50,165},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.1,

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 5000000,
		},
	},
	conversationTemplate = "",
	defaultAttack = "attack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(cis_droideka_restuss, "cis_droideka_restuss")
