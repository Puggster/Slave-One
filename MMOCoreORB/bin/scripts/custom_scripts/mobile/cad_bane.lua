cad_bane = Creature:new {
	customName = "Cad Bane (Bounty Hunter)",
	--randomNameType = NAME_GENERIC,
	--randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 304,
	chanceHit = 8.5,
	damageMin = 1895,
	damageMax = 3780,
	baseXp = 24314,
	baseHAM = 490000,
	baseHAMmax = 514285,
	armor = 3,
	resists = {75,75,60,70,70,65,60,40,115},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = .75,

	templates = {
	"object/mobile/cad_bane.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "dath_schems", chance = 4000000},
				--{group = "schem_nym_slugthrower_carbine_g", chance = 4600000},
				--{group = "tfa_paintings", chance = 100000},
				{group = "underworld_common", chance = 3600000},
				{group = "blacksun_rare", chance = 2400000}
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "schem_nym_slugthrower_carbine_g", chance = 5000000},
				{group = "schem_acid_sword", chance = 5000000},

			},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "stap_speeder_schem", chance = 3000000},
				--{group = "barc_speeder_schem", chance = 5000000},
				{group = "xj6_speeder_schem", chance = 7000000},
			},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "underworld_common", chance = 10000000},
			},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000},
			},
			lootChance = 7000000
		},
		groups = {
			{group = "cad_junk", chance = 10000000},
		},
		lootChance = 7000000
	},


	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pirate_weapons_heavy",
	secondaryWeapon = "pistoleer_weapons",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster),
	secondaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(cad_bane, "cad_bane")
