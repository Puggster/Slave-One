
object_building_player_player_house_jedi_meditation_room = object_building_player_shared_player_house_jedi_meditation_room:new {
	lotSize = 2,
	baseMaintenanceRate = 16,
	allowedZones = {"dantooine", "lok", "tatooine", "naboo", "rori", "corellia", "talus"},
	publicStructure = 0,
	constructionMarker = "object/building/player/construction/construction_player_house_tatooine_medium_style_01.iff",
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 5},
		{"private_safe_logout", 1}
	},
	childObjects = {
		{templateFile = "object/tangible/sign/player/house_address.iff", x = 1.9, z = 2.75, y = 6.4, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1},
		{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -8, z = 1, y = -1, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = 1, containmentType = -1},
	},
	shopSigns = {
		{templateFile = "object/tangible/sign/player/house_address.iff", x = 1.9, z = 2.75, y = 6.4, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "", suiItem = "@player_structure:house_address"},
		{templateFile = "object/tangible/sign/player/shop_sign_s01.iff", x = 1.9, z = 1, y = 8.2, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_01", suiItem = "@player_structure:shop_sign1"},
		{templateFile = "object/tangible/sign/player/shop_sign_s02.iff", x = 1.9, z = 1, y = 8.2, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_02", suiItem = "@player_structure:shop_sign2"},
		{templateFile = "object/tangible/sign/player/shop_sign_s03.iff", x = 1.9, z = 1, y = 8.2, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_03", suiItem = "@player_structure:shop_sign3"},
		{templateFile = "object/tangible/sign/player/shop_sign_s04.iff", x = 1.9, z = 1, y = 8.2, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "crafting_merchant_management_04", suiItem = "@player_structure:shop_sign4"},
		{templateFile = "object/tangible/sign/player/wod_sm_standing_sign_01.iff", x = 1.9, z = 1, y = 8.2, ox = 0, oy = 0, oz = 0, ow =  1, cellid = -1, containmentType = -1, requiredSkill = "loot_sign_02", suiItem = "@player_structure:wod_sm_standing_sign_01"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_01.iff", x = 1.9, z = .8, y = 6.4, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "loot_sign_03", suiItem = "@player_structure:wod_sm_banner_sign_01"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_02.iff", x = 1.9, z = .8, y = 6.4, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "loot_sign_04", suiItem = "@player_structure:wod_sm_banner_sign_02"},
		{templateFile = "object/tangible/sign/player/wod_sm_banner_sign_03.iff", x = 1.9, z = .8, y = 6.4, ox = 0, oy = -1, oz = 0, ow = 0, cellid = -1, containmentType = -1, requiredSkill = "loot_sign_05", suiItem = "@player_structure:wod_sm_banner_sign_03"},
	},
	length = 5,
	width = 7
}

ObjectTemplates:addTemplate(object_building_player_player_house_jedi_meditation_room, "object/building/player/player_house_jedi_meditation_room.iff")
