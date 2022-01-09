force_savage_elder = Creature:new {
	customName = "a fallen Jedi",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "nym",
	level = 278,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2050,
	baseXp = 26654,
	baseHAM = 171000,
	baseHAMmax = 252000,
	armor = 3,
	resists = {200,25,25,200,200,200,200,200,-1},
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

	templates = {
		"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "nyms_common", chance = 1000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "tailor_components", chance = 500000}
			},
			lootChance = 9500000
		},
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "nyms_common", chance = 1000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "tailor_components", chance = 500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "powerplants", chance = 1000000},
				{group = "lighting_junk", chance = 3000000},
				{group = "jewelry_exp_common", chance = 3000000},
				{group = "jewelry_assem_common", chance = 3000000},

			},
			lootChance = 10000000
		}
	},

	primaryWeapon = "mixed_force_weapons",
	secondaryWeapon = "unarmed",
	reactionStf = "@npc_reaction/slang",

	primaryAttacks = merge(tkamaster,forcepowermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(force_savage_elder, "force_savage_elder")
