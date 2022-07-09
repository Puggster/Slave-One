shadow_collective_gen = Creature:new {
	customName = "an Assassin",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 196,
	chanceHit = 2.85,
	damageMin = 1170,
	damageMax = 2050,
	baseXp = 23207,
	baseHAM = 95000,
	baseHAMmax = 111428,
	armor = 1,
	resists = {70,70,35,35,35,35,40,40,120},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = .95,

	templates = {
	"object/mobile/dressed_criminal_swooper_zabrak_female_01.iff",
	"object/mobile/dressed_criminal_swooper_human_female_01.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
			},
			lootChance = 7000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 1500000
		},
	},

	primaryWeapon = "blasterfist_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(tkamaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_gen, "shadow_collective_gen")
