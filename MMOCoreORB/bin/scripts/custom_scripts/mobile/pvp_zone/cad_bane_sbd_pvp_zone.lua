cad_bane_sbd_pvp_zone = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "a reprogrammed Super Battle Droid",
	mobType = MOB_ANDROID,
	socialGroup = "shadow_collective",
	faction = "",
	level = 300,
	chanceHit = 18,
	damageMin = 1200,
	damageMax = 1600,
	baseXp = 19000,
	baseHAM = 27000,
	baseHAMmax = 32142,
	armor = 2,
	resists = {70,60,70,70,70,45,50,30,105},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
      		groups = {
        		{group = "armor_attachments", chance = 5000000},
        		{group = "clothing_attachments", chance = 5000000}
      		},
      		lootChance = 2000000
    	},
			{
			groups = {
				{group = "jewelry_restuss", chance = 5000000},
				{group = "restuss_cis", chance = 5000000}
			},
			lootChance = 4500000
	},
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(cad_bane_sbd_pvp_zone, "cad_bane_sbd_pvp_zone")
