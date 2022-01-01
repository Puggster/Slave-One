
object_draft_schematic_weapon_loot_poisonspike = object_draft_schematic_weapon_shared_loot_poisonspike:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Poisonspike Schematic",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 35,
   size = 4,

   xpType = "crafting_weapons_general",
   xp = 250,

   assemblySkill = "weapon_assembly",
   experimentingSkill = "weapon_experimentation",
   customizationSkill = "weapon_customization",

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"lance_shaft", "vibro_unit_and_power_cell_brackets", "grip", "vibration_generator", "blade_vibrovis"},
   ingredientSlotType = {0, 0, 0, 1, 3},
   resourceTypes = {"steel_carbonite", "copper_polysteel", "metal", "object/tangible/component/weapon/shared_vibro_unit.iff", "object/tangible/component/weapon/shared_vibrovis.iff"},
   resourceQuantities = {50, 40, 20, 2, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/polearm/ep3_loot_poisonspike.iff",

   additionalTemplates = {
             },

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_loot_poisonspike, "object/draft_schematic/weapon/loot_poisonspike.iff")
