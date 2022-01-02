global_rebel_levelthree_camp_rebel_large_theater = Lair:new {
	mobiles = {
		{"fbase_hailfire",1},
		{"cis_jedi_master_fm",2},
		{"fbase_rebel_elite_heavy_trooper_extreme",2},
		{"cis_magnaguard",6},
		{"cis_droideka",3},
		{"cis_battle_droid_commando",6},
		{"cis_sbd",10},
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

addLairTemplate("global_rebel_levelthree_camp_rebel_large_theater", global_rebel_levelthree_camp_rebel_large_theater)
