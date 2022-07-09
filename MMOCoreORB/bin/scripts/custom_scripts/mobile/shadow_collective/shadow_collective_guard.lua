shadow_collective_guard = Creature:new {
	customName = "a Shadow Collective guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 226,
	chanceHit = 2.85,
	damageMin = 870,
	damageMax = 1350,
	baseXp = 17207,
	baseHAM = 50000,
	baseHAMmax = 68571,
	armor = 1,
	resists = {50,50,35,35,35,35,40,10,120},
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
	scale = .95,

	templates = {
	"object/mobile/dressed_blood_razor_pirate_guard_hum_f.iff",
	"object/mobile/dressed_blood_razor_pirate_guard_hum_m.iff",
	"object/mobile/dressed_blood_razor_pirate_guard_nikto_m.iff",
	"object/mobile/dressed_blood_razor_pirate_guard_rod_m.iff",
	},

	lootGroups = {
		{
			groups = {
			{group = "noob_weapons", chance = 4000000},
			{group = "underworld_common", chance = 6000000},
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "bountyhunter_junk", chance = 10000000},
			},
			lootChance = 50000
		},

	},

	primaryWeapon = "shadow_collective_guard",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(elite2hmaster,marksmanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_guard, "shadow_collective_guard")
