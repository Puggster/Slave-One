nym_sniper_mission = Creature:new {
	customName = "Force-wielding Nym's Sniper",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	level = 131,
	chanceHit = 0.75,
	damageMin = 555,
	damageMax = 820,
	baseXp = 7761,
	baseHAM = 12000,
	baseHAMmax = 45000,
	armor = 1,
	resists = {95,95,70,100,100,60,60,60,5},
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

	primaryWeapon = "st_sniper_weapons",
	secondaryWeapon = "unarmed",
	reactionStf = "@npc_reaction/slang",
	primaryAttacks = merge(forcewielder,riflemanmaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nym_sniper_mission, "nym_sniper_mission")
