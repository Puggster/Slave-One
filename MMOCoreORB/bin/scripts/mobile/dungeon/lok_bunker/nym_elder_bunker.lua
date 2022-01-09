nym_elder_bunker = Creature:new {
	customName = "Force-wielding Nym's Elder",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	level = 278,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {90,25,25,95,95,95,75,95,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_nym_patrol_elite_rod_m.iff",
		"object/mobile/dressed_nym_patrol_elite_hum_m.iff",
		"object/mobile/dressed_nym_patrol_elite_nikto_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 1500000},
				{group = "nyms_uncommon", chance = 1500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "wearables_common", chance = 2000000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "exclusive_painting", chance = 10000000},
			},
			lootChance = 5000000
		}
	},

	primaryWeapon = "mixed_force_weapons",
	secondaryWeapon = "unarmed",
	reactionStf = "@npc_reaction/slang",

	primaryAttacks = merge(tkamaster,elite2hmaster,fencermaster,elitepikemanmaster,brawlermaster,forcepowermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nym_elder_bunker, "nym_elder_bunker")
