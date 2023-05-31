

object_draft_schematic_vehicle_civilian_xj2_speeder = object_draft_schematic_vehicle_civilian_shared_xj2_speeder:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "XJ-2 Airspeeder",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 25,
	size = 1,

	xpType = "crafting_general",
	xp = 1800,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_item_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "structural_frame", "power_plant"},
	ingredientSlotType = {0, 0, 1},
	resourceTypes = {"metal_nonferrous", "metal_ferrous", "object/tangible/component/vehicle/shared_veh_power_plant.iff"},
	resourceQuantities = {1430, 3325, 1},
	contribution = {100, 100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/vehicle_deed_organa_speeder.iff",

	additionalTemplates = {
		"object/tangible/deed/vehicle_deed/vehicle_deed_organa_speeder.iff",
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_xj2_speeder, "object/draft_schematic/vehicle/civilian/xj2_speeder.iff")
