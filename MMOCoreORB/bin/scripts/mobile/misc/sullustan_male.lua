sullustan_male = Creature:new {
	objectName = "@mob/creature_names:patron_sullustan",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_commoner_artisan_sullustan_male_01.iff",
				 "object/mobile/dressed_commoner_tatooine_sullustan_male_01.iff",
				 "object/mobile/dressed_commoner_tatooine_sullustan_male_02.iff",
				 "object/mobile/dressed_commoner_tatooine_sullustan_male_03.iff",
				 "object/mobile/dressed_commoner_tatooine_sullustan_male_04.iff",
				 "object/mobile/dressed_commoner_tatooine_sullustan_male_05.iff",
				 "object/mobile/dressed_commoner_tatooine_sullustan_male_01.iff",
				 "object/mobile/dressed_mercenary_messanger_sullustan_m.iff",
				 "object/mobile/dressed_patron_sullustan_01.iff",				 
	},
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = {},
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(sullustan_male, "sullustan_male")