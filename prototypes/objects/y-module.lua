data:extend(
{
	-- recipes
	{
		type = "recipe",
		name = "y_modul_blue1-recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"y_structure_element",1}, {"y-heat-pipe", 1}}, 
		result = "y-speed-module-1",
		result_count = 1,
		order = "m-1a",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-1", category = "speed",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_blue_1.png",		
		subgroup = "y-module",
		order = "m-1a",
		stack_size = 100,		
		default_request_amount = 10,
		effect = { speed = {bonus = 0.125}, pollution = {bonus = 0.075}, }
	},
	-- recipes
	{
		type = "recipe",
		name = "y_modul_blue2-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_blue_2.png",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-2", 2}, {"y-speed-module-1",2}, {"y_crystal2_combined", 1}}, 		
		results=
		{
			{type="item", name="y-speed-module-2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},			
		main_product="y-speed-module-2",	
		order = "m-2a",
		subgroup = "y-module",
	},	
	-- items
	{
		type = "module",
		name = "y-speed-module-2", category = "speed",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_blue_2.png",		
		subgroup = "y-module",
		order = "m-2a",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.25}, pollution = {bonus = 0.15}, }
	},

	-- greens
	{
		type = "recipe",
		name = "y_modul_green1_recipe",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"y_structure_element",1}, {"y-heat-pipe", 1}}, 
		result = "y-green-module-1",
		result_count = 1,
		order = "m-1b",
	},		
	{
		type = "module",
		name = "y-green-module-1",category = "effectivity",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_green_1.png",		
		subgroup = "y-module",
		order = "m-1b",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.25}},
		limitation = production	
	},

	-- green-2
	{
		type = "recipe",
		name = "y_modul_green2_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_green_2.png",
		energy_required = 2.0, enabled = "true",
		ingredients = {{"y-chip-2", 2}, {"y-green-module-1",2}, {"y_crystal2_combined", 1}}, 
		results=
		{
			{type="item", name="y-green-module-2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},					
		main_product="y-green-module-2",
		order = "m-2b",
		subgroup = "y-module",
	},		
	{
		type = "module",
		name = "y-green-module-2",category = "effectivity",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_green_2.png",		
		subgroup = "y-module",
		order = "m-2b",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.35}},
		limitation = production	
	},
	
	-- green-op ultimate
	{
		type = "recipe",
		name = "y_modul_green_op_recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/op_green_module.png",
		category = "yuoki_green_ultimate", -- Green-Ultimates
		energy_required = 120.0, enabled = "true",
		ingredients = {{"wood", 1}, {"y_greensign",500},}, 
		results=
		{
			{type="item", name="y_modul_green_op", amount=1, },      	  									    	  								
		},											
		order = "2",
		group = "yuoki-energy", subgroup = "y_ultimate_products",
	},		
	{
		type = "module",
		name = "y_modul_green_op",category = "effectivity",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/op_green_module.png",		
		subgroup = "y-module",
		order = "m-2c",
		stack_size = 100,
		default_request_amount = 10,
		effect = { consumption = {bonus = -0.80}},
		limitation = production	
	},
	
	-- red-op1
	{
		type = "recipe",
		name = "y_modul_science_recipe",		
		icon_size = 32, icon =   "__Yuoki__/graphics/icons/modul_science_32.png",
		energy_required = 5.0, enabled = "true",
		ingredients = {{"y-green-module-2", 1},{"y-speed-module-2", 1},{"y-pink-module-2", 1}, {"ye_science_blue",100}, }, 
		results=
		{
			{type="item", name="y_modul_science", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=5, },      	  						
		},				
		main_product="y_modul_science",		
		order = "m-5b",
		subgroup = "y-module",
	},		
	{
		type = "module",
		name = "y_modul_science",category = "productivity",tier = 1,
		icon_size = 32, icon =   "__Yuoki__/graphics/icons/modul_science_32.png",		
		subgroup = "y-module",
		order = "m-5b",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = {bonus = 0.30}, consumption = {bonus = 1.0}, pollution = {bonus = -0.1},},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},
	
	-- red-op2
	{
		type = "recipe",
		name = "y_modul_red2_recipe",
		 icon_size = 32, icon =   "__Yuoki__/graphics/icons/modul_techanic_32.png",
		energy_required = 5.0, enabled = "true",
		ingredients = {{"y-speed-module-2", 1}, {"y-green-module-2",1}, {"y_rwtechsign", 300}}, 
		results=
		{
			{type="item", name="y_modul_red2", amount=1, },      	  						
			--{type="item", name="y_rwtechsign", amount=1, },      	  						
		},				
		main_product="y_modul_red2",		
		order = "m-5a",
		subgroup = "y-module",
	},		
	{
		type = "module",
		name = "y_modul_red2",category = "speed",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_techanic_32.png",		
		subgroup = "y-module",
		order = "m-5a",
		stack_size = 100,
		default_request_amount = 10,
		effect = { speed = {bonus = 0.325}, consumption = {bonus = -0.20 }},
		limitation = production	
	},

	
	-- pink ->dropped ->revieved 0509-215
	-- pinks	
	{
		type = "recipe",
		name = "y-pink-module-1-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-1", 2}, {"y_structure_element",1}, {"y-heat-pipe", 1}}, 
		result = "y-pink-module-1",
		result_count = 1,
		order = "m-4a",
	},		
	
	{
		type = "module",
		name = "y-pink-module-1", category = "productivity",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_pink_1.png",		
		subgroup = "y-module",
		order = "m-4a",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = {bonus = 0.05}, consumption = {bonus = 0.125}, pollution = {bonus = -0.075},},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},

	{
		type = "recipe",
		name = "y-pink-module-2-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_pink_2.png",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-chip-2", 2}, {"y-pink-module-1",2}, {"y_crystal2_combined", 1}}, 		
		results=
		{
			{type="item", name="y-pink-module-2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},								
		main_product="y-pink-module-2",		
		result_count = 1,
		order = "m-4b",
		subgroup = "y-module",
	},		
	
	{
		type = "module",
		name = "y-pink-module-2", category = "productivity",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_pink_2.png",		
		subgroup = "y-module",
		order = "m-4b",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = {bonus = 0.125}, consumption = {bonus = 0.2}, pollution = {bonus = -0.15},},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},

	{
		type = "recipe",
		name = "y-pink-module-3-recipe",
		energy_required = 3.0, enabled = "true",
		ingredients = {{"y-pink-module-2", 1}, {"y-crystal-cnd",2}, {"y-infused-uca2", 1}, {"y_rwtechsign", 3}}, 		
		result = "y-pink-module-3",
		result_count = 1,
		order = "m-4c",
	},		
	
	{
		type = "module",
		name = "y-pink-module-3", category = "productivity",tier = 1,
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/modul_pink_3.png",		
		subgroup = "y-module",
		order = "m-4c",
		stack_size = 100,
		default_request_amount = 20,
		effect = { productivity = {bonus = 0.20}, consumption = {bonus = 0.275}, pollution = {bonus = -0.2},},
		--limitation = productivitymodulelimitation(),
		limitation_message_key = "production-module-usable-only-on-intermediates"
	},
	
})