data:extend(
{	

	
	-- Little Stirling Engine	
	--[[
	{
		type = "recipe",
		name = "y-small-stirling-engine-recipe",
		ingredients = {{"y-basic-t1-mf",1},{"y-heat-pipe",2},},
		result = "y-small-stirling-engine",
		enabled = "true",		
		result_count = 1,
		order="p-b",
		subgroup = "yuoki-energy-gen",	
	},		
	{
		type = "item",
		name = "y-small-stirling-engine",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/fce-icon.png",		
		order = "1",
		--place_result = "y-small-stirling-engine",
		stack_size = 25,
		group="yuoki",
		subgroup = "y-parts",		
	},	
	]]	
	
	{
		type = "recipe",
		name = "y-solar-dish-recipe",
		ingredients = {{"y-chip-1",3},{"y-heat-pipe",2},{"steel-plate",3},},
		result = "y-stirling-solar-dish",
		enabled = "true",		
		result_count = 1,
		order="e-za",
		group="yuoki-energy",
		subgroup = "y-energy-2",
	},		
	{
		type = "item",
		name = "y-stirling-solar-dish",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/stir-solar-dish-icon.png",		
		order = "e-za", group="yuoki-energy", subgroup = "y-energy-2",
		place_result = "y-stirling-solar-dish",
		stack_size = 25,
	},	
	
	{
		type = "recipe",
		name = "y_alien_solar_recipe",
		ingredients = {{"y_structure_element",122},{"y-orange-stuff",100},{"y-raw-fuelnium",10},{"y-chip-1",30},{"y_rwtechsign", 20},},
		result = "y_alien_solar",
		enabled = "true",		
		result_count = 1,
		order="e-zb",
		group="yuoki-energy",
		subgroup = "y-energy-2",
	},					
	{
		type = "item",
		name = "y_alien_solar",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/yi_alien_solar_icon.png",		
		order = "zb", group="yuoki-energy", subgroup = "y-energy-2",
		place_result = "y_alien_solar",
		stack_size = 25,
	},			

	{
		type = "recipe",
		name = "y_alien_solar2_recipe",
		ingredients = {{"y_structure_element",92},{"y-orange-stuff",100},{"y-infused-uca2",12},{"y-quantrinum",4},{"y_rwtechsign", 30},},
		result = "y_alien_solar2",
		enabled = "true",		
		result_count = 1,
		order="e-zc",
		group="yuoki-energy",
		subgroup = "y-energy-2",
	},					
	{
		type = "item",
		name = "y_alien_solar2",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/yi_alien_solar2_icon.png",		
		order = "zc", group="yuoki-energy", subgroup = "y-energy-2",
		place_result = "y_alien_solar2",
		stack_size = 15,
	},			
	
	
	-- small electric generator
	{
		type = "recipe",
		name = "y-seg-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/seg_icon.png",
		ingredients = {{"y-basic-t2-mf",1}, {"y-unicomp-raw", 2}, {"y-chip-1", 2}, {"y-unicomp-a2", 1}},		
		results = { {type="item", name="y-seg", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },		
		main_product = "y-seg",
		enabled = "true",						
		group="yuoki-energy", subgroup = "y-boiler",	
		order="g-1",
	},	
	-- medium-s electric generator
	{
		type = "recipe",
		name = "y-meg-s-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/energy-t2/meg-s-icon.png",
		ingredients = {{"y-basic-t2-mf",2}, {"y-unicomp-raw", 6}, {"y-chip-2", 3}, {"y-unicomp-a2", 2}},
		results = { {type="item", name="y-meg-s", amount=1,}, {type="item", name="y_rwtechsign", amount=3,}, },				
		main_product = "y-meg-s",
		enabled = "true",						
		group="yuoki-energy", subgroup = "y-boiler",					
		order="g-2",
	},	

	-- big electric generator
	{
		type = "recipe",
		name = "y-beg-recipe",
		ingredients = {{"y-basic-t2-mf",4}, {"y-unicomp-raw", 12}, {"y-chip-2", 6}, {"y-unicomp-a2", 4}, {"y_rwtechsign", 3}, },
		result = "y-beg",
		enabled = "true",		
		result_count = 1,		
		group="yuoki-energy", subgroup = "y-boiler",	
		order="g-3",
	},	
	-- huge electric generator
	{
		type = "recipe",
		name = "y-heg-recipe",
		ingredients = {{"y-basic-t2-mf",4}, {"y-unicomp-raw", 10}, {"y-chip-2", 4}, {"y-unicomp-a2", 8}, {"y-bluegear", 8}, {"y_rwtechsign", 7},},
		result = "y-heg",
		enabled = "true",		
		result_count = 1,		
		group="yuoki-energy", subgroup = "y-boiler",					
		order="g-4",
	},		
	{
		type = "recipe",
		name = "y-boiler-iv-recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/boiler3mw_icon2.png",
		ingredients = {{"steel-plate", 3}, {"y_structure_element",8}, {"y_gauge",1}, {"y-pipe-hc", 8}},
		results = { {type="item", name="y-boiler-iv", amount=1,}, {type="item", name="y_rwtechsign", amount=2,}, },						
		main_product = "y-boiler-iv",		
		group = "yuoki-energy",
		subgroup = "y-boiler",					
		order="b-1",
	},
	--y-obninsk-reactor
	{
		type = "recipe",
		name = "y-obninsk-reactor-recipe",
		ingredients = {{"y-rare-wall-adv", 20}, {"y_structure_element", 20}, {"y-pipe-ec", 8}, {"y-basic-t2-mf", 3}, {"y_gauge",4}, {"y_rwtechsign", 20},},
		result = "y-obninsk-reactor",
		group = "yuoki-energy", subgroup = "y-boiler",					
		order="b-2",
	},
		
	-- Generators	
	--y-obninsk-turbine (rensuir)
	{
		type = "recipe",
		name = "y-obninsk-turbine-recipe",
		ingredients = {{"y_structure_vessel", 14}, {"y-unicomp-raw", 15}, {"y-basic-t2-mf", 2}, {"y-pipe-ec", 10},{"y-quantrinum", 3}, {"y_rwtechsign", 50},},		
		results = { {type="item", name="y-obninsk-turbine", amount=1,}, {type="item", name="ye_science_blue", amount=2,}, },								
		main_product = "y-obninsk-turbine",					
		group = "yuoki-energy", subgroup = "y-boiler",	
		order="s3",	
	},	
	{
		type = "recipe",
		name = "y-notfall-generator-s2-recipe",
		ingredients = {{"iron-plate",4}, {"iron-gear-wheel",2}, {"copper-plate",4},},
		result = "y-notfall-generator-s2",
		enabled = "true",		
		result_count = 1,
		group = "yuoki-energy", subgroup = "y-boiler", order="s1",	
	},
	-- big (ab Jan/2015 standard-steam-turbine)
	{
		type = "recipe",
		name = "y-steam-turbine-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/steam_turbine_n3_icon.png",
		ingredients = {{"engine-unit",2},{"y_structure_element",10},{"y-heat-pipe",3},{"y-unicomp-raw",3},},		
		results = { {type="item", name="y-steam-turbine", amount=1,}, {type="item", name="y_rwtechsign", amount=2,}, },								
		main_product = "y-steam-turbine",		
		enabled = "true",				
		group = "yuoki-energy", subgroup = "y-boiler", order="s2",	
	},	
	
	
})