tradefed_droideka = Creature:new {
	objectName = "@mob/creature_names:geonosian_droideka_crazed",
	customName = "Droideka (Trade Federation)",
	mobType = MOB_ANDROID,
	socialGroup = "trade_federation",
	faction = "trade_federation",
	level = 301,
	chanceHit = 24.75,
	damageMin = 1470,
	damageMax = 2250,
	baseXp = 11859,
	baseHAM = 80000,
	baseHAMmax = 93571,
	armor = 2,
	resists = {165,185,190,190,190,30,30,30,140}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 9000000,
		},
	},
	conversationTemplate = "",
	defaultAttack = "attack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(tradefed_droideka, "tradefed_droideka")
