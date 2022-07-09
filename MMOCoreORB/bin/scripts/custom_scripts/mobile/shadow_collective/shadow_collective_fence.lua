shadow_collective_fence = Creature:new {
	--objectName = "@mob/creature_names:shadow_collective_thug",
	customName = "a Shadow Collective fence",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 275,
	chanceHit = 2.7,
	damageMin = 395,
	damageMax = 937,
	baseXp = 17207,
	baseHAM = 102000,
	baseHAMmax = 125000,
	armor = 1,
	resists = {50,50,50,90,30,30,30,10,110},
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

  templates =
	{
	--"object/mobile/dressed_criminal_organized_human_female_01.iff",
	"object/mobile/dressed_criminal_organized_human_male_01.iff",

},


	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 5000000},
				{group = "xj6_speeder_schem", chance = 3000000},
				{group = "stap_speeder_schem", chance = 1000000},
				{group = "dath_schems", chance = 1000000},
			},
			lootChance = 3300000,
		},
		{
			groups = {
				{group = "noob_weapons", chance = 7000000},
				{group = "underworld_common", chance = 3000000},
			},
			lootChance = 80000000,
		},

	},

	primaryWeapon = "onehand_stun_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(fencermaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_fence, "shadow_collective_fence")
