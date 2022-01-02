ancient_kimogila = Creature:new {
	--objectName = "@mob/creature_names:giant_dune_kimogila",
	mobType = MOB_CARNIVORE,
	customName = "an ancient Kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 301,
	chanceHit = 30.0,
	damageMin = 2270,
	damageMax = 2850,
	baseXp = 58549,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 3,
	resists = {190,190,195,195,190,190,45,45,25},
	meatType = "meat_carnivore",
	meatAmount = 1900,
	hideType = "hide_bristley",
	hideAmount = 1900,
	boneType = "bone_mammal",
	boneAmount = 1900,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.80,

	templates = {"object/mobile/giant_dune_kimogila.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 8 },
	scale = 1.6,
	lootGroups ={
			{
						groups = {
						{group = "kimogila_rare", chance = 6500000},
						{group = "kimogila_common", chance = 3500000},
				},
				lootChance = 10000000
			},
			{
						groups = {
						{group = "giant_dune_kimo_common", chance = 6500000},
						{group = "kimogila_rare", chance = 3500000},
				},
				lootChance = 10000000
			},
			{
						groups = {
						{group = "giant_dune_kimo_common", chance = 4000000},
						{group = "kimogila_common", chance = 3000000},
						{group = "kimogila_rare", chance = 3000000},

				},
				lootChance = 10000000
			},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(ancient_kimogila, "ancient_kimogila")
