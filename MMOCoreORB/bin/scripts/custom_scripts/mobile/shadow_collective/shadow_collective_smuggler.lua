shadow_collective_smuggler = Creature:new {
	--objectName = "@mob/creature_names:shadow_collective_thug",
	customName = "a Shadow Collective smuggler",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 175,
	chanceHit = 2.7,
	damageMin = 1795,
	damageMax = 2300,
	baseXp = 12207,
	baseHAM = 52000,
	baseHAMmax = 75000,
	armor = 1,
	resists = {90,90,90,90,30,60,30,30,120},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

  templates =
	{
	--"object/mobile/dressed_criminal_organized_human_female_01.iff",
	"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",

},


	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "power_crystals", chance = 600000},
				{group = "color_crystals", chance = 500000},
				{group = "death_watch_pistol_schematics", chance = 100000},
				{group = "noob_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 1400000},
				{group = "clothing_attachments", chance = 1400000},
			},
			lootChance = 6500000,
		},
		{
			groups = {
				{group = "noob_weapons", chance = 7000000},
				{group = "underworld_common", chance = 3000000},
			},
			lootChance = 10000000,
		},

	},

	primaryWeapon = "pistoleer_NO_Stun_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(pistoleermaster,bountyhuntermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_smuggler, "shadow_collective_smuggler")
