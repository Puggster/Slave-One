shadow_collective_bossk = Creature:new {
	customName = "Bossk",
	--randomNameType = NAME_GENERIC,
	--randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 306,
	chanceHit = 2.85,
	damageMin = 2070,
	damageMax = 3950,
	baseXp = 47207,
	baseHAM = 293000,
	baseHAMmax = 456000,
	armor = 3,
	resists = {170,170,45,45,65,65,40,40,130},
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
	scale = 1.5,

	templates = {
	"object/mobile/bossk.iff",
	},

	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 2000000},
				{group = "armor_attachments", chance = 4000000},
				{group = "clothing_attachments", chance = 4000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "shadow_schematics", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "bountyhunter_junk", chance = 2000000},
				{group = "noob_weapons", chance = 2000000},
				{group = "xj6_speeder_schem", chance = 3000000},
				{group = "underworld_common", chance = 3000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "accuracy_skill_buffs", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "dath_schems", chance = 7000000},
				{group = "noob_weapons", chance = 3000000},
			},
			lootChance = 7000000
		},
	},
	weapons = {"bossk_weapons"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_bossk, "shadow_collective_bossk")
