lok_fs_nyms_base_neutral_harder_large_theater = Lair:new {
	mobiles = {
		{"nym_protector_bunker",2},
		{"nym_sniper_mission",3},
		{"nym_spellweaver_bunker",1},
		{"force_savage_scout",1},
	},
	bossMobiles = {"force_savage_elder",1},

	spawnLimit = 27,
	buildingsVeryEasy = {"object/building/poi/dantooine_mokk_medium1.iff","object/building/poi/dantooine_mokk_medium2.iff"},
	buildingsEasy = {"object/building/poi/dantooine_mokk_medium1.iff","object/building/poi/dantooine_mokk_medium2.iff"},
	buildingsMedium = {"object/building/poi/dantooine_mokk_medium1.iff","object/building/poi/dantooine_mokk_medium2.iff"},
	buildingsHard = {"object/building/poi/dantooine_mokk_medium1.iff","object/building/poi/dantooine_mokk_medium2.iff"},
	buildingsVeryHard = {"object/building/poi/dantooine_mokk_medium1.iff","object/building/poi/dantooine_mokk_medium2.iff"},
	missionBuilding = "object/tangible/lair/base/objective_dantari_fire_pit.iff",
	mobType = "npc",
	buildingType = "theater"
}

addLairTemplate("lok_fs_nyms_base_neutral_harder_large_theater", lok_fs_nyms_base_neutral_harder_large_theater)
