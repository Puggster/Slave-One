kliknik_event = Creature:new {
	customName = "Mutant Kliknik",
	socialGroup = "kliknik",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 333,
	chanceHit = 30.0,
	damageMin = 4140,
	damageMax = 5445,
	baseXp = 28549,
	baseHAM = 402000,
	baseHAMmax = 528000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,175},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kliknik.iff"},
	scale = 4,
	lootGroups = {
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 2000000},
				{group = "loot_schems", chance = 2500000},
				{group = "krayt_pearls", chance = 1500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 2000000},
				{group = "loot_schems", chance = 2500000},
				{group = "krayt_pearls", chance = 1500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 2000000},
				{group = "loot_schems", chance = 2500000},
				{group = "krayt_pearls", chance = 1500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "armor_attachments", chance = 2000000},
			},
			lootChance = 10000000
		},
	},
	
		-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
		-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
		primaryWeapon = "unarmed",
		secondaryWeapon = "none",
		conversationTemplate = "",
		
		-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
		-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareacombo","stateAccuracyBonus=100"}, {"creatureareaknockdown","stateAccuracyBonus=100"} },
		secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(kliknik_event, "kliknik_event")
