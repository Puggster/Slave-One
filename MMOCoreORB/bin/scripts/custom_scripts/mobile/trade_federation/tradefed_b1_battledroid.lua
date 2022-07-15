tradefed_b1_battledroid = Creature:new {
	--objectName = "@mob/creature_names:fbase_cis_commando_extreme",
	customName = "B1 Battledroid (Trade Federation)",
	mobType = MOB_ANDROID,
	socialGroup = "trade_federation",
	faction = "trade_federation",
	level = 300,
	chanceHit = 28.6,
	damageMin = 925,
	damageMax = 1460,
	baseXp = 17600,
	baseHAM = 36000,
	baseHAMmax = 42857,
	armor = 1,
	resists = {70,70,50,50,50,190,190,-1,130}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/death_watch_battle_droid.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 6000000},
				{group = "weapons_all", chance = 1250000},
				{group = "armor_all", chance = 1250000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "wearables_all", chance = 1000000}
			},
			lootChance = 7000000
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(commandomaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(tradefed_b1_battledroid, "tradefed_b1_battledroid")
