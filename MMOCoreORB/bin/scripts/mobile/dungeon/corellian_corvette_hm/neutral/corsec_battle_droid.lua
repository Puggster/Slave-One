corsec_battle_droid_hm = Creature:new {
  objectName = "@mob/creature_names:rebel_battle_droid",
  mobType = MOB_ANDROID,
  socialGroup = "corsec",
  faction = "corsec",
  level = 134,
  chanceHit = 5.5,
  damageMin = 1192,
  damageMax = 1950,
  baseXp = 18918,
  baseHAM = 84000,
  baseHAMmax = 102000,
  armor = 2,
  resists = {75,75,100,60,100,25,40,85,25},
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
  scale = 1.15,

  templates = {
    "object/mobile/battle_droid.iff"
  },
  lootGroups = {
  },
  weapons = {"battle_droid_weapons"},
  defaultAttack = "defaultdroidrangedattack",
  attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(corsec_battle_droid_hm, "corsec_battle_droid_hm")
