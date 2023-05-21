rebel_listening_post = Lair:new {
	mobiles = {
		{"cis_battle_droid_squad_leader",1},
		{"cis_battle_droid_captain",1}
	},
	spawnLimit = 12,
	buildingsVeryEasy = {"object/building/poi/rebel_listening_post.iff"},
	buildingsEasy = {"object/building/poi/rebel_listening_post.iff"},
	buildingsMedium = {"object/building/poi/rebel_listening_post.iff"},
	buildingsHard = {"object/building/poi/rebel_listening_post.iff"},
	buildingsVeryHard = {"object/building/poi/rebel_listening_post.iff"},
	missionBuilding = "object/tangible/lair/base/objective_banner_rebel.iff",
	mobType = "npc",
	buildingType = "theater",
	faction = "rebel"
}

addLairTemplate("rebel_listening_post", rebel_listening_post)
