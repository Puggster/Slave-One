-- Planet Region Definitions
--
-- {"regionName", x, y, shape and size, tier, {"spawnGroup1", ...}, maxSpawnLimit}
-- For circle and ring, x and y are the center point
-- For rectangles, x and y are the bottom left corner. x2 and y2 (see below) are the upper right corner
-- Shape and size is a table with the following format depending on the shape of the area:
--   - Circle: {CIRCLE, radius}
--   - Rectangle: {RECTANGLE, x2, y2}
--   - Ring: {RING, inner radius, outer radius}
-- Tier is a bit mask with the following possible values where each hexadecimal position is one possible configuration.
-- That means that it is not possible to have both a spawn area and a no spawn area in the same region, but
-- a spawn area that is also a no build zone is possible.

require("scripts.managers.planet.regions")

talus_regions = {
	-- No Build Zones
	{"northedge_talus_nobuild", -8000, 7640, {RECTANGLE, 8000, 7999}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"westedge_talus_nobuild", -7998, -7641, {RECTANGLE, -7641, 7640}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"southedge_talus_nobuild", -8000, -8000, {RECTANGLE, 8000, -7640}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"eastedge_talus_nobuild", 7640, -7640, {RECTANGLE, 8000, 7640}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"old_battlefield_nobuild_tal1", -3420, -3196, {CIRCLE, 192}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"old_battlefield_nobuild_tal2", -5355, 2784, {CIRCLE, 256}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"old_battlefield_nobuild_tal3", -411, 4639, {CIRCLE, 256}, NOSPAWNAREA + NOBUILDZONEAREA},

	-- Named Regions, POIs and Decor
	{"aakuan_champions_cave", 5928, 4656, {CIRCLE, 75}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"aakuan_tent", -3685.93, -551.716, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"animal_skull", 2119.59, 1272.85, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"arch_and_torches", 1467, -2672, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"at_st_wreckage", -3197.7, 4759.89, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"aqualish_fishing_spot", 5345, 4543, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"backbone", -5731.64, 2855.8, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"bones", -1242.85, 1495.63, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"bones_2", -4715, 1130, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"boulder", -861, 1019, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"bridge", -150, 325, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"bridge_and_debris", 5482.91, 1083.24, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"bridge_struts", -4017.29, 989.893, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_at_at", -2438.89, -2220.35, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_bridge", -4044.76, 3662.24, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_droid", -2600, 100, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_machinery", -4354, 1540, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_probe_droid", -4802.42, 5165.3, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_strut", -1641.33, -331.624, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"broken_walls", 1117, 1489, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"building_ruins", 5189.76, -1738.44, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"burning_rocks", 4310.3, 2561.65, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"bushes", -4454.15, 4061.72, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"camp", -5875, -180, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"camp_2", 2337, 2937, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"campsite", -2718.14, -2265.64, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"chunker_bunker", 1374, 1470, {CIRCLE, 75}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"circle_of_rocks", -5673.66, 5290.47, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"circle_of_rocks_2", -5099.85, 4722.92, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"corsec_vs_flail_battle", 3030, 6100, {CIRCLE, 200}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dath_tree", -60, 980, {CIRCLE, 24.642}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"dath_tree_2", -707.002, 152.963, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris", 1709, 784, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris_2", -1733.4, -2888.73, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris_3", -1007.66, -5092.36, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"debris_4", -6318, 1253, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"diseased_debris", -5138.13, 3706.21, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"diseased_ruins", -5114.72, 3215.53, {CIRCLE, 75}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"downed_shuttle", -2397.97, 2035.24, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"escape_pod", -4983, 5753, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"flag", -3460, 1550, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"flag_and_ruins", -3804.75, -6521.07, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"fountain", 3888, 3390, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"fountain_2", -3154.53, -920.493, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"hunters_tent", 1121.5, -1771.2, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"hut_and_graves", -2243.24, 903.125, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"imperial_house", 5991.21, -1187.82, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"imperial_house_2", 1709.95, 1624.38, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"imperial_tower", 3208.4, 1265.07, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"imperial_vs_rebel_battle", -2485.76, 3745, {CIRCLE, 159}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"krayt_skull", -1116, 3752.75, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"large_broken_tower", -5521.32, 1066.57, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"lookout_tower", -4382.55, 2670.92, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"lost_aqualish_cave", -4355, -1426, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"machinery", -1467.99, 1231.79, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"machinery_2", -4019.36, 4624.58, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"makeshift_tent", 86.2446, 1576.08, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"marker", 2472, 786, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"metal_objects", -562.44, 1270.96, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_1", 3787.49, 4763.98, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_2", 3485, 4556, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_3", 3042, 4565, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_4", 2248, 5169, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_5", 1839, 4966, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_6", 1583, 5062, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_7", 1499, 4802, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_8", 1485, 4366, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_9", 2248, 3905, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_10", 1886, 3211, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_11", 2448, 2457, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_12", 2841, 2923, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_13", 3670, 3475, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_14", 4129, 3652, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_15", 4511, 4054, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"narshal_river_race_track_16", 4529, 4831, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"old_comms_mast", -1653.72, 3381.92, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"pillar", 616, 1102, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"pillar_red_haze", -5100.97, 1270.52, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"pillars", 4973.29, 3846.81, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"pillars_2", -4974.96, -591.763, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"pile_of_rocks", -2791.18, 911.851, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"quarantined_building", 3890.38, -2844.78, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"rebel_camp", 3101, -4046, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"rebel_installation", 2360.19, -4990.54, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"red_fire", -1832.12, 1437.84, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"ribcage", -4471.86, 66.4715, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"rocks", -5996.19, 5955.22, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruins", -1394.54, 2114.56, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruins_2", -1602.49, -541.278, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruins_3", -3492.41, 3698.32, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruins_4", -3333.2, 5170.41, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"ruins_5", -4758.5, 3934.92, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"science_equipment", -3651.32, 6341.87, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"skeleton_and_rocks", -3170.33, 5733.74, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"skeleton_and_ruins", -3393.63, 2493.96, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"skulls_and_fire", -5096.1, 2358.04, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"smugglers_shipment", -3445.81, 6184.69, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"spring", -3230.68, 4201.54, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"static_tall_tree", 3474.66, 484.439, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"statue", -3248.73, 3425.45, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"statue_head", -5040, 115, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_arch", -5213.51, 4592.57, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_arrangement", 171.28, 3405.92, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_arrangement_2", -3700, 4390, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"stone_blocks", -733, 2033, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"table", 5414.36, 2654.02, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"three_pillars", -5696.54, 4011.71, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"three_spikes", -3920, 4125, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"three_stones", -1361.59, 1058.44, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"three_stone_pyramid", -5399.84, 4304.31, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"tie_bomber_debris", 4843.88, -4727.1, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"tie_bomber_wing", -5279.42, 5056.58, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"tree_stump", -3243.83, 4324.8, {CIRCLE, 30}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"tree_with_skulls", -5477, 5810, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"two_stones", -3710, 2891, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"wall", 2812.66, 5582.37, {CIRCLE, 15}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"walled_island", 2448.39, 2481.3, {CIRCLE, 50}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"sdungeon_creature_village", 4260, 946, {CIRCLE, 500}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_sdungeon_cave_01", -4807, -4751, {CIRCLE, 128}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_sdungeon_cave_02", 5929, 4656, {CIRCLE, 128}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_sdungeon_cave_03", -4352, -1431, {CIRCLE, 128}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_sdungeon_cave_04", 5584, -4080, {CIRCLE, 128}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"yitsarin_river_canyon_1", 3296, -6208, {RECTANGLE, 3712, -5760}, UNDEFINEDAREA},
	{"yitsarin_river_canyon_2", 3424, -5728, {RECTANGLE, 3808, -5312}, UNDEFINEDAREA},
	{"yitsarin_river_canyon_3", 3648, -5248, {RECTANGLE, 4064, -4768}, UNDEFINEDAREA},
	{"yitsarin_river_canyon_4", 3904, -4704, {RECTANGLE, 4320, -4192}, UNDEFINEDAREA},
	{"yitsarin_river_canyon_5", 4192, -4128, {RECTANGLE, 4672, -3584}, UNDEFINEDAREA},
	{"yitsarin_river_canyon_6", 4448, -3520, {RECTANGLE, 4992, -3040}, UNDEFINEDAREA},
	{"yitsarin_river_canyon_7", 4800, -2976, {RECTANGLE, 5344, -2496}, UNDEFINEDAREA},
	{"yitsarin_river_canyon_8", 5120, -2432, {RECTANGLE, 5600, -1900}, UNDEFINEDAREA},
	{"skyspear_forest", -2144, 3468, {CIRCLE, 896}, UNDEFINEDAREA},
	{"ageyn_foothills", -5488, -2096, {CIRCLE, 1550}, UNDEFINEDAREA},
	{"mudflats_1", 3120, -3824, {CIRCLE, 368}, UNDEFINEDAREA},
	{"mudflats_2", 2960, -4368, {CIRCLE, 240}, UNDEFINEDAREA},
	{"lake_bondoma", 2368, 2528, {CIRCLE, 470}, UNDEFINEDAREA},
	{"derik_hur_highlands_1", 1232, 4080, {CIRCLE, 2480}, UNDEFINEDAREA},
	{"derik_hur_highlands_2", -3264, 4512, {RECTANGLE, 192, 6400}, UNDEFINEDAREA},
	{"derik_hur_highlands_3", 4048, 3408, {CIRCLE, 2060}, UNDEFINEDAREA},
	{"shadowbrak_ridge", 5712, 5616, {CIRCLE, 1040}, UNDEFINEDAREA},
	{"tendin_vale", -5440, 5664, {CIRCLE, 768}, UNDEFINEDAREA},
	{"azaki_plains_1", 2016, -3936, {RECTANGLE, 6272, 1088}, UNDEFINEDAREA},
	{"azaki_plains_2", 2016, -6336, {RECTANGLE, 4128, -3936}, UNDEFINEDAREA},
	{"azaki_plains_3", 4336, -4496, {CIRCLE, 1136}, UNDEFINEDAREA},
	{"south_crimson_flats_1", -3744, -6272, {RECTANGLE, -576, -1440}, UNDEFINEDAREA},
	{"south_crimson_flats_2", -5728, -5056, {RECTANGLE, -416, -3648}, UNDEFINEDAREA},
	{"south_crimson_flats_3", -4768, -6176, {RECTANGLE, -480, -5024}, UNDEFINEDAREA},
	{"north_crimson_flats_1", -4512, -1344, {RECTANGLE, -384, 2112}, UNDEFINEDAREA},
	{"north_crimson_flats_2", -6592, -576, {RECTANGLE, -2976, 2272}, UNDEFINEDAREA},
	{"north_crimson_flats_3", -6336, -1760, {RECTANGLE, -3104, 3648}, UNDEFINEDAREA},
	{"talus_corsec_vs_criminals_battle", 3033, 6088, {CIRCLE, 128}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_rebels_vs_imperials_atat_bomber_battle", -2400, 3708, {CIRCLE, 256}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_giant_fynock_cave", 1591, -868, {CIRCLE, 89}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_factional_bunker", -4938, -3107, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_factional_bunker2", 4987, -6022, {CIRCLE, 150}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_force_shrine_01", -5786, 4478, {CIRCLE, 199}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_force_shrine_02", -5494, -3240, {CIRCLE, 199}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_force_shrine_03", 5760, -5208, {CIRCLE, 199}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"talus_force_shrine_04", 318, 5843, {CIRCLE, 199}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"binayre_camp_talus", -1622, 618, {CIRCLE, 100}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"coa_aclo_office_nospawn", 1280, -3127, {CIRCLE, 100}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"coa_nightstrikesoldierhegemony_base_nospawn", -4623, -3233, {CIRCLE, 120}, NOSPAWNAREA + NOBUILDZONEAREA},
	{"gcw_base_01_talus_nobuild", -5186, 280, {CIRCLE, 200}, NOSPAWNAREA + NOBUILDZONEAREA},

	-- Cities
	{"@talus_region_names:dearic", 425, -3000, {CIRCLE, 400}, CITY + NOSPAWNAREA},
	{"dearic_nobuild_1", 425, -3000, {CIRCLE, 1000}, NOBUILDZONEAREA},
	{"@talus_region_names:nashal", 4360, 5251, {CIRCLE, 350}, CITY + NOSPAWNAREA},
	{"nashal_nobuild_1", 4361, 5251, {CIRCLE, 800}, NOBUILDZONEAREA},
	{"@talus_region_names:talus_imperial_outpost", -2171.24, 2296.33, {CIRCLE, 240}, CITY + NOSPAWNAREA + NOBUILDZONEAREA},

	-- Spawn Areas
	{"@talus_region_names:dearic_easy_newbie", 432, -3008, {CIRCLE, 800}, SPAWNAREA + NOWORLDSPAWNAREA, {"talus_dearic_easy_newbie"}, 64},
	{"@talus_region_names:dearic_medium_newbie", 432, -3008, {CIRCLE, 1500}, SPAWNAREA + NOWORLDSPAWNAREA, {"talus_dearic_medium_newbie"}, 64},
	{"@talus_region_names:nashal_easy_newbie", 4352, 5209, {CIRCLE, 750}, SPAWNAREA + NOWORLDSPAWNAREA, {"talus_nashal_easy_newbie"}, 64},
	{"@talus_region_names:nashal_medium_newbie", 4352, 5209, {CIRCLE, 1500}, SPAWNAREA + NOWORLDSPAWNAREA, {"talus_nashal_medium_newbie"}, 64},

	{"@talus_region_names:central_medium", -2011, -1020, {RECTANGLE, 7580, 1990}, SPAWNAREA, {"talus_central_medium"}, 64},
	{"@talus_region_names:northeastern_medium", 1988, 1995, {RECTANGLE, 7580, 8000}, SPAWNAREA, {"talus_northeastern_medium"}, 64},
	{"@talus_region_names:northern_medium", -2991, 1980, {RECTANGLE, 1980, 8000}, SPAWNAREA, {"talus_northern_medium"}, 64},
	{"@talus_region_names:northwestern_hard", -7975, 4000, {RECTANGLE, -2995, 8000}, SPAWNAREA, {"talus_northwestern_hard"}, 32},
	{"@talus_region_names:southern_easy", -2009, -6675, {RECTANGLE, 2990, -1020}, SPAWNAREA, {"talus_southern_easy"}, 32},
	{"@talus_region_names:sountheastern_medium", 2983, -6920, {RECTANGLE, 7580, -1018}, SPAWNAREA, {"talus_sountheastern_medium"}, 64},
	{"@talus_region_names:southwestern_medium", -7970, -6675, {RECTANGLE, -2010, -3020}, SPAWNAREA, {"talus_southwestern_medium"}, 64},
	{"@talus_region_names:western_medium", -7975, -3025, {RECTANGLE, -2010, 1990}, SPAWNAREA, {"talus_western_medium"}, 128},
	{"@talus_region_names:western_hard", -7975, 1991, {RECTANGLE, -3000, 4000}, SPAWNAREA, {"talus_western_hard"}, 32},

	{"@talus_region_names:hard_guf_drolg_ne", -4192, -3467, {CIRCLE, 500}, SPAWNAREA, {"talus_hard_guf_drolg_ne"}, 256},
	{"@talus_region_names:hard_aakuan_se", -4842, 1533, {CIRCLE, 500}, SPAWNAREA, {"talus_hard_aakuan_se"}, 256},
	{"@talus_region_names:hard_selonian_sw", 4638, 1238, {CIRCLE, 500}, SPAWNAREA, {"talus_hard_selonian_sw"}, 256},
	{"@talus_region_names:aakuan_hard", 6278, 5018, {CIRCLE, 500}, SPAWNAREA, {"talus_aakuan_hard"}, 256},
	{"@talus_region_names:decay_mite_medium", -5540, -4680, {CIRCLE, 500}, SPAWNAREA, {"talus_decay_mite_medium"}, 256},
	{"@talus_region_names:binyare_pirates_medium", 5673, -3977, {CIRCLE, 500}, SPAWNAREA, {"talus_binyare_pirates_medium"}, 256},
	{"@talus_region_names:northern_imperial_hard", -2233, 2317, {CIRCLE, 500}, SPAWNAREA, {"talus_northern_imperial_hard"}, 256},

	-- Forest
	{"@talus_region_names:forest", 4800, 4544, {CIRCLE, 3200}, SPAWNAREA, {"talus_northeast_forest"}, 128},
	{"@talus_region_names:forest_1", 1296, 4400, {CIRCLE, 2965}, SPAWNAREA, {"talus_northern_forest"}, 128},
	{"@talus_region_names:forest_2", 3760, 3568, {CIRCLE, 1000}, SPAWNAREA, {"talus_northeast_forest"}, 32},
	{"@talus_region_names:forest_3", -5792, 5600, {CIRCLE, 1983}, SPAWNAREA, {"talus_northwest_forest"}, 64},
	{"@talus_region_names:forest_4", -2064, 3184, {CIRCLE, 1159}, SPAWNAREA, {"talus_northwest_forest"}, 32},
	{"@talus_region_names:forest_5", -5440, -2144, {CIRCLE, 1760}, SPAWNAREA, {"talus_southwest_forest"}, 64},
	-- Mountains
	{"@talus_region_names:mountains", -8000, 6616, {RECTANGLE, -499, 8000}, SPAWNAREA, {"talus_northern_mountains"}, 128},
	{"@talus_region_names:mountains_1", 447, 6545, {RECTANGLE, 8000, 8000}, SPAWNAREA, {"talus_northern_mountains"}, 64},
	{"@talus_region_names:mountains_2", -224, 6880, {CIRCLE, 1100}, SPAWNAREA, {"talus_medium_devil_gulginaw_nw", "talus_medium_wolf_kima_nw"}, 32},
	{"@talus_region_names:mountains_3", -8000, -4497, {RECTANGLE, -6019, 7313}, SPAWNAREA, {"talus_western_mountains"}, 128},
	{"@talus_region_names:mountains_4", 6383, -6583, {RECTANGLE, 8000, 8000}, SPAWNAREA, {"talus_eastern_mountains"}, 128},
	{"@talus_region_names:mountains_5", 5776, 5648, {CIRCLE, 870}, SPAWNAREA, {"talus_medium_wolf_kima_ne"}, 16},
	{"@talus_region_names:mountains_6", 6528, 2080, {CIRCLE, 1066}, SPAWNAREA, {"talus_medium_wolf_kima_ne"}, 16},
	{"@talus_region_names:mountains_7", 6416, -4976, {CIRCLE, 1500}, SPAWNAREA, {"talus_hard_grand_wrix_se"}, 16},
	{"@talus_region_names:mountains_8", -976, -1072, {CIRCLE, 985}, SPAWNAREA, {"talus_hard_dalyrake_ne"}, 16},
	-- Grasslands / Prairie
	{"@talus_region_names:grasslands", -3680, 1504, {CIRCLE, 3525}, SPAWNAREA, {"talus_western_plains"}, 128},
	{"@talus_region_names:grasslands_1", -6337, -5710, {RECTANGLE, 6593, 1582}, SPAWNAREA, {"talus_central_plains"}, 128},
	{"@talus_region_names:grasslands_2", -5471, -6632, {RECTANGLE, 831, -5335}, SPAWNAREA, {"talus_southern_coast"}, 128},
	{"@talus_region_names:grasslands_3", 1952, -6560, {RECTANGLE, 4832, -5344}, SPAWNAREA, {"talus_eastern_plains"}, 128},
	{"@talus_region_names:grasslands_4", -6576, -880, {CIRCLE, 737}, SPAWNAREA, {"talus_central_plains"}, 16},
	{"@talus_region_names:grasslands_5", -6304, -3744, {CIRCLE, 800}, SPAWNAREA, {"talus_medium_sludge_panther_sw"}, 16},
	{"@talus_region_names:prairie", -3696, 1456, {CIRCLE, 3533}, SPAWNAREA, {"talus_hard_grand_wrix_nw"}, 256},
	{"@talus_region_names:prairie_1", -6304, -6624, {RECTANGLE, 6560, 1568}, SPAWNAREA, {"talus_central_plains"}, 256},
	-- Beach
	{"@talus_region_names:swamp", 2976, -4000, {CIRCLE, 1500}, SPAWNAREA, {"talus_hard_dalyrake_sw"}, 64},
	{"@talus_region_names:river", 2848, -6688, {RECTANGLE, 6112, -1120}, SPAWNAREA, {"talus_hard_guf_drolg_se"}, 64},

	{"world_spawner", 0, 0, {RECTANGLE, 0, 0}, WORLDSPAWNAREA + SPAWNAREA, {"talus_world"}, 2048},

	--[[
	{"dearic_deliver_1", 147, -3074, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_2", 150, -3061, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_3", 173, -3032, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_4", 198, -3065, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_5", 157, -2961, {CIRCLE, 12}, UNDEFINEDAREA},
	{"dearic_deliver_6", 133, -3093, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_7", 127, -2995, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_8", 237, -3078, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_9", 291, -3074, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_10", 164, -2836, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_11", 161, -2869, {CIRCLE, 12}, UNDEFINEDAREA},
	{"dearic_deliver_12", 205, -2850, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_13", 221, -2803, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_14", 127, -2799, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_15", 301, -2835, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_16", 280, -2807, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_17", 394, -2882, {CIRCLE, 12}, UNDEFINEDAREA},
	{"dearic_deliver_18", 482, -2855, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_19", 446, -2805, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_20", 397, -2767, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_21", 398, -2971, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_22", 503, -2948, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_23", 496, -3023, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_24", 580, -3024, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_25", 530, -3025, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_26", 574, -2915, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_27", 580, -2964, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_28", 640, -2913, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_29", 582, -2862, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_30", 620, -2861, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_31", 692, -2862, {CIRCLE, 12}, UNDEFINEDAREA},
	{"dearic_deliver_32", 616, -2960, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_33", 615, -2921, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_34", 592, -2923, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_35", 617, -2977, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_36", 452, -2852, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_37", 615, -3011, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_38", 649, -2940, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_39", 709, -2968, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_40", 722, -2892, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_41", 709, -3036, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_42", 660, -3065, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_43", 646, -3049, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_44", 673, -3099, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_45", 616, -3122, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_46", 619, -3102, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_47", 584, -3122, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_48", 591, -3085, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_49", 629, -3182, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_50", 592, -3161, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_51", 578, -3188, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_52", 503, -3189, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_53", 486, -3086, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_54", 490, -3116, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_55", 486, -3155, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_56", 496, -3235, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_57", 441, -3236, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_58", 466, -3227, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_59", 415, -3136, {CIRCLE, 12}, UNDEFINEDAREA},
	{"dearic_deliver_60", 364, -3102, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_61", 447, -3185, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_62", 411, -3169, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_63", 367, -3173, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_64", 315, -3160, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_65", 402, -3077, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_66", 387, -3047, {CIRCLE, 5}, UNDEFINEDAREA},
	{"dearic_deliver_67", 354, -3052, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_68", 372, -3060, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_69", 319, -3002, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_70", 429, -3063, {CIRCLE, 7}, UNDEFINEDAREA},
	{"dearic_deliver_71", 415, -3050, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_72", 444, -3087, {CIRCLE, 2}, UNDEFINEDAREA},
	{"dearic_deliver_73", 462, -3102, {CIRCLE, 10}, UNDEFINEDAREA},
	{"dearic_deliver_74", 212, -2938, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_1", 4299, 5198, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_2", 4294, 5184, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_3", 4278, 5167, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_4", 4251, 5169, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_5", 4266, 5154, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_6", 4274, 5144, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_7", 4252, 5137, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_8", 4232, 5110, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_9", 4224, 5131, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_10", 4227, 5117, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_11", 4238, 5127, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_12", 4208, 5153, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_13", 4189, 5140, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_14", 4368, 5148, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_15", 4034, 5230, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_16", 4035, 5261, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_17", 4074, 5235, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_18", 4102, 5278, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_19", 4079, 5279, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_20", 4124, 5294, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_21", 4135, 5308, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_22", 4148, 5274, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_23", 4195, 5287, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_24", 4231, 5315, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_25", 4214, 5330, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_26", 4351, 5305, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_27", 4419, 5271, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_28", 4341, 5387, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_29", 4295, 5413, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_30", 4291, 5444, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_31", 4347, 5435, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_32", 4299, 5361, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_33", 4423, 5399, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_34", 4416, 5382, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_35", 4412, 5393, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_36", 4391, 5422, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_37", 4441, 5420, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_38", 4472, 5466, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_39", 4551, 5437, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_40", 4508, 5449, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_41", 4528, 5506, {CIRCLE, 15}, UNDEFINEDAREA},
	{"nashal_deliver_42", 4489, 5269, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_43", 4533, 5287, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_44", 4548, 5337, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_45", 4551, 5310, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_46", 4470, 5212, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_47", 4518, 5198, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_48", 4470, 5183, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_49", 4523, 5141, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_50", 4513, 5129, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_51", 4536, 5114, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_52", 4555, 5091, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_53", 4555, 5054, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_54", 4526, 5057, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_55", 4538, 5067, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_56", 4553, 5081, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_57", 4364, 5185, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_58", 4327, 5202, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_59", 4338, 5215, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_60", 4320, 5215, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_61", 4345, 5203, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_62", 4385, 5050, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_63", 4346, 5065, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_64", 4373, 5020, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_65", 4389, 5031, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_66", 4363, 5087, {CIRCLE, 12}, UNDEFINEDAREA},
	{"nashal_deliver_67", 4338, 5049, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_68", 4335, 5058, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_69", 4353, 5126, {CIRCLE, 7}, UNDEFINEDAREA},
	{"nashal_deliver_70", 4344, 5079, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_71", 4347, 5113, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_72", 4355, 5147, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_73", 4354, 5182, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_74", 4373, 5165, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_75", 4177, 5145, {CIRCLE, 2}, UNDEFINEDAREA},
	{"nashal_deliver_76", 4167, 5128, {CIRCLE, 10}, UNDEFINEDAREA},
	{"nashal_deliver_77", 4178, 5102, {CIRCLE, 5}, UNDEFINEDAREA},
	{"nashal_deliver_78", 4164, 5104, {CIRCLE, 2}, UNDEFINEDAREA},
	]]
}