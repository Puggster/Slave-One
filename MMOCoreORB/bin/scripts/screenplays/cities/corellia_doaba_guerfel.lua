CorelliaDoabaGuerfelScreenPlay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "CorelliaDoabaGuerfelScreenPlay",

	planet = "corellia",

	gcwMobs = {
	{"comm_operator", "cis_battle_droid", 3308, 308, 5485.8, 45, 0, "npc_imperial", "conversation"},
	{"clone_commando", "cis_battle_droid_commando", 3173.3, 300, 5302.5, -155, 0, "npc_imperial", "neutral"},
	{"clone_commando", "cis_battle_droid_commando", 3181, 302.9, 5099.8, 175, 0, "npc_imperial", "neutral"},
	{"clonetrooper_squad_leader", "cis_battle_droid_scout", 3142.5, 300, 5169.9, 179, 0, "npc_imperial", "neutral"},
	{"clonetrooper_squad_leader", "cis_battle_droid_scout", 3319.3, 308, 5523.9, 25, 0, "npc_imperial", "neutral"},
	{"imperial_corporal", "cis_battle_droid_squad_leader", 3310.8, 308, 5482.9, 45, 0, "npc_imperial", "neutral"},
	{"imperial_noncom", "cis_battle_droid", 3327.5, 308, 5518.6, 25, 0, "", ""},
	{"clone_commando", "cis_battle_droid_commando", 3181.3, 300, 5298.6, -147, 0, "", ""},
	{"clonetrooper", "cis_battle_droid", 3171.4, 301.9, 5100.1, 175, 0, "npc_imperial", "neutral"},
	{"clonetrooper", "cis_battle_droid", 3141.3, 290, 4984.9, -89, 0, "npc_imperial", "neutral"},
	{"clonetrooper_sniper", "cis_battle_droid_captain", 3133.4, 300, 5169.9, 178, 0, "npc_imperial", "neutral"},
	{"clonetrooper_squad_leader", "cis_battle_droid_specforce", 3141.1, 290, 4975.7, -95, 0, "npc_imperial", "conversation"},
	{"corsec_commissioner", "corsec_commissioner", 3154.04,300,5173.07,180.005,0, "conversation", "conversation"},
	{"corsec_inspector_sergeant", "corsec_inspector_sergeant", 3121,285,5006.4,-161,0, "", ""},
	{"corsec_master_sergeant", "corsec_master_sergeant", 3300.28,308,5496.49,180.005,0, "npc_imperial", "conversation"},
	{"corsec_sergeant", "corsec_sergeant", 3154.04,300,5172.07,0,0, "npc_imperial", "conversation"},
	{"corsec_trooper", "corsec_trooper", 3119.2,285,5002.2,20,0, "", ""},
	},

	patrolNpcs = {"businessman_patrol", "commoner_fat_patrol", "commoner_old_patrol", "commoner_patrol", "noble_patrol"},

	patrolMobiles = {
		--{patrolPoints, template, level, x, z, y, direction, cell, mood, combatPatrol},

		--Droids
		{"surgical_1", "surgical_droid_21b", 1, -1.19, 0.184067, -1.89, 0, 4345354, "", false},

		--NPCs
		{"npc_1", "patrolNpc", 1, 3322, 308, 5484, 146, 0, "", false},
		{"npc_2", "patrolNpc", 1, 3411, 308, 5515, 208, 0, "", false},
		{"npc_3", "patrolNpc", 1, 3240, 300, 5415, 249, 0, "", false},
		{"npc_4", "patrolNpc", 1, 3190, 300, 5269, 131, 0, "", false},
		{"npc_5", "patrolNpc", 1, 3139, 300, 5247, 171, 0, "", false},
		{"npc_6", "patrolNpc", 1, 3103, 300, 5164, 50, 0, "", false},
		{"npc_7", "patrolNpc", 1, 3202, 290, 5034, 29, 0, "", false},
		{"npc_8", "patrolNpc", 1, 3162, 290, 4966, 255, 0, "", false},
	},

	patrolPoints = {
		--table_name = {{x, z, y, cell, delayAtNextPoint}}
		surgical_1 = {{-12.3, 0.2, -1.5, 4345355, false}, {10.4, 0.2, -1.9, 4345354, false}, {9.6, 0.2, 9.8, 4345354, false}, {-11.8, 0.2, 9.9, 4345354, true}},

		npc_1 = {{3322, 308, 5484, 0, true}, {3308, 308, 5491, 0, true}, {3322, 308, 5508, 0, true}, {3322, 308, 5484, 0, true}, {3312, 308, 5515, 0, true}},
		npc_2 = {{3411, 308, 5515, 0, true}, {3380, 308, 5506, 0, true}, {3353, 308, 5486, 0, true}, {3363, 308, 5514, 0, true}, {3386, 308, 5503, 0, true}},
		npc_3 = {{3240, 300, 5415, 0, true}, {3246, 300, 5457, 0, true}, {3256, 300, 5430, 0, true}, {3246, 300, 5445, 0, true}},
		npc_4 = {{3190, 300, 5269, 0, true}, {3152, 300, 5254, 0, true}, {3186, 300, 5320, 0, true}, {3160, 300, 5307, 0, true}},
		npc_5 = {{3139, 300, 5247, 0, true}, {3164, 300, 5228, 0, true}, {3140, 300, 5198, 0, true}, {3113, 300, 5207, 0, true}, {3121, 300,5212, 0, true}},
		npc_6 = {{3103, 300, 5164, 0, true}, {3119, 300, 5139, 0, true}, {3103, 300, 5135, 0, true}, {3115, 300, 5146, 0, true}, {3119, 300, 5163, 0, true}},
		npc_7 = {{3202, 290, 5034, 0, true}, {3184, 290, 5030, 0, true}, {3209, 290, 5051, 0, true}},
		npc_8 = {{3162, 290, 4966, 0, false}, {3144, 290, 4979, 0, true}, {3119, 284, 4994, 0, true}, {3152, 290, 4988, 0, true}},
	},

}

registerScreenPlay("CorelliaDoabaGuerfelScreenPlay", true)

function CorelliaDoabaGuerfelScreenPlay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:spawnGcwMobiles()
		self:spawnPatrolMobiles()
		self:spawnStationaryMobiles()
	end
end

function CorelliaDoabaGuerfelScreenPlay:spawnSceneObjects()

	--outside starport
	spawnSceneObject(self.planet, "object/tangible/crafting/station/public_space_station.iff", 3327.89, 308, 5534.89, 0, math.rad(-150) )
end

function CorelliaDoabaGuerfelScreenPlay:spawnMobiles()
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

	--Guild Hall 3182 5240
	spawnMobile(self.planet, "businessman", 60,3.32,1.13306,-8.49,228.007,3075360)
	spawnMobile(self.planet, "bounty_hunter", 300,-14.01,1.13306,-8.53,120.004,3075361)
	spawnMobile(self.planet, "trainer_brawler", 0,-11,1.13306,-14,0,3075361)
	spawnMobile(self.planet, "trainer_marksman", 0,0,1.13306,-14,0,3075360)
	spawnMobile(self.planet, "trainer_scout", 0,-12,1.13306,5.5,180,3075358)
	pNpc = spawnMobile(self.planet, "junk_dealer", 0, -14.5, 1.1, 2.5, 88, 3075358)

	--Guild Hall 3160 5012
	spawnMobile(self.planet, "contractor", 60,3.29,1.13306,-9.58,249.007,3055771)
	spawnMobile(self.planet, "trainer_artisan", 0,0,1.13306,-14,0,3055771)

	--Hotel
	pNpc = spawnMobile(self.planet, "mercenary",300,17.1745,1.28309,-13.1361,0,3075367)
	self:setMoodString(pNpc, "angry")
	pNpc = spawnMobile(self.planet, "corellia_times_investigator",60,-4.31306,0.999956,6.26959,180,3075366)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "ithorian_male",300,7.8197,1.00001,-5.9104,180.001,3075366)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "twilek_slave",300,-5.41306,0.999953,6.26959,134.998,3075366)
	self:setMoodString(pNpc, "nervous")
	pNpc = spawnMobile(self.planet, "info_broker",300,17.1745,1.28309,-12.0361,179.995,3075367)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "commoner_fat",300,7.8197,1.00001,-7.0104,0,3075366)
	self:setMoodString(pNpc, "npc_standing_drinking")
	pNpc = spawnMobile(self.planet, "medic",60,-4.31306,0.999965,5.16959,0,3075366)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "willham_burke",60,0.861081,0.999995,2.33215,346.259,3075366)
	self:setMoodString(pNpc, "neutral")
	pNpc = spawnMobile(self.planet, "zo_ssa",60,-1.1331,0.999991,1.50214,21.773,3075366)
	self:setMoodString(pNpc, "neutral")

	--Outside
	pNpc = spawnMobile(self.planet, "info_broker",60,3202.28,290,4989.06,180.005,0)
	self:setMoodString(pNpc, "conversation")
	spawnMobile(self.planet, "commoner", 60,3179.26,300,5213.19,233.367,0)
	spawnMobile(self.planet, "commoner", 60,3117.25,300,5194.73,153.311,0)
	spawnMobile(self.planet, "commoner", 60,3108.26,300,5229.01,219.942,0)
	spawnMobile(self.planet, "commoner", 60,3192.45,302.606,5113.34,189.527,0)
	spawnMobile(self.planet, "commoner", 60,3159.78,300,5397.22,81.297,0)
	spawnMobile(self.planet, "commoner", 60,3199.22,300,5449.92,146.634,0)
	spawnMobile(self.planet, "commoner", 60,3277.95,300,5438.73,232.081,0)
	spawnMobile(self.planet, "commoner", 60,3204.19,290,5003.32,222.69,0)
	spawnMobile(self.planet, "commoner", 60,3296.88,324,5760.95,196.788,0)
	pNpc = spawnMobile(self.planet, "commoner_technician",60,3300.28,308,5495.49,0,0)
	self:setMoodString(pNpc, "worried")
	spawnMobile(self.planet, "commoner", 60,3316.17,308,5496.71,3.31657,0)
	spawnMobile(self.planet, "commoner", 60,3308.36,300,5396.79,274.041,0)
	spawnMobile(self.planet, "commoner", 60,3320.73,324,5709.36,340.725,0)
	spawnMobile(self.planet, "commoner", 60,3307.64,308.031,5618.18,225.888,0)
	spawnMobile(self.planet, "commoner", 60,3385.33,308,5699.29,242.976,0)
	spawnMobile(self.planet, "commoner", 60,3303.05,300,5351.87,319.052,0)
	spawnMobile(self.planet, "commoner", 60,3431.28,308,5563.41,159.884,0)
	pNpc = spawnMobile(self.planet, "farmer_rancher",60,3196.61,295.033,5073.8,350.188,0)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "farmer",60,3196.61,295.206,5074.8,180.005,0)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "businessman",60,3184.22,300,5162.04,0,0)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "scientist",60,3184.22,300,5163.04,180.005,0)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile(self.planet, "bounty_hunter",300,3145.1,290,4995.55,180.005,0)
	self:setMoodString(pNpc, "angry")
	pNpc = spawnMobile(self.planet, "farmer", 60, 3145.1, 289.991, 4994.55, 359.489, 0)
	self:setMoodString(pNpc, "conversation")
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3100,300,5224,90,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3123,300,5188,0,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3145,300,5148,90,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3165,295.7,5077,180,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3078,280,5014,270,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3210,300,5440,100,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3311,300,5386,300,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3293,300,5401,90,0)
	spawnMobile(self.planet, "informant_npc_lvl_1", 0,3297,308,5514,70,0)
	spawnMobile(self.planet, "noble", 60,3158.95,300,5352.24,80.7765,0)
	pNpc = spawnMobile(self.planet, "pilot",60,3202.28,290,4988.06,0,0)
	self:setMoodString(pNpc, "angry")
	spawnMobile(self.planet, "trainer_artisan", 0,3311,308,5530,83,0)
	spawnMobile(self.planet, "trainer_brawler", 0,3334,308,5517,0,0)
	spawnMobile(self.planet, "trainer_chef", 0,3070,300,5260,180,0)
	spawnMobile(self.planet, "trainer_creaturehandler",0,3162,300,5191,0,0)
	spawnMobile(self.planet, "trainer_entertainer", 0,3305,308,5525,151,0)
	spawnMobile(self.planet, "trainer_marksman", 0,3338,308,5516,0,0)
	spawnMobile(self.planet, "trainer_medic", 0,3341,308,5517,47,0)
	spawnMobile(self.planet, "trainer_scout", 0,3330.01,308,5512.46,204,0)
	spawnMobile(self.planet, "trainer_tailor", 0,3077,300,5251,0,0)
	spawnMobile(self.planet, "junk_dealer", 0, 3402.4, 308, 5679, 5, 0)
	spawnMobile(self.planet, "junk_dealer", 0, 3367.86, 308.6, 5466.07, 0, 0)
	if pNpc ~= nil then
		AiAgent(pNpc):setConvoTemplate("junkDealerFineryConvoTemplate")
	end

	--newb starter grind spawns
	spawnMobile(self.planet, "durni", 300, getRandomNumber(10) + 3475, 309.2, getRandomNumber(10) + 5727, getRandomNumber(360), 0)
	spawnMobile(self.planet, "durni", 300, getRandomNumber(10) + 3475, 309.2, getRandomNumber(10) + 5727, getRandomNumber(360), 0)
	spawnMobile(self.planet, "durni", 300, getRandomNumber(10) + 3475, 309.2, getRandomNumber(10) + 5727, getRandomNumber(360), 0)
	spawnMobile(self.planet, "durni", 300, getRandomNumber(10) + 3475, 309.2, getRandomNumber(10) + 5727, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gubbur", 300, getRandomNumber(10) + 3493, 309.8, getRandomNumber(10) + 5703, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gubbur", 300, getRandomNumber(10) + 3493, 309.8, getRandomNumber(10) + 5703, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gubbur", 300, getRandomNumber(10) + 3493, 309.8, getRandomNumber(10) + 5703, getRandomNumber(360), 0)
	spawnMobile(self.planet, "gubbur", 300, getRandomNumber(10) + 3493, 309.8, getRandomNumber(10) + 5703, getRandomNumber(360), 0)
	spawnMobile(self.planet, "meatlump_fool", 300, getRandomNumber(10) + 3450, 309, getRandomNumber(10) + 5712, getRandomNumber(360), 0)
	spawnMobile(self.planet, "meatlump_fool", 300, getRandomNumber(10) + 3450, 309, getRandomNumber(10) + 5712, getRandomNumber(360), 0)
	spawnMobile(self.planet, "meatlump_fool", 300, getRandomNumber(10) + 3450, 309, getRandomNumber(10) + 5712, getRandomNumber(360), 0)

end
