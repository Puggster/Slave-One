jewelry_assem_common = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
	-- For player reference: 10m Total. 1m = 10%, 100k = 1%.
		{itemTemplate = "doctor_assem_bracelet_l", weight = 1000000},
		{itemTemplate = "doctor_assem_bracelet_r", weight = 1000000},
		{itemTemplate = "cm_assem_bracelet_l", weight = 1000000},
		{itemTemplate = "cm_assem_bracelet_r", weight = 1000000},
		{itemTemplate = "arch_assem_bracelet_l", weight = 500000},
		{itemTemplate = "arch_assem_bracelet_r", weight = 500000},
		{itemTemplate = "chef_assem_bracelet_l", weight = 500000},
		{groupTemplate = "chef_assem_bracelet_r", weight = 500000},
		{groupTemplate = "arsmith_assem_bracelet_l", weight = 500000},
		{groupTemplate = "arsmith_assem_bracelet_r", weight = 500000},
		{groupTemplate = "tailor_assem_bracelet_r", weight = 1000000},
		{groupTemplate = "tailor_assem_bracelet_l", weight = 1000000},
		{groupTemplate = "wpnsmith_assem_bracelet_l", weight = 500000},
		{groupTemplate = "wpnsmith_assem_bracelet_r", weight = 500000},
	}
}

addLootGroupTemplate("jewelry_assem_common", jewelry_assem_common)
