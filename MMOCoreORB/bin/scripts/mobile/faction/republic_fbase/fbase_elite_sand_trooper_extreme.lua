fbase_elite_sand_trooper_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_elite_sand_trooper_extreme",
	mobType = MOB_NPC,
	randomNameType = NAME_SWAMPTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 210,
	chanceHit = 12.0,
	damageMin = 1195,
	damageMax = 2100,
	baseXp = 21000,
	baseHAM = 82000,
	baseHAMmax = 112500,
	armor = 3,
	resists = {0,0,140,200,-1,-1,-1,-1,-1},
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

	templates = {"object/mobile/dressed_clone_sandtrooper_m.iff"},
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

	primaryWeapon = "sandtrooper_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	primaryAttacks = merge(marksmanmaster,riflemanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_elite_sand_trooper_extreme, "fbase_elite_sand_trooper_extreme")
