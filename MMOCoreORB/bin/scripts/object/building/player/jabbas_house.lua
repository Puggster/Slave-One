object_building_player_jabbas_house = object_building_player_shared_jabbas_house:new {
	lotSize = 5,
	baseMaintenanceRate = 50,
	allowedZones = {"lok", "tatooine"},
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
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -2.83541, z = 14.666, y = 4.2576, ow = 1, ox = 0, oz = 0, oy = 1.26784e-07, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -0.0241371, z = 0.60893, y = -0.31771, ow = -4.37114e-08, ox = 0, oz = 0, oy = -1, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = .6825, z = 15.6126, y = -0.462599, ow = .829038, ox = -0.559193, oz = 0, oy = 0, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/sign/player/house_address.iff", x = -1.15, z = 2, y = -3.65, ow = -1, ox = 0, oz = 0, oy = 0, cellid = -1, containmentType = -1},
	},
}

ObjectTemplates:addTemplate(object_building_player_jabbas_house, "object/building/player/jabbas_house.iff")
