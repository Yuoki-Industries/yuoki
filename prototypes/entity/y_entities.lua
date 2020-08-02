
data:extend(
{  
	--[[
	{
		type = "assembling-machine",
		name = "archsite",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/archsite_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "archsite"},
		max_health = 200,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
		animation = {
			filename = "__Yuoki__/graphics/entity/archsite_n.png",
			priority = "medium",
			width = 170,
			height = 160,
			frame_count = 1,						
			shift = {0.25, -0.25}
		},					
		crafting_categories = {"yuoki-archaeology"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.01},
		energy_usage = "250kW",
		ingredient_count = 1,
		module_slots = 2,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},		
	},
	]]
	
	{
		type = "assembling-machine",
		name = "y-underground-drill", minable = {mining_time = 0.5,result = "y-underground-drill"},
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/deep-drill-v1-icon.png",
		flags = {"placeable-neutral","player-creation"},		
		max_health = 200,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		working_sound = { sound = { filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.75 }, apparent_volume = 1.5,},
		animation = {
			filename = "__Yuoki__/graphics/entity/std_digger_sheet.png",
			priority = "medium",
			width = 256,
			height = 256,
			frame_count = 16,		
			line_length =4,
			scale = 0.5, 	
			shift = {0.5, -0.4}
		},					
		crafting_categories = {"yuoki-raw-material-recipe"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 2},
		energy_usage = "400kW",
		ingredient_count = 1,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "pollution"},
		
	},	
	
	{
		type = "assembling-machine",
		name = "y-dirtwasher",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/dw.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 0.5,result = "y-dirtwasher"},
		max_health = 100,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-1.3,-1.3},{1.3,1.3}},
		selection_box = {{-1.5,-1.5},{1.5,1.5}},
		animation = {
			north =
			{
				filename = "__Yuoki__/graphics/entity/washer-ns.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.5, -0.25}, animation_speed=0.7,
			},
			east =
			{
				filename = "__Yuoki__/graphics/entity/washer-ew.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.47, 0}, animation_speed=0.7,
			},
			south =
			{
				filename = "__Yuoki__/graphics/entity/washer-ns.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.5, -0.25}, animation_speed=0.7,
			},
			west =
			{
				filename = "__Yuoki__/graphics/entity/washer-ew.png",
				priority = "medium", width = 128, height = 128, frame_count = 16, shift = {0.47, 0}, animation_speed=0.7,
			},			
		},					
		crafting_categories = {"yuoki-archaeology-wash"},
		crafting_speed = 1,
		energy_source = {type = "electric",input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 3},
		energy_usage = "350kW",
		ingredient_count = 2,
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-1, -2} }}
			},
			{
				production_type = "input",
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {1, -2.0} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {1, 2} }}
			},
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ position = {-1, 2} }}
			},
			off_when_no_fluid_recipe = true,
		},	  
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	},
	
	-- Outpost Mining Drill
	{
		type = "mining-drill",
		name = "y-mining-drill",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine-drill-o-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "y-mining-drill"},
		max_health = 300,
		resource_categories = {"basic-solid"},
		corpse = "big-remnants",
		
		collision_box = {{ -2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{ -2.5, -2.5}, {2.5, 2.5}},

		input_fluid_box =
		{
			production_type = "input-output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 1,
			pipe_connections =
			{
				{ position = {-3, 0} },
				{ position = {3, 0} },
				{ position = {0, 3} },
			}
		},		
		
		working_sound = { sound = { filename = "__base__/sound/burner-mining-drill.ogg", volume = 0.8 },},
		animations =
		{
			priority = "extra-high",
			width = 256,
			height = 256,
			line_length = 6,
			shift = {1.0, -0.75},
			scale = 0.9,
			filename = "__Yuoki__/graphics/entity/miners/miner_b_sheet.png",
			frame_count = 36,
			animation_speed = 0.5,
		},		
		mining_speed = 1.75,
		energy_source =	{
			type = "burner", fuel_category = "chemical", effectivity = 0.9, fuel_inventory_size = 2, emissions_per_minute = 17.5,
			smoke = {{name = "smoke",deviation = {0.1, 0.1},frequency = 3}}
		},
		energy_usage = "350kW",
		mining_power = 3,
		resource_searching_radius = 3.49,
		vector_to_place_result = {0, -2.75},
		module_specification =
		{
			module_slots = 1
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
			width = 12,	height = 12
		}
	},
	-- E2 Mining Drill
	{
		type = "mining-drill",
		name = "y-mining-drill-e2",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine-drill-g-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 0.5, result = "y-mining-drill-e2"},
		max_health = 300,
		resource_categories = {"basic-solid"},
		corpse = "big-remnants",
		collision_box = {{ -2.2, -2.2}, {2.2, 2.2}},
		selection_box = {{ -2.5, -2.5}, {2.5, 2.5}},
		working_sound = { sound = { filename = "__base__/sound/electric-mining-drill.ogg", volume = 0.75 }, apparent_volume = 1.5,},
		
		input_fluid_box =
		{
			production_type = "input-output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 1,
			pipe_connections =
			{
				{ position = {-3, 0} },
				{ position = {3, 0} },
				{ position = {0, 3} },
			}
		},		
		animations =
		{
			priority = "extra-high",
			width = 224,
			height = 224,
			line_length = 4,
			shift = {0, -0.25},
			filename = "__Yuoki__/graphics/entity/miners/e2miner_sheet.png",
			frame_count = 16,
			animation_speed = 0.5,
		},		
		mining_speed = 2.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 9, 		
		},
		energy_usage = "300kW",
		mining_power = 4,
		resource_searching_radius = 3.49,
		vector_to_place_result = {0, -2.75},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
			width = 12, height = 12,
		},
		fast_replaceable_group = "mining-drill",
	},
	
	{
		type = "assembling-machine",
		name = "y-atomic-quantum-composer",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/space-assembly-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-atomic-quantum-composer"},
		max_health = 1500,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/composer_sheet.png",
			priority = "high",
			width = 320,
			height = 320,
			frame_count = 25,
			line_length = 5,
			animation_speed = 0.25,
			shift = {0.46875, -0.375},
			scale = 0.5,
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"yuoki-wonder-recipe"},
		crafting_speed = 3.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 8, 
		},
		energy_usage = "4000kW",
		ingredient_count = 6,
		module_specification =
		{
			module_slots = 4
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="w[wonders]",
	},			

	{
		type = "assembling-machine",
		name = "y-atomic-constructor",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/cimota-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-atomic-constructor"},
		max_health = 500,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/cimota_sheet.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 16,
			line_length = 4,
			shift = {0.5, -0.0625},
			animation_speed=0.25,
			scale = 0.5,
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"yuoki-atomics-recipe"},
		crafting_speed = 2.0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 5, 
		},
		energy_usage = "1200kW",
		ingredient_count = 5,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="a[atomics]",
	},	
	
	{
		type = "assembling-machine",
		name = "y-alien-infuser",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_infuser_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-alien-infuser"},
		max_health = 800,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler3pipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		--[[
		picture =
		{
			filename = "__Yuoki__/graphics/entity/alien_infuser_v2_idle.png",			
			width = 128,
			height = 128,
			shift = {0.5, -0.5}
		},
		]]
		animation =
		{
			filename = "__Yuoki__/graphics/entity/infuser_sheet_v2.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 16,
			line_length = 4,
			shift = {0.5, -0.5},
			animation_speed = 0.5,
			scale = 0.5,
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"yuoki-alien-recipe"},
		crafting_speed = 1,
		
		energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions_per_minute = 25 },
		energy_usage = "100MW",
		ingredient_count = 3,
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="a[atomics]",
	},		
	
	-- water generator - solid fuel
	{
		type = "assembling-machine",
		name = "y-water-gen",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_water_gen_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-water-gen"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 80,
				base_level = 5,
				pipe_connections = {
					{type="output", position = {0, 2}}, {type="output", position = {0, -2}},					
				}
			},
			--off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Yuoki__/graphics/entity/watergen_c_sheet.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 16,
			line_length = 4,
			shift = {0.375, -0.25},
			scale = 0.5,
		},
		crafting_categories = {"yuoki-watergen-recipe"},
		crafting_speed = 1,
		energy_source =
		{		
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.8,
			fuel_inventory_size = 3,
			emissions_per_minute = 5,
			smoke = {{name = "smoke",deviation = {0.65, -0.2},frequency = 1}}
		},
		energy_usage = "125kW",						
		ingredient_count = 2,
		module_specification =
		{
			module_slots = 1
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="water-gen1",
	},	

	-- water generator - electric fuel
	{
		type = "assembling-machine",
		name = "y-water-gen-e",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/alien_water_gen-e-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-water-gen-e"},
		max_health = 200,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 100,
				base_level = 5,
				pipe_connections = {
					{type="output", position = {0, 2}}, {type="output", position = { 0, -2}},					
					{type="output", position = {2, 0}}, {type="output", position = {-2,  0}},					
				}
			},
			--off_when_no_fluid_recipe = true
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		--fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/watergen_e_sheet.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 16,
			line_length = 4,
			shift = {0.375, -0.25},
			scale = 0.5,
		},		
		crafting_categories = {"yuoki-watergen-recipe"},
		crafting_speed = 1,
		energy_source ={	
			type = "electric",
			usage_priority = "secondary-input",
			emissions_per_minute = 0.75 },
		energy_usage = "150kW",						
		ingredient_count = 2,
		module_specification =
		{
			module_slots = 1
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="water-gen2",
	},	

	-- water mixer - electric fuel
	{
		type = "assembling-machine",
		name = "y_water_mixer",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/water_mixer_icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y_water_mixer"},
		max_health = 350,
		corpse = "big-remnants",
		resistances = {{type = "physical",percent = 60},{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "output",
				base_area = 60,
				base_level = 1,
				pipe_connections = {
					--{type="input", position = {0, 2}}, {type="input", position = { 0, -2}},					
					{type="output", position = {2, 0}}, {type="output", position = {-2,  0}},					
				}
			},
			{
				production_type = "input",
				base_area = 60,
				base_level = -1,
				pipe_connections = {
					{type="input", position = {0, 2}}, {type="input", position = { 0, -2}},					
					--{type="output", position = {2, 0}}, {type="output", position = {-2,  0}},					
				}
			},			
			--off_when_no_fluid_recipe = true			
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		--fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/water_mixer_sheet.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 16,
			line_length = 4,
			scale = 0.5,
			shift = {0.475, -0.275}
		},		
		crafting_categories = {"yuoki-watergen-recipe"},
		crafting_speed = 1,
		
		energy_usage = "4MW",						
		energy_source =
		{
			type = "burner",
			fuel_category = "chemical",
			effectivity = 0.75,
			fuel_inventory_size = 3,			
			emissions_per_minute = 61.54,
			smoke = {{ name = "smoke", deviation = {0.1, 0.1}, frequency = 1.5, }}},
		--[[		
		energy_source ={	
			type = "electric",
			usage_priority = "secondary-input",
			emissions = 0.005, },
		]]
		
		ingredient_count = 3,
		module_specification = { module_slots = 1 }, allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		order="water-mix",
	},	

	{
		type = "assembling-machine",
		name = "y-heat-form-press",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/pressure_icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 0.5,result = "y-heat-form-press"},
		max_health = 100,
		resistances = {{type = "fire",percent = 70}},
		collision_box = {{-0.7,-0.7},{0.7,0.7}},
		selection_box = {{-1.0,-1.0},{1.0,1.0}},
		animation = {
			filename = "__Yuoki__/graphics/entity/formpress_anim.png",
			priority = "medium",
			width = 64,
			height = 72,
			frame_count = 9,						
			shift = {0.0, -0.25},
			animation_speed=0.5,
		},					
		crafting_categories = {"yuoki-formpress-recipe"},
		crafting_speed = 1.25,
		energy_source = { type = "burner", fuel_category = "chemical", effectivity = 1, fuel_inventory_size = 2, emissions_per_minute = 15, smoke = {{name = "smoke",deviation = {0.1, 0.1},frequency = 1}}},
		energy_usage = "300kW",	
		--energy_source = {type = "electric", input_priority = "secondary", usage_priority = "secondary-input", emissions = 0.05, },
		--energy_usage = "475kW",
		ingredient_count = 4,
		fluid_boxes =
		{
			off_when_no_fluid_recipe = true,			
			{
				production_type = "input",
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = { -0.5, 1.5} }}
			},
			{
				production_type = "input",
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {  0.5, 1.5} }}
			},			
			{
				production_type = "output",
				--pipe_covers = pipecoverspictures(),				
				base_level = 1,
				pipe_connections = {{position = { 1.5, -0.5} }}
			},
			{
				production_type = "output",
				--pipe_covers = pipecoverspictures(),				
				base_level = 1,
				pipe_connections = {{position = { -1.5, -0.5} }}
			},			
		},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
	},

	
	{
		type = "assembling-machine",
		name = "y-crusher",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/crusher-icon.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		minable = {mining_time = 0.5, result = "y-crusher"},
		max_health = 300,
		corpse = "big-remnants",
		resistances = {{type = "fire",percent = 70}},
		fluid_boxes =
		{
			{
				production_type = "input",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {-0.5, -1.5} }}
			},
			{
				production_type = "output",
				--pipe_picture = assembler3pipepictures(),
				--pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0.5, 1.5} }}
			},
			off_when_no_fluid_recipe = true
		},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
		fast_replaceable_group = "assembling-machine",
		animation =
		{
			filename = "__Yuoki__/graphics/entity/crusher-anim.png",
			priority = "medium",
			width = 65,
			height = 78,
			frame_count = 11,
			line_length = 11,
			shift = {0.0, -0.0}
		},
		--crafting_categories = {"crafting", "advanced-crafting", "crafting-width-fluid","yuoki-import-bobores-wonder-recipe"},
		crafting_categories = {"y-crushing-recipe"},
		crafting_speed = 1.5,
		energy_source = { type = "burner", fuel_category = "chemical", effectivity = 1, fuel_inventory_size = 2, emissions_per_minute = 5, smoke = {{name = "smoke",deviation = {0.1, 0.1},frequency = 1}}},
		energy_usage = "100kW",			
		--energy_source = { type = "electric",usage_priority = "secondary-input",emissions = 0.02,},
		--energy_usage = "125kW",
		ingredient_count = 2,
		order="c[crush]",
	},	

})


