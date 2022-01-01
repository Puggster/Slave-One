object_draft_schematic_clothing_clothing_backpack_krayt_skull = object_draft_schematic_clothing_shared_clothing_backpack_krayt_skull:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Krayt Skull Backpack",

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 23,
   size = 2,
   factoryCrateSize = 0,

   xpType = "crafting_clothing_general",
   xp = 136,

   assemblySkill = "clothing_assembly",
   experimentingSkill = "clothing_experimentation",
   customizationSkill = "clothing_customization",

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"primary_pocket", "secondary_pocket", "strap_pad", "strap_adjustment"},
   ingredientSlotType = {1, 1, 0, 0},
   resourceTypes = {"object/tangible/component/clothing/shared_krayt_cargo_pocket.iff", "object/tangible/component/clothing/shared_krayt_cargo_pocket.iff", "hide_leathery_tatooine", "metal"},
   resourceQuantities = {1, 1, 50, 35},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/backpack/backpack_krayt_skull.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_backpack_krayt_skull, "object/draft_schematic/clothing/clothing_backpack_krayt_skull.iff")
