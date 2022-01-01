shadow_collective_guard = Creature:new {
	customName = "a Shadow Collective guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 226,
	chanceHit = 2.85,
	damageMin = 770,
	damageMax = 1150,
	baseXp = 17207,
	baseHAM = 69000,
	baseHAMmax = 96000,
	armor = 1,
	resists = {60,60,45,45,45,45,40,40,120},
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
			lootChance = 10000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "bountyhunter_junk", chance = 10000000},
			},
			lootChance = 100000
		},

	},
	weapons = {"shadow_collective_guard"},
	conversationTemplate = "",
	attacks = merge(elite2hmaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_guard, "shadow_collective_guard")
