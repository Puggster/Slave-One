tradefed_hailfire = Creature:new {
customName = "an experimental Hailfire Droid (Trade Federation)",
mobType = MOB_ANDROID,
socialGroup = "trade_federation",
faction = "trade_federation",
level = 300,
chanceHit = 10.36,
damageMin = 1090,
damageMax = 1500,
baseXp = 42730,
baseHAM = 125000,
baseHAMmax = 140000,
armor = 3,
resists = {180,190,75,60,60,60,60,20,150}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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

	templates = {"object/mobile/hailfire_droid.iff"},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 9000000,
		},
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(tradefed_hailfire, "tradefed_hailfire")
