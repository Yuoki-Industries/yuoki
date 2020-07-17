data:extend(
{

	--[[ removed 215-0101
	{
		type = "recipe",
		name = "y-archsite-recipe", enabled = "true",
		ingredients = {{"steel-plate", 2}, {"pipe", 3}, {"stone", 20}}, 
		result = "archsite", result_count = 1,
	},
	]]
	
	-- low tiers	
	{
		type = "recipe",
		name = "y-dirtwasher-recipe", enabled = "true",
		ingredients = {{"assembling-machine-1",1},{"steel-plate",4},{"copper-plate",3},{"iron-gear-wheel",2}},
		result = "y-dirtwasher", result_count = 1,
		subgroup = "y_line1", order="f",
	},	
	{
		type = "recipe",
		name = "y-heat-form-press-recipe",
		ingredients = {{"assembling-machine-1",1},{"steel-plate",6},{"copper-plate",2},{"iron-gear-wheel",3}},
		result = "y-heat-form-press",
		enabled = "true", result_count = 1,
		subgroup = "y_line1", order="e",
	},
	{
		type = "recipe",
		name = "y-mining-drill-recipe",
		ingredients = {{"burner-mining-drill",2},{"steel-plate",4},{"copper-plate",3},{"iron-gear-wheel",4}},
		result = "y-mining-drill",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line1", order="a",
	},
	{
		type = "recipe",
		name = "y-crusher-recipe",
		ingredients = {{"assembling-machine-1",2},{"copper-plate",2},{"iron-gear-wheel",6}},
		result = "y-crusher",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_line1", order="d",
	},
	
	-- medium tiers
	{
		type = "recipe",
		name = "y-mining-drill-e2-recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine-drill-g-icon.png",
		ingredients = {{"steel-plate",8},{"y-bluegear",3},{"y-refined-yres1",4},{"y_structure_element",2}},
		results=
		{
			{type="item", name="y-mining-drill-e2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},		
		main_product = "y-mining-drill-e2",						
		enabled = "true",		
		subgroup = "y_line1", order="b",
	},
	{
		type = "recipe",
		name = "y-underground-drill-recipe",
		ingredients = {{"y-mining-drill-e2",1},{"y_structure_vessel",3},{"y-basic-t1-mf",1},},
		result = "y-underground-drill",
		enabled = "true",		
		result_count = 1,	
		subgroup = "y_line1", order="c",
	},	
	{
		type = "recipe",
		name = "y-atomic-constructor-recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/cimota-icon.png",
		ingredients = {{"assembling-machine-2",1},{"y-crusher",1},{"y-heat-form-press",1},{"y-fuel-reactor",3}},
		results=
		{
			{type="item", name="y-atomic-constructor", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},				
		main_product = "y-atomic-constructor",						
		enabled = "true", order = "a1",					
		subgroup = "y_line1b",
	},
	{
		type = "recipe",
		name = "y-water-gen-recipe",
		ingredients = {{"y-atomic-constructor",1},{"y-unicomp-raw",8},{"y-unicomp-a2",2}},
		result = "y-water-gen",
		enabled = "true",		
		result_count = 1,
		subgroup = "y_refine_machinery",
	},
	{
		type = "recipe",
		name = "y-water-gen-recipe-e",
		ingredients = {{"y-water-gen",1},{"y-conductive-coil-1",4 }},
		result = "y-water-gen-e",
		enabled = "true",		
		result_count = 1,		
		subgroup = "y_refine_machinery",
	},
	--[[
	{
		type = "recipe",
		name = "y_water_mixer_recipe",
		ingredients = {{"y-water-gen",1}, {"y-basic-t1-mf",2}, {"y_structure_vessel",2} },
		result = "y_water_mixer",
		enabled = "true",		
		result_count = 1,		
		subgroup = "y_refine_machinery",
	},
	]]
	
	
	-- high tiers
	{
		type = "recipe",
		name = "y-atomic-quantum-composer-recipe",
		ingredients = {{"y_compensator_25",2},{"y-basic-t2-mf",3},{"y_structure_element",8},{"y_rwtechsign",3} },
		result = "y-atomic-quantum-composer",
		enabled = "true", order = "a2",			
		result_count = 1,
		subgroup = "y_line1b",
	},
	{
		type = "recipe",
		name = "y-alien-infuser-recipe",
		ingredients = {{"y-atomic-quantum-composer",1},{"y-atomic-constructor",1},{"y-heat-form-press",1},{"y-fuel-reactor",2},{"y_rwtechsign",5}},
		result = "y-alien-infuser",
		enabled = "true", order = "a3",			
		result_count = 1,
		subgroup = "y_line1b",
	},
	
	{
		type = "item",
		name = "y-dirtwasher", place_result = "y-dirtwasher", stack_size = 20, default_request_amount = 5, 
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/dw.png",				
		order = "f",		
		subgroup = "y_line1",
	},
	{
		type = "item",
		name = "y-heat-form-press", place_result = "y-heat-form-press",	stack_size = 20, default_request_amount = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pressure_icon.png",		
		order = "e",		
		subgroup = "y_line1",
	},		
	{
		type = "item",
		name = "y-mining-drill", place_result = "y-mining-drill", stack_size = 20, default_request_amount = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine-drill-o-icon.png",
		order = "a",
		subgroup = "y_line1",
	},
	{
		type = "item",
		name = "y-mining-drill-e2", place_result = "y-mining-drill-e2", stack_size = 20, default_request_amount = 6,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine-drill-g-icon.png",
		order = "b",				
		subgroup = "y_line1",
	},	
	
	{
		type = "item",
		name = "y-underground-drill", place_result = "y-underground-drill", stack_size = 20, default_request_amount = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/deep-drill-v1-icon.png",
		order = "c",				
		subgroup = "y_line1",
	},	
	
	{
		type = "item",
		name = "y-crusher", place_result = "y-crusher", stack_size = 20, default_request_amount = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/crusher-icon.png",
		order = "d",	
		subgroup = "y_line1",		
	},
	{
		type = "item",
		name = "y-atomic-quantum-composer", place_result = "y-atomic-quantum-composer", stack_size = 10, 
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/space-assembly-icon.png",
		subgroup = "y_line1b",
	},
	{
		type = "item",
		name = "y-atomic-constructor", place_result = "y-atomic-constructor", stack_size = 10,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/cimota-icon.png",
		order = "a1",				
		subgroup = "y_line1b",
	},
	{
		type = "item",
		name = "y-alien-infuser", place_result = "y-alien-infuser", stack_size = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_infuser_icon.png",
		order = "a3",				
		subgroup = "y_line1b",
	},
	-- alien Water generator
	{
		type = "item",
		name = "y-water-gen", place_result = "y-water-gen", stack_size = 15, default_request_amount = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_water_gen_icon.png",
		order="water-gen1",
		subgroup = "y_refine_machinery",
	},
	-- alien Water generator electric
	{
		type = "item",
		name = "y-water-gen-e", place_result = "y-water-gen-e", stack_size = 15, default_request_amount = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_water_gen-e-icon.png",
		order="water-gen2",
		subgroup = "y_refine_machinery",		
	},
	-- Water mixer
	{
		type = "item",
		name = "y_water_mixer", place_result = "y_water_mixer", stack_size = 15, default_request_amount = 5,
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/water_mixer_icon.png",
		order="water-mix",
		subgroup = "y_refine_machinery",		
	},
	
})