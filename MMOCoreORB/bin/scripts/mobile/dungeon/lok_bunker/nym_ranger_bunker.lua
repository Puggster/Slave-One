nym_ranger_bunker = Creature:new {
	customName = "Force-wielding Nym's Ranger",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	level = 81,
	chanceHit = 0.75,
	damageMin = 555,
	damageMax = 820,
	baseXp = 7761,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {30,30,30,100,100,100,100,100,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_nym_guard_strong_hum_f.iff",
		"object/mobile/dressed_nym_guard_strong_rod_m.iff",
		"object/mobile/dressed_nym_guard_strong_nikto_m.iff",
		"object/mobile/dressed_nym_guard_strong_hum_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2000000},
				{group = "nyms_common", chance = 1500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nyms_uncommon", chance = 2500000}
			},
			lootChance = 6000000
		}
	},

	primaryWeapon = "mixed_force_weapons",
	secondaryWeapon = "unarmed",
	reactionStf = "@npc_reaction/slang",

	primaryAttacks = merge(fencermid,swordsmanmid,tkamid,pikemanmid,brawlermaster,forcewielder),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nym_ranger_bunker, "nym_ranger_bunker")
