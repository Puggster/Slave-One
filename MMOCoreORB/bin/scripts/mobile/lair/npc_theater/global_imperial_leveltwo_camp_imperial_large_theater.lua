global_imperial_leveltwo_camp_imperial_large_theater = Lair:new {
	mobiles = {
		{"rep_jedi_knight",4},
		{"clonetrooper_major",4},
		{"clone_commando",8},
		{"rep_at_xt",2},
		{"fbase_stormtrooper_squad_leader_hard",2},
	},
	spawnLimit = 20,
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

addLairTemplate("global_imperial_leveltwo_camp_imperial_large_theater", global_imperial_leveltwo_camp_imperial_large_theater)
