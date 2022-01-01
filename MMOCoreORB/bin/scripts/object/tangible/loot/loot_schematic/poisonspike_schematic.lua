
object_tangible_loot_loot_schematic_poisonspike_schematic = object_tangible_loot_loot_schematic_shared_poisonspike_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/loot_poisonspike.iff",
	targetUseCount = 3
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_poisonspike_schematic, "object/tangible/loot/loot_schematic/poisonspike_schematic.iff")
