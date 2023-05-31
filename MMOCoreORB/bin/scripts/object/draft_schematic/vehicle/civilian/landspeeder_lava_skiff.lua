
object_draft_schematic_vehicle_civilian_landspeeder_lava_skiff = object_draft_schematic_vehicle_civilian_shared_landspeeder_lava_skiff:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Mustafar Lava Skiff",

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
	resourceQuantities = {1125, 3125, 1},
	contribution = {100, 100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/landspeeder_lava_skiff_deed.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_landspeeder_lava_skiff, "object/draft_schematic/vehicle/civilian/landspeeder_lava_skiff.iff")
