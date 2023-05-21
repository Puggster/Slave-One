global_specforce_garrison = Lair:new {
	mobiles = {
		{"cis_battle_droid_pilot", 1},
		{"cis_battle_droid_commando", 1},
		{"cis_battle_droid", 1},
		{"cis_battle_droid_scout", 1}
	},
	spawnLimit = 12,
	buildingsVeryEasy = {"object/building/poi/anywhere_rebel_camp_small_1.iff","object/building/poi/anywhere_rebel_camp_small_2.iff","object/building/poi/anywhere_rebel_camp_small_3.iff"},
	buildingsEasy = {"object/building/poi/anywhere_rebel_camp_small_1.iff","object/building/poi/anywhere_rebel_camp_small_2.iff","object/building/poi/anywhere_rebel_camp_small_3.iff"},
	buildingsMedium = {"object/building/poi/anywhere_rebel_camp_small_1.iff","object/building/poi/anywhere_rebel_camp_small_2.iff","object/building/poi/anywhere_rebel_camp_small_3.iff"},
	buildingsHard = {"object/building/poi/anywhere_rebel_camp_small_1.iff","object/building/poi/anywhere_rebel_camp_small_2.iff","object/building/poi/anywhere_rebel_camp_small_3.iff"},
	buildingsVeryHard = {"object/building/poi/anywhere_rebel_camp_small_1.iff","object/building/poi/anywhere_rebel_camp_small_2.iff","object/building/poi/anywhere_rebel_camp_small_3.iff"},
	missionBuilding = "object/tangible/lair/base/objective_banner_rebel.iff",
	mobType = "npc",
	buildingType = "theater",
	faction = "rebel"
}

addLairTemplate("global_specforce_garrison", global_specforce_garrison)
