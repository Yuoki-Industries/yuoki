data:extend(
{


	{
		type = "recipe",
		name = "y_basement_5x5a_recipe",
		energy_required=3.0, enabled = true, category="yrcat_basements",		
		ingredients = 
		{    
			{"stone-brick", 8},
			{"y_structure_electric", 4},
			{"steel-plate", 4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_5x5a",
		order = "ma",
	},	
	{
		type = "item",
		name = "y_basement_5x5a",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_a_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5a",		
		stack_size = 150,
	},
	
	{
		type = "simple-entity",
		name = "y_basement_5x5a",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_a_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5a"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_a.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
		
	{
		type = "recipe",
		name = "y_basement_5x5b_recipe",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{"stone-brick", 8},
			{"y_structure_element", 4},					
			{"copper-cable", 4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_5x5b",
		order = "mb",
	},
	
	{
		type = "item",
		name = "y_basement_5x5b",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_b_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5b",		
		stack_size = 150,
	},
	
	{
		type = "simple-entity",
		name = "y_basement_5x5b",
		flags = {"placeable-neutral", "player-creation", },
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_b_icon.png",
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5b"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_b.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	

	{
		type = "recipe",
		name = "y_basement_5x5c_recipe",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{"stone-brick", 8},
			{"y_structure_electric", 6},
			{"y-tinylamp", 4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_5x5c",
		order = "mc",
	},
	
	{
		type = "item",
		name = "y_basement_5x5c",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_c_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5c",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5c",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_c_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5c"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_c.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	

	-- cooled
	{
		type = "recipe",
		name = "y_basement_5x5d_recipe",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{"stone-brick", 8},
			{"y_structure_electric", 4},
			{"y-basic-t1-mf", 2},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_5x5d",
		order = "md",
	},
	
	{
		type = "item",
		name = "y_basement_5x5d",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_d_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5d",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5d",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_d_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5d"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_d.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
	{
		type = "recipe",
		name = "y_basement_5x5e_recipe",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{"stone-brick", 8},
			{"y_structure_element", 6},		
			{"y-pipe-ec", 4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_5x5e",
		order = "me",
	},
	
	{
		type = "item",
		name = "y_basement_5x5e",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_e_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5e",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5e",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_e_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5e"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_e.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
	
	{
		type = "recipe",
		name = "y_basement_5x5f_recipe",
		energy_required=2.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{"stone-brick", 8},
			{"y_structure_element", 4},					
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_5x5f",
		order = "mf",
	},
	
	{
		type = "item",
		name = "y_basement_5x5f",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5f",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5f",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5f"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_f.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	
	
	{
		type = "recipe",
		name = "y_basement_5x5f2_recipe",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{"steel-plate", 4},
			{"y_structure_element", 4},									
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_5x5f2",
		order = "mf2",
	},
	
	{
		type = "item",
		name = "y_basement_5x5f2",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f2_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_5x5f2",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_5x5f2",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_5x5_f2_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_5x5f2"},
		selection_box = {{-2.5, -2.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",		
		
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_5x5_f2.png",
				width = 320, height= 320, scale=0.5,
				shift = {-0.5, -0.5},
			},},		
	},	

	{
		type = "recipe",
		name = "y_basement_4x4a_recipe",
		energy_required=3.0, enabled = true, category="yrcat_basements",
		ingredients = 
		{    
			{"y_structure_element", 4},		
			{"iron-plate", 4},
			{"copper-cable", 4},				
		},
		group = "yuoki",
		subgroup = "y_basement",
		result = "y_basement_4x4a",
		order = "mg",
	},
	
	{
		type = "item",
		name = "y_basement_4x4a",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_g_icon.png",		
		group = "yuoki",
		subgroup = "y_basement",
		place_result = "y_basement_4x4a",		
		stack_size = 150,
	},

	{
		type = "simple-entity",
		name = "y_basement_4x4a",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/lamps/base_4x4_g_icon.png",
		flags = {"placeable-neutral", "player-creation", },
		minable = {hardness = 0.5, mining_time = 2, result = "y_basement_4x4a"},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		selectable_in_game = true,
		render_layer = "floor",				
		pictures = {{
				filename = "__Yuoki__/graphics/entity/lamps/base_4x4_g.png",
				width = 256, height= 256, scale=0.5,
				shift = {0, 0},
			},},		
	},	
	
})
