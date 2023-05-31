
object_draft_schematic_structure_vipbunker_house_schem = object_draft_schematic_structure_shared_vipbunker_house_schem:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Deed for: VIP Bunker",

	craftingToolTab = 1024, -- (See DraftSchematicObjectTemplate.h)
	complexity = 14,
	size = 10,
	factoryCrateSize = 0,

	xpType = "crafting_structure_general",
	xp = 1000,

	assemblySkill = "structure_assembly",
	experimentingSkill = "structure_experimentation",
	customizationSkill = "structure_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n"},
	ingredientTitleNames = {"load_bearing_structure_and_shell", "insulation_and_covering", "foundation", "wall_sections", "power_supply_unit", "storage_space"},
	ingredientSlotType = {0, 0, 0, 2, 1, 1},
	resourceTypes = {"steel_carbonite", "ore_carbonate", "ore", "object/tangible/component/structure/shared_structural_module.iff", "object/tangible/component/structure/shared_light_power_core_unit.iff", "object/tangible/component/structure/shared_structure_small_storage_section.iff"},
	resourceQuantities = {150, 300, 300, 20, 1, 1},
	contribution = {100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/deed/player_house_deed/vipbunker_room_deed.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_structure_vipbunker_house_schem, "object/draft_schematic/structure/vipbunker_house_schem.iff")
