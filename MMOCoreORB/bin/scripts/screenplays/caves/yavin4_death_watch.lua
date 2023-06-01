yavin4_death_watch = ScreenPlay:new {
	numberOfActs = 1,
	screenplayName = "yavin4_death_watch",
	planet = "yavin4",
	mobiles = {

			-- outside
		  {"death_watch_sniper", 900, 1404.9, 35.9559, -6464.01, 308, 0},
		  {"death_watch_sniper", 900, 1409.79, 36.7795, -6445.08, 238, 0},
		  {"death_watch_assualt", 900, 1390.5, 37.0562, -6448.18, 83, 0},
		  {"acklay", 4500, 1459.32, 35.7806, -6482.73, 307, 0},


		   --inside
		  {"death_watch_pikeman", 450, -4.34907, 0.25, 3.88793, 133, 620001853},
		  {"death_watch_sniper", 450, -1.52314, 0.25, -4.8703, 31, 620001854},
		  {"death_watch_tkm", 450, 2.66623, 0, 0.67112, 265, 620001855},
		  {"death_watch_pistoleer", 450, -1.78589, -12, 27.1009, 49, 620001856},
		  {"death_watch_commando", 900, 3.84557, -12, 65.9047, 174, 620001856},
		  {"death_watch_sniper", 450, 25.8368, -12, 40.305, 305, 620001856},
		  {"death_watch_tkm", 450, 35.9165, -12, 46.8585, 275, 620001861},
		  {"death_watch_pistoleer", 450, 23.1038, -12, 35.1033, 169, 620001861},
		  {"death_watch_wraith", 450, 24.7738, -12, 9.3887, 102, 620001865},
		  {"death_watch_bloodguard", 450, 42.4495, -12, 20.8788, 165, 620001865},
		  {"death_watch_bloodguard", 450, 56.0717, -12, 1.90806, 5, 620001865},
		  {"death_watch_ghost", 450, 16.9482, -12, -0.213087, 267, 620001865},
		  {"death_watch_commando", 900, -11.4899, -20, 2.81076, 86, 620001867},
		  {"death_watch_sniper", 450, -31.3891, -20, 2.59549, 92, 620001868},
		  {"death_watch_swordsman", 450, -30.8991, -20, 37.165, 13, 620001869},
		  {"death_watch_swordsman", 450, -30.3349, -20, 70.6893, 178, 620001869},
		  {"death_watch_commando", 900, -34.5049, -20, 100.221, 157, 620001870},
		  {"death_watch_sniper", 450, -9.65722, -20, 102.66, 255, 620001870},
		  {"death_watch_swordsman", 450, -14.5439, -20, 84.949, 75, 620001871},
		  {"death_watch_swordsman", 450, -2.25923, -20, 80.7988, 194, 620001871},
		  {"death_watch_assualt", 450, 3.35053, -20, 66.8237, 325, 620001872},
		  {"death_watch_pikeman", 450, 31.5198, -12, 71.2181, 86, 620001861},
		  {"death_watch_tkm", 450, 35.3991, -12, 82.7736, 171, 620001861},
		  {"death_watch_tkm", 450, 35.3481, -20, 114.135, 178, 620001864},
		  {"death_watch_assualt", 900, 36.2978, -20, 136.312, 182, 620001864},
		  {"death_watch_commando", 900, 14.8378, -20, 137.449, 102, 620001864},
		  {"death_watch_pistoleer", 450, 44.9573, -12, 86.1064, 219, 620001862},
		  {"death_watch_ghost", 450, 71.8227, -12, 82.9515, 96, 620001862},
		  {"death_watch_wraith", 450, 55.133, -12, 82.9797, 275, 620001862},
		  {"death_watch_pikeman", 450, 45.4159, -12, 60.6483, 203, 620001863},
		  {"death_watch_wraith", 450, 62.0759, -12, 59.6983, 257, 620001863},
		  {"death_watch_ghost", 450, 73.5934, -12, 58.8806, 112, 620001863},
		  {"death_watch_sniper", 450, -16.7953, -12, 51.1361, 123, 620001856},
		  {"death_watch_pistoleer", 450, -43.1906, -20, 47.4723, 90, 620001857},
		  {"death_watch_commando", 900, -71.0052, -20, 47.4852, 89, 620001858},
		  {"death_watch_sniper", 450, -70.8005, -20, 43.9598, 92, 620001858},
		  {"death_watch_wraith", 450, -55.9915, -20, 12.8475, 91, 620001859},
		  {"death_watch_ghost", 450, -64.4938, -20, 8.88454, 286, 620001859},
		  {"death_watch_ghost", 450, -65.9076, -20, 14.6704, 286, 620001859},
		  {"death_watch_grevious", 240, -50.0764, -20, 86.7832, 205, 620001860}
	}

}

registerScreenPlay("yavin4_death_watch", true)


function yavin4_death_watch:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end


function yavin4_death_watch:spawnMobiles()
	local mobiles = self.mobiles

	for i = 1, #mobiles do
		local mobile = mobiles[i]
		local mobiles = self.mobiles
		local pMobile = spawnMobile(self.planet, mobile[1], mobile[2], mobile[3], mobile[4], mobile[5], mobile[6], mobile[7])

		if pMobile ~= nil then
			AiAgent(pMobile):addCreatureFlag(AI_STATIC)
		end
end

	 --- Boss Start ---
	 local pMandoStart = spawnMobile("yavin4", "death_watch_assualt", 1800, -73.3105, -20, 80.9141, 156, 620001860)
	 createObserver(OBJECTDESTRUCTION, "yavin4_death_watch", "notifypMandoStartDead", pMandoStart)

	 end

	 function yavin4_death_watch:notifypMandoStartDead(pMandoStart, pKiller)
	 if (readData("mandocave:jediboss") == 0) then
		 	local pMandoBossStart =
					spawnMobile("yavin4", "elite_death_watch_jedi_hunter", 0, -48.1512, -20, 81.0847, 268, 620001860)
		 			createObserver(OBJECTDESTRUCTION, "yavin4_death_watch", "notifypMandoBossStartDead", pMandoBossStart)
		 			writeData("mandocave:jediboss", 1)
	 			end
				return 0
	 end

	 function yavin4_death_watch:notifypMandoBossStartDead(pMandoBossStart, pKiller)
		 deleteData("mandocave:jediboss")

		 return 1
	 end
