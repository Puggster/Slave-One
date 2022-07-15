tradefed_selonian = Creature:new {
	--objectName = "@mob/creature_names:fbase_cis_commando_extreme",
	customName = "a Selonian General (Trade Federation)",
	mobType = MOB_ANDROID,
	socialGroup = "trade_federation",
	faction = "trade_federation",
	level = 300,
	chanceHit = 10.36,
	damageMin = 1490,
	damageMax = 2300,
	baseXp = 22730,
	baseHAM = 60000,
	baseHAMmax = 68571,
	armor = 2,
	resists = {150,140,15,30,30,30,30,120,130}, --kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = AGGRESSIVE + PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_selonian_m_03.iff",
		"object/mobile/dressed_selonian_m_06.iff",
		"object/mobile/dressed_selonian_m_08.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3000000},
				{group = "wearables_common", chance = 2000000},
				{group = "heavy_weapons", chance = 1000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "vibrovis_g", chance = 1500000}
			},
			lootChance = 7000000
		}
	},

	primaryWeapon = "pikeman_weapons",
	secondaryWeapon = "unarmed",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	primaryAttacks = merge(brawlermaster,marksmanmaster,pikemanmaster),
	secondaryAttacks = {{"creatureareapoison",""},{"strongpoison",""}},
}

CreatureTemplates:addCreatureTemplate(tradefed_selonian, "tradefed_selonian")
