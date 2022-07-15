LokShadowCollectiveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "LokShadowCollectiveScreenPlay",
	planet = "lok",
	mobiles = {
	--Shuttle Area
	{"trainer_bountyhunter", 0, 11.5483, 1.13306, -12.2094, 0, 620003832},
	{"trainer_smuggler", 300, -0.866806, 1.13306, -13.4157, 4, 620003833},

	--Outside Entrance
	{"shadow_collective_guard", 600, -4705.98, 1.94006, 3625.94, 313, 0},
	{"shadow_collective_guard", 600, -4710.6, 2, 3623.22, 319, 0},

	{"shadow_collective_sbd", 600, -4743.54, 4, 3507.33, 152, 0},
	{"shadow_collective_sbd", 600, -4682.21, 1.79586, 3511.38, 199, 0},
	{"shadow_collective_sbd", 600, -4778.45, 2, 3449.31, 182, 0},

	{"shadow_collective_sbd", 600, -4857.24, 1.39482, 3466.2, 121, 0},
	{"shadow_collective_sbd", 600, -4848.04, 1.66273, 3478.76, 128, 0},
	{"shadow_collective_sbd", 600, -4889.51, 1.99436, 3557.68, 171, 0},
	{"shadow_collective_ug_thug", 600, -4879.56, 1.4504, 3611.4, 135, 0},
	{"shadow_collective_smuggler", 1800, -4868.46, 1.98541, 3604.5, 299, 0},
	{"shadow_collective_ug_thug", 600, -4778.32, 2, 3656.18, 260, 0},

	{"shadow_collective_sbd", 600, -4778.77, 1.99718, 3657.46, 260, 0},
	{"shadow_collective_sbd", 600, -4696.4, 13.343, 3578.2, 172, 0},
	{"shadow_collective_sbd", 600, -4732.97, 2, 3370.35, 167, 0},
	{"black_sun_thug_sc", 600, -4717.01, 2, 3305.61, 204, 0},
	{"black_sun_thug_sc", 600, -4720.35, 2, 3300.61, 37, 0},
	{"shadow_collective_sbd", 600, -4743.59, 1.60254, 3223.7, 166, 0},
	{"shadow_collective_sbd", 600, -4786.24, 12.1309, 3122.11, 33, 0},
	{"shadow_collective_sbd", 600, -4738.92, 11.0548, 3145.72, 286, 0},

	--First Floor
	--First Floor Middle Boss
	{"shadow_collective_guard", 300, 0.940668, -28, 71.687, 21, 620004119},
	{"shadow_collective_guard", 300, 6.5173, -28, 71.6453, 324, 620004119},
	{"shadow_collective_guard", 300, -69.8, -36, 86.7001, 19, 620004084},
	{"shadow_collective_guard", 300, 24.1021, -36, 219.792, 87, 620004093},
	{"shadow_collective_guard", 300, 77.7526, -36, 219.7, 252, 620004096},

	{"shadow_collective_ig", 1800, 12.3671, -28, 130.728, 177, 620004119},
	--Elevator Guard
	{"shadow_collective_guard", 300, -15.7495, -28, 166.176, 167, 620004119},
	{"shadow_collective_guard", 300, -9.33875, -28, 165.818, 179, 620004119},
	--Hallways
	{"shadow_collective_guard", 300, -19.8813, -28, 113.635, 90, 620004119},
	{"shadow_collective_guard", 300, -19.7423, -28, 106.853, 90, 620004119},
	{"shadow_collective_guard", 300, 3.71519, -28, 68.1898, 177, 620004120},
	{"shadow_collective_guard", 300, 42.8928, -28, 113.593, 248, 620004119},
	--Droid Boss
	{"shadow_collective_4lom", 450, 85.7944, -36, 117.608, 178, 620004075},
	--Doorway
	{"shadow_collective_hired_gun", 450, 105.341, -36, 110.434, 268, 620004076},
	{"shadow_collective_guard", 300, 105.53, -36, 81.177, 359, 620004076},

	{"shadow_collective_enforcer", 1800, 84.3686, -36, 57.6668, 359, 620004077},

	--KitchenArea;
	{"shadow_collective_fence", 450, 42.2672, -36, 73.7829, 72, 620004078},
	{"shadow_collective_smuggler", 450, 45.741, -36, 73.5232, 276, 620004078},
	{"shadow_collective_hired_gun", 450, 45.9175, -36, 83.726, 47, 620004078},
	{"shadow_collective_guard", 300, 33.5447, -36, 110.814, 186, 620004079},
	{"shadow_collective_guard", 300, 21.2261, -36, 114.564, 174, 620004079},
	{"shadow_collective_gen", 450, 43.0511, -36, 131.495, 185, 620004080},

	--Hallway Guards
	{"shadow_collective_hired_gun", 450, 13.4078, -36, 144.28, 259, 620004081},
	{"shadow_collective_hired_gun", 450, 13.3747, -36, 141.709, 274, 620004081},
	--Elevator Guards
	{"shadow_collective_ug_thug", 450, -12.2758, -36, 158.947, 179, 620004082},
	{"shadow_collective_guard", 300, -36.4164, -36, 142.8, 92, 620004083},

	--Hallways
	{"shadow_collective_ug_thug", 450, -49.3896, -36, 126.586, 93, 620004083},
	{"shadow_collective_gen", 450, -60.5766, -36, 111.293, 92, 620004084},
	{"shadow_collective_guard", 300, -67.6057, -36, 86.8832, 356, 620004084},
	{"shadow_collective_guard", 300, -69.794, -36, 85.3, 173, 620004085},

	--Food Room Boss:
	{"shadow_collective_bossk", 3600, -52.6101, -36, 54.3768, 356, 620004085},


	--Tent ROOM
	{"shadow_collective_ug_thug", 450, -44.9918, -36, 153.834, 1, 620004086},
	{"shadow_collective_cll8_binary_load_lifter", 450, -47.8383, -36, 208.044, 173, 620004086},
	{"shadow_collective_guard", 300, -32.7035, -36, 221.257, 89, 620004088},
	{"shadow_collective_gen", 450, -34.055, -36, 233.096, 269, 620004089},
	{"cad_bane_crewmember", 450, -37.1826, -36, 241.484, 269, 620004089},
	{"shadow_collective_hired_gun", 450, -18.7833, -36, 237.492, 179, 620004089},
	-- UPDATE MOB NEEDED {"shadow_collective_medic", 450, -16.9735, -36, 192.492, 21, 620004091},
	{"shadow_collective_guard", 300, 0.481623, -36, 221.156, 271, 620004088},
	{"shadow_collective_ig", 1800, -3.13687, -36, 253.267, 94, 620004090},
	{"shadow_collective_4lom", 1800, 11.8647, -36, 187.318, 353, 620004092},

	-- EQUIP ROOM
	{"shadow_collective_ig", 450, 46.1142, -36, 237.906, 217, 620004093},
	{"shadow_collective_guard", 300, 57.4046, -36, 222.291, 99, 620004096},
	{"shadow_collective_hired_gun", 450, 91.05, -36, 223.807, 208, 620004097},
	{"shadow_collective_guard", 300, 88.7908, -36, 187.037, 347, 620004098},
	{"shadow_collective_ig", 450, 78.3288, -36, 159.142, 4, 620004099},
	{"shadow_collective_guard", 300, 48.7006, -36, 186.725, 347, 620004094},
	{"shadow_collective_hired_gun", 450, 52.9481, -36, 171.338, 283, 620004095},
	{"shadow_collective_guard", 300, 29.4637, -36, 168.136, 177, 620004095},

	--Tent Mobs:
	{"shadow_collective_hired_gun", 450, -79.8378, -36, 180.753, 250, 620004086},
	{"black_sun_thug_sc", 450, -93.627, -36, 186.703, 146, 620004086},
	{"shadow_collective_assassin", 450, -94.7302, -36, 175.018, 24, 620004086},
	{"black_sun_thug_sc", 450, -103.262, -36, 186.422, 184, 620004086},
	{"shadow_collective_hired_gun", 450, -112.261, -36, 179.537, 90, 620004086},
	{"shadow_collective_enforcer", 1800, -102.613, -36, 159.509, 9, 620004086},
	{"black_sun_henchman_sc", 450, -80.636, -36, 159.582, 20, 620004086},

	},

	lootContainers = {

	},

	lootLevel = 32,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 2500000},
				{group = "junk", chance = 2500000},
				{group = "melee_two_handed", chance = 800000},
				{group = "heavy_weapons_consumable", chance = 800000},
				{group = "rifles", chance = 800000},
				{group = "carbines", chance = 800000},
				{group = "pistols", chance = 800000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			},
			lootChance = 8000000
		}
	},

	lootContainerRespawn = 1200 -- 20 minutes
}

registerScreenPlay("LokShadowCollectiveScreenPlay", true)

function LokShadowCollectiveScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:initializeLootContainers()

	end
end

function LokShadowCollectiveScreenPlay:spawnSceneObjects()
--Top Floor CORNER
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_down.iff", -12.4143, -28, 171, 620004100, 0, 0, 1, 0)
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", -12.4513, -36, 170.9, 620004100, 0, 0, 1, 0)

--Elevator Equipment ROOM
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_down.iff", 71.5073, -36, 149.1, 620004101, 1, 0, 0, 0)
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", 71.566, -60, 149.1, 620004101, 1, 0, 0, 0)

--ElevatorToThirdFloor
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_down.iff", 29.5958, -36, 173, 620004114, 0, 0, 1, 0)
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", 29.5958, -60, 172.9, 620004114, 0, 0, 1, 0)

end

function LokShadowCollectiveScreenPlay:spawnMobiles()
	local mobiles = self.mobiles

	for i = 1, #mobiles do
		local mobile = mobiles[i]
		local mobiles = self.mobiles
		local pMobile = spawnMobile(self.planet, mobile[1], mobile[2], mobile[3], mobile[4], mobile[5], mobile[6], mobile[7])

		if pMobile ~= nil then
			AiAgent(pMobile):addCreatureFlag(AI_STATIC)
		end
 	end

--Middle Building
  local pNpc = spawnMobile(self.planet, "junk_dealer", 0, -1.27848, 1.00421, 8.51601, 177, 620003479)
	if pNpc ~= nil then
			AiAgent(pNpc):setConvoTemplate("junkDealerArmsConvoTemplate")
			end
end
