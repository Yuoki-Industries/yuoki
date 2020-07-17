data:extend(
{	
	--[[
	{
		type = "recipe",
		name = "y-conductive-wire-1-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-orange-stuff", 1}, {"copper-plate", 1}, }, 
		result = "y-conductive-wire-1",
		result_count = 4,
		order="p-w-a",	
		subgroup = "y_parts_e",
	},	
	]]
	{
		type = "recipe",
		name = "y-conductive-coil-1-recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-orange-stuff", 4}, {"y-refined-yres2", 2}}, 
		result = "y-conductive-coil-1",
		result_count = 3,
		order="p-w-b",	
		subgroup = "y_parts_e",
	},			
	
	{
		type = "recipe",
		name = "y_dotzetron_recipe",
		--category = "yuoki-formpress-recipe",		
		--category = "crafting-with-fluid",		
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-refined-yres2", 1}, {"y-crush-yres1", 3},}, 		
		result = "y_dotzetron",
		result_count = 3,
		order="p-c-6",	
		subgroup = "y_parts_e",		
	},	
	
	{
		type = "recipe",
		name = "y_chip_plate_recipe",
		--category = "yuoki-formpress-recipe",		
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-refined-yres2", 1}, {"y-richdust", 3}, }, 
		result = "y_chip_plate",
		result_count = 1,
		order="p-c-0",	
		subgroup = "y_parts_e",		
	},	
	
	{
		type = "recipe",
		name = "y-chip1-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y_chip_plate", 1}, {"y-orange-stuff", 2}, }, 
		result = "y-chip-1",
		result_count = 1,
		order="p-c-a",	
		subgroup = "y_parts_e",
	},	
	{
		type = "recipe",
		name = "y-chip2-recipe",
		 icon_size = 32,  icon_size = 32, icon =   "__Yuoki__/graphics/gfx/chip2-icon.png",
		energy_required = 3,
		enabled = "true",
		ingredients = {{"y_chip_plate", 2}, {"y_dotzetron", 2}, {"y-orange-stuff", 4},}, 
		results = { {type="item", name="y-chip-2", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },			
		main_product="y-chip-2",
		order="p-c-b",	
		subgroup = "y_parts_e",
	},	

	{
		type = "recipe",
		name = "yi_magnetron_recipe",
		 icon_size = 32,  icon_size = 32, icon =   "__Yuoki__/graphics/icons/magnetron.png",
		energy_required = 1.5,
		enabled = "true",
		ingredients = {{"y-pure-copper", 2}, {"y-heat-pipe", 1}, {"y-richdust", 3}, }, 
		results = { {type="item", name="yi_magnetron", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },	
		main_product="yi_magnetron",		
		result_count = 1,
		order="p-c-b",	
		subgroup = "y_parts_e",
	},	

	
	-- new battery-concept from 215-0101
	-- basic-cell + combine cells
	
	-- basic cell empty
	{
		type = "recipe",
		name = "y-battery-singleuse1-recipe",		
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-crush-yres2", 3}, {"coal", 1}, {"iron-plate", 1} }, 
		result = "y-battery-single-use1",
		result_count = 3,
		order="p-b-a",	
	},	
	-- loaded cell
	{
		type = "recipe",
		name = "y-battery-singleuse2-recipe",		
		energy_required = 4.0,
		enabled = "true",		
		ingredients = {{"y-battery-single-use1", 1},}, 
		result = "y-battery-single-use2",
		result_count = 1,
		order="p-b-b",	
	},		
	-- block loaded cells
	{
		type = "recipe",
		name = "y-battery-single-use3-recipe",
		 icon_size = 32,  icon_size = 32, icon =   "__Yuoki__/graphics/gfx/battery_3.png",
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-battery-single-use2", 2}, {"y-conductive-wire-1", 1 },}, 
		results = { {type="item", name="y-battery-single-use3", amount=1,},},
		main_product="y-battery-single-use3",
		order="p-b-c",	
		subgroup = "y-electric",
	},		
	
	
	--single-use-mod-batterys to standard-batterys
	{
		type = "recipe",
		name = "y-battery-rip1-recipe",				
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-battery-single-use1", 10},{"y_rwtechsign", 1},}, 
		result = "battery",
		result_count = 5,
	},	
	
	-- blocked capaciter
	{
		type = "recipe",
		name = "y_blocked_capa_recipe",
		 icon_size = 32,  icon_size = 32, icon =   "__Yuoki__/graphics/gfx/scd-icon.png",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-battery-single-use3", 3}, {"y-pure-copper", 3 }, {"y-chip-1", 1 },}, 
		results = { {type="item", name="y_blocked_capa", amount=1,}, {type="item", name="y_rwtechsign", amount=1,},},
		order="p-b-d",	
		subgroup = "y-electric",
	},				
	{
		type = "recipe",
		name = "y-substation-m-recipe",
		 icon_size = 32,  icon_size = 32, icon =   "__Yuoki__/graphics/icons/substation-icon.png",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"steel-plate", 14}, {"y-conductive-wire-1", 6}, {"y-chip-1", 1}, {"y-unicomp-a2", 2}, },		
		results = { {type="item", name="y-substation-m", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },
		main_product="y-substation-m",
		order="e-e-a",	
		subgroup = "y-electric",
	},	

	{
		type = "recipe",
		name = "y-substation-h-recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-substation-m", 1}, {"y-conductive-wire-1", 8}, {"y-chip-2", 4}, {"y_quantrinum_infused", 1}, {"y_rwtechsign", 3}, },
		result = "y-substation-h",
		result_count = 1,
		order="e-e-b",	
		subgroup = "y-electric",
	},	

	
	-- Tier 1 - Accumulators
	{
		type = "recipe",
		name = "y-accumulator-m-recipe",
		energy_required = 6.0, enabled = "true",
		ingredients = {{"y_blocked_capa", 3}, {"y-conductive-coil-1", 4},},
		result = "y-accumulator-m", result_count = 1,
		order="ac-1",	
		subgroup = "y-energy-2",
	},		
	-- Big Advanced Accum
	{
		type = "recipe",
		name = "y-accumulator-b-recipe",
		 icon_size = 32,  icon_size = 32, icon =   "__Yuoki__/graphics/gfx/accu_b_icon.png",
		energy_required = 8.0, enabled = "true",
		ingredients = {{"y_blocked_capa", 5}, {"y_structure_electric", 3}, {"y-conductive-coil-1", 4}, {"y-heat-pipe", 8},},
		results = { {type="item", name="y-accumulator-b", amount=1,}, {type="item", name="y_rwtechsign", amount=3,},},		
		main_product="y-accumulator-b",
		--results = { {type="item", name="y-accumulator-b", amount=1,},},	
		order="ac-3",	
		subgroup = "y-energy-2",
	},		
	
	
	-- Tier 2 - Accumulators	
	-- Medium T2
	{
		type = "recipe",
		name = "y-accumulator-mt2-recipe",
		energy_required = 6.0, enabled = "true",
		ingredients = {{"y-accumulator-m", 1}, {"y-chip-2", 2}, {"y-crystal-cnd", 2},{"y_rwtechsign", 2},},
		results = { {type="item", name="y-accumulator-m-t2", amount=1,}, {type="item", name="y_greensign", amount=1,},},		
		main_product="y-accumulator-m-t2",
		order="ac-2",	
		subgroup = "y-energy-2",
	},		
	{
		type = "recipe",
		name = "y-accumulator-bt2-recipe",
		energy_required = 8.0, enabled = "true",
		ingredients = {{"y-accumulator-b", 1}, {"y-chip-2", 4}, {"y-crystal-cnd", 3},{"y_rwtechsign", 5},},
		results = { {type="item", name="y-accumulator-b-t2", amount=1,}, {type="item", name="y_greensign", amount=3,},},		
		main_product="y-accumulator-b-t2",
		order="ac-4",	
		subgroup = "y-energy-2",
	},		
	
	-- Tier 3 - Accumulators - AQE
	{
		type = "recipe",
		name = "y-accumulator-btx-recipe",
		category="yuoki-wonder-recipe";
		energy_required = 12.0, enabled = "true",
		ingredients = {{"y_structure_element", 8}, {"y-chip-2", 4}, {"y-raw-fuelnium", 10}, {"y-quantrinum", 2}, {"y-infused-uca2", 2}, {"y_rwtechsign", 10},},
		results = { {type="item", name="y-accumulator-b-tx", amount=1,}, {type="item", name="ye_science_blue", amount=3,},},		
		main_product="y-accumulator-b-tx",		
		order="ac-5",	
		subgroup = "y-energy-2",
	},		
	-- Tier 4 - Accumulators - Crystal	
	{
		type = "recipe",
		name = "y-accumulator-crystal-m-recipe",
		category="yuoki-wonder-recipe";
		energy_required = 20.0, enabled = "true",
		ingredients = {{"y_structure_element", 12},{"y_quantrinum_infused", 2}, {"y_crystal2_combined", 20}, {"y_compensator_25", 1}, {"y_rwtechsign", 50},},
		results = { {type="item", name="y-accumulator-crystal-m", amount=1,}, {type="item", name="ye_science_blue", amount=5,},},		
		main_product="y-accumulator-crystal-m",		
		order="ac-6",	
		subgroup = "y-energy-2",
	},	

	-- Tier 1.5 - Accumulators
	{
		type = "recipe",
		name = "y-ups-flywheel-b-recipe",
		 icon_size = 32,  icon_size = 32, icon =   "__Yuoki__/graphics/gfx/accflywheel_b_icon.png",
		energy_required = 12.0, enabled = "true",
		ingredients = {{"y_blocked_capa", 4}, {"y-conductive-coil-1", 4}, {"y-basic-t1-mf", 2}, {"y-chip-1", 1},},
		results = { {type="item", name="y-ups-flywheel-b", amount=1,}, {type="item", name="y_rwtechsign", amount=1,},},							
		main_product="y-ups-flywheel-b",
		order="ac-7",	
		subgroup = "y-energy-2",
	},	
	
	-- Compensator 2.5 MW
	{
		type = "recipe",
		name = "y_compensator_25_recipe",
		--category="yuoki-wonder-recipe";
		energy_required = 5.0, enabled = "true",
		ingredients = {{"y-substation-m", 1},{"y-conductive-wire-1", 4}, {"y-chip-2", 2},{"y_blocked_capa", 2}, {"y_rwtechsign", 2},},
		result = "y_compensator_25", result_count = 1,
		order="ac-8",	
		subgroup = "y-energy-2",
	},	
	
	

	
})