

object_tangible_loot_loot_schematic_jabbas_house_loot_schem = object_tangible_loot_loot_schematic_shared_jabbas_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/jabbas_house_schem.iff",
	targetUseCount = 1,

}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_jabbas_house_loot_schem, "object/tangible/loot/loot_schematic/jabbas_house_loot_schem.iff")
