RoriRestussScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "RoriRestussScreenPlay",

	planet = "rori",

	patrolMobiles = {
		--{patrolPoints, template, x, z, y, direction, cell, mood, combatPatrol},
		{"cll8_1", "cll8_binary_load_lifter", 5117.8, 80.0, 5696.8, 90, 0, "", false},
		{"cll8_2", "cll8_binary_load_lifter", 5240.1, 80.0, 5616.5, -90, 0, "", false},
		{"r5_1", "r5", 5443.7, 80.0, 5674.9, 33, 0, "", false},
	},

	patrolPoints = {
		--table_name = {{x, z, y, cell, delayAtNextPoint}}
		cll8_1 = {{5117, 80, 5696, 0, false}, {5135.6, 80, 5688.2, 0, false}, {5162.2, 80, 5688.4, 0, true}, {5183.2, 80, 5697.6, 0, false}, {5162.2, 80, 5688.4, 0, true}, {5135.6, 80, 5688.2, 0, false}},
		cll8_2 = {{5239, 80, 5616, 0, false}, {5235, 80, 5624, 0, false}, {5172, 80, 5624, 0, false}, {5164, 80, 5621, 0, false}, {5139, 80, 5627, 0, false}, {5164, 80, 5621, 0, false}, {5172, 80, 5624, 0, false}, {5206, 80, 5624, 0, false}},
		r5_1 = {{5451, 80, 5660, 0, false}, {5449, 80, 5650, 0, false}, {5466, 80, 5640, 0, false}, {5489, 80, 5652, 0, false}},
	},

	stationaryCommoners = {"commoner", "commoner_fat", "commoner_naboo", "commoner_old"},
	stationaryNpcs = {"agriculturalist", "artisan", "bodyguard", "bothan_diplomat", "bounty_hunter", "businessman", "commoner_technician", "contractor", "entertainer", "explorer", "farmer", "farmer_rancher", "fringer",
				"gambler", "info_broker", "medic", "mercenary", "miner", "naboo_nomad", "noble", "official", "patron_ishitib", "pilot", "rancher", "scientist", "slicer", "traveller"},

	--{respawn, x, z, y, direction, cell, mood}
	stationaryMobiles = {
		{1, 5437.1, 80.0, 5876.9, 90, 0, ""},
		{1, 5439.3, 80.0, 5880.3, 135, 0, ""},
		{1, 5442.3, 80.0, 5876.9, -75, 0, ""},
		{1, 5314.8, 80.0, 5793.8, -105, 0, ""},
		{1, 5389.9, 80.0, 5674.2, -135, 0, ""},
	},

	mobiles = {
	--[[
		--starport added
		{"pilot",60,-27.0,1.6,53.2,128,4635675, "npc_standing_drinking"},
		{"chiss_female",60,-27.6,1.6,52.3,29,4635675, "npc_accusing"},
	--]]

		{"shadowy_figure",60,-69.1,2.6,38.5,70,4635678, "angry"},
--[[
		{"trainer_shipwright",60,6.3,0.6,67.3,-90,4635670, "conversation"},
		{"chassis_dealer",60,4.3,0.6,66.9,80,4635670, "conversation"},

		--First Brigade
		{"first_brigade_marine", 300, 5459.9, 80.1, 5856.5, 90, 0, ""},
		{"first_brigade_marine", 300, 5459.9, 80.1, 5861.5, 90, 0, ""},
		{"first_brigade_marine", 300, 5381.5, 80.0, 5881.5, -135, 0, ""},
		{"first_brigade_marine", 300, 5383.8, 80.0, 5877.1, -135, 0, ""},
		{"first_brigade_officer", 300, 5373.6, 83.7, 5848.2, -50, 0, ""},
		{"first_brigade_marine", 300, 5361.3, 87.2, 5848.8, -90, 0, ""},
		{"first_brigade_marine", 300, 5357.3, 87.2, 5848.8, -90, 0, ""},
		{"first_brigade_trooper", 300, 5345.7, 80.0, 5839.6, 180, 0, ""},
		{"first_brigade_trooper", 300, 5340.7, 80.0, 5839.6, 180, 0, ""},
		{"first_brigade_general", 300, 5447.9, 80.0, 5837.7, 0, 0, ""},
		{"first_brigade_captain", 300, 5445.4, 80.0, 5840.2, 90, 0, ""},
		{"first_brigade_captain", 300, 5450.4, 80.0, 5840.2, -90, 0, ""},
		{"first_brigade_trooper", 300, 5445.4, 80.0, 5844.2, 90, 0, ""},
		{"first_brigade_trooper", 300, 5450.4, 80.0, 5844.2, -90, 0, ""},
		{"first_brigade_trooper", 300, 5445.4, 80.0, 5848.2, 90, 0, ""},
		{"first_brigade_trooper", 300, 5450.4, 80.0, 5848.2, -90, 0, ""},
		{"first_brigade_trooper", 300, 5419.4, 80.0, 5845.2, 180, 0, ""},
		{"first_brigade_trooper", 300, 5414.4, 80.0, 5845.2, 180, 0, ""},
		{"first_brigade_sergeant", 300, 5292.2, 80.0, 5854.8, 180, 0, ""},
		{"first_brigade_gunner", 300, 5283.2, 80.0, 5854.8, 180, 0, ""},
		{"first_brigade_sergeant", 300, 5212.4, 80.0, 5778.7, 0, 0, ""},
		{"first_brigade_gunner", 300, 5199.2, 80.0, 5778.7, 0, 0, ""},
		{"first_brigade_marine", 300, 5212.4, 80.0, 5764.4, 180, 0, ""},
		{"first_brigade_marine", 300, 5199.2, 80.0, 5764.4, 180, 0, ""},
		{"first_brigade_marine", 300, 5318.2, 80.2, 5523.5, 180, 0, ""},
		{"first_brigade_trooper", 300, 5315.2, 80.2, 5523.5, 180, 0, ""},
		{"first_brigade_marine", 300, 5339.0, 80.2, 5523.5, 180, 0, ""},
		{"first_brigade_trooper", 300, 5342.0, 80.2, 5523.5, 180, 0, ""},
		{"first_brigade_marine", 300, 5206.5, 80.2, 5603.2, 0, 0, ""},
		{"first_brigade_marine", 300, 5199.5, 80.2, 5609.3, 90, 0, ""},
		{"first_brigade_marine", 300, 5154.5, 80.2, 5603.2, 0, 0, ""},
		{"first_brigade_marine", 300, 5161.5, 80.2, 5609.3, -90, 0, ""},
		{"first_brigade_marine", 300, 5128.7, 80.0, 5535.5, -75, 0, ""},
		{"first_brigade_marine", 300, 5125.1, 80.2, 5542.4, 145, 0, ""},
		{"first_brigade_officer", 300, 0.0, 1.7, -21.7, 0, 4635710, ""},

		{"gundark_hooligan", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_rogue", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_raider", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_raider", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_raider", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_desperado", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_desperado", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_desperado", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_ruffian", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_ruffian", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_ruffian", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
		{"gundark_hooligan", 300,getRandomNumber(20) + 5325.3, 87.3,getRandomNumber(30) + 5575.5, getRandomNumber(360), 0, ""},
--]]
		--misc
		--{"imperial_recruiter", 1, 5349, 80, 5617.6, 0, 0, ""},
		{"informant_npc_lvl_1", 1, 5401, 80, 5857, 45, 0, ""},
		{"informant_npc_lvl_3", 1, 5102, 79.98, 5652, 30, 0, ""},
		{"junk_dealer", 1, 5353.8, 80, 5665.9, 180, 0, ""},
		{"junk_dealer", 1, 5350.2, 81.3, 5484.8, -50, 0, ""},
		{"junk_dealer", 0, -14.1, 1.1, 2.8, 127, 4635688, ""},
--[[
		--Hotel
		{"businessman", 1, 2.3, 1.0, 23.2, -75, 4635641, ""},
		{"patron_ishitib", 1, 5.2, 1.0, 7.9, 140, 4635643, ""},
		{"patron_ishitib", 1, 6.4, 1.0, 6.4, -50, 4635643, ""},
		{"bartender", 1, 20.1, 1.6, 12.3, 180, 4635644, ""},
		{"entertainer", 1, 25.2, 2.0, -16.7, -50, 4635644, ""},
		{"entertainer", 1, 24.3, 2.0, -14.2, -45, 4635644, ""},
		{"entertainer", 1, 22.7, 2.0, -16.5, -55, 4635644, ""},

		--trainers
		{"trainer_architect", 0, 11, 1.133, -14.5, 0, 4635774, ""},
		{"trainer_architect", 0, 5510, 80, 5663, 214, 0, ""},
		{"trainer_armorsmith", 0, -12.5, 1.13306, 3.55, 157, 4635773, ""},
		{"trainer_artisan", 0, 0, 1.1, -14, 0, 4635664, ""},
		{"trainer_artisan", 0, 5256, 80, 5600, 13, 0, ""},
		{"trainer_brawler", 0, -11, 1, -14, 0, 4635691, ""},
		{"trainer_brawler", 0, 5335.31, 80, 5530.48, 0, 0, ""},
		{"trainer_chef", 0, 5181, 80, 5668, 180, 0, ""},
		{"trainer_combatmedic", 0, -16.3425, 0.26, 10.8489, 168, 4635732, ""},
		{"trainer_combatmedic", 0, 26.6144, 0.26, 5.52845, 84, 4635728, ""},
		{"trainer_commando", 0, 9.51478, 1.13306, -10.433, 39, 4635689, ""},
		{"trainer_creaturehandler", 0, 5134, 80, 5749, 180, 0, ""},
		{"trainer_dancer", 0, 17.9253, 2.12876, 53.5327, 0, 4635754, ""},
		{"trainer_dancer", 0, 5437, 80.6, 5564, 270, 0, ""},
		{"trainer_doctor", 0, 20.8797, 0.26, -4.8809, 46, 4635728, ""},
		{"trainer_doctor", 0, 5373, 80, 5589, 180, 0, ""},
		{"trainer_droidengineer", 0, -11.4803, 1.13306, -13.6866, 4, 4635776, ""},
		{"trainer_droidengineer", 0, 5186, 80, 5719, 90, 0, ""},
		{"trainer_entertainer", 0, 28, 2.1, 73, 270, 4635754, ""},
		{"trainer_entertainer", 0, 29.5159, 2.12878, 73.6413, 88, 4635403, ""},
		{"trainer_entertainer", 0, 5433, 80.6, 5558, 270, 0, ""},
		{"trainer_imagedesigner", 0, -21.5126, 2.12878, 74.0536, 181, 4635404, ""},
		{"trainer_imagedesigner", 0, -22.3, 2.1, 73.1, 90, 4635755, ""},
		{"trainer_imagedesigner", 0, 5255, 80, 5850, 180, 0, ""},
		{"trainer_marksman", 0, 0, 0, -13, 0, 4635690, ""},
		{"trainer_marksman", 0, 0, 1.13306, -13, 0, 4615374, ""},
		{"trainer_marksman", 0, 5528, 80.7357, 5641, 91, 0, ""},
		{"trainer_medic", 0, 13.2069, 0.26, 4.92654, 165, 4635728, ""},
		{"trainer_merchant", 0, 11.6338, 1.13306, 5.69637, 177, 4635772, ""},
		{"trainer_merchant", 0, 5388, 80, 5673, 110, 0, ""},
		{"trainer_musician", 0, 21.8, 2.1, 76.2, 180, 4635754, ""},
		{"theater_manager", 0, 21.6954, 2.12795, 63.866, 0, 4635754, ""},
		{"trainer_musician", 0, 5432.89, 80.6, 5569.12, 270, 0, ""},
		{"trainer_polearm", 0, 5090, 80, 5759, 180, 0, ""},
		{"trainer_scout", 0, -12.5744, 1.13306, 4.79458, 180, 4635688, ""},
		{"trainer_scout", 0, 5371, 80, 5539, 180, 0, ""},
		{"trainer_tailor", 0, 11, 0, -13, 0, 4635663, ""},
		{"trainer_tailor", 0, 5209, 80, 5729, 180, 0, ""},
		{"trainer_weaponsmith", 0, 0, 1, -13, 0, 4635775, ""}
--]]		
	}
}

registerScreenPlay("RoriRestussScreenPlay",  true)

function RoriRestussScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnPatrolMobiles()
		self:spawnStationaryMobiles()
		self:spawnSceneObjects()
	end
end

function RoriRestussScreenPlay:spawnSceneObjects()
	--outside starport
	spawnSceneObject(self.planet, "object/tangible/crafting/station/public_space_station.iff", 5376.78, 80, 5666.8, 0, math.rad(179) )
end

function RoriRestussScreenPlay:spawnMobiles()
	local mobiles = self.mobiles

	for i = 1, #mobiles, 1 do
		local mob = mobiles[i]

		-- {template, respawn, x, z, y, direction, cell, mood}
		local pMobile = spawnMobile(self.planet, mob[1], mob[2], mob[3], mob[4], mob[5], mob[6], mob[7])

		if (pMobile ~= nil) then
			if mob[8] ~= "" then
				CreatureObject(pMobile):setMoodString(mob[8])
			end

			AiAgent(pMobile):addCreatureFlag(AI_STATIC)

			if CreatureObject(pMobile):getPvpStatusBitmask() == 0 then
				CreatureObject(pMobile):clearOptionBit(AIENABLED)
			end
		end
	end
--[[
	--Creatures
	spawnMobile(self.planet, "nightspider", 300,getRandomNumber(10) + 4980.2, 76.9,getRandomNumber(10) + 5535.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300,getRandomNumber(10) + 4980.2, 76.9,getRandomNumber(10) + 5535.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300,getRandomNumber(10) + 4980.2, 76.9,getRandomNumber(10) + 5535.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300,getRandomNumber(10) + 4980.2, 76.9,getRandomNumber(10) + 5535.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300,getRandomNumber(10) + 4980.2, 76.9,getRandomNumber(10) + 5535.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "nightspider", 300,getRandomNumber(10) + 4980.2, 76.9,getRandomNumber(10) + 5535.3, getRandomNumber(360), 0)

	spawnMobile(self.planet, "vrobalet", 300,getRandomNumber(10) + 4984.2, 77.9,getRandomNumber(10) + 5928.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "vrobalet", 300,getRandomNumber(10) + 4984.2, 77.9,getRandomNumber(10) + 5928.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "vrobalet", 300,getRandomNumber(10) + 4984.2, 77.9,getRandomNumber(10) + 5928.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "vrobalet", 300,getRandomNumber(10) + 4984.2, 77.9,getRandomNumber(10) + 5928.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "vrobalet", 300,getRandomNumber(10) + 4984.2, 77.9,getRandomNumber(10) + 5928.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "vrobalet", 300,getRandomNumber(10) + 4984.2, 77.9,getRandomNumber(10) + 5928.7, getRandomNumber(360), 0)

	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5131.6, 77.9,getRandomNumber(10) + 5954.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5131.6, 77.9,getRandomNumber(10) + 5954.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5131.6, 77.9,getRandomNumber(10) + 5954.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5131.6, 77.9,getRandomNumber(10) + 5954.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5131.6, 77.9,getRandomNumber(10) + 5954.7, getRandomNumber(360), 0)
	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5131.6, 77.9,getRandomNumber(10) + 5954.7, getRandomNumber(360), 0)

	spawnMobile(self.planet, "capper_spineflap", 300,getRandomNumber(10) + 5246.5, 80.4,getRandomNumber(10) + 6009.0, getRandomNumber(360), 0)
	spawnMobile(self.planet, "capper_spineflap", 300,getRandomNumber(10) + 5246.5, 80.4,getRandomNumber(10) + 6009.0, getRandomNumber(360), 0)
	spawnMobile(self.planet, "capper_spineflap", 300,getRandomNumber(10) + 5246.5, 80.4,getRandomNumber(10) + 6009.0, getRandomNumber(360), 0)
	spawnMobile(self.planet, "capper_spineflap", 300,getRandomNumber(10) + 5246.5, 80.4,getRandomNumber(10) + 6009.0, getRandomNumber(360), 0)
	spawnMobile(self.planet, "capper_spineflap", 300,getRandomNumber(10) + 5246.5, 80.4,getRandomNumber(10) + 6009.0, getRandomNumber(360), 0)
	spawnMobile(self.planet, "capper_spineflap", 300,getRandomNumber(10) + 5246.5, 80.4,getRandomNumber(10) + 6009.0, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5449.4, 80.4,getRandomNumber(10) + 5947.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5449.4, 80.4,getRandomNumber(10) + 5947.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5449.4, 80.4,getRandomNumber(10) + 5947.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5449.4, 80.4,getRandomNumber(10) + 5947.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5449.4, 80.4,getRandomNumber(10) + 5947.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5449.4, 80.4,getRandomNumber(10) + 5947.3, getRandomNumber(360), 0)

	spawnMobile(self.planet, "scorched_krevol", 300,getRandomNumber(10) + 5581.4, 80.6,getRandomNumber(10) + 5869.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "scorched_krevol", 300,getRandomNumber(10) + 5581.4, 80.6,getRandomNumber(10) + 5869.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "scorched_krevol", 300,getRandomNumber(10) + 5581.4, 80.6,getRandomNumber(10) + 5869.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "scorched_krevol", 300,getRandomNumber(10) + 5581.4, 80.6,getRandomNumber(10) + 5869.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "scorched_krevol", 300,getRandomNumber(10) + 5581.4, 80.6,getRandomNumber(10) + 5869.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "scorched_krevol", 300,getRandomNumber(10) + 5581.4, 80.6,getRandomNumber(10) + 5869.5, getRandomNumber(360), 0)

	spawnMobile(self.planet, "frightened_borgle", 300,getRandomNumber(10) + 5689.2, 80.5,getRandomNumber(10) + 5773.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frightened_borgle", 300,getRandomNumber(10) + 5689.2, 80.5,getRandomNumber(10) + 5773.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frightened_borgle", 300,getRandomNumber(10) + 5689.2, 80.5,getRandomNumber(10) + 5773.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frightened_borgle", 300,getRandomNumber(10) + 5689.2, 80.5,getRandomNumber(10) + 5773.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frightened_borgle", 300,getRandomNumber(10) + 5689.2, 80.5,getRandomNumber(10) + 5773.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frightened_borgle", 300,getRandomNumber(10) + 5689.2, 80.5,getRandomNumber(10) + 5773.9, getRandomNumber(360), 0)

	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5497, 80.4,getRandomNumber(10) + 5403, getRandomNumber(360), 0)
	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5497, 80.4,getRandomNumber(10) + 5403, getRandomNumber(360), 0)
	spawnMobile(self.planet, "timid_vir_vur", 300,getRandomNumber(10) + 5497, 80.4,getRandomNumber(10) + 5403, getRandomNumber(360), 0)
	spawnMobile(self.planet, "ikopi", 300,getRandomNumber(10) + 5497, 80.4,getRandomNumber(10) + 5403, getRandomNumber(360), 0)
	spawnMobile(self.planet, "ikopi", 300,getRandomNumber(10) + 5497, 80.4,getRandomNumber(10) + 5403, getRandomNumber(360), 0)
	spawnMobile(self.planet, "ikopi", 300,getRandomNumber(10) + 5497, 80.4,getRandomNumber(10) + 5403, getRandomNumber(360), 0)

	spawnMobile(self.planet, "ikopi", 300,getRandomNumber(10) + 5357.7, 80.2,getRandomNumber(10) + 5369, getRandomNumber(360), 0)
	spawnMobile(self.planet, "ikopi", 300,getRandomNumber(10) + 5357.7, 80.2,getRandomNumber(10) + 5369, getRandomNumber(360), 0)
	spawnMobile(self.planet, "ikopi", 300,getRandomNumber(10) + 5357.7, 80.2,getRandomNumber(10) + 5369, getRandomNumber(360), 0)
	spawnMobile(self.planet, "ikopi", 300,getRandomNumber(10) + 5357.7, 80.2,getRandomNumber(10) + 5369, getRandomNumber(360), 0)

	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5211.5, 79.7,getRandomNumber(10) + 5378.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5211.5, 79.7,getRandomNumber(10) + 5378.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5211.5, 79.7,getRandomNumber(10) + 5378.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "frail_squall", 300,getRandomNumber(10) + 5211.5, 79.7,getRandomNumber(10) + 5378.5, getRandomNumber(360), 0)

	spawnMobile(self.planet, "pigmy_pugoriss", 300,getRandomNumber(10) + 5056, 78.2,getRandomNumber(10) + 5372, getRandomNumber(360), 0)
	spawnMobile(self.planet, "pigmy_pugoriss", 300,getRandomNumber(10) + 5056, 78.2,getRandomNumber(10) + 5372, getRandomNumber(360), 0)
	spawnMobile(self.planet, "pigmy_pugoriss", 300,getRandomNumber(10) + 5056, 78.2,getRandomNumber(10) + 5372, getRandomNumber(360), 0)
	spawnMobile(self.planet, "pigmy_pugoriss", 300,getRandomNumber(10) + 5056, 78.2,getRandomNumber(10) + 5372, getRandomNumber(360), 0)
	spawnMobile(self.planet, "pigmy_pugoriss", 300,getRandomNumber(10) + 5056, 78.2,getRandomNumber(10) + 5372, getRandomNumber(360), 0)
	spawnMobile(self.planet, "pigmy_pugoriss", 300,getRandomNumber(10) + 5056, 78.2,getRandomNumber(10) + 5372, getRandomNumber(360), 0)

	--Thugs
	spawnMobile(self.planet, "fringer", 300, 5399.5, 80.0, 5676.8, 161, 0)
	spawnMobile(self.planet, "gundark_ruffian", 300, 5520.3, 80.0, 5535.2, 130, 0)
	spawnMobile(self.planet, "gundark_ruffian", 300, 5521.7, 80.0, 5529.0, 80, 0)
	spawnMobile(self.planet, "gundark_ruffian", 300, 5525.3, 80.0, 5533.2, -50, 0)
	spawnMobile(self.planet, "gundark_desperado", 300, 5313.2, 80.0, 5795.4, 95, 0)
	spawnMobile(self.planet, "gundark_desperado", 300, 5313.2, 80.0, 5791.2, 50, 0)
	spawnMobile(self.planet, "garyns_prowler", 300, 5269.9, 80.0, 5815.0, 77, 0)

	spawnMobile(self.planet, "garyns_prowler", 300,getRandomNumber(15) + 5316.0, 80.0,getRandomNumber(15) + 5831.2, getRandomNumber(360), 0)
	spawnMobile(self.planet, "garyns_prowler", 300,getRandomNumber(15) + 5316.0, 80.0,getRandomNumber(15) + 5831.2, getRandomNumber(360), 0)
	spawnMobile(self.planet, "garyns_prowler", 300,getRandomNumber(15) + 5316.0, 80.0,getRandomNumber(15) + 5831.2, getRandomNumber(360), 0)
	spawnMobile(self.planet, "garyns_prowler", 300,getRandomNumber(15) + 5316.0, 80.0,getRandomNumber(15) + 5831.2, getRandomNumber(360), 0)
	spawnMobile(self.planet, "garyns_prowler", 300,getRandomNumber(15) + 5316.0, 80.0,getRandomNumber(15) + 5831.2, getRandomNumber(360), 0)
	spawnMobile(self.planet, "garyns_prowler", 300,getRandomNumber(15) + 5316.0, 80.0,getRandomNumber(15) + 5831.2, getRandomNumber(360), 0)

	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 4969.6, 84.0,getRandomNumber(10) + 5644.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 4969.6, 84.0,getRandomNumber(10) + 5644.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 4969.6, 84.0,getRandomNumber(10) + 5644.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 4969.6, 84.0,getRandomNumber(10) + 5644.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 4969.6, 84.0,getRandomNumber(10) + 5644.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 4969.6, 84.0,getRandomNumber(10) + 5644.5, getRandomNumber(360), 0)

	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 4937.0, 77.0,getRandomNumber(10) + 5752.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 4937.0, 77.0,getRandomNumber(10) + 5752.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 4937.0, 77.0,getRandomNumber(10) + 5752.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 4937.0, 77.0,getRandomNumber(10) + 5752.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 4937.0, 77.0,getRandomNumber(10) + 5752.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 4937.0, 77.0,getRandomNumber(10) + 5752.5, getRandomNumber(360), 0)

	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5114.1, 78.4,getRandomNumber(10) + 5811.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5114.1, 78.4,getRandomNumber(10) + 5811.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5114.1, 78.4,getRandomNumber(10) + 5811.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5114.1, 78.4,getRandomNumber(10) + 5811.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5114.1, 78.4,getRandomNumber(10) + 5811.3, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5114.1, 78.4,getRandomNumber(10) + 5811.3, getRandomNumber(360), 0)

	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5279.6, 79.8,getRandomNumber(10) + 5905.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5279.6, 79.8,getRandomNumber(10) + 5905.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5279.6, 79.8,getRandomNumber(10) + 5905.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5279.6, 79.8,getRandomNumber(10) + 5905.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5279.6, 79.8,getRandomNumber(10) + 5905.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_rogue", 300,getRandomNumber(10) + 5279.6, 79.8,getRandomNumber(10) + 5905.5, getRandomNumber(360), 0)

	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 5623.1, 80.6,getRandomNumber(10) + 5662.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 5623.1, 80.6,getRandomNumber(10) + 5662.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 5623.1, 80.6,getRandomNumber(10) + 5662.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 5623.1, 80.6,getRandomNumber(10) + 5662.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 5623.1, 80.6,getRandomNumber(10) + 5662.5, getRandomNumber(360), 0)
	spawnMobile(self.planet, "swamp_rat", 300,getRandomNumber(10) + 5623.1, 80.6,getRandomNumber(10) + 5662.5, getRandomNumber(360), 0)

	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5626.7, 80.4,getRandomNumber(10) + 5528.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5626.7, 80.4,getRandomNumber(10) + 5528.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5626.7, 80.4,getRandomNumber(10) + 5528.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5626.7, 80.4,getRandomNumber(10) + 5528.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5626.7, 80.4,getRandomNumber(10) + 5528.9, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(10) + 5626.7, 80.4,getRandomNumber(10) + 5528.9, getRandomNumber(360), 0)

	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(5) + 5108.7, 80.0,getRandomNumber(12) + 5624, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(5) + 5108.7, 80.0,getRandomNumber(12) + 5624, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(5) + 5108.7, 80.0,getRandomNumber(12) + 5624, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gundark_hooligan", 300,getRandomNumber(5) + 5108.7, 80.0,getRandomNumber(12) + 5624, getRandomNumber(360), 0)
--]]

	--Republic Mansion Defenders
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5454.29, 80.0177, 5509.56, 165, 0)
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5464.13, 80.063, 5509.37, 191, 0)
	spawnMobile(self.planet, "clonetrooper_medic", 300, 5443.36, 80, 5514.88, 91, 0)
	spawnMobile(self.planet, "clonetrooper_medic", 300, 5440.58, 80, 5517.62, 92, 0)
	spawnMobile(self.planet, "clonetrooper_captain_restuss", 300, 5465.35, 80, 5514.14, 214, 0)
	spawnMobile(self.planet, "clonetrooper_sniper_restuss", 300, 5459.27, 86.1853, 5505.62, 180, 0)

	--Republic Main gate and Eastern
	spawnMobile(self.planet, "clonetrooper_squad_leader_restuss", 300, 5113.29, 80, 5774.09, 347, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5110.91, 80, 5775.9, 350, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5190, 80, 5670.07, 180, 0)

	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5221.61, 80, 5665.12, 203, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5210.54, 80, 5677.93, 290, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5217.79, 80, 5666.21, 179, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5213.58, 80, 5665.83, 180, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5252.1, 80, 5681.48, 161, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5267.07, 80, 5678.04, 199, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5255.55, 80, 5657.15, 221, 0)

	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5092.4, 80, 5733.02, 318, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5094.72, 80, 5732.03, 316, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5102.27, 80, 5759.69, 239, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5096.81, 80.124, 5760.32, 233, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5086.66, 80, 5760.45, 229, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5108.82, 80, 5731.75, 357, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5118.85, 80, 5741.17, 268, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5118.85, 80, 5743.17, 268, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5118.85, 80, 5745.17, 268, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5118.85, 80, 5747.17, 268, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5118.85, 80, 5749.17, 268, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5118.85, 80, 5751.17, 268, 0)

	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5119.49, 80, 5709.16, 178, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5114.43, 80, 5709.27, 174, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5185.78, 80, 5699.9, 239, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5186.33, 80, 5694.58, 260, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5187.8, 80, 5682.73, 240, 0)
	spawnMobile(self.planet, "clonetrooper_captain_restuss", 300, 5194.69, 80, 5688.67, 245, 0)

	--back of Starport
	spawnMobile(self.planet, "restuss_padawan", 300, 5088.5, 80, 5747.39, 271, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5292.14, 80, 5850.38, 100, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5291.92, 80, 5848.88, 194, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5285.77, 80, 5847.78, 165, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5291.62, 80, 5843.53, 136, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5292.05, 80, 5836.78, 87, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5289.96, 80, 5830.71, 79, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5295.4, 80, 5828.47, 46, 0)
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5307.6, 80, 5830.76, 59, 0)

	--cis mansion
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5458.07, 80.9543, 5486, 3, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5458.94, 80.6941, 5482.56, 0, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5463.67, 80.9653, 5483.97, 70, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5465.11, 80.9828, 5490.44, 45, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5455.51, 80.8352, 5485.35, 325, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5455.51, 80.8352, 5489.35, 325, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5456.07, 80.9543, 5486, 3, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5454.07, 80.9543, 5486, 3, 0)

	--bank intrustion
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5119.55, 80, 5667.57, 179, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5117.03, 80, 5666.48, 181, 0)
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5117.84, 80, 5663.18, 5, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5109.67, 80, 5655.28, 44, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5114.57, 80, 5653.04, 136, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5116.06, 80, 5648.18, 175, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5119.35, 80, 5645.89, 358, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5177.55, 80, 5622.81, 157, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5214.06, 87.1738, 5614.78, 176, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5212.58, 87.1768, 5579.54, 329, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5214.25, 87.1768, 5581.71, 21, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5214.31, 87.1768, 5579.37, 1, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5212.74, 87.1768, 5613.24, 179, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5213.53, 87.3955, 5586.86, 0, 0)
	spawnMobile(self.planet, "clonetrooper_squad_leader_restuss", 300, 5215.02, 87.1768, 5597.95, 179, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5213.73, 87.1768, 5598.08, 178, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5213.89, 87.1787, 5600.68, 357, 0)
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5183.45, 80, 5656.78, 352, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5177.17, 80, 5666.36, 3, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5175.32, 80, 5672.59, 43, 0)
	spawnMobile(self.planet, "restuss_padawan", 300, 5258.88, 80, 5667.47, 178, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5190.05, 80.1797, 5582.33, 45, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5184.95, 80.1797, 5571.82, 230, 0)
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5168.54, 80.1797, 5581.2, 346, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5171.49, 80.1787, 5592.27, 183, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5162.11, 80.1787, 5577.31, 255, 0)
	spawnMobile(self.planet, "restuss_padawan", 300, 5240, 80, 5592.23, 238, 0)
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5243.82, 80, 5595.83, 262, 0)
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5243.7, 80, 5588.07, 309, 0)
	spawnMobile(self.planet, "clonetrooper_sniper_restuss", 300, 5256.65, 80, 5591.86, 268, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5183.76, 80, 5660.4, 358, 0)

	--South Gate
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5508.34, 80, 5672.37, 89, 0)
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5512.12, 80.0794, 5694.77, 87, 0)
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5513.05, 80.2115, 5696.35, 145, 0)
	spawnMobile(self.planet, "clone_commando_restuss", 300, 5517.45, 80.3683, 5670.65, 8, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5523.28, 80.5607, 5629.77, 90, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5523.82, 80.4502, 5617.81, 90, 0)

	--starport Gate
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5323.76, 80, 5528.21, 166, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5333.52, 80, 5527.9, 192, 0)
	spawnMobile(self.planet, "clonetrooper_squad_leader_restuss", 300, 5319.84, 80, 5532.42, 130, 0)
	spawnMobile(self.planet, "clonetrooper_sniper_restuss", 300, 5290.88, 80.5735, 5520.79, 337, 0)
	spawnMobile(self.planet, "clonetrooper_sniper_restuss", 300, 5288.88, 80.5735, 5520.79, 326, 0)
	spawnMobile(self.planet, "clonetrooper_sniper_restuss", 300, 5286.23, 80.5749, 5520.32, 350, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5288.54, 80, 5531.22, 341, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5283.59, 80, 5530.85, 346, 0)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 5285.64, 80, 5530.94, 80, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5332.1, 80, 5538.45, 184, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5330.1, 80, 5538.44, 207, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5327.32, 80, 5537.47, 182, 0)
	spawnMobile(self.planet, "restuss_padawan", 300, 5330.18, 80, 5541.35, 182, 0)
	spawnMobile(self.planet, "restuss_padawan", 300, 5285.23, 80, 5538.02, 343, 0)
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5285.46, 80, 5542.79, 190, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5281.57, 80, 5544.15, 169, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5281.58, 80, 5544.14, 145, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5284.48, 80, 5546.8, 178, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5239.21, 82.501, 5722.26, 355, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5234.97, 82.501, 5722.62, 6, 0)
	spawnMobile(self.planet, "clonetrooper_squad_leader_restuss", 300, 5237.31, 80, 5736.81, 38, 0)
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5252.31, 80, 5741.64, 232, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5255.31, 80, 5738.57, 257, 0)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, 5254.74, 80, 5747.54, 253, 0)

	--Vendor
	spawnMobile(self.planet, "restussmerch_rep", 300, 5374.48, 80, 5665.8, 178, 0)

	--Sep FOB
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4909.62, 81.5732, 5703.58, 130, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4914.79, 82.1084, 5748.89, 99, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4914.97, 82.1084, 5743.01, 79, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4841.44, 79.9414, 5745.02, 329, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4843.19, 79.9414, 5751.08, 88, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4825.71, 78.4092, 5610.41, 282, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4823, 78.4092, 5613.72, 354, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4887.82, 77.2392, 5630.16, 14, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4870.82, 76.1703, 5632.4, 24, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4909.14, 77.6025, 5657.1, 88, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4910.19, 76.9306, 5697.38, 93, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4892.98, 76.1417, 5676.88, 85, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4891.07, 75.7682, 5670.24, 85, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4890.6, 76.5341, 5681.65, 85, 0)
	spawnMobile(self.planet, "restuss_magnaguard", 300, 4876.66, 75.6187, 5717.66, 101, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4858.59, 76.3834, 5691.27, 4, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4872.98, 76.3465, 5704.23, 99, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 4876.96, 75.461, 5727.51, 99, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4900.05, 77.8027, 5742.65, 195, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4857.52, 75.533, 5749.19, 157, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4838.44, 75.2844, 5615.97, 41, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4892.58, 75.7983, 5604.75, 316, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 4893.46, 76.9254, 5645.84, 283, 0)

	--Theatre Entrance
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5466.6, 80.5996, 5644.89, 356, 0)

	--Boss areas
	--Guild Hall
	spawnMobile(self.planet, "force_corrupt_rancor_pvp_zone", 900, 0.0635365, 1.13306, -2.24821, 342, 4635686)
	spawnMobile(self.planet, "dark_jedi_master_pvp_zone", 1800, -0.855234, 1.13306, -2.7156, 355, 4635686)

	--YT2400
	--Outside
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5247.83, 80, 5834.36, 62, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5244.24, 80, 5835.55, 62, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5246.58, 80, 5830.77, 62, 0)
	spawnMobile(self.planet, "restuss_padawan", 300, 5206.57, 80, 5770.86, 183, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5211.15, 80, 5771.44, 175, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5174.41, 80, 5764.51, 146, 0)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 5181.49, 80, 5766.43, 146, 0)
	--Inside
	spawnMobile(self.planet, "cad_bane_sbd_pvp_zone", 900, 10.0209, 5.20319, 6.42701, 267, 620002819)
	spawnMobile(self.planet, "cad_bane_sbd_pvp_zone", 900, 6.69564, 5.38085, -1.31879, 13, 620002818)
	spawnMobile(self.planet, "cad_bane_sbd_pvp_zone", 900, -3.635, 5.20319, 12.0366, 182, 620002820)
	spawnMobile(self.planet, "cad_bane_pvp_zone", 2400, 1.45473, 5.37758, -11.0296, 357, 620002817)
	spawnMobile(self.planet, "cad_bane_sbd_pvp_zone", 900, -7.07592, 5.38085, -0.818475, 79, 620002818)

	--Theatre Inside
	spawnMobile(self.planet, "dark_jedi_master_pvp_zone", 3600, 0.762265, 2.12877, 51.9893, 179, 4635752)
	spawnMobile(self.planet, "force_corrupt_spider_pvp_zone", 3600, -2.0661, 2.12877, 58.006, 0, 4635752)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, -15.6595, 2.12878, 75.2018, 88, 4635754)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, -15.8929, 2.12878, 72.5309, 89, 4635754)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, -14.0539, 2.12878, 74.0699, 88, 4635754)
	spawnMobile(self.planet, "cis_battle_droid_commando_restuss", 300, -20.8606, 2.12878, 74.0479, 88, 4635755)
	spawnMobile(self.planet, "clonetrooper_bombardier_restuss", 300, 15.207, 2.12878, 74.3071, 268, 4635754)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 16.2675, 2.12878, 71.9351, 272, 4635754)
	spawnMobile(self.planet, "clonetrooper_restuss", 300, 16.5648, 2.12878, 75.9055, 272, 4635754)
	spawnMobile(self.planet, "clonetrooper_captain_restuss", 300, 18.4009, 2.12878, 73.5189, 272, 4635754)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, -16.1426, 2.12878, 73.8508, 87, 4635754)

	--FRS mobs
	spawnMobile(self.planet, "rep_at_xt_restuss", 300, 5308.15, 80, 5842.61, 271, 0)
	spawnMobile(self.planet, "rep_at_xt_restuss", 300, 5313.29, 80, 5535.73, 232, 0)

	spawnMobile(self.planet, "cis_droideka_restuss", 300, 5253.34, 80, 5540.79, 0, 0)
	spawnMobile(self.planet, "cis_droideka_restuss", 300, 5120.71, 80, 5640.28, 239, 0)

	--Republic Invasion Event area
	spawnMobile(self.planet, "restuss_magnaguard", 300, 5550.45, 82.1152, 5652.18, 197, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5538.2, 80.8412, 5645.52, 176, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5549.09, 80.7802, 5638.05, 209, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5564.78, 80.8641, 5633.72, 269, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5562.99, 80.6161, 5625.25, 269, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5564.35, 80.7494, 5641.09, 269, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5531.71, 80.7838, 5655.28, 170, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5537.89, 80.7348, 5653.12, 170, 0)
	spawnMobile(self.planet, "cis_battle_droid_restuss", 300, 5562.69, 80.8901, 5614.97, 257, 0)
	spawnMobile(self.planet, "cis_sbd_restuss", 300, 5582.08, 80.6873, 5621.58, 275, 0)

end
