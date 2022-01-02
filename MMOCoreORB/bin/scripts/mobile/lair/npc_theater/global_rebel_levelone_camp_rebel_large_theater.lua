global_rebel_levelone_camp_rebel_large_theater = Lair:new {
	mobiles = {
		{"cis_battle_droid",12},
		{"cis_battle_droid_commando", 8},
		{"fbase_rebel_army_captain", 2},
		{"cis_sbd",6},
		{"cis_magnaguard",4},
	},
	spawnLimit = 32,
	buildingsVeryEasy = {"object/building/poi/anywhere_rebel_base_large_1.iff"},
	buildingsEasy = {"object/building/poi/anywhere_rebel_base_large_1.iff"},
	buildingsMedium = {"object/building/poi/anywhere_rebel_base_large_1.iff"},
	buildingsHard = {"object/building/poi/anywhere_rebel_base_large_1.iff"},
	buildingsVeryHard = {"object/building/poi/anywhere_rebel_base_large_1.iff"},
	missionBuilding = "object/tangible/lair/base/objective_power_generator.iff",
	mobType = "npc",
	buildingType = "theater",
	faction = "rebel"
}

addLairTemplate("global_rebel_levelone_camp_rebel_large_theater", global_rebel_levelone_camp_rebel_large_theater)
