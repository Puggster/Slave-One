rep_at_xt_pet = Creature:new {
	objectName = "@mob/creature_names:at_xt_pet",
	mobType = MOB_VEHICLE,
	socialGroup = "imperial",
	faction = "imperial",
	level = 125,
	chanceHit = 4.75,
	damageMin = 370,
	damageMax = 650,
	baseXp = 11859,
	baseHAM = 20000,
	baseHAMmax = 31000,
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

	templates = {"object/mobile/atxt.iff"},
	lootGroups = {},
	conversationTemplate = "",

	primaryWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
	secondaryWeapon = "none",
	primaryAttack = "defaultdroidrangedattack",
	secondaryAttack = { }
}

CreatureTemplates:addCreatureTemplate(rep_at_xt_pet, "rep_at_xt_pet")
