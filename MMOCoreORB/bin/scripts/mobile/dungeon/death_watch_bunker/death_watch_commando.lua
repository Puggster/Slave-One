death_watch_commando = Creature:new {
	objectName = "@mob/creature_names:death_watch_elite_commando",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 17.50,
	damageMin = 1020,
	damageMax = 1550,
	baseXp = 16794,
	baseHAM = 80000,
	baseHAMmax = 85714,
	armor = 2,
	resists = {80,60,60,60,45,45,60,45,120},
		-- kin,eng,elect,stun,blast,heat,cold,acid,lightsaber
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
	scale = 1.25,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners",   chance = 1500000},
				{group = "death_watch_bunker_ingredient_protective",  chance = 500000},
				{group = "death_watch_bunker_ingredient_binary",  chance = 500000},
				{group = "krayt_tissue_rare", chance = 1500000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "armor_attachments", chance = 3000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "death_watch_bunker_commoners",   chance = 5000000},
				{group = "death_watch_weapon_components",   chance = 5000000},
			},
			lootChance = 2000000
		},
	},

	primaryWeapon = "firebat_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(marksmanmaster,brawlermaster,commandomaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(death_watch_commando, "death_watch_commando")
