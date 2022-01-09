nym_slave_bunker = Creature:new {
	customName = "Force-wielding Nym's Slave",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	level = 15,
	chanceHit = 0.31,
	damageMin = 160,
	damageMax = 170,
	baseXp = 714,
	baseHAM = 1500,
	baseHAMmax = 1900,
	armor = 0,
	resists = {5,5,5,0,0,0,0,5,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {	"object/mobile/dressed_commoner_fat_human_female_01.iff",
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
			"object/mobile/dressed_commoner_tatooine_trandoshan_male_02.iff" },
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_common", chance = 3000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "tailor_components", chance = 1000000},
			}
		}
	},

	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",

	primaryAttacks = brawlermid,
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nym_slave_bunker, "nym_slave_bunker")
