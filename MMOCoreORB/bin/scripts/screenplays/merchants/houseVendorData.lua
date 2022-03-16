HouseVendorLogic = VendorLogic:new {
	scriptName = "HouseVendorLogic",
	currencies = {
	--For Tokens: Displayed Name, full template string (without shared_), if applicable: ScreenPlayData string, ScreenPlayData key
		{currency = "credits"},
	},
	--Displayed Name, full template string (without shared_), cost in {}, use the same structure as currencies

	merchandise = {
	{name ="Mustafarian Underground Bunker Schematic", template = "object/tangible/loot/loot_schematic/musty_house_loot_schem.iff", cost = {10000000,}},
        {name ="Vehicle Garage Schematic", template = "object/tangible/loot/loot_schematic/vehicle_house_loot_schem.iff", cost = {10000000,}},
        {name ="Bespin Cloud House Schematic", template = "object/tangible/loot/loot_schematic/bespin_house_loot_schem.iff", cost = {10000000,}},
				{name ="VIP Bunker Schematic", template = "object/tangible/loot/loot_schematic/vipbunker_house_loot_schem.iff", cost = {4000000,}},
				{name ="YT-1300 Light Freighter House Schematic", template = "object/tangible/loot/loot_schematic/yt1300_house_loot_schem.iff", cost = {10000000,}},
				{name ="Jabba's Sail Barge House Schematic(Tat/Lok only)", template = "object/tangible/loot/loot_schematic/jabbas_house_loot_schem.iff", cost = {10000000,}},
				--{name ="A Crate of Resources(1000)", template = "object/tangible/veteran_reward/resource_supply_crate.iff", cost = {200000,}},
	},
}

registerScreenPlay("HouseVendorLogic", false)
