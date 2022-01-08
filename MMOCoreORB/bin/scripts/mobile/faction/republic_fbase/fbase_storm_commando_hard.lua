fbase_storm_commando_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_storm_commando_hard",
	mobType = MOB_NPC,
	randomNameType = NAME_DARKTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 88,
	chanceHit = 0.88,
	damageMin = 585,
	damageMax = 880,
	baseXp = 8800,
	baseHAM = 18000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {20,20,20,130,-1,130,-1,-1,-1},
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
	scale = 1.05,

	templates = {"object/mobile/dressed_clone_arc_m.iff"},
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
	primaryAttacks = merge(commandomid,brawlermaster,marksmanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_storm_commando_hard, "fbase_storm_commando_hard")
