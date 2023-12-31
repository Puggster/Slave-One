

object_draft_schematic_structure_jabbas_house_schem = object_draft_schematic_structure_shared_jabbas_house_schem:new {

   templateType = DRAFTSCHEMATIC,

	craftingToolTab = 1024, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 14,
	factoryCrateSize = 0,

	xpType = "crafting_structure_general",
	xp = 10000,

	assemblySkill = "structure_assembly",
	experimentingSkill = "structure_experimentation",
	customizationSkill = "structure_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n"},
	ingredientTitleNames = {"load_bearing_structure_and_shell", "insulation_and_covering", "foundation", "wall_sections", "power_supply_unit", "storage_space"},
	ingredientSlotType = {0, 0, 0, 2, 1, 1},
	resourceTypes = {"metal", "ore", "ore", "object/tangible/component/structure/shared_wall_module.iff", "object/tangible/component/structure/shared_power_core_unit.iff", "object/tangible/component/structure/shared_structure_storage_section.iff"},
	resourceQuantities = {1500, 2500, 400, 10, 1, 2},
	contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/deed/player_house_deed/jabbas_house_deed.iff",

   additionalTemplates = {}

}
ObjectTemplates:addTemplate(object_draft_schematic_structure_jabbas_house_schem, "object/draft_schematic/structure/jabbas_house_schem.iff")
