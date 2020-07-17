data:extend(
{	

	-- walls
	{
		type = "recipe",
		name = "y-mud-wall-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y_slag_brick",8}, {"steel-plate", 1}}, 
		result = "y-mud-wall",
		result_count = 1,
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/m_wall_icon.png",
		subgroup = "y_defense_walls",
		order="w-a",
		--category = "yuoki-formpress-recipe",		
	},	
	{
		type = "recipe",
		name = "y-rare-wall-basic-recipe",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-refined-yres1", 1}, {"y-slag", 6}, {"y-mud-wall",1} }, 
		result = "y-rare-wall-basic",
		subgroup = "y_defense_walls",	
		result_count = 1,
		order="w-b",
	},	
	{
		type = "recipe",
		name = "y-rare-wall-adv-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/rare2-wall-icon2.png",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y-orange-stuff", 6}, {"y-slag", 6}, {"y-mud-wall",1} }, 
		results = { {type="item", name="y-rare-wall-adv", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },	
		main_product = "y-rare-wall-adv",				
		subgroup = "y_defense_walls",			
		order="w-c",
	},		
	{
		type = "recipe",
		name = "y-wall-forcefield-recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/icons/wall-forcefield-icon.png",
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-rare-wall-basic", 1}, {"y-conductive-coil-1", 3}, {"y-conductive-wire-1",1}, }, 
		results = { {type="item", name="y-wall-forcefield", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },			
		main_product = "y-wall-forcefield",		
		subgroup = "y_defense_walls",			
		order="w-d",		
	},		
	{
		type = "recipe",
		name = "y_wall22_hardic_recipe",
		 icon_size = 32, icon =  "__Yuoki__/graphics/entity/walls/wall_hardic_icon.png",
		energy_required = 2.0,
		enabled = "true",
		ingredients = {{"y_structure_vessel", 4}, {"stone-brick", 4}, {"y-richdust",4} }, 
		results = { {type="item", name="y_wall22_hardic", amount=1,}, {type="item", name="y_rwtechsign", amount=1,}, },		
		main_product = "y_wall22_hardic",				
		subgroup = "y_defense_walls",			
		order="w-f",
	},	
	
	{
		type = "recipe",
		name = "y_laser_onhwall_recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{
			{"y-basic-t2-mf", 1},	
			{"y_blocked_capa", 2},
			{"y-conductive-coil-1", 3},			
			{"y_wall22_hardic",1},
			{"y_rwtechsign",2},
		},
		result = "y-laser-def-s4",
		order="t-c",
	},	
	
	{
		type = "recipe",
		name = "y_laser_mk1_recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{
			{"y-basic-t2-mf", 1},	
			{"y_blocked_capa", 2},
			{"y-conductive-coil-1", 3},			
			{"y_structure_electric",4},
			{"y_rwtechsign",1},
		},
		result = "y_turret_laser22f12",
		order="t-c",
	},	
		
	{
		type = "recipe",
		name = "y-gun-turret-mk2-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{			
			{"y-basic-t1-mf", 1},						
			{"y_structure_element", 12},
			{"y-bluegear", 3},			
			{"y_rwtechsign",1},
		},
		result = "y_turret_gun2f12",
		order="t-a",
	},	
	
	{
		type = "recipe",
		name = "y-gun-turret-mk3-recipe",
		enabled = "true",
		energy_required = 4,
		ingredients =
		{			
			{"y-basic-t1-mf", 1},					
			{"y_structure_element", 12},			
			{"steel-plate", 4},
			{"y_rwtechsign",1},
		},
		result = "y_turret_gun1f12",
		order="t-b",
	},	
	{
		type = "recipe",
		name = "y-weapon-ztt-recipe",		
		energy_required = 3.0,
		enabled = "true",
		ingredients = {{"y-rare-wall-adv", 8}, {"y-basic-t2-mf", 2}, {"y-chip-2", 2}, {"y-accumulator-b-t2", 1},  {"y-infused-uca2", 1}, {"y_rwtechsign", 5}, }, 
		result = "y-weapon-ztt",
		subgroup = "y-defense",	
		result_count = 1,
		order="t-d",
	},		
	
	
}
)	