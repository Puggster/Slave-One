fbase_stormtrooper_bombardier_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_stormtrooper_bombardier_extreme",
	mobType = MOB_NPC,
	randomNameType = NAME_SWAMPTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 148,
	chanceHit = 5.8,
	damageMin = 885,
	damageMax = 1480,
	baseXp = 14800,
	baseHAM = 36000,
	baseHAMmax = 51000,
	armor = 2,
	resists = {110,110,140,35,35,35,35,-1,-1},
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
				{group = "weapons_all", chance = 1200000},
				{group = "armor_all", chance = 1200000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "stormtrooper_common", chance = 200000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},

	primaryWeapon = "st_bombardier_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	primaryAttacks = merge(commandomaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_stormtrooper_bombardier_extreme, "fbase_stormtrooper_bombardier_extreme")
