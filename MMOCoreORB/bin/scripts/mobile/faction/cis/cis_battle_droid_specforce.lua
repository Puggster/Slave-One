cis_battle_droid_specforce = Creature:new {
	objectName = "@mob/creature_names:cis_battle_droid",
	customName = "A SpecForce Battle Droid",
	mobType = MOB_ANDROID,
	socialGroup = "rebel",
	faction = "rebel",
	level = 21,
	chanceHit = 0.34,
	damageMin = 200,
	damageMax = 210,
	baseXp = 2006,
	baseHAM = 5400,
	baseHAMmax = 6600,
	armor = 0,
	resists = {30,30,30,30,30,30,30,30,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
			"object/mobile/death_watch_battle_droid_02.iff"
			},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 4000000,
		},
	},

--	attacks = merge(brawlermaster,marksmanmaster)

	primaryWeapon = "battle_droid_weapons",
	secondaryWeapon = "none",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/battle_droid",
	personalityStf = "@hireling/hireling_military",
	primaryAttacks = "defaultdroidrangedattack",
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cis_battle_droid_specforce, "cis_battle_droid_specforce")
