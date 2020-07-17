data:extend(
{
	
	{
		type = "recipe",
		name = "y-bluegear-recipe",
		enabled = true,	energy_required = 0.5,  group = "yuoki", subgroup = "y-parts", order = "p-g1",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/bluegear-icon.png",    		
		ingredients ={{"steel-plate", 1},{"y-refined-yres1", 1},}, result = "y-bluegear", result_count = 3, 
	},		
	{
		type = "recipe",
		name = "y_structure_element_recipe",
		enabled = true,	energy_required = 0.5,  group = "yuoki", subgroup = "y-parts", order = "p-g2",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/structur_element.png",    		
		ingredients ={{"iron-plate", 4},{"y-unicomp-raw", 2},}, result = "y_structure_element", result_count = 3, 
	},		
	{
		type = "recipe",
		name = "y_structure_vessel_recipe",
		enabled = true,	energy_required = 0.5,  group = "yuoki", subgroup = "y-parts", order = "p-g3",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/vessel_structure_icon.png",    		
		ingredients ={{"steel-plate", 2},{"y-unicomp-raw", 1},}, result = "y_structure_vessel", result_count = 2, 
	},		
	
	-- basic stage-1 maschine frame
	{
		type = "recipe",
		name = "y-basic-st1-mf-recipe",
		ingredients = {{"y-conductive-wire-1",3},{"y-bluegear",3}, {"y_structure_element", 2}},
		result = "y-basic-t1-mf",
		enabled = "true",		
		result_count = 1,
		group = "yuoki",
		subgroup = "y-parts",					
		order="p-g4",
	},	
	
	-- basic stage-2 maschine frame
	{
		type = "recipe",
		name = "y-basic-st2-mf-recipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/maschine-frame-t2.png",
		ingredients = {{"y-conductive-coil-1",2},{"y_structure_electric",3}, {"y-bluegear", 4} },
		results = { {type="item", name="y-basic-t2-mf", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },			
		main_product = "y-basic-t2-mf",						
		enabled = "true",		
		group = "yuoki",
		subgroup = "y-parts",					
		order="p-g5",
	},	
	
	-- Heat-Cool-Rib-Block
	{
		type = "recipe",
		name = "y-heat-pipe-recipe",
		ingredients = {{"copper-plate",5},{"iron-plate",2},},
		result = "y-heat-pipe",
		enabled = "true",		
		result_count = 2,
		order="p-g6",
		subgroup = "y_parts_e",	
	},	
	{
		type = "item",
		name = "y-heat-pipe",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/heat-pipe.png",
		order="p-g6",
		subgroup = "y_parts_e",	
		stack_size = 100, default_request_amount = 20, 
	},	
	
})