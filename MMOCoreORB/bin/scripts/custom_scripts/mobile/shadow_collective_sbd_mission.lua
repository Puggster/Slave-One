shadow_collective_sbd_mission = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "a reprogrammed Security Droid",
	socialGroup = "shadow_collective",
	faction = "",
	level = 200,
	chanceHit = 18,
	damageMin = 1000,
	damageMax = 1500,
	baseXp = 19000,
	baseHAM = 45000,
	baseHAMmax = 75000,
	armor = 3,
	resists = {90,90,90,90,90,35,50,35,110},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	scale = 1.40,

	templates = {
	--"object/mobile/ep3/general_grievous.iff",
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"
		},
	lootGroups = {
		{
      		groups = {
        		{group = "armor_attachments", chance = 5000000},
        		{group = "clothing_attachments", chance = 5000000}

      		},
      		lootChance = 5000000
    	},
			{
				groups = {
					{group = "powerplants", chance = 1000000},
					{group = "lighting_junk", chance = 3000000},
					{group = "jewelry_exp_common", chance = 3000000},
					{group = "jewelry_assem_common", chance = 3000000},

				},
				lootChance = 2000000
			}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(shadow_collective_sbd_mission, "shadow_collective_sbd_mission")
