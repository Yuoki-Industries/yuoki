data:extend(
{

	{
		type = "recipe",
		name = "y-infused-uca2-recipe",		
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/infused_uca2.png",
		enabled = "true", energy_required = 60, ingredients = {{"y-unicomp-a2", 1},}, 
		results = { {type="item", name="y-infused-uca2", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },	
		main_product = "y-infused-uca2",
		subgroup = "y-fuel", category="yuoki-alien-recipe",		
	},	
	{
		type = "recipe",
		name = "y-infused-mud-recipe",		
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/fuel_cell_d.png",
		enabled = "true", energy_required = 16, ingredients = {{"y-dry_mud", 10},}, 
		results = { {type="item", name="y-infused-mud", amount=10,}, {type="item", name="y_rwtechsign", amount=1,}, },	
		main_product = "y-infused-mud",
		subgroup = "y-fuel", category="yuoki-alien-recipe",		
	},	

	
	-- first step, crushing unicomp, rawfuel	
	{
		type = "recipe",
		name = "y-crush-unicomp-raw-recipe",
		category = "y-crushing-recipe",
		energy_required = 6,
		ingredients = {
			{"y-res1", 1},			
			{type="fluid", name="water", amount=200},
		},
		results=
		{
			{type="item", name="y-crush-yres1", amount=2, },      	  						
		},
		enabled = "true",
		order = "crush_b-1",					
		subgroup = "y_line3",
	},	
	{
		type = "recipe",
		name = "y-crush-fuel-raw-recipe",
		category = "y-crushing-recipe",
		energy_required = 6,
		ingredients = {
			{"y-res2", 1},			
			{type="fluid", name="water", amount=200},
		},
		results=
		{
			{type="item", name="y-crush-yres2", amount=2, },      	  						
		},
		enabled = "true",
		order = "crush_ge-1",					
		subgroup = "y_line3",
	},

	-- toolhead-crushs
	{
		type = "recipe",
		name = "y-crush-blue_whead-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/dust_blue_whead.png",
		category = "y-crushing-recipe",
		energy_required = 7,
		ingredients = {
			{"y-res1", 5},			
			{"y_toolhead", 1},			
			--{type="fluid", name="water", amount=2},
		},
		results=
		{
			{type="item", name="y-crush-yres1", amount=12, },      	  						
			{type="item", name="y_toolhead_broken", amount=1, },      	  						
		},
		enabled = "true",
		order = "crush_b-2",					
		subgroup = "y_line3",
	},
	{
		type = "recipe",
		name = "y-crush-green_whead-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/dust_green_whead.png",
		category = "y-crushing-recipe",
		energy_required = 7,
		ingredients = {
			{"y-res2", 5},			
			{"y_toolhead", 1},			
			--{type="fluid", name="water", amount=2},
		},
		results=
		{
			{type="item", name="y-crush-yres2", amount=12, },      	  						
			{type="item", name="y_toolhead_broken", amount=1, },      	  						
		},
		enabled = "true",
		order = "crush_g-2",					
		subgroup = "y_line3",
	},
	
	-- mixing-recipe
	{
		type = "recipe",
		name = "y-mixing-rich-recipe",
		--category = "smelting",		
		enabled = "true", energy_required = 2.0, ingredients = {{"y-crush-yres1", 10}, {"y-crush-yres2", 10}}, result = "y-richdust", result_count = 20, subgroup = "y_line3",
		order="m-refined-x0",
	},	
	
	-- smeltings
	{
		type = "recipe",
		name = "y-press-richdust-recipe", category = "yuoki-formpress-recipe",		
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/uni-komp-a2-icon.png",
		enabled = "true", energy_required = 8.0, ingredients = {{"y-richdust", 20}}, results = { {type="item", name="y-unicomp-a2", amount=1,}, {type="item", name="y-slag", amount=1,},}, subgroup = "y_line4",
		order="m-refined-x1",
	},	
	--[[
	{
		type = "recipe",
		name = "y-smelt-richdust-recipe", category = "smelting",		
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/orange-stuff.png",
		enabled = "true", energy_required = 3.0, ingredients = {{"y-richdust", 3}}, results = {{type="item", name="y-orange-stuff", amount=2,},}, subgroup = "yuoki-formpress",
		order="m-refined-x2",
	},	
	]]
	{
		type = "recipe",
		name = "y-smelt-crush-res1-recipe", category = "yuoki-formpress-recipe",		
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/n4pellets_icon.png",
		enabled = "true", energy_required = 4.0, ingredients = {{"y-crush-yres1", 3}}, results = { {type="item", name="y-refined-yres1", amount=1,}, {type="item", name="y-slag", amount=1,},}, subgroup = "y_line4",				
		order="m-refined-b1",
	},
	{
		type = "recipe",
		name = "y-unicomp-raw-recipe",
		category = "yuoki-formpress-recipe",		
		enabled = "true", energy_required = 8.0, ingredients = {{"y-refined-yres1", 3},}, result = "y-unicomp-raw", result_count = 1, subgroup = "y_line4",				
		order="m-refined-b2",
	},	
	{
		type = "recipe",
		name = "y-smelt-crush-res2-recipe", category = "yuoki-formpress-recipe",		
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/f7pellets_icon.png",
		enabled = "true", energy_required = 6.0, ingredients = {{"y-crush-yres2", 2}}, results = { {type="item", name="y-refined-yres2", amount=1,}, {type="item", name="y-slag", amount=1,}, }, subgroup = "y_line4",								
		order="m-refined-g1",
	},
	{
		type = "recipe",
		name = "y-raw-fuelnium-recipe",
		category = "yuoki-formpress-recipe",		
		enabled = "true", energy_required = 10.0, ingredients = {{"y-refined-yres2", 2},}, result = "y-raw-fuelnium", result_count = 1, subgroup = "y_line4",					
		order="m-refined-g2",
	},	
	{
		type = "recipe",
		name = "y-fuel-reactor-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/reactor-fuel.png", enabled = true, energy_required = 10,
		ingredients ={{"y-raw-fuelnium", 1},{"y-unicomp-raw", 1},{"iron-plate", 3}}, 
		results = { {type="item", name="y-fuel-reactor", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },				
		main_product = "y-fuel-reactor",
		subgroup = "y-fuel",				
	},	
		
	-- Quantrinum
	{
		type = "recipe",
		name = "y-quantrinum-recipe",		
		category = "yuoki-wonder-recipe",	
		energy_required = 20, enabled = "true",
		ingredients = {{"y-unicomp-a2", 15},{"y-raw-fuelnium", 12},{"y-unicomp-raw", 12},{"y-crystal2", 8},},
		results = { {type="item", name="y-quantrinum", amount=1,}, {type="item", name="ye_science_blue", amount=1,}, },		
		main_product = "y-quantrinum",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/quantrinum.png",
		subgroup = "y-tech", order="m-quantrinum",
	},	
	-- Lachnan-Crystal
	{
		type = "recipe",
		name = "y-crystal-cnd-recipe",		
		category = "yuoki-wonder-recipe",	
		energy_required = 30, enabled = "true",
		ingredients = {{"y-pure-iron", 10}, {"y-slag", 40}, {"y-unicomp-a2", 8},{"y-crystal2", 10},},
		results = { {type="item", name="y-crystal-cnd", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },		
		main_product = "y-crystal-cnd",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/crystal_3.png",
		subgroup = "y-tech", order="m-crystal",
	},	
	-- Alien Fuel Cell
	--[[
	{
		type = "recipe",
		name = "y-fuel-alien-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/fuel_cell_b.png", enabled = true, energy_required = 30,
		category = "yuoki-wonder-recipe",
		ingredients ={{"y-fuel-reactor", 1},}, result = "y-fuel-alien", result_count = 1,			
		subgroup = "y-energy",				
	},	
	]]
	{
		type = "recipe",
		name = "y-pure-copper-recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 3,
		ingredients = {
			{"copper-ore",5}, 
			{type="fluid", name="water", amount=800},
		},
		results=
		{
			{type="item", name="y-pure-copper", amount=3 },      	  
			{type="fluid", name="y-con_water", amount=500 }
		},
		enabled = "true",				
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/pure-copper-n.png",
		group = "yuoki", subgroup = "y_line2", order="z-b-copper",		
	},
	
	{
		type = "recipe",
		name = "y-pure-iron-recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 3,
		ingredients = {
			{"iron-ore",5}, 
			{type="fluid", name="water", amount=800},
		},
		results=
		{
			{type="item", name="y-pure-iron", amount=3 },      	  
			{type="fluid", name="y-con_water", amount=500 }
		},
		enabled = "true",				
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/pure-iron-n.png",		
		group = "yuoki", subgroup = "y_line2", order="z-a-iron",		
	},	

	-- with tools	
	{
		type = "recipe",
		name = "y_pure_copper_wtool_recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 6,
		ingredients = {
			{"copper-ore",15}, 
			{"y_toolhead",1}, 
			{type="fluid", name="water", amount=320},
		},
		results=
		{
			{type="item", name="y-pure-copper", amount=12 },      	  
			{type="item", name="y_toolhead_broken", amount=1 },
			{type="fluid", name="y-con_water", amount=200 }
		},
		enabled = "true",				
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/pure_copper_wt.png",
		group = "yuoki", subgroup = "y_line2", order="z-b-copper",		
	},	
	{
		type = "recipe",
		name = "y_pure_iron_wtool_recipe",
		category = "yuoki-archaeology-wash",
		energy_required = 6,
		ingredients = {
			{"iron-ore",15}, 
			{"y_toolhead",1}, 
			{type="fluid", name="water", amount=320},
		},
		results=
		{
			{type="item", name="y-pure-iron", amount=12 },      	  
			{type="item", name="y_toolhead_broken", amount=1 },
			{type="fluid", name="y-con_water", amount=200 }
		},
		enabled = "true",				
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/pure_iron_wt.png",		
		group = "yuoki", subgroup = "y_line2", order="z-a-iron",		
	},	

	{
		type = "recipe",
		name = "y-refined-copper",
		category = "smelting",
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-pure-copper", 1}},
		result = "copper-plate",
		result_count = 2,
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/pure-copper-n.png",
		order="m-refined-copper",
	},
	{
		type = "recipe",
		name = "y-refined-iron",
		category = "smelting",
		energy_required = 4.0,
		enabled = "true",
		ingredients = {{"y-pure-iron", 1}},
		result = "iron-plate",
		result_count = 2,
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/pure-iron-n.png",
		order="m-refined-iron",		
	},
		
		

	
})