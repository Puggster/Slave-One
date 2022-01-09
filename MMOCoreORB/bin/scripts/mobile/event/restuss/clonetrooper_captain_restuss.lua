clonetrooper_captain_restuss = Creature:new {
	objectName = "@mob/creature_names:clonetrooper_captain_501",
	mobType = MOB_NPC,
	randomNameType = NAME_SWAMPTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 200,
	chanceHit = 0.38,
	damageMin = 300,
	damageMax = 310,
	baseXp = 3005,
	baseHAM = 16100,
	baseHAMmax = 19900,
	armor = 1,
	resists = {40,40,40,40,40,40,40,40,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED + FACTIONAGGRO,
	diet = HERBIVORE,
	scale = 1.05,

	templates = {
		"object/mobile/dressed_clone_arc_501.iff",
		"object/mobile/dressed_clone_arc_nh_501.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 5050000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
				{group = "melee_weapons", chance = 550000},
				{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 250000},
				{group = "armor_attachments", chance = 250000},
				{group = "imperial_officer_common", chance = 450000},
				{group = "stormtrooper_common", chance = 700000},
				{group = "wearables_common", chance = 1000000}
			}
		}
	},

	primaryWeapon = "clonetrooper_weapons_mix",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",
	primaryAttacks = merge(riflemanmaster,carbineermaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(clonetrooper_captain_restuss, "clonetrooper_captain_restuss")
