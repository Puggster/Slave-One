shadow_collective_thug_mission = Creature:new {
	objectName = "@mob/creature_names:shadow_collective_thug",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	faction = "",
	level = 175,
	chanceHit = 2.7,
	damageMin = 795,
	damageMax = 1300,
	baseXp = 12207,
	baseHAM = 52000,
	baseHAMmax = 75000,
	armor = 1,
	resists = {90,90,90,90,60,60,60,60,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

  templates =
	{"object/mobile/dressed_black_sun_thug.iff",
	"object/mobile/dressed_2handsword_trainer_02.iff"
},


	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "power_crystals", chance = 600000},
				{group = "color_crystals", chance = 500000},
				{group = "noob_weapons", chance = 1100000},
				{group = "armor_attachments", chance = 1400000},
				{group = "clothing_attachments", chance = 1400000},
			},
			lootChance = 2500000,
		},
		{
			groups = {
				{group = "powerplants", chance = 1000000},
				{group = "lighting_junk", chance = 3000000},
				{group = "jewelry_exp_common", chance = 3000000},
				{group = "jewelry_assem_common", chance = 3000000},

			},
			lootChance = 2000000
		}
	},
	weapons = {"twohand_weapons"},
	conversationTemplate = "",
	attacks = merge(elite2hmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_thug_mission, "shadow_collective_thug_mission")
