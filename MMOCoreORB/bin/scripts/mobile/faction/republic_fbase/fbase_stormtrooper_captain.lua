fbase_stormtrooper_captain = Creature:new {
	objectName = "@mob/creature_names:fbase_stormtrooper_captain",
	mobType = MOB_NPC,
	randomNameType = NAME_SWAMPTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 45,
	chanceHit = 0.48,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4500,
	baseHAM = 9800,
	baseHAMmax = 12000,
	armor = 0,
	resists = {20,20,20,-1,130,-1,130,-1,-1},
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
	scale = 1.05,

	templates = {"object/mobile/dressed_clonetrooper_m.iff",
		     "object/mobile/dressed_clonetrooper_blue_m.iff",
		     "object/mobile/dressed_clonetrooper_blue_nh_m.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 6000000},
				{group = "weapons_all", chance = 1100000},
				{group = "armor_all", chance = 1100000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "imperial_officer_common", chance = 500000},
				{group = "wearables_all", chance = 900000}
			}
		}
	},

	primaryWeapon = "clonetrooper_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	primaryAttacks = merge(carbineermid,riflemannovice,brawlermaster,marksmanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_stormtrooper_captain, "fbase_stormtrooper_captain")
