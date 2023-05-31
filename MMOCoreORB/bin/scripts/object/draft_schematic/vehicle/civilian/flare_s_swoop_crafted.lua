
object_draft_schematic_vehicle_civilian_flare_s_swoop_crafted = object_draft_schematic_vehicle_civilian_shared_flare_s_swoop_crafted:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Flare-S swoop",

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
	resourceQuantities = {1525, 4125, 2},
	contribution = {100, 100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/flare_s_swoop.iff",

	additionalTemplates = {
		"object/tangible/deed/vehicle_deed/shared_flare_s_swoop.iff",
	}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_flare_s_swoop_crafted, "object/draft_schematic/vehicle/civilian/flare_s_swoop_crafted.iff")
