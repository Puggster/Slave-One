lok_pirate_base_neutral_harder_large_theater = Lair:new {
	mobiles = {
	{"shadow_collective_hired_gun_mission",3},
	{"shadow_collective_thug_mission",3},
	{"shadow_collective_assassin_mission",3},
	{"cad_bane_crewmember",2},
	},

	spawnLimit = 16,
	buildingsVeryEasy = {"object/building/poi/dantooine_janta_medium1.iff","object/building/poi/dantooine_janta_medium2.iff"},
	buildingsEasy = {"object/building/poi/dantooine_janta_medium1.iff","object/building/poi/dantooine_janta_medium2.iff"},
	buildingsMedium = {"object/building/poi/dantooine_janta_medium1.iff","object/building/poi/dantooine_janta_medium2.iff"},
	buildingsHard = {"object/building/poi/dantooine_janta_medium1.iff","object/building/poi/dantooine_janta_medium2.iff"},
	buildingsVeryHard = {"object/building/poi/dantooine_janta_medium1.iff","object/building/poi/dantooine_janta_medium2.iff"},
	missionBuilding = "object/tangible/lair/base/objective_power_node.iff",
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("lok_pirate_base_neutral_harder_large_theater", lok_pirate_base_neutral_harder_large_theater)
