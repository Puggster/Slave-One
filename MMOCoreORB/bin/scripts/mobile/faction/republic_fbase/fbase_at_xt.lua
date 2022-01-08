fbase_at_xt = Creature:new {
	objectName = "@mob/creature_names:at_xt",
	mobType = MOB_VEHICLE,
	socialGroup = "imperial",
	faction = "imperial",
	level = 205,
	chanceHit = 11.5,
	damageMin = 1170,
	damageMax = 2050,
	baseXp = 20500,
	baseHAM = 139000,
	baseHAMmax = 200000,
	armor = 3,
	resists = {135,135,-1,200,200,15,15,200,-1},
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

	templates = {"object/mobile/atxt.iff"},
	lootGroups = {},
	conversationTemplate = "",

	primaryWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
	secondaryWeapon = "none",
	primaryAttack = "defaultdroidrangedattack",
	secondaryAttack = { }
}

CreatureTemplates:addCreatureTemplate(fbase_at_xt, "fbase_at_xt")
