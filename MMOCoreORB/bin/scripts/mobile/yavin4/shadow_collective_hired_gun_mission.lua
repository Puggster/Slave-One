shadow_collective_hired_gun_mission = Creature:new {
	customName = "a Shadow Collective hired gun",
	mobType = MOB_NPC,
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "shadow_collective",
	level = 161,
	chanceHit = 4,
	damageMin = 970,
	damageMax = 1250,
	baseXp = 22424,
	baseHAM = 25000,
	baseHAMmax = 32000,
	armor = 2,
	resists = {55,50,45,40,40,40,40,10,-1},
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
			lootChance = 1500000
		},
		{
			groups = {
				{group = "powerplants", chance = 1000000},
				{group = "lighting_junk", chance = 3000000},
				{group = "jewelry_exp_common", chance = 3000000},
				{group = "jewelry_assem_common", chance = 3000000},

			},
			lootChance = 1000000
		}
	},

	primaryWeapon = "pistoleer_weapons",
	secondaryWeapon = "boba_fett_weapons",
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	primaryAttacks = merge(pistoleermaster,carbineermaster,bountyhuntermaster),
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(shadow_collective_hired_gun_mission, "shadow_collective_hired_gun_mission")
