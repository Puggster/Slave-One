rebel_gungan_boss = Creature:new {
	objectName = "@mob/creature_names:gungan_boss",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 19,
	chanceHit = 0.32,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1426,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {0,20,0,35,35,-1,-1,-1,-1},
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

	templates = {"object/mobile/gungan_male.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "gungan_common", chance = 2000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000}
			}
		}
	},

	primaryWeapon = "rebel_weapons_medium",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(brawlermaster,marksmanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(rebel_gungan_boss, "rebel_gungan_boss")
