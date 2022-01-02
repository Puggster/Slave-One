corsec_super_battle_droid_hm = Creature:new {
  objectName = "@mob/creature_names:rebel_super_battle_droid",
  socialGroup = "corsec",
  faction = "corsec",
  level = 300,
  chanceHit = 18,
  damageMin = 1800,
  damageMax = 3450,
  baseXp = 28500,
  baseHAM = 345000,
  baseHAMmax = 345000,
  armor = 2,
  resists = {85,95,100,60,100,25,40,85,25},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
    "object/mobile/super_battle_droid.iff",
  },
  lootGroups = {
    {
      groups = {
        {group = "armor_attachments", chance = 5000000},
        {group = "clothing_attachments", chance = 5000000}
      },
      lootChance = 4000000
    },
    {
      groups = {
        {group = "junk", chance = 4000000},
        {group = "powerplants", chance = 4000000},
        {group = "hm_vett_vehicle_schems", chance = 2000000},
        },
      },
  },
  conversationTemplate = "",
  defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
  defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(corsec_super_battle_droid_hm, "corsec_super_battle_droid_hm")
