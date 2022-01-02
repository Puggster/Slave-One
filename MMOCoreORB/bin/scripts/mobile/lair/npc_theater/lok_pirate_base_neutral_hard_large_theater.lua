lok_pirate_base_neutral_hard_large_theater = Lair:new {
	mobiles = {
	{"shadow_collective_hired_gun_mission",3},
	{"shadow_collective_thug_mission",3},
	{"shadow_collective_assassin_mission",1}
	},

	spawnLimit = 12,
	buildingsVeryEasy = {"object/building/poi/tatooine_hutt_businessmen_camp_medium.iff","object/building/poi/tatooine_hutt_businessmen_camp_medium2.iff"},
	buildingsEasy = {"object/building/poi/tatooine_hutt_businessmen_camp_medium.iff","object/building/poi/tatooine_hutt_businessmen_camp_medium2.iff"},
	buildingsMedium = {"object/building/poi/tatooine_hutt_businessmen_camp_medium.iff","object/building/poi/tatooine_hutt_businessmen_camp_medium2.iff"},
	buildingsHard = {"object/building/poi/tatooine_hutt_businessmen_camp_medium.iff","object/building/poi/tatooine_hutt_businessmen_camp_medium2.iff"},
	buildingsVeryHard = {"object/building/poi/tatooine_hutt_businessmen_camp_medium.iff","object/building/poi/tatooine_hutt_businessmen_camp_medium2.iff"},
	missionBuilding = "object/tangible/lair/base/objective_power_node.iff",
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("lok_pirate_base_neutral_hard_large_theater", lok_pirate_base_neutral_hard_large_theater)
