fbase_imperial_medic = Creature:new {
	objectName = "@mob/creature_names:fbase_imperial_medic",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 26,
	chanceHit = 0.38,
	damageMin = 250,
	damageMax = 260,
	baseXp = 2600,
	baseHAM = 7700,
	baseHAMmax = 9400,
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
	creatureBitmask = PACK + HEALER,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_imperial_medic1_human_male_01.iff",
		"object/mobile/dressed_imperial_officer_f.iff"},
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

	primaryWeapon = "imperial_weapons_heavy",
	secondaryWeapon = "unarmed",
	conversationTemplate = "imperialRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",

	primaryAttacks = merge(brawlermaster,marksmanmaster,riflemanmid),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(fbase_imperial_medic, "fbase_imperial_medic")
