data:extend(
{
	
	-- Drillhead
	{
		type = "recipe",
		name = "y_drillhead_recipe",		
		enabled = "true", energy_required = 8, ingredients = {{"y_structure_element", 5},{"y_structure_vessel", 3},}, result = "y_drillhead", result_count = 1, subgroup = "y-parts", 	
	},	
	{
		type = "recipe",
		name = "y_drillhead_repair_recipe",		
		enabled = "true", energy_required = 2, 
		ingredients = {
			{"y_drillhead_broken", 4},
			{"y-repair-durotal", 1},
			{"y-refined-yres1", 1},
		}, 
		results = {
			{type="item",name="y_drillhead",amount=4},
			{type="item",name="y-repair-durotal",amount=1},
			{type="item",name="y_rwtechsign",amount=1},
		}, 
		main_product = "y_drillhead",						
		subgroup = "yuoki-formpress", category = "yuoki-repair-recipe",		
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/drillhead_repair.png", order="1A",
	},	
	{
		type = "item",
		name = "y_drillhead",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/icon-5e.png",		
		stack_size = 50, default_request_amount = 10,
		group = "yuoki", subgroup = "yuoki-formpress",					
	},
	{
		type = "item",
		name = "y_drillhead_broken",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/icon-5c.png",
		stack_size = 50, default_request_amount = 10,
		group = "yuoki", subgroup = "yuoki-formpress",					
	},
	
	-- Toolhead	
	{
		type = "recipe",
		name = "y_toolhead_recipe",		
		enabled = "true", energy_required = 8, ingredients = {{"y_structure_element", 5},{"y_structure_vessel", 3},}, result = "y_toolhead", result_count = 1, subgroup = "y-parts", 	
	},	
	{
		type = "recipe",
		name = "y_toolhead_repair_recipe",		
		enabled = "true", energy_required = 2, 
		ingredients = {
			{"y_toolhead_broken", 4},
			{"y-repair-durotal", 1},
			{"stone-brick", 1},
		}, 
		results = {
			{type="item",name="y_toolhead",amount=4},
			{type="item",name="y-repair-durotal",amount=1},
			{type="item",name="y_rwtechsign",amount=1},
		}, 
		main_product = "y_toolhead",						
		subgroup = "yuoki-formpress", category = "yuoki-repair-recipe",		
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/toolhead_repair.png", order="1B",
	},	
	{
		type = "item",
		name = "y_toolhead",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/toolhead.png",
		stack_size = 75, default_request_amount = 10,
		group = "yuoki", subgroup = "yuoki-formpress",					
	},
	{
		type = "item",
		name = "y_toolhead_broken",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/toolhead_broken.png",
		stack_size = 75, default_request_amount = 10,
		group = "yuoki", subgroup = "yuoki-formpress",					
	},
	
	{
		type = "recipe",
		name = "y-digfdirt-recipe",		
		enabled = "true", energy_required = 4, ingredients = {}, result = "y-dirt", result_count = 1, subgroup = "y_line2", category="yuoki-raw-material-recipe", order="dfd1",		
	},	

	{
		type = "recipe",
		name = "y-digfdirt2-recipe",		
		enabled = "true", energy_required = 4, ingredients = {{"y_drillhead", 1},}, results = {{type="item",name="y-dirt",amount=8},{type="item",name="y_drillhead_broken",amount=1}}, subgroup = "y_line2", category="yuoki-raw-material-recipe",		
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/dirt_whead.png", order="dfd2",
	},	
	
	
	-- washings
	{
		type = "recipe",		
		name = "y-wash-dirt-recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 6,
		ingredients = {
			{"y-dirt", 7},			
			{type="fluid", name="water", amount=700},
		},
		results=
		{
			{type="item", name="stone", amount=3, },      	  			
			{type="item", name="y-crystal2", amount=1, },      	
			{type="fluid", name="y-con_water", amount=600, }
		},
		enabled = "true",		
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien-crystal.png",
		order = "m-refined-rare3",
		subgroup = "y_line2",
	},
	
	{
		type = "recipe",
		name = "y-wash-special-recipe",
		category = "yuoki-archaeology-wash", enabled = "true", energy_required = 6.0, 
		ingredients = {{"y-dirt", 8},{type="fluid", name="water", amount=1200},}, 		
		results={ {type="item", name="y-c_mud", amount=10, },},
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/c_mud_icon.png",
		subgroup = "y_line2", order="m-refined-",
	},	

	
})