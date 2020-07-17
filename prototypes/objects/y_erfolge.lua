data:extend(
{

	-- items
	{
		type = "item",
		name = "yi_obelisk_A3_5X",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/yi_obelisk_3.5icon.png",		
		group = "yuoki-energy",
		subgroup = "y_erfolge",
		place_result = "yi_obelisk_A3_5X",
		stack_size = 50, default_request_amount = 10, 
		order = "la",
	},
	
	{
		type = "recipe",
		name = "yi_obelisk_A3_5X_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/yi_obelisk_3.5icon.png",
		enabled = true,
		ingredients = 
		{    	  	
			{"y-raw-fuelnium", 1},
			{"y_structure_element", 3},
			{"y-orange-stuff", 4},
		},
		results=
		{
			{type="item", name="yi_obelisk_A3_5X", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=10, },      	  						
		},				
		main_product="yi_obelisk_A3_5X",
		group = "yuoki-energy",
		subgroup = "y_erfolge",				 
		order = "la",
	},
	{
		type = "lamp",
		name = "yi_obelisk_A3_5X",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/yi_obelisk_3.5icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "yi_obelisk_A3_5X"},
		max_health = 1000,
		corpse = "small-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = -25, },
		
		energy_usage_per_tick = "25KW",
		light = {intensity = 0.8, size = 100,},
		--light = {intensity = 0.9, size = 70},
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/yi_obelisk_3.5off.png",
			priority = "high",
			width = 256,
			height = 256, scale = 0.5,			
			shift = {0.5, -0.75}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/yi_obelisk_3.5on.png",
			priority = "high",
			width = 256,
			height = 256, scale = 0.5,			
			shift = {0.5, -0.75}
		},
		circuit_wire_max_distance = 10,
	},

	
	-- the bug -1
	-- items
	{
		type = "item",
		name = "yi_bug1",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/statue_bug1_icon.png",		
		group = "yuoki-energy",
		subgroup = "y_erfolge",
		place_result = "yi_bug1",
		stack_size = 50, default_request_amount = 10, 
		order = "2a",
	},
	
	-- recipe
	{
		type = "recipe",
		name = "yi_bug1_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/statue_bug1_icon.png",
		enabled = true,
		ingredients = 
		{    	  	
			{"y-raw-fuelnium", 1},
			{"y_structure_element", 3},
			{"y-orange-stuff", 4},
		},
		results=
		{
			{type="item", name="yi_bug1", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=10, },      	  						
		},				
		main_product="yi_bug1",
		group = "yuoki-energy",
		subgroup = "y_erfolge",				 
		order = "2a",
	},
	
	{
		type = "lamp",
		name = "yi_bug1",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/statue_bug1_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "yi_bug1"},
		max_health = 1000,
		corpse = "small-remnants",
		collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = -12.5, },
		
		energy_usage_per_tick = "25KW",
		light = {intensity = 0.35, size = 15, color = {r=0.8, g=0.0, b=0.0}},
		--light = {intensity = 0.9, size = 70},
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/statue_bug1_off.png",
			priority = "high",
			width = 256,
			height = 256, scale = 0.5,			
			shift = {0.5, -0.75}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/statue_bug1_on.png",
			priority = "high",
			width = 256,
			height = 256, scale = 0.5,			
			shift = {0.5, -0.75}
		},
		circuit_wire_max_distance = 10,
	},


	-- feuerwerk
	-- items
	{
		type = "item",
		name = "yi_hny1",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/hny1_icon.png",		
		group = "yuoki-energy",
		subgroup = "y_erfolge",
		place_result = "yi_hny1",
		stack_size = 10, default_request_amount = 10, 
		order = "2a",
	},	
	-- recipe
	{
		type = "recipe",
		name = "yi_hny1_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/hny1_icon.png",
		enabled = true,
		ingredients = 
		{    	  	
			{"y-raw-fuelnium", 1},
			{"y_structure_element", 3},
			{"y-orange-stuff", 4},
		},
		results=
		{
			{type="item", name="yi_hny1", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=10, },      	  						
		},				
		main_product="yi_hny1",
		group = "yuoki-energy",
		subgroup = "y_erfolge",				 
		order = "4a",
	},	
	{
		type = "radar",
		name = "yi_hny1",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/hny1_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "yi_hny1"},
		max_health = 1000,
		corpse = "small-remnants",
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_usage = "30kW",
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = -15, },				
		energy_per_sector = "10MJ",
		max_distance_of_sector_revealed = 3,
		max_distance_of_nearby_sector_revealed = 1,
		energy_per_nearby_scan = "250kJ",		
		pictures =
		{
			layers =
			{
				{
					filename = "__Yuoki__/graphics/gfx/hny1_sheet-0.png",								
					priority = "low",
					width = 160,
					height = 224,
					apply_projection = false,
					direction_count = 16,
					line_length = 4,
					shift = {-0, -3},
					animation_speed = 1.5,	
				},								
			},
		},		
		radius_minimap_visualisation_color = { r = 0.059, g = 0.092, b = 0.235, a = 0.275 },
	},
		
	-- säule
	-- items
	{
		type = "item",
		name = "yi_hny2",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/hny2_icon.png",		
		group = "yuoki-energy",
		subgroup = "y_erfolge",
		place_result = "yi_hny2",
		stack_size = 10, default_request_amount = 10, 
		order = "4b",
	},	
	-- recipe
	{
		type = "recipe",
		name = "yi_hny2_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/hny2_icon.png",
		enabled = true,
		ingredients = 
		{    	  	
			{"iron-plate", 12},
			{"y_structure_element", 3},
			{"y-orange-stuff", 4},
		},
		results=
		{
			{type="item", name="yi_hny2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=10, },      	  						
		},				
		main_product="yi_hny2",
		group = "yuoki-energy",
		subgroup = "y_erfolge",				 
		order = "4b",
	},			
	{
		type = "assembling-machine",
		name = "yi_hny2",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/hny2_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "yi_hny2"},
		max_health = 1000,
		corpse = "small-remnants",
		collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_usage = "50kW",
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = -25, },				
		crafting_categories = {"yuoki-fame-recipe"},
		crafting_speed = 1,
		ingredient_count = 1,				
		animation = {
			filename = "__Yuoki__/graphics/gfx/hny2_sheet-0.png",								
			scale = 0.5,
			animation_speed = 0.2,	
			priority = "low",
			width = 160,
			height = 256,
			frame_count = 16,
			line_length = 4,
			shift = {0.775, -1.5},			
		},										
	},
	

	

	
})