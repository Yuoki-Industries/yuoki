data:extend(
{

	{
		type = "recipe",
		name = "y-pipe-h",				
		enabled = "true",
		ingredients = {{"pipe", 1}},
		result = "y-pipe-h",
		result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",	
		order="p1-",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-h.png",
	},

	{
		type = "recipe",
		name = "y-pipe-v",			
		enabled = "true",
		ingredients = {{"pipe", 1}},
		result = "y-pipe-v",
		result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",	
		order="p2-",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-v.png",
	},


	{
		type = "recipe",
		name = "y-valve-direction-buffer-recipe",
		ingredients = {{"iron-plate",8},{"steel-plate",2},{"iron-gear-wheel",2}},
		result = "y-valve-direction-buffer",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-pipe",			
	},	

	{
		type = "recipe",
		name = "y-pipe-hc-recipe",			
		result = "y-pipe-hc",
		ingredients = {{"y-unicomp-raw", 1}},
		enabled = "true", result_count = 4, group = "yuoki", subgroup = "y-pipe", order="p3-1",		
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-hc.png",
	},
	{
		type = "recipe",
		name = "y-pipe-to-ground-hc-recipe",			
		result = "y-pipe-to-ground-hc",		
		ingredients = {{"y-unicomp-raw", 4},},		
		enabled = "true", result_count = 2, group = "yuoki", subgroup = "y-pipe", order="p3-2",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-tg-hc.png",
	},
	{
		type = "recipe",
		name = "y-pipe-ec-recipe",			
		result = "y-pipe-ec",
		ingredients = {{"y-unicomp-a2", 1}},
		enabled = "true", result_count = 6, group = "yuoki", subgroup = "y-pipe", order="p3-4",		
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-ec.png",
	},
	{
		type = "recipe",
		name = "y-pipe-to-ground-ec-recipe",			
		result = "y-pipe-to-ground-ec",		
		ingredients = {{"y-unicomp-a2", 4},},		
		enabled = "true", result_count = 2, group = "yuoki", subgroup = "y-pipe", order="p3-5",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-tg-ec.png",
	},
	
	{
		type = "recipe",
		name = "y-tank-1000-recipe",
		result = "y-tank-1000",
		ingredients = {{"y_structure_element",2},{"y_structure_vessel",4},},		
		energy_required = 2, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T1",
	},	
	{
		type = "recipe",
		name = "y-tank-4500-recipe",
		result = "y-tank-4500",
		ingredients = {{"y_structure_element",6},{"y_structure_vessel",8},{"y-pipe-hc",4}},		
		energy_required = 3, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T2",
	},	
	{
		type = "recipe",
		name = "y-tank-8000-recipe",
		result = "y-tank-8000",
		ingredients = {{"y_structure_element",10},{"y_structure_vessel",14},{"y-pipe-hc",12}},		
		energy_required = 4, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T3",
	},	

	{
		type = "recipe",
		name = "y-tank-24k-recipe",
		result = "y-tank-24k",
		ingredients = {{"y-tank-8000",2},{"y_structure_element",8},{"y-pipe-to-ground-ec",6},{"y-orange-stuff",8},{"y-quantrinum",2},},		
		energy_required = 6, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T4",
	},	

	{
		type = "recipe",
		name = "y_buffer_station_recipe",		
		ingredients = {{"y-tank-4500",1},{"y-valve-direction-buffer",2},{"y_flowcheck_10",1},},		
		results = { {type="item", name="y_buffer_station", amount=1,}, {type="item", name="y_rwtechsign", amount=2,},}, main_product = "y_buffer_station",		
		energy_required = 4, enabled = "true", result_count = 1, group = "yuoki", subgroup = "y-fluid-storage", order="T5",
	},	
	
	--items
	{
		type = "item",
		name = "y-pipe-h",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-h.png",		
		subgroup = "y-pipe",
		order = "pipe-j-r",
		place_result = "y-pipe-h",
		stack_size = 150,  
	},

	{
		type = "item",
		name = "y-pipe-v",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-v.png",
		subgroup = "y-pipe",
		order = "pipe-j-r",
		place_result = "y-pipe-v",
		stack_size = 150,
	},
	
	{
		type = "item",
		name = "y-valve-direction-buffer",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pressure_pipe_icon.png",
		group = "yuoki",
		subgroup = "y-pipe",order = "zubehoer",
		place_result = "y-valve-direction-buffer",
		stack_size = 20,
	},
	{
		type = "item",
		name = "y-pipe-hc", place_result = "y-pipe-hc",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-hc.png", order = "pipe-hc", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-to-ground-hc", place_result = "y-pipe-to-ground-hc",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-tg-hc.png", order = "pipe-hc", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-ec", place_result = "y-pipe-ec",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-ec.png", order = "pipe-ec", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-pipe-to-ground-ec", place_result = "y-pipe-to-ground-ec",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/pipe-tg-ec.png",	order = "pipe-ec", subgroup = "y-pipe",
		stack_size = 150, default_request_amount = 50,
	},
	
	{
		type = "item",
		name = "y-tank-1000", place_result = "y-tank-1000",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/tank-1000-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15, order = "tank-a1",
	},
	{
		type = "item",
		name = "y-tank-4500", place_result = "y-tank-4500",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/tank-4500-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15,  order = "tank-b1",
	},
	{
		type = "item",
		name = "y-tank-8000", place_result = "y-tank-8000",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/tank-8000-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 15,  order = "tank-c1",
	},	
	{
		type = "item",
		name = "y-tank-24k", place_result = "y-tank-24k",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/tank-48k-icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 5, order = "tank-c2",
	},	

	{
		type = "item",
		name = "y_buffer_station", place_result = "y_buffer_station",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/special_tank3_icon.png",
		group = "yuoki", subgroup = "y-fluid-storage", stack_size = 5,  order = "tank-c3",
	},	


	
})