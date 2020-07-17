
data:extend({
	{
		type = "radar",
		name = "yi_radar",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/radar_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "yi_radar"},
		max_health = 250,
		corpse = "big-remnants",
		collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		energy_per_sector = "10MJ",
		max_distance_of_sector_revealed = 20,
		max_distance_of_nearby_sector_revealed = 5,
		energy_per_nearby_scan = "500kJ",
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "500kW",
		pictures =
		{
			filename = "__Yuoki__/graphics/entity/radar_sheet.png",
			priority = "low",
			width = 160,
			height = 160,
			apply_projection = false,
			direction_count = 64,
			line_length = 8,
			shift = {0.875, -1}
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound = {
				{
					filename = "__base__/sound/radar.ogg"
				}
			},
			apparent_volume = 1.5,
		}
	},
	
	{
		type = "beacon",
		name = "yi_beacon",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/beacon_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "yi_beacon"},
		max_health = 300,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		allowed_effects = {"consumption", "speed", "pollution"},
		
		base_picture =
		{
			filename = "__Yuoki__/graphics/entity/beacon_anim0001.png",
			width = 160,
			height = 160,
			shift = { 0.6875, -0.75}
		},
		
		animation =
		{
			filename = "__Yuoki__/graphics/entity/beacon_sheet.png",
			width = 160,
			height = 160,
			line_length = 5,
			frame_count = 25,
			shift = { 0.6875, -0.75},
			animation_speed = 0.20
		},
		
		animation_shadow =
		{		
			filename = "__Yuoki__/graphics/entity/empty32.png",
			width = 5,
			height = 5,
			line_length = 5,
			frame_count = 25,
			shift = { 0, 0},
			--animation_speed = 0.5		
		},		
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
			width = 12,
			height = 12,
		},
		supply_area_distance = 5,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		energy_usage = "720kW",
		distribution_effectivity = 0.65,
		module_specification =
		{
			module_slots = 2,
			module_info_icon_shift = {0, 0.5},
			module_info_multi_row_initial_height_modifier = -0.3
		}
	},

	{
		type = "roboport",
		name = "yi_roboport",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/yi_roboport_icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "yi_roboport"},
		max_health = 750,
		corpse = "big-remnants",
		collision_box = {{-1.7, -1.7}, {1.7, 1.7}},
		selection_box = {{-2, -2}, {2, 2}},
		dying_explosion = "medium-explosion",
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			input_flow_limit = "25MW",
			buffer_capacity = "800MJ"
		},
		recharge_minimum = "50MJ",
		energy_usage = "500kW",
		-- per one charge slot
		charging_energy = "4MW",
		logistics_radius = 64,
		construction_radius = 72,
		charge_approach_distance = 10,
		robot_slots_count = 6,
		material_slots_count = 6,
		stationing_offset = {0, -0.5},
		charging_offsets =
		{
			{0, 0}, {0, -1}, {0, 1}, 
			{-1.5, -0.5}, {1.5, -0.5}, {1.5, 1.5}, {-1.5, 1.5},
			{-2.5, -0.5}, {2.5, -0.5}, {2.5, 1.5}, {-2.5, 1.5},
			{-1.5,  0.0}, {1.5,  0.0}, {0, 1.5}, {0, -1.5},
		},
		base =
		{
			filename = "__Yuoki__/graphics/entity/roboport_frame.png",
			width = 320,
			height = 320,
			scale = 0.5,
			shift = {0.5, -0.5}
		},
		base_patch =
		{
			filename = "__Yuoki__/graphics/entity/empty32.png",
			priority = "medium",
			width = 32,
			height = 32,
			frame_count = 1,
			shift = {0, 0}
		},
		base_animation =
		{
			filename = "__Yuoki__/graphics/entity/roboport_sheet.png",
			priority = "medium",
			width = 320,
			height = 320,
			scale = 0.5,
			frame_count = 9, line_length=3,
			animation_speed = 0.05,
			shift = {0.5, -0.5}
		},
		
		door_animation_up =
		{
			filename = "__Yuoki__/graphics/entity/empty25x25.png",
			priority = "medium",
			width = 5,
			height = 25,
			frame_count = 5,
			shift = {0, 0}
		},
		
		door_animation_down =
		{
			filename = "__Yuoki__/graphics/entity/empty25x25.png",
			priority = "medium",
			width = 5,
			height = 25,
			frame_count = 5,
			shift = {0, 0}
		},
		
		recharging_animation =
		{
			filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
			priority = "high",
			width = 37,
			height = 35,
			frame_count = 16,
			scale = 1.5,
			animation_speed = 0.5
		},
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		working_sound =
		{
			sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
			max_sounds_per_type = 3,
			audible_distance_modifier = 0.5,
			probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
		},
		recharging_light = {intensity = 0.4, size = 5},
		request_to_open_door_timeout = 15,
		spawn_and_station_height = -0.1,
		radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/roboport/roboport-radius-visualization.png",
			width = 30,
			height = 30,
			priority = "extra-high-no-scale"
		},
		construction_radius_visualisation_picture =
		{
			filename = "__base__/graphics/entity/roboport/roboport-construction-radius-visualization.png",
			width = 35,
			height = 35,
			priority = "extra-high-no-scale"
		},
		open_door_trigger_effect =
		{
			{
				type = "play-sound",
				sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.9 }
			},
		},
		close_door_trigger_effect =
		{
			{
				type = "play-sound",
				sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.5 }
			},
		},
		circuit_wire_connection_point =
		{
			shadow =
			{
				red = {1.17188, 1.98438},
				green = {1.04688, 2.04688}
			},
			wire =
			{
				red = {0.78125, 1.375},
				green = {0.78125, 1.53125}
			}
		},
		--circuit_connector_sprites = get_--circuit_connector_sprites({0.59375, 1.3125}, nil, 18),
		circuit_wire_max_distance = 7.5,
		default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
		default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
		default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
		default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
	},	
	
	
})
