
object_tangible_loot_loot_schematic_bounty_hunter_chest_plate_schematic = object_tangible_loot_loot_schematic_shared_bounty_hunter_chest_plate_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_armor_bounty_hunter_chest_plate.iff",
	targetUseCount = 5
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_bounty_hunter_chest_plate_schematic, "object/tangible/loot/loot_schematic/bounty_hunter_chest_plate_schematic.iff")
