
data:extend(
{  

	{
		type = "logistic-robot",
		name = "yi_logistic-robot",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/rob_log_icon.png",
		flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
		minable = {hardness = 0.1, mining_time = 0.1, result = "yi_logistic-robot"},
		max_health = 800, resistances = {{type = "physical", decrease = 5, percent = 50 },{type = "impact", decrease = 5, percent = 50 },{type = "acid", decrease = 5, percent = 50 },},		
		collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
		max_payload_size = 3,
		speed = 0.20,
		transfer_distance = 0.5,
		max_energy = "2.5MJ",
		energy_per_tick = "0.025kJ",
		speed_multiplier_when_out_of_energy = 0.2,
		energy_per_move = "2.5kJ",
		min_to_charge = 0.2,
		max_to_charge = 0.9,
		idle =
		{
			filename = "__Yuoki__/graphics/entity/rob_log_sheet.png",
			priority = "high",
			line_length = 16,
			width = 40,
			height = 40,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
		idle_with_cargo =
		{
			filename = "__Yuoki__/graphics/entity/rob_log_sheet.png",
			priority = "high",
			line_length = 16,
			width = 40,
			height = 40,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
		in_motion =
		{
			filename = "__Yuoki__/graphics/entity/rob_log_sheet.png",
			priority = "high",
			line_length = 16,
			width = 40,
			height = 40,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
		in_motion_with_cargo =
		{
			filename = "__Yuoki__/graphics/entity/rob_log_sheet.png",
			priority = "high",
			line_length = 16,
			width = 40,
			height = 40,
			frame_count = 1,
			shift = {0,0},
			direction_count = 16,			
		},
		shadow_idle =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			shift = util.by_pixel(32, 19.5),
			direction_count = 16,
			y = 29,
			draw_as_shadow = true,
		},
		shadow_idle_with_cargo =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			shift = util.by_pixel(32, 19.5),
			direction_count = 16,
			draw_as_shadow = true,
		},
		shadow_in_motion =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
		width = 58,
		height = 29,
		frame_count = 1,
		shift = util.by_pixel(32, 19.5),
		direction_count = 16,
		y = 29,
		draw_as_shadow = true,
		},
		shadow_in_motion_with_cargo =
		{
			filename = "__base__/graphics/entity/logistic-robot/logistic-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 58,
			height = 29,
			frame_count = 1,
			shift = util.by_pixel(32, 19.5),
			direction_count = 16,
			draw_as_shadow = true,
		},
		--working_sound = flying_robot_sounds(),		
		cargo_centered = {0.0, 0.2},
	},

	{
		type = "construction-robot",
		name = "yi_construction-robot",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/rob_con_icon.png",
		flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map"},
		minable = {hardness = 0.1, mining_time = 0.1, result = "yi_construction-robot"},
		max_health = 800, resistances = {{type = "physical", decrease = 5, percent = 50 },{type = "impact", decrease = 5, percent = 50 },{type = "acid", decrease = 5, percent = 50 },},		
		collision_box = {{0, 0}, {0, 0}},
		selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
		max_payload_size = 3,
		speed = 0.20,
		transfer_distance = 0.5,
		max_energy = "2.5MJ",
		energy_per_tick = "0.025kJ",
		speed_multiplier_when_out_of_energy = 0.2,
		energy_per_move = "2.5KJ",
		min_to_charge = 0.2,
		max_to_charge = 0.9,
		working_light = {intensity = 0.8, size = 3},
		idle =
		{
			filename = "__Yuoki__/graphics/entity/rob_con_sheet.png",
			priority = "high",
			line_length = 16,
			width = 40,
			height = 40,
			frame_count = 1,
			shift = {0, 0},
			direction_count = 16,
		},
		in_motion =
		{
			filename = "__Yuoki__/graphics/entity/rob_con_sheet.png",
			priority = "high",
			line_length = 16,
			width = 40,
			height = 40,
			frame_count = 1,
			shift = {0, 0},
			direction_count = 16,
			--y = 36
		},
		shadow_idle =
		{
			filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 50,
			height = 24,
			frame_count = 1,
			shift = {1.09375, 0.59375},
			direction_count = 16
		},
		shadow_in_motion =
		{
			filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
			priority = "high",
			line_length = 16,
			width = 50,
			height = 24,
			frame_count = 1,
			shift = {1.09375, 0.59375},
			direction_count = 16
		},
		working =
		{

			filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
			priority = "high",

			--[[
			line_length = 16,
			width = 40,
			height = 40,
			frame_count = 16,
			shift = {0, 0},
			direction_count = 1,
			]]
			
			line_length = 2,
			width = 28,
			height = 36,
			frame_count = 2,
			shift = {0, -0.15625},
			direction_count = 16,			
			animation_speed = 0.3,
		},
		
		shadow_working =
		{
			stripes = util.multiplystripes(2,
			{
				{
					filename = "__base__/graphics/entity/construction-robot/construction-robot-shadow.png",
					width_in_frames = 16,
					height_in_frames = 1,
				}
			}),
			priority = "high",
			width = 50,
			height = 24,
			frame_count = 2,
			shift = {1.09375, 0.59375},
			direction_count = 16
		},
		
		smoke =
		{
			filename = "__base__/graphics/entity/smoke-construction/smoke-01.png",
			width = 39,
			height = 32,
			frame_count = 19,
			line_length = 19,
			shift = {0.078125, -0.15625},
			animation_speed = 0.3,
		},
		sparks =
		{
			{
				filename = "__base__/graphics/entity/sparks/sparks-01.png",
				width = 39,
				height = 34,
				frame_count = 19,
				line_length = 19,
				shift = {-0.109375, 0.3125},
				tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
				animation_speed = 0.3,
			},
			{
				filename = "__base__/graphics/entity/sparks/sparks-02.png",
				width = 36,
				height = 32,
				frame_count = 19,
				line_length = 19,
				shift = {0.03125, 0.125},
				tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
				animation_speed = 0.3,
			},
			{
				filename = "__base__/graphics/entity/sparks/sparks-03.png",
				width = 42,
				height = 29,
				frame_count = 19,
				line_length = 19,
				shift = {-0.0625, 0.203125},
				tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
				animation_speed = 0.3,
			},
			{
				filename = "__base__/graphics/entity/sparks/sparks-04.png",
				width = 40,
				height = 35,
				frame_count = 19,
				line_length = 19,
				shift = {-0.0625, 0.234375},
				tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
				animation_speed = 0.3,
			},
			{
				filename = "__base__/graphics/entity/sparks/sparks-05.png",
				width = 39,
				height = 29,
				frame_count = 19,
				line_length = 19,
				shift = {-0.109375, 0.171875},
				tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
				animation_speed = 0.3,
			},
			{
				filename = "__base__/graphics/entity/sparks/sparks-06.png",
				width = 44,
				height = 36,
				frame_count = 19,
				line_length = 19,
				shift = {0.03125, 0.3125},
				tint = { r = 1.0, g = 0.9, b = 0.0, a = 1.0 },
				animation_speed = 0.3,
			},
		},
		--repair_pack = "repair-pack",
		--working_sound = flying_robot_sounds(),		
		cargo_centered = {0.0, 0.2},
		construction_vector = {0.30, 0.22},
	},

})
