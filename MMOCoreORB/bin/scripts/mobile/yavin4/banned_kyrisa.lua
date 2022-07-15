banned_kyrisa = Creature:new {
	customName = "Kyrisa (a banished Nightsister)",
	--need custom name in tre
	mobType = MOB_NPC,
	socialGroup = "shadow_collective",
	faction = "",
	level = 369,
	chanceHit = 30,
	damageMin = 4000,
	damageMax = 5500,
	baseXp = 45000,
	baseHAM = 1106000,
	baseHAMmax = 1357142,
	armor = 3,
	resists = {75,55,75,90,90,55,90,55,160},
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
	creatureBitmask = STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/kyrisa.iff"},
	lootGroups = {
		{
			groups = {
				{group = "krayt_pearls", chance = 2500000},
				{group = "holocron_dark", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 2500000},
				{group = "holocron_dark", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 2500000},
				{group = "holocron_dark", chance = 2500000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 7000000
		},
		{
			groups = {
			{group = "nightsister_cargo_pocket_g", chance = 8000000},
			{group = "jewelry_kyrisa", chance = 2000000},
			},
			lootChance = 8000000
		}
	},

	primaryWeapon = "dark_jedi_gen4_pike",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",

	primaryAttacks = merge(lightsabermaster,forcepowermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(banned_kyrisa, "banned_kyrisa")
