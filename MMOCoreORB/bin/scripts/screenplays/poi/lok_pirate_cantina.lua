LokPirateCantinaScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "LokPirateCantinaScreenPlay",
	planet = "lok",

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

registerScreenPlay("LokPirateCantinaScreenPlay", true)

function LokPirateCantinaScreenPlay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:initializeLootContainers()

	end
end

function LokPirateCantinaScreenPlay:spawnSceneObjects()
--Elevators
--Middle
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_down.iff", -3.5, 9.01, -21.4, 620003205, 1, 0, 0, 0)
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", -3.5, 0, -21.4, 620003205, 1, 0, 0, 0)
--Left
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_down.iff", 0.5, 9.01, -21.4, 620003206, 1, 0, 0, 0)
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", 0.5, 0, -21.4, 620003206, 1, 0, 0, 0)
--Right
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_down.iff", -7.5, 9.01, -21, 620003204, 1, 0, 0, 0)
spawnSceneObject(self.planet, "object/tangible/terminal/terminal_elevator_up.iff", -7.5, 0, -21.0, 620003204, 1, 0, 0, 0)
--Back Elevator
spawnSceneObject(self.planet, "object/tangible/speaker/speaker.iff", 12.5, 7, -16.5, 620003207, 1, 0, 0, 0)
spawnSceneObject(self.planet, "object/tangible/speaker/speaker.iff", 13.7, 7, -15.6, 620003207, 1, 0, 0, 0)
spawnSceneObject(self.planet, "object/tangible/speaker/speaker.iff", 13.7, 7, -17.3, 620003207, 1, 0, 0, 0)
--This elevator doesn't actually go anywhere. Filling it with junk.

spawnSceneObject(self.planet, "object/tangible/tcg/series4/decorative_droid_oil_bath.iff", 31.1, -0.3, 0.2, -96, 620003203)
--Mechanic Oil Bath, may delete after players see it?

end

function LokPirateCantinaScreenPlay:spawnMobiles()
--Outside
spawnMobile("lok", "shadow_collective_hired_gun", 450, -267.855, 13.0527, 287.454, 324, 0)
spawnMobile("lok", "shadow_collective_thug", 300, -272.053, 12.9664, 286.221, 11, 0)
spawnMobile("lok", "cad_bane_crewmember", 300, -375.634, 18.7442, 137.543, 244, 0)
spawnMobile("lok", "cad_bane_crewmember", 300, -232.696, 13.5423, 60.5337, 156, 0)
spawnMobile("lok", "cad_bane_crewmember", 300, -126.525, 59.2778, 232.861, 61, 0)
spawnMobile("lok", "cad_bane_crewmember", 300, -301.964, 12.8347, 305.02, 77, 0)
spawnMobile("lok", "shadow_collective_sbd", 300, -259.87, 22.0059, 254.125, 43, 0)
spawnMobile("lok", "cad_bane_crewmember", 300, -8.62736, 7.01, -5.16917, 316, 620003178)
spawnMobile("lok", "cad_bane_crewmember", 300, -12.7004, 8.60578, 10.9411, 42, 620003177)
spawnMobile("lok", "cad_bane_crewmember", 300, -260.612, 22.0049, 249.872, 34, 0)


--First Floor, Main Cantina Area, easier mobs.
spawnMobile("lok", "ig_assassin_droid_sc", 300, 23.1828, 7.01, -13.4718, 356, 620003182)
spawnMobile("lok", "nilyahin_master_smuggler", 900, 16.8162, 7.01, -16.8634, 88, 620003186)
spawnMobile("lok", "nilyahin_master_smuggler", 900, 30.1302, 7.01, -4.83971, 34, 620003185)
spawnMobile("lok", "bounty_hunter", 300, 30.8398, 7.01001, 4.21135, 189, 620003185)
spawnMobile("lok", "entertainer", 300, 20.099, 7.01, 7.6409, 238, 620003182)
spawnMobile("lok", "shadow_collective_hired_gun", 300, 4.72099, 7.01, -11.7303, 91, 620003183)
spawnMobile("lok", "shadow_collective_hired_gun", 300, 13.8449, 7.01, -2.07072, 54, 620003182)
spawnMobile("lok", "jabba_enforcer_sc", 300, 18.6655, 7.01, -1.0937, 276, 620003182)
spawnMobile("lok", "nilyahin_smuggler", 300, 18.8193, 7.01, 7.36839, 77, 620003182)
spawnMobile("lok", "entertainer", 300, 6.25035, 7.01, 12.0902, 97, 620003184)
spawnMobile("lok", "desert_swooper_leader_sc", 300, 4.39025, 7.01, 4.43171, 275, 620003181)
spawnMobile("lok", "gamorrean_guard_sc", 300, 6.15841, 7.01, -8.01674, 0, 620003181)
spawnMobile("lok", "shadow_collective_hired_gun", 300, -2.70554, 7.01, 6.25433, 293, 620003178)
spawnMobile("lok", "shadow_collective_thug", 300, -4.30632, 7.01, 7.6711, 127, 620003178)
spawnMobile("lok", "shadow_collective_assassin", 300, -2.27462, 7.01, 7.63876, 216, 620003178)
spawnMobile("lok", "black_sun_thug_sc", 300, -6.72882, 7.01, -4.3048, 346, 620003178)
spawnMobile("lok", "black_sun_henchman_sc", 300, -5.54518, 7.01, -3.90707, 2, 620003178)
spawnMobile("lok", "nilyahin_smuggler", 300, -6.46569, 7.01, 9.59714, 193, 620003178)
spawnMobile("lok", "black_sun_henchman_sc", 300, -21.4849, 7.01, 10.7007, 178, 620003178)
spawnMobile("lok", "shadow_collective_assassin", 300, -22.812, 7.01, 6.86016, 17, 620003178)
spawnMobile("lok", "black_sun_henchman_sc", 300, -23.667, 7.01, 9.05208, 92, 620003178)
spawnMobile("lok", "jabba_thug", 300, -17.0105, 7.01, -7.91934, 73, 620003178)
spawnMobile("lok", "jabba_enforcer_sc", 300, -18.343, 7.01, -6.23386, 173, 620003178)
spawnMobile("lok", "jabba_enforcer_sc", 300, -9.71508, 7.01, -4.31588, 107, 620003178)
spawnMobile("lok", "black_sun_henchman_sc", 300, -21.7821, 9.01, 0.78453, 208, 620003180)
spawnMobile("lok", "cad_bane_crewmember", 300, -18.3835, 7.01, -8.47918, 6, 620003178)
spawnMobile("lok", "cad_bane_crewmember", 300, 4.51968, 7.01, 5.6762, 205, 620003181)
spawnMobile("lok", "cad_bane_crewmember", 300, 6.99405, 7.01, -13.287, 315, 620003183)
spawnMobile("lok", "cad_bane_crewmember", 300, 18.6141, 7.01, -17.9, 315, 620003186)
spawnMobile("lok", "cad_bane_crewmember", 300, 15.9104, 7.01, 0.543138, 173, 620003182)
spawnMobile("lok", "cad_bane_crewmember", 300, 31.6458, 7.01, -3.28352, 242, 620003185)
spawnMobile("lok", "cad_bane_crewmember", 300, 30.3085, 7.01001, 2.79959, 33, 620003185)

--elevator area
spawnMobile("lok", "shadow_collective_sbd", 900, -3.89372, 9.01, -15.2564, 310, 620003179)
spawnMobile("lok", "nilyahin_master_smuggler", 900, -25.8789, 9.01, 1.19999, 90, 620003180)
spawnMobile("lok", "nilyahin_smuggler", 300, -24.3635, 9.01, -2.53193, 66, 620003180)
spawnMobile("lok", "nilyahin_smuggler", 300, -275.119, 12.9251, 342.71, 190, 0)
spawnMobile("lok", "nilyahin_smuggler", 300, -277.134, 13.0018, 342.747, 144, 0)

--Cantina Stage
spawnMobile("lok", "max_rebo_sc", 300, -16.9526, 8.01, -2.03574, 10, 620003178)
spawnMobile("lok", "entertainer", 300, -16.2265, 8.01, 1.02446, 95, 620003178)
spawnMobile("lok", "entertainer", 300, -15.8923, 8.01, -0.437749, 68, 620003178)

--2nd Floor
spawnMobile("lok", "shadow_collective_thug", 300, -3.04596, 0.01, -9.16047, 177, 620003187)
spawnMobile("lok", "cad_bane_security", 1800, -13.4895, -0.255725, -13.5789, 350, 620003188)
spawnMobile("lok", "shadow_collective_assassin", 300, -2.10757, 0.01, -6.42093, 49, 620003190)
spawnMobile("lok", "shadow_collective_sbd", 900, 2.95389, 0.01, 2.22185, 120, 620003196)
spawnMobile("lok", "shadow_collective_assassin", 300, 7.57792, -0.255725, -8.02673, 233, 620003197)
spawnMobile("lok", "shadow_collective_hired_gun", 300, 4.06728, -0.255725, -9.67575, 66, 620003197)
spawnMobile("lok", "cad_bane_bountyhunter", 900, 5.64374, -0.255725, 9.32137, 137, 620003200)
spawnMobile("lok", "nilyahin_master_smuggler", 900, 12.8521, -0.255725, -10.8822, 7, 620003198)
spawnMobile("lok", "shadow_collective_thug", 300, 10.7209, -0.255725, 6.94918, 74, 620003201)
spawnMobile("lok", "shadow_collective_hired_gun", 300, 14.4892, -0.255725, 9.23625, 168, 620003201)
spawnMobile("lok", "cad_bane_assassin", 900, 21.2926, -0.255725, -10.4755, 328, 620003199)
spawnMobile("lok", "cad_bane_bountyhunter", 900, 18.8923, -0.255725, 8.68126, 151, 620003202)
spawnMobile("lok", "cad_bane_mechanic", 1800, 28.9757, -0.255725, -0.0414557, 263, 620003203)
spawnMobile("lok", "shadow_collective_assassin", 300, -5.00164, 0.01, -6.39964, 281, 620003189)
spawnMobile("lok", "shadow_collective_sbd", 900, -9.86419, 0.0100002, 1.85332, 221, 620003193)
spawnMobile("lok", "shadow_collective_hired_gun", 300, -22.0711, 0.0100004, -10.1383, 329, 620003195)
spawnMobile("lok", "entertainer", 300, -24.4474, 0.0100004, -7.70182, 142, 620003195)
spawnMobile("lok", "cad_bane_assassin", 900, -24.9597, 0.0100003, 8.29756, 117, 620003194)
spawnMobile("lok", "shadow_collective_sbd", 900, -3.66077, 0.0100001, 11.5548, 180, 620003191)
spawnMobile("lok", "cad_bane", 3300, -14.4753, -0.255725, 8.58238, 79, 620003192)


end
