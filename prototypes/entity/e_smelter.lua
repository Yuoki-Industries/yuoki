
data:extend(
{

	{
		type = "assembling-machine",
		name = "y_charger",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/charger_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.5, mining_time = 1, result = "y_charger"},
		max_health = 400,
		resistances = {{type = "physical",percent = 50}},
		collision_box = {{-1.2,-1.2},{1.2,1.2}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/charger_sheet.png",
			priority = "medium", width = 256, height = 256, frame_count = 16, line_length = 4, shift = {0.5, -0.5}, scale=0.5, animation_speed=0.5,		
		},					
		crafting_categories = {"yuoki_charger_recipe"},
		crafting_speed = 1.0,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 52.5, },
		energy_usage = "3500kW",
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
		allowed_effects = {"consumption", "speed", "pollution"},
	},



	{
		type = "assembling-machine",
		name = "y_smelter",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/smelter_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.5, mining_time = 1, result = "y_smelter"},
		max_health = 400,
		resistances = {{type = "physical",percent = 50}},
		collision_box = {{-1.2,-1.2},{1.2,1.2}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/smelter_sheet.png",
			priority = "medium", width = 256, height = 256, frame_count = 36, line_length = 6, shift = {0.5, -0.5}, scale=0.5, animation_speed=0.33,		
		},					
		crafting_categories = {"yuoki_smelter_recipe"},
		crafting_speed = 1.0,
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 7.5, },
		energy_usage = "500kW",
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
		allowed_effects = {"consumption", "speed", "pollution"},
	},

})