
object_tangible_loot_loot_schematic_polearm_magnaguard_schematic = object_tangible_loot_loot_schematic_shared_polearm_magnaguard_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/lance_magnaguard.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_polearm_magnaguard_schematic, "object/tangible/loot/loot_schematic/polearm_magnaguard_schematic.iff")
