fs_villager_generic = Creature:new {
	objectName = "@mob/creature_names:fs_villager_generic",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "fs_villager",
	faction = "fs_villager",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_commoner_fat_human_female_01.iff",
		"object/mobile/dressed_commoner_fat_human_female_02.iff",
		"object/mobile/dressed_commoner_fat_human_male_01.iff",
		"object/mobile/dressed_commoner_fat_human_male_02.iff",
		"object/mobile/dressed_commoner_fat_twilek_female_01.iff",
		"object/mobile/dressed_commoner_fat_twilek_female_02.iff",
		"object/mobile/dressed_commoner_fat_twilek_male_01.iff",
		"object/mobile/dressed_commoner_fat_twilek_male_02.iff",
		"object/mobile/dressed_commoner_fat_zabrak_female_01.iff",
		"object/mobile/dressed_commoner_fat_zabrak_female_02.iff",
		"object/mobile/dressed_commoner_fat_zabrak_male_01.iff",
		"object/mobile/dressed_commoner_fat_zabrak_male_02.iff",
		"object/mobile/dressed_commoner_naboo_bothan_female_01.iff",
		"object/mobile/dressed_commoner_naboo_bothan_female_02.iff",
		"object/mobile/dressed_commoner_naboo_bothan_male_01.iff",
		"object/mobile/dressed_commoner_naboo_bothan_male_02.iff",
		"object/mobile/dressed_commoner_naboo_human_female_01.iff",
		"object/mobile/dressed_commoner_naboo_human_female_02.iff",
		"object/mobile/dressed_commoner_naboo_human_female_03.iff",
		"object/mobile/dressed_commoner_naboo_human_female_04.iff",
		"object/mobile/dressed_commoner_naboo_human_female_05.iff",
		"object/mobile/dressed_commoner_naboo_human_female_06.iff",
		"object/mobile/dressed_commoner_naboo_human_female_07.iff",
		"object/mobile/dressed_commoner_naboo_human_female_08.iff",
		"object/mobile/dressed_commoner_naboo_human_male_01.iff",
		"object/mobile/dressed_commoner_naboo_human_male_02.iff",
		"object/mobile/dressed_commoner_naboo_human_male_03.iff",
		"object/mobile/dressed_commoner_naboo_human_male_04.iff",
		"object/mobile/dressed_commoner_naboo_human_male_05.iff",
		"object/mobile/dressed_commoner_naboo_human_male_06.iff",
		"object/mobile/dressed_commoner_naboo_human_male_07.iff",
		"object/mobile/dressed_commoner_naboo_human_male_08.iff",
		"object/mobile/dressed_commoner_naboo_moncal_female_01.iff",
		"object/mobile/dressed_commoner_naboo_moncal_female_02.iff",
		"object/mobile/dressed_commoner_naboo_moncal_male_01.iff",
		"object/mobile/dressed_commoner_naboo_moncal_male_02.iff",
		"object/mobile/dressed_commoner_naboo_twilek_female_01.iff",
		"object/mobile/dressed_commoner_naboo_twilek_female_02.iff",
		"object/mobile/dressed_commoner_naboo_twilek_male_01.iff",
		"object/mobile/dressed_commoner_naboo_twilek_male_02.iff",
		"object/mobile/dressed_commoner_naboo_zabrak_female_01.iff",
		"object/mobile/dressed_commoner_naboo_zabrak_female_02.iff",
		"object/mobile/dressed_commoner_naboo_zabrak_male_01.iff",
		"object/mobile/dressed_commoner_naboo_zabrak_male_02.iff",
		"object/mobile/dressed_commoner_old_human_female_01.iff",
		"object/mobile/dressed_commoner_old_human_female_02.iff",
		"object/mobile/dressed_commoner_old_human_male_01.iff",
		"object/mobile/dressed_commoner_old_human_male_02.iff",
		"object/mobile/dressed_commoner_old_twilek_female_01.iff",
		"object/mobile/dressed_commoner_old_twilek_female_02.iff",
		"object/mobile/dressed_commoner_old_twilek_male_01.iff",
		"object/mobile/dressed_commoner_old_twilek_male_02.iff",
		"object/mobile/dressed_commoner_old_zabrak_female_01.iff",
		"object/mobile/dressed_commoner_old_zabrak_female_02.iff",
		"object/mobile/dressed_commoner_old_zabrak_male_01.iff",
		"object/mobile/dressed_commoner_old_zabrak_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_01.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_02.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_03.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_04.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_05.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_06.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_07.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_female_08.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_03.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_04.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_05.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_06.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_07.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_08.iff",
		"object/mobile/dressed_commoner_tatooine_aqualish_male_09.iff",
		"object/mobile/dressed_commoner_tatooine_bith_female_01.iff",
		"object/mobile/dressed_commoner_tatooine_bith_female_02.iff",
		"object/mobile/dressed_commoner_tatooine_bith_female_03.iff",
		"object/mobile/dressed_commoner_tatooine_bith_female_04.iff",
		"object/mobile/dressed_commoner_tatooine_bith_female_05.iff",
		"object/mobile/dressed_commoner_tatooine_bith_female_06.iff",
		"object/mobile/dressed_commoner_tatooine_bith_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_bith_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_bith_male_03.iff",
		"object/mobile/dressed_commoner_tatooine_bith_male_04.iff",
		"object/mobile/dressed_commoner_tatooine_bith_male_05.iff",
		"object/mobile/dressed_commoner_tatooine_bith_male_06.iff",
		"object/mobile/dressed_commoner_tatooine_devaronian_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_devaronian_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_devaronian_male_03.iff",
		"object/mobile/dressed_commoner_tatooine_devaronian_male_04.iff",
		"object/mobile/dressed_commoner_tatooine_ishitib_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_ishitib_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_ishitib_male_03.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_03.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_04.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_05.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_06.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_07.iff",
		"object/mobile/dressed_commoner_tatooine_nikto_male_08.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_female_01.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_female_02.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_female_03.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_female_04.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_male_03.iff",
		"object/mobile/dressed_commoner_tatooine_rodian_male_04.iff",
		"object/mobile/dressed_commoner_tatooine_sullustan_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_sullustan_male_02.iff",
		"object/mobile/dressed_commoner_tatooine_sullustan_male_03.iff",
		"object/mobile/dressed_commoner_tatooine_sullustan_male_04.iff",
		"object/mobile/dressed_commoner_tatooine_sullustan_male_05.iff",
		"object/mobile/dressed_commoner_tatooine_sullustan_male_06.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_female_01.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_female_02.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_female_03.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_female_04.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_male_01.iff",
		"object/mobile/dressed_commoner_tatooine_trandoshan_male_02.iff",
	},
	lootGroups = {},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(marksmannovice,brawlernovice),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fs_villager_generic, "fs_villager_generic")
