imperial_listening_post = Lair:new {
	mobiles = {
		{"clonetrooper_captain",1},
		{"clonetrooper_major",1}
	},
	spawnLimit = 12,
	buildingsVeryEasy = {"object/building/poi/imperial_listening_post.iff"},
	buildingsEasy = {"object/building/poi/imperial_listening_post.iff"},
	buildingsMedium = {"object/building/poi/imperial_listening_post.iff"},
	buildingsHard = {"object/building/poi/imperial_listening_post.iff"},
	buildingsVeryHard = {"object/building/poi/imperial_listening_post.iff"},
	missionBuilding = "object/tangible/lair/base/objective_banner_imperial.iff",
	mobType = "npc",
	buildingType = "theater",
	faction = "imperial"
}

addLairTemplate("imperial_listening_post", imperial_listening_post)
