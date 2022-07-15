death_watch_sbd = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "a reprogrammed Security Droid",
	mobType = MOB_ANDROID,
	socialGroup = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 18,
	damageMin = 1000,
	damageMax = 1500,
	baseXp = 19000,
	baseHAM = 99000,
	baseHAMmax = 103571,
	armor = 3,
	resists = {75,65,90,90,70,55,60,45,110},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
      		lootChance = 500000
    	},
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(death_watch_sbd, "death_watch_sbd")
