shadow_collective_enforcer = Creature:new {
	customName = "a Shadow Collective Enforcer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 296,
	chanceHit = 2.85,
	damageMin = 1170,
	damageMax = 2200,
	baseXp = 20207,
	baseHAM = 99000,
	baseHAMmax = 111428,
	armor = 2,
	resists = {70,70,35,35,45,45,20,10,120},
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
	scale = 1.25,

	templates = {
	"object/mobile/dressed_tatooine_jabba_enforcer.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "powerplants", chance = 2500000},
				{group = "underworld_common", chance = 5000000},
				{group = "shadow_schematics", chance = 2500000},
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "noob_weapons", chance = 10000000},
			},
			lootChance = 10000000
		},
	},

	primaryWeapon = "blasterfist_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(tkamaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_enforcer, "shadow_collective_enforcer")
