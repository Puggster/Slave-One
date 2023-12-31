object_draft_schematic_item_theme_park_wod_crafting_template = object_draft_schematic_item_theme_park_shared_wod_crafting_template:new {
	templateType = DRAFTSCHEMATIC,

	customObjectName = "Allya's Holocron",

	craftingToolTab = 4096, -- (See DraftSchematicObjectTemplate.h)
	complexity = 12,
	size = 1,
	factoryCrateSize = 0,

	xpType = "crafting_general",
	xp = 36,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "general_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_item_ingredients_n", "craft_item_ingredients_n", "craft_item_ingredients_n"},
	ingredientTitleNames = {"frame", "power_source", "mechanics"},
	ingredientSlotType = {0, 0, 0},
	resourceTypes = {"steel", "gas_reactive", "copper"},
	resourceQuantities = {115, 30, 25},
	contribution = {100, 100, 100},

	targetTemplate = "object/tangible/theme_park/wod/wod_crafting_alter_key.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_item_theme_park_wod_crafting_template, "object/draft_schematic/item/theme_park/wod_crafting_template.iff")
