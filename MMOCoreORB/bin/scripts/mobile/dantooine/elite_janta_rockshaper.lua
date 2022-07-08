elite_janta_rockshaper = Creature:new {
	objectName = "@mob/creature_names:elite_janta_rockshaper",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 295,
	chanceHit = 27.25,
	damageMin = 1220,
	damageMax = 1950,
	baseXp = 26654,
	baseHAM = 201000,
	baseHAMmax = 263571,
	armor = 2,
	resists = {190,75,75,55,55,55,75,25,-1}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = AGGRESSIVE + PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 4000000},
				{group = "vibrovis_g", chance = 2500000},
				{group = "janta_elite", chance = 3500000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 2500000},
				{group = "vibrovis_g", chance = 2500000},
				{group = "janta_elite", chance = 5000000},
			},
			lootChance = 2500000
		},
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "pikeman_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(pikemanmaster,fencermaster),
	secondaryAttacks = {brawlermaster }
}

CreatureTemplates:addCreatureTemplate(elite_janta_rockshaper, "elite_janta_rockshaper")
