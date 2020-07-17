data:extend({

	-- 
	{
	  type = "recipe",
	  name = "yi_roboport_recipe",
	  category = "yuoki-wonder-recipe", -- 
	  enabled = "true",
	  energy_required = 5.00,
	  ingredients = {
		{ type = "item", name = "y_structure_element" , amount = 14, },
		{ type = "item", name = "yi_magnetron" , amount = 2, },
		{ type = "item", name = "y-accumulator-b" , amount = 2, },				
		{ type = "item", name = "y-basic-t1-mf" , amount = 2, },
		{ type = "item", name = "y_rwtechsign" , amount = 10, },
	  },
	  results = {
		{ type = "item", name = "yi_roboport", amount = 1, },
		{ type = "item", name = "ypfw_trader_sign", amount = 3, },
	  },
	  main_product="yi_roboport",
	   icon_size = 32, icon =  "__Yuoki__/graphics/entity/yi_roboport_icon.png",
	  order = "a", group = "yuoki", subgroup = "y_line1b",
	},

	-- 
	{
	  type = "recipe",
	  name = "yi_radar_recipe",
	  category = "yuoki-wonder-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_structure_element" , amount = 8, },
		{ type = "item", name = "yi_magnetron" , amount = 1, },
		{ type = "item", name = "y-basic-t2-mf" , amount = 2, },
		{ type = "item", name = "y-raw-fuelnium" , amount = 3, },
		{ type = "item", name = "y_rwtechsign" , amount = 4, },
	  },
	  results = {
		{ type = "item", name = "yi_radar", amount = 1, },
		{ type = "item", name = "ye_science_blue", amount = 1, },
	  },
	  main_product="yi_radar",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/radar_icon.png",
	  order = "a", group = "yuoki", subgroup = "y_line1b",
	},

	-- 
	{
	  type = "recipe",
	  name = "yi_beacon_recipe",
	  category = "yuoki-wonder-recipe", -- 
	  enabled = "true",
	  energy_required = 3.00,
	  ingredients = {
		{ type = "item", name = "y_structure_element" , amount = 12, },
		{ type = "item", name = "yi_magnetron" , amount = 4, },
		{ type = "item", name = "y-chip-2" , amount = 6, },
		{ type = "item", name = "y_quantrinum_infused" , amount = 1, },
		{ type = "item", name = "y_rwtechsign" , amount = 6, },
	  },
	  results = {
		{ type = "item", name = "yi_beacon", amount = 1, },
		{ type = "item", name = "ypfw_trader_sign", amount = 3, },
	  },
	  main_product="yi_beacon",
	   icon_size = 32, icon =  "__Yuoki__/graphics/icons/beacon_icon.png",
	  order = "a", group = "yuoki", subgroup = "y_line1b",
	},
	
})