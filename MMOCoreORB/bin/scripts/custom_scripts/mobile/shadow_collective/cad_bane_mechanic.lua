cad_bane_mechanic = Creature:new {
	customName = "Cad's personal mechanic",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 196,
	chanceHit = 2.85,
	damageMin = 1070,
	damageMax = 2200,
	baseXp = 20207,
	baseHAM = 100000,
	baseHAMmax = 125714,
	armor = 1,
	resists = {70,70,35,35,15,15,30,30,120},
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
		"object/mobile/warren_teraud_loyalist_cyborg_s01.iff",
		"object/mobile/warren_teraud_loyalist_cyborg_s02.iff",
		"object/mobile/warren_teraud_loyalist_cyborg_s03.iff",
		"object/mobile/warren_teraud_loyalist_cyborg_s04.iff",
		},

	lootGroups = {
		{
			groups = {
				{group = "underworld_common", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "powerplants", chance = 5000000},
				{group = "underworld_common", chance = 5000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "cad_mech_junk", chance = 10000000},
			},
			lootChance = 500000
		},
	},

	primaryWeapon = "canyon_corsair_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,elite2hmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cad_bane_mechanic, "cad_bane_mechanic")
