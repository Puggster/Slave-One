
object_tangible_loot_loot_schematic_smc_backpack_schematic = object_tangible_loot_loot_schematic_shared_smc_backpack_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_singing_mountain_clan_backpack.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_smc_backpack_schematic, "object/tangible/loot/loot_schematic/smc_backpack_schematic.iff")
