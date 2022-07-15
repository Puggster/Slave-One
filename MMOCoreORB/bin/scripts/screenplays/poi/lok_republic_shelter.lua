LokRepublicShelterScreenplay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "LokRepublicShelterScreenplay",
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

registerScreenPlay("LokRepublicShelterScreenplay", true)

function LokRepublicShelterScreenplay:start()
	if (isZoneEnabled("lok")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
		self:initializeLootContainers()

	end
end

function LokRepublicShelterScreenplay:spawnSceneObjects()

end

function LokRepublicShelterScreenplay:spawnMobiles()
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2646.89, 16.0127, 4990, 285, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2645.16, 16.0127, 4994, 301, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2622.48, 11.9762, 4998, 112, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2622.85, 11.9102, 4996.53, 100, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2623.3, 11.9424, 5002, 100, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2618.34, 11.9975, 4992, 100, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2617.55, 11.9978, 4994, 100, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2616.25, 11.8467, 4998.05, 91, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2594.37, 12.1211, 4990.3, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2595.22, 11.911, 4987.16, 195, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2596.37, 12.0177, 4982.95, 195, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2590.79, 12.0102, 4981.36, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2589.06, 12.0418, 4985.6, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2587.8, 12.0345, 4989.66, 75, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2583.47, 12.1388, 4988.51, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2583.99, 12.1137, 4983.93, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2584.32, 11.9984, 4979.86, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2579.75, 12.049, 4978.55, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2578.68, 12.1713, 4981.57, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2577.46, 12.1387, 4984.84, 105, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2542.39, 15.9658, 4967.42, 105, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2543.19, 15.9658, 4963.72, 105, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2550.76, 12.017, 4981.58, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2557.4, 12.0465, 4984.03, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2554.52, 11.9443, 4992.17, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2544.47, 11.839, 4989.32, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2542.76, 12.0051, 4994.12, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2551.11, 11.8111, 4997.31, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2548.96, 12.0671, 5003.29, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2539.21, 11.937, 5001.13, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2533.18, 12.034, 5018.09, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2540.06, 12.1094, 5021.92, 19, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2526.64, 11.9159, 5040.46, 329, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2534.31, 12.1578, 5041.44, 12, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2505.9, 15.8037, 5075.85, 110, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2504.74, 15.8018, 5082.04, 91, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2531.45, 11.9414, 5081.46, 279, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2532.59, 12.0865, 5077.05, 247, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2532.07, 11.9503, 5084.66, 310, 0)
spawnMobile("lok", "clonetrooper_501", 300, -3.72857, 0.125265, 3.37487, 73, 620002209)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -0.333909, 0.125265, -0.0400785, 163, 620002211)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -0.418931, 0.125265, -4.05344, 0, 620002211)
spawnMobile("lok", "imperial_recruiter", 300, -3.59469, 0.125266, -4.14198, 15, 620002214)
spawnMobile("lok", "clonetrooper_501", 300, 3.33527, 0.125266, -3.71893, 331, 620002213)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -2566.38, 12.1075, 5069.07, 11, 0)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -2560.65, 12.052, 5067.67, 10, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2578.03, 11.9702, 5072.14, 303, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2588.46, 12.1204, 5092.51, 94, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2589.34, 11.8464, 5078.7, 97, 0)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -2607.78, 16.4834, 5110.76, 285, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2609.73, 16.4824, 5106.21, 266, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2609.77, 11.9181, 5087, 243, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2603.48, 11.7235, 5083.77, 180, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2608.46, 11.9176, 5069.47, 199, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2614.27, 11.9886, 5070.56, 199, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2617.98, 11.9126, 5059.88, 199, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2607.39, 12.1691, 5055.35, 191, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2610.57, 11.8859, 5046.15, 199, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2621.08, 11.9266, 5047.96, 199, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2624.86, 12.007, 5037.09, 199, 0)
spawnMobile("lok", "clonetrooper_501", 300, -2610.64, 12.0241, 5031.76, 199, 0)
spawnMobile("lok", "clonetrooper_501", 300, 7.42369, 1.01, 20.3517, 197, 620002196)
spawnMobile("lok", "clonetrooper_501", 300, 11.0722, 1.01, 7.93794, 269, 620002197)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, 17.8807, 1.01, 17.5193, 167, 620002198)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -0.0894556, 2.01, 3.68738, 355, 620002197)
spawnMobile("lok", "clonetrooper_501", 300, -1.25622, 1.01, -0.510711, 228, 620002197)
spawnMobile("lok", "clonetrooper_501", 300, 1.71752, 1.01, -0.770827, 71, 620002197)
spawnMobile("lok", "clonetrooper_501", 300, -0.0610966, 1.01, -9.13513, 218, 620002197)
spawnMobile("lok", "clonetrooper_501", 300, -2.97084, 1.01, -11.084, 161, 620002197)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -0.0528408, 1.01, -20.279, 334, 620002202)
spawnMobile("lok", "clonetrooper_501", 300, -13.3203, 1.01, -12.2014, 77, 620002197)
spawnMobile("lok", "clonetrooper_501", 300, -13.2611, 1.01, -19.5096, 261, 620002203)
spawnMobile("lok", "clonetrooper_501", 300, -17.1046, 1.01, -19.1599, 84, 620002203)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, 14.9037, 1.01, -20.8861, 282, 620002201)
spawnMobile("lok", "imperial_recruiter", 300, 19.4169, 1.01, -1.14667, 239, 620002200)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -19.5176, 1.01, 2.156, 164, 620002204)
spawnMobile("lok", "clonetrooper_501", 300, -6.23726, 7.00971, -14.782, 44, 620002205)
spawnMobile("lok", "clonetrooper_501", 300, 2.23613, 7.00972, -8.69344, 287, 620002205)
spawnMobile("lok", "clonetrooper_501", 300, 0.145163, 7.00966, -13.0044, 280, 620002205)
spawnMobile("lok", "clonetrooper_501", 300, 12.3589, 7.01, 8.76294, 345, 620002207)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, 8.36885, 7.01, 10.2098, 3, 620002207)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2563.66, 18.9375, 5055, 11, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2563.41, 18.9375, 5009.32, 200, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2603.18, 18.9375, 5019.31, 284, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2590.55, 18.9375, 5063.47, 17, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -12.1529, 7.00975, 8.88702, 96, 620002206)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -9.76023, 7.00974, 8.908, 245, 620002206)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -18.6413, 1.01, 18.4222, 161, 620002199)
spawnMobile("lok", "clonetrooper_bombardier_501", 300, -16.7903, 1.01, 18.0326, 196, 620002199)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2540.97, 16.3486, 5098.12, 18, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2545.48, 16.3486, 5099.7, 11, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2563.24, 15.8965, 5105.43, 24, 0)
spawnMobile("lok", "clonetrooper_sniper_501", 300, -2569.77, 15.8965, 5107.55, 24, 0)

end
