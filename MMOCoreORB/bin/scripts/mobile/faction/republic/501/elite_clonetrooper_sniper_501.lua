elite_clonetrooper_sniper_501 = Creature:new {
	objectName = "@mob/creature_names:elite_clonetrooper_sniper_501",
	mobType = MOB_NPC,
	randomNameType = NAME_SWAMPTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 224,
	chanceHit = 0.36,
	damageMin = 250,
	damageMax = 260,
	baseXp = 2637,
	baseHAM = 68000,
	baseHAMmax = 103000,
	armor = 2,
	resists = {70,70,40,70,70,70,70,-1,-1},
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
	diet = HERBIVORE,
	scale = 1.25,

	templates = {
   "object/mobile/dressed_clonetrooper_blue_m.iff",
   --"object/mobile/dressed_scout_trooper_white_white.iff",
   "object/mobile/dressed_clonetrooper_blue_nh_m.iff"
	},
	lootGroups = {
		{
			groups = {
			{group = "clothing_attachments", chance = 2500000},
			{group = "armor_attachments", chance = 2500000},
			{group = "noob_weapons", chance = 5000000}
			}
		}
	},

	primaryWeapon = "clonetrooper_rifle_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",
	primaryAttacks = merge(riflemanmaster,brawlermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(elite_clonetrooper_sniper_501, "elite_clonetrooper_sniper_501")
