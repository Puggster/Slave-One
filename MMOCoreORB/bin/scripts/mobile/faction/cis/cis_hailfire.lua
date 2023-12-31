cis_hailfire = Creature:new {
	objectName = "@mob/creature_names:cis_hailfire",
	mobType = MOB_VEHICLE,
	socialGroup = "rebel",
	faction = "rebel",
	level = 125,
	chanceHit = 4.75,
	damageMin = 770,
	damageMax = 1250,
	baseXp = 11859,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
	resists = {35,35,-1,100,100,15,15,100,-1},
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

	templates = {"object/mobile/hailfire_droid.iff"},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 4000000,
		},
	},

	primaryWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
	secondaryWeapon = "none",
	conversationTemplate = "",

	primaryAttacks = "defaultdroidattack",
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cis_hailfire, "cis_hailfire")
