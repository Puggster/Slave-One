nilyahin_tribunal = Creature:new {
 customName = "Ni'lyahin Tribunal",
 randomNameType = NAME_GENERIC,
 mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 157,
	chanceHit = 19,
	damageMin = 1245,
	damageMax = 2200,
	baseXp = 20948,
	baseHAM = 350000,
	baseHAMmax = 350000,
	armor = 3,
	resists = {80,95,80,95,95,95,80,95,185},
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
	scale = 1.15,

	templates = {"object/mobile/king_terak.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tfa_paintings", chance = 100000},
				{group = "dath_schems", chance = 3500000},
				{group = "skill_buffs", chance = 3000000},
				{group = "weapon_components", chance = 3000000},
				{group = "blacksun_rare", chance = 400000}
			},
			lootChance = 10000000
		},
    {
      groups = {
        {group = "stap_speeder_schem", chance = 5000000},
        {group = "powerplants", chance = 5000000},
      },
      lootChance = 5000000
    },
    {
      groups = {
        {group = "skill_buffs", chance = 5000000},
        {group = "underworld_common", chance = 5000000},
      },
      lootChance = 5000000
    },
	},
	primaryWeapon = "dark_trooper_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(nilyahin_tribunal, "nilyahin_tribunal")
