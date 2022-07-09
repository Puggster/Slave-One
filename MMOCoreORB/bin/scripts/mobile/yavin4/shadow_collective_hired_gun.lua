shadow_collective_hired_gun = Creature:new {
	customName = "a Shadow Collective hired gun",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	level = 161,
	chanceHit = 4,
	damageMin = 970,
	damageMax = 1350,
	baseXp = 22424,
	baseHAM = 39000,
	baseHAMmax = 43571,
	armor = 2,
	resists = {55,60,55,60,70,70,70,20,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_bountyhunter_trainer_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "noob_weapons", chance = 3000000},
				{group = "armor_attachments", chance = 3500000},
				{group = "clothing_attachments", chance = 3500000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "powerplants", chance = 10000000},
			},
			lootChance = 1500000
		}
	},

	primaryWeapon = "pistoleer_weapons",
	secondaryWeapon = "boba_fett_weapons",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	primaryAttacks = merge(pistoleermaster,carbineermaster,bountyhuntermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_hired_gun, "shadow_collective_hired_gun")
