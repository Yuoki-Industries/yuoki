data:extend(
{
	
	{
		type = "recipe",
		name = "y-coal-brikett-recipe",
		enabled = true,	
		energy_required = 4,
		category = "yuoki-formpress-recipe",
		ingredients =
		{
			{"y-coal-dust", 3},
		},
		result = "y-coal-brikett",
		result_count = 1,	
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "coal-b",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/coal_brikett_32.png",    		
	},

	{
		type = "recipe",
		name = "y-coal-stack-recipe",
		enabled = true,	
		energy_required = 4,
		category = "yuoki-formpress-recipe",
		ingredients =
		{
			{"y-coal-brikett", 3},
		},
		results = { {type="item", name="y-coal-stack", amount=1,}, {type="item", name="y_rwtechsign", amount=1,},},
		main_product = "y-coal-stack",
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "coal-s",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/coal_briketts.png",    
		
	},

	-- new-coal-things 215-0103
	{
		type = "recipe",
		name = "y-coaldust-recipe",
		enabled = true,	energy_required = 2, category = "y-crushing-recipe", group = "yuoki", subgroup = "y-fuel", order = "coal-s",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/coal-dust.png",    		
		ingredients ={{"coal", 4},}, result = "y-coal-dust", result_count = 6, 
	},
	{
		type = "recipe",
		name = "y-coaldust-mixing-recipe",
		enabled = true,	energy_required = 2, category = "yuoki-formpress-recipe", group = "yuoki", subgroup = "y-fuel", order = "coal-s",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/mix-fuel.png",    		
		ingredients ={{"y-coal-dust", 2},{"y-crush-yres2", 2},}, result = "y-mixed-fuel", result_count = 1, 
	},
	{
		type = "recipe",
		name = "y-mixfuel-load-recipe",
		enabled = true,	energy_required = 2, category = "yuoki-formpress-recipe", group = "yuoki", subgroup = "y-fuel", order = "coal-s",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/mix-fuel-loaded.png",    		
		ingredients ={{"y-mixed-fuel", 1},{"y-refined-yres2", 1},}, 
		results = { {type="item", name="y-mixed-fuel-loaded", amount=1,}, {type="item", name="y_rwtechsign", amount=1,},}, main_product = "y-mixed-fuel-loaded",
	},

	{
		type = "recipe",
		name = "y-wooden-brikett-recipe",
		enabled = true,	
		energy_required = 9,
		ingredients ={{"wood", 8},},		
		results = { {type="item", name="y-wooden-brikett", amount=4,}, {type="item", name="y_greensign", amount=1,},}, main_product = "y-wooden-brikett",				
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "wooden",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/wood_brikett_32.png",    		
	},

	{
		type = "recipe",
		name = "y-wooden-brikett-packed-recipe",
		enabled = true,	
		energy_required = 4,
		ingredients =
		{
			{"y-wooden-brikett", 4},
		},
		results = { {type="item", name="y-wooden-brikett-packed", amount=1,}, {type="item", name="y_rwtechsign", amount=1,},},
		main_product = "y-wooden-brikett-packed",
		group = "yuoki",
		subgroup = "y-fuel",		
		order = "wooden",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/wood-pellets.png",    		
	},	
		
	{
		type = "recipe",
		name = "y-release-cwater",
		category = "yuoki-formpress-recipe",				
		energy_required = 1,
		ingredients = {
			{type="fluid", name="y-con_water", amount=480 } 			
		},			
		results=
		{
			{type="item", name="y-c_mud", amount=4, },			
			{type="item", name="y-toxic-dust", amount=1, },			
		},		
		enabled = "true",				
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/c_mud_icon.png",
		group = "yuoki",
		subgroup = "y_line3", order="a1",	
	},	
	
	{
		type = "recipe",
		name = "y-pressed_dry_mud-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-c_mud", 4},}, 
		result = "y-dry_mud",
		result_count = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/dry_mud_icon.png",
		category = "yuoki-formpress-recipe",		
		group = "yuoki",
		subgroup = "y_line4", order="a2",
	},

	{
		type = "recipe",
		name = "y_mud2solidfuel_recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-dry_mud", 7},}, 
		result = "y-mixed-fuel",
		result_count = 1,
		icon_size = 32, icon = "__Yuoki__/graphics/icons/mix-fuel.png",
		category = "yuoki-formpress-recipe",		
		group = "yuoki-energy",
		subgroup = "y-fuel", order="a8",
	},

	{
		type = "recipe",
		name = "y_mixedfuel2rocketfuel_recipe",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-mixed-fuel", 10},}, 
		result = "rocket-fuel",
		result_count = 1,
		icon_size = 64, icon = "__base__/graphics/icons/rocket-fuel.png",
		category = "chemistry",		
		group = "yuoki-energy",
		subgroup = "y-fuel", order="a9",
	},
	
	{
		type = "recipe",
		name = "y-filtering-dust-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-c_mud", 40},}, 
		results=
		{
			{type="item", name="y-crush-yres1", amount=1, },			
			{type="item", name="y-crush-yres2", amount=1, },			
		},		
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/bg-dusts.png",
		category = "yuoki-formpress-recipe",		
		group = "yuoki",
		subgroup = "y_line4", order="a0",
	},
	
})