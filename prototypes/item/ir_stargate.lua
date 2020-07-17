data:extend(
{
	-- stargate trade recipes

		
	-- fame trade for fuel-cell
	{
		type = "recipe",
		name = "y-sgtrade-ic1-recipe", order="w1",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-fame", 1},}, 
		result = "y-fuel-cell-c",
		result_count = 1,		
		group = "yuoki-energy", subgroup = "y-fuel", 
		category = "yuoki-stargate-recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/fuel_cell_c.png",
	},		
	
	-- fuel-cell-c	
	{ type = "item", name = "y-fuel-cell-c",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/fuel_cell_c.png",  subgroup = "y-fuel", fuel_category = "chemical", fuel_value = "10GJ", stack_size = 500, default_request_amount = 10,},	
	-- fame recipe
	{ type = "recipe", name = "y-fame-recipe", order="x1", energy_required = 1800.0, enabled = "true", ingredients = {},  result = "y-fame", result_count = 1, subgroup = "y-stargate-4", category = "yuoki-fame-recipe",},							
	{ type = "recipe", name = "y_fame_tech_recipe", order="x2", energy_required = 900.0, enabled = "true", ingredients = {{"y_rwtechsign", 25}},  result = "y-fame", result_count = 1, subgroup = "y-stargate-4", category = "yuoki-fame-recipe",},	
	-- fame	
	{ type = "item", name = "y-fame",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/fame-icon.png", subgroup = "y-stargate-f", stack_size = 10000, default_request_amount = 10,},

	
	-- stargate recipe
	{
		type = "recipe",
		name = "y-stargate-recipe", order="a",
		energy_required = 5.0,
		enabled = "true",
		ingredients = {{"y-accumulator-crystal-m", 1},{"y-alien-infuser", 1},{"y-crystal2", 150}, {"y-chip-2", 8}, {"y-fame", 10}}, 
		result = "y-stargate",
		result_count = 1,					
		group = "yuoki-energy", subgroup = "y_ultimate_products", order = "2",	
	},				
	-- stargate itself
	{ type = "item", name = "y-stargate", place_result = "y-stargate",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/laika-gate-icon.png", group = "yuoki-energy", subgroup = "y_ultimate_products", stack_size = 3,},			

	
	-- 40-Users recipe
	{ type = "recipe", name = "y-fame-gen-recipe", order="a", energy_required = 5.0, enabled = "true", ingredients = {{"y-alien-infuser", 1},{"y-ups-flywheel-b", 1},{"y-unicomp-a2",100}},  
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/thanks-icon.png",
		results=
		{
			{type="item", name="y-fame-gen", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=10, },      	  						
		},		
		main_product="y-fame-gen",
		group = "yuoki-energy", subgroup = "y_ultimate_products", order = "1",
	},					
	-- 40-Users
	{ type = "item", name = "y-fame-gen", place_result = "y-fame-gen",  icon_size = 32, icon =  "__Yuoki__/graphics/entity/thanks-icon.png", group = "yuoki-energy", subgroup = "y_ultimate_products", stack_size = 6,},			
		
		
})