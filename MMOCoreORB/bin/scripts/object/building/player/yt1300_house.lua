object_building_player_yt1300_house = object_building_player_shared_yt1300_house:new {
	lotSize = 5,
	baseMaintenanceRate = 50,
	allowedZones = {"dantooine", "lok", "tatooine", "naboo", "rori", "corellia", "talus"},
	publicStructure = 0,
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1}
	},
	childObjects = {
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -3.65361, z = 5.23503, y = -2.11307, ow = 1.61013e-07, ox = 0, oz = 0, oy = -1, cellid = 5, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -2.5, z = -0.25, y = 0, ow = 0.707107, ox = 0, oz = 0, oy = -0.707107, cellid = 7, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = -2.52389, z = 5.9, y = -0.0238, ow = -0.707107, ox = 0, oz = 0, oy = 0.707107, cellid = 7, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -4.1, z = 1.1, y = 2.44, ow = 0, ox = 0, oz = 0, oy = 1, cellid = -1, containmentType = -1},
	},
}

ObjectTemplates:addTemplate(object_building_player_yt1300_house, "object/building/player/yt1300_house.iff")
