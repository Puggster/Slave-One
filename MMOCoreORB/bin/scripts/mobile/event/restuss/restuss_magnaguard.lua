restuss_magnaguard = Creature:new {
objectName = "@mob/creature_names:cis_magnaguard",
mobType = MOB_ANDROID,
customName = "A Magnaguard",
socialGroup = "self",
faction = "rebel",
level = 200,
chanceHit = 3,
damageMin = 645,
damageMax = 1250,
baseXp = 45,
baseHAM = 41060,
baseHAMmax = 43520,
armor = 1,
resists = {45,45,45,45,45,45,45,45,45},
meatType = "",
meatAmount = 0,
hideType = "",
hideAmount = 0,
boneType = "",
boneAmount = 0,
milk = 0,
tamingChance = 0,
ferocity = 0,
pvpBitmask = ATTACKABLE,
creatureBitmask = PACK + KILLER,
optionsBitmask = AIENABLED + FACTIONAGGRO,
diet = HERBIVORE,

		templates = {
			"object/mobile/magnaguard.iff"
		},
		lootGroups = {
			{
				groups = {
					{group = "restuss_cis", chance = 10000000}
				},
				lootChance = 10000000
			},
			{
				groups = {
					{group = "jewelry_restuss", chance = 10000000}
				},
				lootChance = 1000000
			},
			{
				groups = {
					{group = "powerplants", chance = 10000000}
				},
				lootChance = 2000000
			}
		},
		weapons = {"magnaguard_weapons"},
		conversationTemplate = "",
		attacks = merge(lightsabermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(restuss_magnaguard, "restuss_magnaguard")
