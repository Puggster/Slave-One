shadow_collective_ig = Creature:new {
	customName = "an IG Lancer droid",
	mobType = MOB_ANDROID,
	socialGroup = "shadow_collective",
	faction = "",
	level = 303,
	chanceHit = 3.85,
	damageMin = 1570,
	damageMax = 2850,
	baseXp = 24130,
	baseHAM = 230000,
	baseHAMmax = 316000,
	armor = 2,
	resists = {40,40,30,35,35,30,35,30,130},
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
	scale = 1.35,

	templates = {"object/mobile/ig_88.iff"},
	lootGroups = {
    {
        groups = {
            {group = "clothing_attachments", chance = 5000000},
            {group = "armor_attachments", chance = 5000000},
        },
        lootChance = 10000000
    },
		{
			groups = {
				{group = "underworld_common", chance = 6000000},
				{group = "jetpack_base", chance = 2000000},
				{group = "powerplants", chance = 2000000},
			},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "barc_speeder_schem", chance = 5000000},
				{group = "stap_speeder_schem", chance = 5000000},
			},
			lootChance = 5000000
		}
	},

	primaryWeapon = "ig_lancer_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(pikemanmaster,brawlermaster,riflemanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_ig, "shadow_collective_ig")
