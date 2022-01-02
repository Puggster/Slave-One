ithorian_guardian_armor_helmet = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/wearables/armor/ithorian_guardian/ith_armor_s02_helmet.iff",
	craftingValues = {
		{"armor_rating",1,1,0},
		{"kineticeffectiveness",10,28,10},
		{"armor_effectiveness",4,20,10},
		{"armor_integrity",15000, 25000,0},
		{"armor_health_encumbrance",300,250,0},
		{"armor_action_encumbrance",300,250,0},
		{"armor_mind_encumbrance",500,450,0},
	},
	skillMods = {

	},
	customizationStringNames = {"/private/index_color_0", "/private/index_color_1"},
	customizationValues = {
			{0, 1},
			{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}
	},

	junkDealerTypeNeeded = JUNKGENERIC,
	junkMinValue = 35,
	junkMaxValue = 70
}

addLootItemTemplate("ithorian_guardian_armor_helmet", ithorian_guardian_armor_helmet)
