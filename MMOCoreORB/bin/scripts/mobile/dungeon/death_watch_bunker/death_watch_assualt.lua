death_watch_assualt = Creature:new {
	objectName = "@mob/creature_names:death_watch_elite_ranged",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 17.25,
	damageMin = 2240,
	damageMax = 3200,
	baseXp = 22314,
	baseHAM = 45000,
	baseHAMmax = 57142,
	armor = 2,
	resists = {75,50,75,75,75,50,50,30,120},
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
	scale = 1.00,

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
		lootChance = 2500000
		},
		{
			groups = {
				{group = "death_watch_bunker_commoners",   chance = 2500000},
				{group = "death_watch_weapon_components",   chance = 2500000},
				{group = "powerplants",   chance = 5000000},
			},
			lootChance = 5000000
		},
	},

	primaryWeapon = "assault_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(carbineermaster,mastermarksman),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(death_watch_assualt,"death_watch_assualt")
