fbase_imperial_exterminator_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_imperial_exterminator_extreme",
	mobType = MOB_NPC,
	randomNameType = NAME_SWAMPTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 172,
	chanceHit = 8.2,
	damageMin = 1005,
	damageMax = 1720,
	baseXp = 17200,
	baseHAM = 54000,
	baseHAMmax = 75000,
	armor = 2,
	resists = {25,25,25,-1,130,-1,130,-1,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_clonetrooper_blue_nh_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 6000000},
				{group = "weapons_all", chance = 1250000},
				{group = "armor_all", chance = 1250000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},

	primaryWeapon = "imperial_weapons_medium",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	primaryAttacks = merge(brawlermaster,marksmanmaster,riflemanmaster,tkamaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_imperial_exterminator_extreme, "fbase_imperial_exterminator_extreme")
