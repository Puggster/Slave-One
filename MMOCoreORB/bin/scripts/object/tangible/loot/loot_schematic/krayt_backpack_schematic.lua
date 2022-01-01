
object_tangible_loot_loot_schematic_krayt_backpack_schematic = object_tangible_loot_loot_schematic_shared_krayt_backpack_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_backpack_krayt_skull.iff",
	targetUseCount = 3
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_krayt_backpack_schematic, "object/tangible/loot/loot_schematic/krayt_backpack_schematic.iff")
