fbase_imperial_corporal_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_imperial_corporal_hard",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 52,
	chanceHit = 0.52,
	damageMin = 405,
	damageMax = 520,
	baseXp = 5200,
	baseHAM = 10500,
	baseHAMmax = 13000,
	armor = 1,
	resists = {5,5,5,5,5,5,5,-1,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "imperial_officer" },
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
	primaryAttacks = merge(brawlermaster,marksmanmaster,riflemanmid),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_imperial_corporal_hard, "fbase_imperial_corporal_hard")
