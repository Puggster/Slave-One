rep_at_xt_restuss = Creature:new {
	objectName = "@mob/creature_names:rep_at_xt_trials",
	--customName = "A Republic AT-XT (Heavily Armored)",
	mobType = MOB_VEHICLE,
	socialGroup = "imperial",
	faction = "imperial",
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


	templates = {"object/mobile/atxt.iff"},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 5000000,
		},
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(rep_at_xt_restuss, "rep_at_xt_restuss")
