global_imperial_levelthree_camp_imperial_large_theater = Lair:new {
	mobiles = {
		{"rep_jedi_knight",12},
		{"rep_jedi_master_fm",3},
		{"clonetrooper_major",6},
		{"clone_commando",6},
		{"rep_at_xt",3},

	},
	spawnLimit = 30,
	buildingsVeryEasy = {"object/building/poi/lok_imperial_medium4.iff","object/building/poi/lok_imperial_medium5.iff"},
	buildingsEasy = {"object/building/poi/lok_imperial_medium4.iff","object/building/poi/lok_imperial_medium5.iff"},
	buildingsMedium = {"object/building/poi/lok_imperial_medium4.iff","object/building/poi/lok_imperial_medium5.iff"},
	buildingsHard = {"object/building/poi/lok_imperial_medium4.iff","object/building/poi/lok_imperial_medium5.iff"},
	buildingsVeryHard = {"object/building/poi/lok_imperial_medium4.iff","object/building/poi/lok_imperial_medium5.iff"},
	missionBuilding = "object/tangible/lair/base/objective_power_generator.iff",
	mobType = "npc",
	buildingType = "theater",
	faction = "imperial"
}

addLairTemplate("global_imperial_levelthree_camp_imperial_large_theater", global_imperial_levelthree_camp_imperial_large_theater)
