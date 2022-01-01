
object_tangible_loot_loot_schematic_acid_sword_schematic = object_tangible_loot_loot_schematic_shared_acid_sword_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/sword_acid.iff",
	targetUseCount = 3
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_acid_sword_schematic, "object/tangible/loot/loot_schematic/acid_sword_schematic.iff")
