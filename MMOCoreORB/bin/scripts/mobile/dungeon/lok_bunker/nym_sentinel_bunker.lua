nym_sentinel_bunker = Creature:new {
	customName = "Force-wielding Nym's Sentinel",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	level = 88,
	chanceHit = 0.8,
	damageMin = 545,
	damageMax = 800,
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
				{group = "junk", chance = 2000000},
				{group = "wearables_uncommon", chance = 1000000},
				{group = "nyms_common", chance = 1000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nyms_uncommon", chance = 2000000}
			},
			lootChance = 6000000
		}
	},

	primaryWeapon = "mixed_force_weapons",
	secondaryWeapon = "unarmed",
	reactionStf = "@npc_reaction/slang",

	primaryAttacks = merge(fencermid,swordsmanmid,tkamid,pikemanmaster,brawlermaster,forcewielder),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nym_sentinel_bunker, "nym_sentinel_bunker")
