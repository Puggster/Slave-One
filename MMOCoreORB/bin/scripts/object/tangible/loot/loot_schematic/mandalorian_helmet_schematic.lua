
object_tangible_loot_loot_schematic_mandalorian_helmet_schematic = object_tangible_loot_loot_schematic_shared_mandalorian_helmet_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_armor_mandalorian_helmet.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_mandalorian_helmet_schematic, "object/tangible/loot/loot_schematic/mandalorian_helmet_schematic.iff")
