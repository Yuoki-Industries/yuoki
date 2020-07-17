data:extend(
{


	{
		type = "recipe",
		name = "yi_mine_plasma_recipe",
		enabled = "true",
		energy_required = 20,
		ingredients ={{"y_ammo_plasma", 4},{"copper-cable", 8},{"y_chip_plate", 4}},
		results=
		{
			{type="item", name="yi_mine_plasma", amount=4, },      	  						
			{type="item", name="ypfw_trader_sign", amount=1, },      	  						
		},				
		main_product="yi_mine_plasma",
		subgroup = "y-defense", order="t10",
	},

	{
		type = "item",
		name = "yi_mine_plasma",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine_plasma_icon.png",		
		damage_radius = 6,
		subgroup = "y-defense",
		order = "t10",
		place_result = "yi_mine_plasma",
		stack_size = 200,
		trigger_radius = 3,
	},

	{
		type = "land-mine",
		name = "yi_mine_plasma",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine_plasma_icon.png",
		flags =
		{
			"placeable-player",
			"placeable-enemy",
			"player-creation",
			--"placeable-off-grid"
		},
		minable = {mining_time = 1, result = "yi_mine_plasma"},
		max_health = 25,
		corpse = "small-remnants",
		collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		dying_explosion = "explosion-hit",
		picture_safe =
		{
			filename = "__Yuoki__/graphics/icons/mine_plasma_off.png", 
			priority = "medium",
			width = 64, height = 64, scale = 0.5,
		},
		picture_set =
		{
			filename = "__Yuoki__/graphics/icons/mine_plasma_on.png",
			priority = "medium",
			width = 64, height = 64, scale = 0.5,		
		},
		trigger_radius = 3.5,
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				source_effects =
				{
					{
						type = "nested-result",
						affects_target = true,
						action =
						{
							type = "area",
							radius = 8,
							perimeter = 8,
							collision_mask = { "player-layer" },
							action_delivery =
							{
								type = "instant",
								target_effects =
								{
									type = "damage",
									damage = { amount = 100, type = "plasma"}
								}
							}
						},
					},
					{ type = "create-entity", entity_name = "explosion" },
					{ type = "damage", damage = { amount = 1000, type = "explosion"}}
				}
			}
		},
	},

	{
		type = "recipe",
		name = "yi_mine_impact_recipe",
		enabled = "true",
		energy_required = 20,
		ingredients ={{"y_ammo_flame", 4},{"copper-cable", 8},{"y_chip_plate", 4}},
		results=
		{
			{type="item", name="yi_mine_impact", amount=4, },      	  						
			{type="item", name="ypfw_trader_sign", amount=1, },      	  						
		},				
		main_product="yi_mine_impact",
		subgroup = "y-defense", order="t10",
	},
	
	
	{
		type = "item",
		name = "yi_mine_impact",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine_imp_icon.png",		
		damage_radius = 10,
		subgroup = "y-defense",
		order = "t9",
		place_result = "yi_mine_impact",
		stack_size = 200,
		trigger_radius = 3
	},
	
	{
		type = "land-mine",
		name = "yi_mine_impact",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/mine_imp_icon.png",
		flags =
		{
			"placeable-player",
			"placeable-enemy",
			"player-creation",
			--"placeable-off-grid"
		},
		minable = {mining_time = 1, result = "yi_mine_impact"},
		max_health = 25,
		corpse = "small-remnants",
		collision_box = {{-0.4,-0.4}, {0.4, 0.4}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		dying_explosion = "explosion-hit",
		picture_safe =
		{
			filename = "__Yuoki__/graphics/icons/mine_imp_off.png",
			priority = "medium",
			width = 64, height = 64, scale = 0.5,
		},
		picture_set =
		{
			filename = "__Yuoki__/graphics/icons/mine_imp_on.png",
			priority = "medium",
			width = 64, height = 64, scale = 0.5,
		},
		trigger_radius = 3.5,
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				source_effects =
				{
					{
						type = "nested-result",
						affects_target = true,
						action =
						{
							type = "area",
							radius = 8,
							perimeter = 8,
							collision_mask = { "player-layer" },
							action_delivery =
							{
								type = "instant",
								target_effects =
								{
									type = "damage",
									damage = { amount = 30, type = "impact"},
									damage = { amount = 30, type = "poison"}									
								}
							}
						},
					},
					{ type = "create-entity", entity_name = "explosion" },
					{ type = "damage", damage = { amount = 1000, type = "explosion"}}
				}
			}
		},
	},
	
	
	
})