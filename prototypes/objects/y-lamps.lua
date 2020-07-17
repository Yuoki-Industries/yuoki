data:extend(
{

	-- items
	{
		type = "item",
		name = "y-tinylamp",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/lamp-1-icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y-tinylamp",
		stack_size = 50, default_request_amount = 10, 
		order = "la",
	},

	{
		type = "item",
		name = "y-powerlamp",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/hl2_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y-powerlamp",
		stack_size = 50, default_request_amount = 10, 
		order = "lb",
	},

	{
		type = "item",
		name = "y-lamp-alien",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_lampe_icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "y-lamp-alien",
		stack_size = 40, default_request_amount = 10, 
		order = "lc",
	},


	{
		type = "item",
		name = "yi-monument1",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/monument-1-icon.png",		
		group = "yuoki",
		subgroup = "y-lamps",
		place_result = "yi-monument1",
		stack_size = 5,
		order = "ld",
	},
	
	{ type = "item", name = "y_lamp_red", place_result = "y_lamp_red",  icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_red_icon.png", subgroup = "y-lamps", stack_size = 50, order = "2a", default_request_amount = 10, },
	{ type = "item", name = "y_lamp_green", place_result = "y_lamp_green",  icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_green_icon.png", subgroup = "y-lamps", stack_size = 50, order = "2b", default_request_amount = 10,  },
	{ type = "item", name = "y_lamp_blue", place_result = "y_lamp_blue",  icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_blue_icon.png", subgroup = "y-lamps", stack_size = 50, order = "2c", default_request_amount = 10,  },
	{ type = "item", name = "y_lamp_yellow", place_result = "y_lamp_yellow",  icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_yellow_icon.png", subgroup = "y-lamps", stack_size = 50, order = "2d", default_request_amount = 10,  },
		
	-- recipe
	{
		type = "recipe",
		name = "y-tinylamp-recipe",
		enabled = true,
		ingredients = 
		{    	  	
			{"iron-plate", 1},
			{"copper-cable", 1}		  
		},
		group = "yuoki",
		subgroup = "y-lamps",		
		result = "y-tinylamp",    
		order = "la",
	},
	{
		type = "recipe",
		name = "y-powerlamp-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/hl2_icon.png",
		enabled = true,
		ingredients = 
		{    	  	
			{"y-raw-fuelnium", 1},
			{"steel-plate", 1},
			{"copper-plate", 2}		
		},
		results=
		{
			{type="item", name="y-powerlamp", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},				
		main_product="y-powerlamp",
		group = "yuoki",
		subgroup = "y-lamps",				 
		order = "lb",
	},

	{
		type = "recipe",
		name = "y-lamp-alien-recipe",
		enabled = true,
		ingredients = 
		{    	  	
			{"steel-plate", 3},
			{"y-infused-uca2", 1},			
			{"y_rwtechsign", 1},	
		},
		group = "yuoki",
		subgroup = "y-lamps",		
		result = "y-lamp-alien",   
		result_count = 3,
		order = "lc",
	},	
	{
		type = "recipe",
		name = "yi-monument1-recipe", enabled = true,
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/monument-1-icon.png",
		ingredients = {{"y-crystal-cnd", 6}, {"y-unicomp-raw", 12}, {"steel-plate", 10}, {"y-orange-stuff", 15}},
		group = "yuoki",
		subgroup = "y-lamps",	
		results=
		{
			{type="item", name="yi-monument1", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=10, },      	  						
		},			
		main_product="yi-monument1",
		order = "ld",
	},
	
	-- new lamps
	{
		type = "recipe",
		name = "y_lamp_red_recipe",
		enabled = true,
		ingredients = {{"y_structure_element", 1},{"y-chip-1", 1},},		
		subgroup = "y-lamps", order = "2a",		
		result = "y_lamp_red",  
	},	
	{
		type = "recipe",
		name = "y_lamp_green_recipe",
		enabled = true,
		ingredients = {{"y_structure_element", 1},{"y-chip-1", 1},},		
		subgroup = "y-lamps", order = "2b",		
		result = "y_lamp_green",  
	},
	{
		type = "recipe",
		name = "y_lamp_blue_recipe",
		enabled = true,
		ingredients = {{"y_structure_element", 1},{"y-chip-1", 1},},		
		subgroup = "y-lamps", order = "2c",		
		result = "y_lamp_blue",  
	},
	{
		type = "recipe",
		name = "y_lamp_yellow_recipe",
		enabled = true,
		ingredients = {{"y_structure_element", 1},{"y-chip-1", 1},},		
		subgroup = "y-lamps", order = "2d",		
		result = "y_lamp_yellow",  
	},	
	
			
	-- entity
	{
		type = "lamp",
		name = "y-tinylamp",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/lamp-1-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-tinylamp"},
		max_health = 50,
		corpse = "small-remnants",
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "4KW",
		light = {intensity = 0.8, size = 60, color = {r=1.0, g=0.95, b=0.8}},
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/power_lamp_v2.png",
			priority = "high",
			width = 32,
			height = 48,
			shift = {0, -0.3}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/power_lamp_v2.png",
			priority = "high",
			width = 32,
			height = 48,
			x = 32,
			shift = {0, -0.3}
		},
		circuit_wire_max_distance = 14.5
	},

	{
		type = "lamp",
		name = "y-powerlamp",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/hl2_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-powerlamp"},
		max_health = 50,
		corpse = "small-remnants",
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "10KW",
		light = {intensity = 0.9, size = 80, color = {r=0.95, g=1.0, b=0.8}},
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/lampe_gelb_off.png",
			priority = "high",
			width = 96,
			height = 128, scale = 0.5,			
			shift = {0, -0.5}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/lampe_gelb_on.png",
			priority = "high",
			width = 96,
			height = 128, scale = 0.5,			
			shift = {0, -0.5}
		},
		circuit_wire_max_distance = 14.5,
	},
	{
		type = "lamp",
		name = "y-lamp-alien",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_lampe_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-lamp-alien"},
		max_health = 50,
		corpse = "small-remnants",
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage_per_tick = "20KW",
		light = {intensity = 0.9, size = 180, color = {r=1.0, g=0.9, b=1.0}},		
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/al2_off.png",
			priority = "high",
			width = 32,
			height = 64,
			shift = {0, -0.5}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/al2_on.png",
			priority = "high",
			width = 32,
			height = 64,			
			shift = {0, -0.5}
		},
		circuit_wire_max_distance = 14.5,
	},
	
	{
		type = "lamp",
		name = "yi-monument1",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/monument-1-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.5, mining_time = 1.0, result = "yi-monument1"},
		max_health = 500,
		corpse = "big-remnants",
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},		
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = -625, },
		energy_usage_per_tick = "250KW",		
		light = {intensity = 1.0, size = 140},
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/monument-1.png",
			priority = "high",
			width = 256,
			height = 256,
			shift = {2.0, -1.5},
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/monument-1.png",
			priority = "high",
			width = 256,
			height = 256,
			x = 256,
			shift = {2.0, -1.5},
		},
		circuit_wire_max_distance = 22.5		
	},


	{
		type = "lamp",
		name = "y_lamp_red", minable = {hardness = 0.2, mining_time = 0.5, result = "y_lamp_red"},
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_red_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		max_health = 75, corpse = "small-remnants",
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source = { type = "electric", usage_priority = "secondary-input"},
		energy_usage_per_tick = "5KW",
		light = {intensity = 0.25, size = 8, },			
		--light = {intensity = 0.25, size = 2, color = {r=0.7, g=0.0, b=0.0} },			
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_red_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0.3125, -0.125}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_red_on.png",
			priority = "high",
			width = 64,
			height = 64,			
			shift = {0.3125, -0.125}
		},
		circuit_wire_max_distance = 22.5
	},
	{
		type = "lamp",
		name = "y_lamp_green", minable = {hardness = 0.2, mining_time = 0.5, result = "y_lamp_green"},
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_green_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		max_health = 75, corpse = "small-remnants",
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source = { type = "electric", usage_priority = "secondary-input"},
		energy_usage_per_tick = "5KW",
		light = {intensity = 0.25, size = 8, },			
		--light = {intensity = 0.25, size = 2, color = {r=0.0, g=0.7, b=0.0} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_green_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0.3125, -0.125}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_green_on.png",
			priority = "high",
			width = 64,
			height = 64,			
			shift = {0.3125, -0.125}
		},
		circuit_wire_max_distance = 22.5
	},
	{
		type = "lamp",
		name = "y_lamp_yellow", minable = {hardness = 0.2, mining_time = 0.5, result = "y_lamp_yellow"},
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_yellow_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		max_health = 75, corpse = "small-remnants",
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source = { type = "electric", usage_priority = "secondary-input"},
		energy_usage_per_tick = "5KW",
		light = {intensity = 0.25, size = 8, },			
		--light = {intensity = 0.25, size = 2, color = {r=0.7, g=0.7, b=0.0} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_yellow_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0.3125, -0.125}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_yellow_on.png",
			priority = "high",
			width = 64,
			height = 64,			
			shift = {0.3125, -0.125}
		},
		circuit_wire_max_distance = 22.5
	},
	{
		type = "lamp",
		name = "y_lamp_blue", minable = {hardness = 0.2, mining_time = 0.5, result = "y_lamp_blue"},
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/y_lamp_blue_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		max_health = 75, corpse = "small-remnants",
		collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		energy_source = { type = "electric", usage_priority = "secondary-input"},
		energy_usage_per_tick = "5KW",
		light = {intensity = 0.25, size = 8, },			
		--light = {intensity = 0.25, size = 8, color = {r=0.0, g=0.6, b=0.7} },
		picture_off =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_blue_off.png",
			priority = "high",
			width = 64,
			height = 64,
			shift = {0.3125, -0.125}
		},
		picture_on =
		{
			filename = "__Yuoki__/graphics/entity/lamps/y_lamp_blue_on.png",
			priority = "high",
			width = 64,
			height = 64,			
			shift = {0.3125, -0.125}
		},
		circuit_wire_max_distance = 22.5
	},

	
	
})