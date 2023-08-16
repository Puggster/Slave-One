fbase_imperial_warrant_officer_ii = Creature:new {
	objectName = "@mob/creature_names:fbase_imperial_warrant_officer_ii",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 28,
	chanceHit = 0.39,
	damageMin = 270,
	damageMax = 280,
	baseXp = 2800,
	baseHAM = 8200,
	baseHAMmax = 10000,
	armor = 0,
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = { "imperial_officer" },
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 6000000},
				{group = "weapons_all", chance = 1100000},
				{group = "armor_all", chance = 1100000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "imperial_officer_common", chance = 400000},
				{group = "wearables_all", chance = 1000000}
			}
		}
	},

	primaryWeapon = "imperial_weapons_medium",
	secondaryWeapon = "unarmed",
	conversationTemplate = "imperialRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",

	primaryAttacks = merge(brawlermaster,marksmanmaster,carbineermid),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_imperial_warrant_officer_ii, "fbase_imperial_warrant_officer_ii")
