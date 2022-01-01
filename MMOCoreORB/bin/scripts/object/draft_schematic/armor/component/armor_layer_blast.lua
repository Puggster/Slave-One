--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_draft_schematic_armor_component_armor_layer_blast = object_draft_schematic_armor_component_shared_armor_layer_blast:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Blast Protection Armor Layer",

	craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
	complexity = 25,
	size = 2,
	factoryCrateSize = 100,
	factoryCrateType = "object/factory/factory_crate_generic_items.iff",

	xpType = "crafting_clothing_armor",
	xp = 100,

	assemblySkill = "armor_assembly",
	experimentingSkill = "armor_experimentation",
	customizationSkill = "armor_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n", "craft_armor_ingredients_n"},
	ingredientTitleNames = {"armor_layer_frame", "defensive_layer_microlattice", "shockwave_repulsion_compound", "blast_harmonics_absorbtion_medium"},
	ingredientSlotType = {0, 0, 0, 0},
	resourceTypes = {"metal_ferrous", "petrochem_inert_polymer", "gemstone_armophous", "ore_intrusive"},
	resourceQuantities = {25, 10, 8, 3},
	contribution = {80, 80, 80, 80},

	targetTemplate = "object/tangible/component/armor/armor_layer_blast.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_armor_component_armor_layer_blast, "object/draft_schematic/armor/component/armor_layer_blast.iff")
