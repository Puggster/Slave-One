cis_battle_droid_restuss = Creature:new {
	objectName = "@mob/creature_names:cis_battle_droid",
	mobType = MOB_ANDROID,
	customName = "A Battle Droid",
	socialGroup = "rebel",
	faction = "rebel",
	level = 200,
	chanceHit = 0.31,
	damageMin = 160,
	damageMax = 170,
	baseXp = 831,
	baseHAM = 5400,
	baseHAMmax = 6000,
	armor = 0,
	resists = {5,5,5,5,5,5,5,5,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + FACTIONAGGRO,
	diet = HERBIVORE,

	templates = {
		"object/mobile/battle_droid.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 4000000,
		},
	},

	weapons = {"battle_droid_weapons"},
	defaultAttack = "defaultdroidrangedattack",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/battle_droid",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(cis_battle_droid_restuss, "cis_battle_droid_restuss")
