nym_spellweaver_bunker = Creature:new {
	customName = "Force-wielding Nym's Spellweaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	level = 107,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 10174,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {100,75,75,90,100,30,30,30,10},
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

	templates = {"object/mobile/dressed_nym_guard_elite_rod_m.iff",
		"object/mobile/dressed_nym_guard_elite_nikto_m.iff",
		"object/mobile/dressed_nym_guard_elite_hum_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2500000},
				{group = "nyms_common", chance = 1500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "nyms_uncommon", chance = 2000000}
			},
			lootChance = 6000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermid,swordsmanmid,pikemanmaster,tkamaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(nym_spellweaver_bunker, "nym_spellweaver_bunker")
