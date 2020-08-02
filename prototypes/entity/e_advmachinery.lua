data:extend(
{  

	--
	{
		type = "recipe",
		name = "y_crusher2_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/crusher33_icon.png",
		enabled = "true",
		ingredients = {{"y-crusher", 1},{"y_structure_element", 3},{"y-basic-t1-mf", 2},{"y-chip-1", 2},},
		results=
		{
			{type="item", name="y_crusher2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},		
		subgroup = "y_line1",	
	},

	{
		type = "item",
		name = "y_crusher2",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/crusher33_icon.png",
		group = "yuoki",		
		subgroup = "y_line1",		
		order = "c1",
		place_result = "y_crusher2",
		stack_size = 25,
	},

	{
		type = "assembling-machine",
		name = "y_crusher2",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/crusher33_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.5, mining_time = 1, result = "y_crusher2"},
		max_health = 200,
		resistances = {{type = "physical",percent = 50}},
		collision_box = {{-1.2,-1.2},{1.2,1.2}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/crusher33_sheet.png",
			priority = "medium", width = 128, height = 128, frame_count = 12, shift = {0.5, 0}, animation_speed=0.5,		
		},					
		crafting_categories = {"y-crushing-recipe"},
		crafting_speed = 3.5,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 3.75, },
		energy_usage = "250kW",
		ingredient_count = 4,
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = { 0, 2} }}
			},
			{
				production_type = "output",
				--pipe_covers = pipecoverspictures(),				
				base_level = 1,
				pipe_connections = {{position = { 0, -2} }}
			},
		},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	},

	{
		type = "recipe",
		name = "y_formpress2_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/fpress2_icon.png",
		enabled = "true",
		ingredients =
		{
			{"y-heat-form-press", 1},
			{"y_structure_element", 3},
			{"y-basic-t1-mf", 2},      
			{"y-chip-1", 2},      
		},
		results=
		{
			{type="item", name="y_formpress2", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},					
		subgroup = "y_line1",	
	},

	{
		type = "item",
		name = "y_formpress2",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/fpress2_icon.png",
		group = "yuoki",		
		subgroup = "y_line1",		
		order = "c1",
		place_result = "y_formpress2",
		stack_size = 25,
	},

	{
		type = "assembling-machine",
		name = "y_formpress2",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/fpress2_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.5, mining_time = 1, result = "y_formpress2"},
		max_health = 200,
		resistances = {{type = "physical",percent = 50}},
		collision_box = {{-1.2,-1.2},{1.2,1.2}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/npress_sheet.png",
			priority = "medium", width = 256, height = 256, frame_count = 36, line_length=6,  shift = {0.5, -0.125}, animation_speed=0.25, scale=0.5,		
		},					
		crafting_categories = {"yuoki-formpress-recipe"},
		crafting_speed = 3,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 4.8, },
		energy_usage = "600kW",
		ingredient_count = 4,
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = { 0, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),				
				base_level = 1,
				pipe_connections = {{position = { 0, -2} }}
			},
		},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	},

	--
	{
		type = "recipe",
		name = "y_maintance_workshop_recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/maintance_workshop_icon.png",
		enabled = "true",
		ingredients = {{"y_formpress2", 1},{"y-basic-t2-mf", 2},{"y-repair-krakon", 4},{"y-inserter-fast", 2} },
		results=
		{
			{type="item", name="y_maintance_workshop", amount=1, },      	  						
			{type="item", name="y_rwtechsign", amount=1, },      	  						
		},						
		subgroup = "y_line1",	
	},

	{
		type = "item",
		name = "y_maintance_workshop",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/maintance_workshop_icon.png",
		group = "yuoki",		
		subgroup = "y_line1",		
		order = "c1",
		place_result = "y_maintance_workshop",
		stack_size = 25,
	},

	{
		type = "assembling-machine",
		name = "y_maintance_workshop",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/maintance_workshop_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.5, mining_time = 1, result = "y_maintance_workshop"},
		max_health = 200,
		resistances = {{type = "physical",percent = 50}},
		collision_box = {{-1.2,-1.2},{1.2,1.2}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/maintance_sheet.png",
			priority = "medium", width = 128, height = 128, frame_count = 16, line_length=4, shift = {0.5, 0}, animation_speed=0.5,		
		},					
		crafting_categories = {"yuoki-repair-recipe"},
		crafting_speed = 3,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 5, },
		energy_usage = "500kW",
		ingredient_count = 4,
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = { 0, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),				
				base_level = 1,
				pipe_connections = {{position = { 0, -2} }}
			},
		},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "pollution"},
	},	
	
})