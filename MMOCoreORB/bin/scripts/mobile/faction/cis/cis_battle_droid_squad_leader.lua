cis_battle_droid_squad_leader = Creature:new {
objectName = "@mob/creature_names:cis_battle_droid",
customName = "A Battle Droid Squad Leader",
mobType = MOB_ANDROID,
socialGroup = "rebel",
faction = "rebel",
level = 17,
chanceHit = 0.32,
damageMin = 160,
damageMax = 170,
baseXp = 1102,
baseHAM = 3500,
baseHAMmax = 4300,
armor = 0,
resists = {15,15,15,15,15,15,15,15,-1},
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
creatureBitmask = PACK,
optionsBitmask = AIENABLED,
diet = HERBIVORE,

templates = {"object/mobile/battle_droid_red.iff"},
lootGroups = {
	{
		groups = {
			{group = "noob_weapons", chance = 10000000},
		},
		lootChance = 5000000,
	},
},

--attacks = merge(brawlermaster,marksmanmaster)

	primaryWeapon = "battle_droid_weapons",
	secondaryWeapon = "none",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/battle_droid",
	personalityStf = "@hireling/hireling_military",
	primaryAttacks = "defaultdroidrangedattack",
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(cis_battle_droid_squad_leader, "cis_battle_droid_squad_leader")
