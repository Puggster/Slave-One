elite_janta_shaman = Creature:new {
	objectName = "@mob/creature_names:elite_janta_shaman",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 260,
	chanceHit = 4.65,
	damageMin = 2270,
	damageMax = 2650,
	baseXp = 25830,
	baseHAM = 32000,
	baseHAMmax = 64000,
	armor = 1,
	resists = {20,40,20,20,100,100,20,-1,20}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
			{group = "junk", chance = 5000000},
			{group = "janta_elite", chance = 5000000},
			},
			lootChance = 9500000
		}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "primitive_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(pikemanmaster,fencermaster,forcewielder),
	secondaryAttacks = {brawlermaster }
}

CreatureTemplates:addCreatureTemplate(elite_janta_shaman, "elite_janta_shaman")
