data:extend(
{

	{
		type = "autoplace-control",
		name = "y-res1",
		richness = true,
		order = "y-ore",
		category = "resource",
		has_starting_area_placement = true,
	},

	-- unicomp	
	{
		type = "item",
		name = "y-res1",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/uni-com-pur.png",		
		subgroup = "raw-resource",
		order = "r",
		stack_size = 250,
	},
	
	{
		type = "resource",
		name = "y-res1",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/uni-com-pur.png",
		flags = {"placeable-neutral"},
		order="a-b-d",
		minable =
		{
			hardness = 0.8,
			mining_particle = "stone-particle",
			mining_time = 1,
			result = "y-res1",
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
			control = "y-res1",
			sharpness = 15/16,
			richness_multiplier = 1500,
			richness_multiplier_distance_bonus = 200,
			richness_base = 10,
			coverage = 0.005,
			peaks = {
				{
					noise_layer = "iron-ore",
					noise_octaves_difference = -0.85,
					noise_persistence = 0.4,
				},
			},
			starting_area_size = 5,
			starting_area_amount = 1500,
			
		},
		stage_counts = {4000, 2000, 1500, 900, 300, 75, 25, 10},
		stages = { 
			sheet = {
				filename = "__Yuoki__/graphics/entity/resources/yi-res-1e.png",
				priority = "extra-high",
				width = 38,
				height = 38,
				frame_count = 4,
				variation_count = 8
			}
		},
		map_color = {r=0.1, g=0.1, b=0.7}
	}	
})

	
	