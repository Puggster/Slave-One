jewelry_exp_common = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
	-- For player reference: 10m Total. 1m = 10%, 100k = 1%.
		{itemTemplate = "medicine_exp_bracelet_l", weight = 1000000},
		{itemTemplate = "medicine_exp_bracelet_r", weight = 1000000},
		{itemTemplate = "combat_medicine_exp_bracelet_l", weight = 1000000},
		{itemTemplate = "combat_medicine_exp_bracelet_r", weight = 1000000},
		{itemTemplate = "wpnsmith_bracelet_l", weight = 500000},
		{itemTemplate = "wpnsmith_bracelet_r", weight = 500000},
		{itemTemplate = "droid_exp_bracelet_l", weight = 500000},
		{groupTemplate = "droid_exp_bracelet_r", weight = 500000},
		{groupTemplate = "food_exp_bracelet_l", weight = 500000},
		{groupTemplate = "food_exp_bracelet_r", weight = 500000},
		{groupTemplate = "artisan_bracelet_l", weight = 1000000},
		{groupTemplate = "artisan_bracelet_r", weight = 1000000},
		{groupTemplate = "architect_exp_bracelet_l", weight = 500000},
		{groupTemplate = "architect_exp_bracelet_r", weight = 500000},
	}
}

addLootGroupTemplate("jewelry_exp_common", jewelry_exp_common)
