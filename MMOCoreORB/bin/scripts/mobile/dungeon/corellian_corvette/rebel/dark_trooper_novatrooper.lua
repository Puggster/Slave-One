dark_trooper_novatrooper = Creature:new {
objectName = "@mob/creature_names:clonetrooper_commando",
randomNameType = NAME_DARKTROOPER,
randomNameTag = true,
mobType = MOB_NPC,
socialGroup = "imperial",
faction = "imperial",
level = 300,
chanceHit = 18,
damageMin = 1200,
damageMax = 2300,
baseXp = 19000,
baseHAM = 230000,
baseHAMmax = 230000,
armor = 2,
resists = {85,95,100,60,100,25,40,85,-1},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
diet = NONE,

templates = {"object/mobile/dressed_clone_commando_m.iff"},

lootGroups = {
	{
		groups = {
			{group = "armor_attachments", chance = 5000000},
			{group = "clothing_attachments", chance = 5000000}

		},
		lootChance = 4000000
	}
	},
	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "clonetrooper_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",
	
	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = merge(riflemanmaster,carbineermaster),
	secondaryAttacks = merge(brawlernovice,brawlermaster),
}

CreatureTemplates:addCreatureTemplate(dark_trooper_novatrooper, "dark_trooper_novatrooper")
