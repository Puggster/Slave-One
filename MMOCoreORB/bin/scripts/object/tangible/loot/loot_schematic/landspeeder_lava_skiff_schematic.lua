
object_tangible_loot_loot_schematic_landspeeder_lava_skiff_schematic = object_tangible_loot_loot_schematic_shared_landspeeder_lava_skiff_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_artisan_master",
	targetDraftSchematic = "object/draft_schematic/vehicle/civilian/landspeeder_lava_skiff.iff",
	targetUseCount = 5
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_landspeeder_lava_skiff_schematic, "object/tangible/loot/loot_schematic/landspeeder_lava_skiff_schematic.iff")
