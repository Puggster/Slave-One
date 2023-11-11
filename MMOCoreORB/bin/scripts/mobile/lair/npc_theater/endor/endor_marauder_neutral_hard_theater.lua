endor_marauder_neutral_hard_theater = Lair:new {
	mobiles = {{"mission_marauder",1},{"mission_marauder_01",1},{"mission_marauder_02",1}},
	spawnLimit = 24,
	buildingsVeryEasy = {"object/building/poi/endor_marauder_large1.iff","object/building/poi/endor_marauder_large2.iff","object/building/poi/endor_marauder_large3.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsEasy = {"object/building/poi/endor_marauder_large1.iff","object/building/poi/endor_marauder_large2.iff","object/building/poi/endor_marauder_large3.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsMedium = {"object/building/poi/endor_marauder_large1.iff","object/building/poi/endor_marauder_large2.iff","object/building/poi/endor_marauder_large3.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsHard = {"object/building/poi/endor_marauder_large1.iff","object/building/poi/endor_marauder_large2.iff","object/building/poi/endor_marauder_large3.iff","object/building/poi/endor_marauder_medium2.iff"},
	buildingsVeryHard = {"object/building/poi/endor_marauder_large1.iff","object/building/poi/endor_marauder_large2.iff","object/building/poi/endor_marauder_large3.iff","object/building/poi/endor_marauder_medium2.iff"},
	missionBuilding = "object/tangible/lair/base/objective_power_node.iff",
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("endor_marauder_neutral_hard_theater", endor_marauder_neutral_hard_theater)
