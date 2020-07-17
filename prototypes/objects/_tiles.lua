data:extend(
{


	{
		type="item", name="y_tile_slagbricks",  icon_size = 32, icon = "__Yuoki__/graphics/entity/path_tiles/bricks_3.png", 
		group="yuoki-energy", subgroup="y_tiles", order="c",  
		stack_size = 500, default_request_amount = 150,
		place_as_tile = {result = "y_tile_slagbricks",condition_size = 2,condition = { "water-tile" }}
	},
	{
		type="item", name="y_tile_slagpattern",  icon_size = 32, icon = "__Yuoki__/graphics/entity/path_tiles/muster_2.png", 
		group="yuoki-energy", subgroup="y_tiles", order="b",  
		stack_size = 500, default_request_amount = 150,
		place_as_tile = {result = "y_tile_slagpattern",condition_size = 2,condition = { "water-tile" }}
	},
	{
		type="item", name="y_tile_slagfilled",  icon_size = 32, icon = "__Yuoki__/graphics/entity/path_tiles/pslag_icon.png",
		group="yuoki-energy", subgroup="y_tiles", order="a",  
		stack_size = 500, default_request_amount = 150,
		place_as_tile = {result = "y_tile_slagfilled",condition_size = 2,condition = { "water-tile" }}
	},

	{
		type="item", name="y-slag",  icon_size = 32, icon = "__Yuoki__/graphics/icons/y-slag.png", 
		group="yuoki", subgroup="y-raw-material", order="a",  
		stack_size = 2500, default_request_amount = 150,
		place_as_tile = {result = "y_tile_slagstones",condition_size = 2,condition = { "water-tile" }}
	},
	
	
	{
		type = "tile",
		name = "y_tile_slagbricks",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_tile_slagbricks"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.3,
		layer = 59,
		decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__Yuoki__/graphics/entity/path_tiles/bricks_3.png",
					count = 1,
					size = 1
				},
			},
			inner_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-o.png",
				count = 1
			}
		},
		walking_sound = concrete_sounds,
		pollution_absorption_per_second = 0,
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	{
		type = "tile",
		name = "y_tile_slagpattern",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_tile_slagpattern"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.3,
		layer = 59,
		decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__Yuoki__/graphics/entity/path_tiles/muster_2.png",
					count = 1,
					size = 1
				},
			},
			inner_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-o.png",
				count = 1
			}
		},
		walking_sound = concrete_sounds,
		pollution_absorption_per_second = 0,
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	{
		type = "tile",
		name = "y_tile_slagfilled",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_tile_slagfilled"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.3,
		layer = 59,
		decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__Yuoki__/graphics/entity/path_tiles/slag1.png",
					count = 16,
					size = 1
				},
				{
					picture = "__Yuoki__/graphics/entity/path_tiles/slag2.png",
					count = 4,
					size = 2,
					probability = 0.39,
				},
				{
					picture = "__Yuoki__/graphics/entity/path_tiles/slag4.png",
					count = 4,
					size = 4,
					probability = 1,
				},
			},
			inner_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-o.png",
				count = 1
			}
		},
		walking_sound = concrete_sounds,
		pollution_absorption_per_second = 0,
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	
	{
		type = "tile",
		name = "y_tile_slagstones",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y-slag"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = {"ground-tile"},
		walking_speed_modifier = 1.2,
		layer = 59,
		decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__Yuoki__/graphics/entity/path_tiles/slag_stones.png",
					count = 16,
					size = 1
				},
			},
			inner_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/slag_stones_corners.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/slag-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/slag-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__Yuoki__/graphics/entity/path_tiles/concrete-o.png",
				count = 1
			}
		},
		walking_sound = concrete_sounds,
		pollution_absorption_per_second = 0,
		map_color={r=50, g=50, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	}	
	
	
})
