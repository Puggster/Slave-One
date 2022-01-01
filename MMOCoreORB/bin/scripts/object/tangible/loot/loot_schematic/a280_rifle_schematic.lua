
object_tangible_loot_loot_schematic_a280_rifle_schematic = object_tangible_loot_loot_schematic_shared_a280_rifle_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/rifle_a280.iff",
	targetUseCount = 3
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_a280_rifle_schematic, "object/tangible/loot/loot_schematic/a280_rifle_schematic.iff")
