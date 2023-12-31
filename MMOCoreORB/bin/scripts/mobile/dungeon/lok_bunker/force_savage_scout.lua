force_savage_scout = Creature:new {
	customName = "Force-wielding Nym's Scout",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	level = 118,
	chanceHit = 0.8,
	damageMin = 745,
	damageMax = 799,
	baseXp = 8408,
	baseHAM = 21000,
	baseHAMmax = 26000,
	armor = 1,
	resists = {35,35,35,200,200,200,200,200,-1},
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

	templates = {"object/mobile/dressed_nym_destroyer_rod_m.iff",
		"object/mobile/dressed_nym_destroyer_hum_m.iff",
		"object/mobile/dressed_nym_destroyer_nikto_m.iff",
		"object/mobile/dressed_nym_destroyer_wee_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3900000},
				{group = "wearables_uncommon", chance = 2000000},
				{group = "nyms_common", chance = 1000000},
				{group = "armor_attachments", chance = 1300000},
				{group = "clothing_attachments", chance = 1300000},
				{group = "tailor_components", chance = 500000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "powerplants", chance = 1000000},
				{group = "lighting_junk", chance = 3000000},
				{group = "jewelry_exp_common", chance = 3000000},
				{group = "jewelry_assem_common", chance = 3000000},

			},
			lootChance = 2000000
		}
	},

	primaryWeapon = "mixed_force_weapons",
	secondaryWeapon = "unarmed",
	reactionStf = "@npc_reaction/slang",

	primaryAttacks = merge(fencermid,swordsmanmid,tkamid,pikemanmaster,brawlermaster,forcewielder),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(force_savage_scout, "force_savage_scout")
