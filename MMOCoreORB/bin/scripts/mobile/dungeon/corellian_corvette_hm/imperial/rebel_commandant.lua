rebel_commandant_hm = Creature:new {
	objectName = "@mob/creature_names:cis_battle_droid",
	customName = "A Battle Droid Commando",
	socialGroup = "rebel",
	faction = "rebel",
	level = 151,
	chanceHit = 8.5,
	damageMin = 895,
	damageMax = 1500,
	baseXp = 14314,
	baseHAM = 81000,
	baseHAMmax = 99000,
	armor = 2,
	resists = {50,65,30,30,30,30,80,65,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/death_watch_battle_droid.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 300000},
				{group = "junk", chance = 4150000},
				{group = "clothing_attachments", chance = 1300000},
				{group = "armor_attachments", chance = 1300000},
				{group = "rebel_officer_common", chance = 1450000},
				{group = "wearables_rare", chance = 1500000}
			}
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(commandomaster,marksmanmaster,brawlermaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(rebel_commandant_hm, "rebel_commandant_hm")
