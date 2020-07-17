data:extend(
{		
	{
		type = "item",
		name = "y-quantrinum",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/quantrinum.png",		
		group = "yuoki",		
		stack_size = 25, default_request_amount = 15, 
	},					

	-- compressed dirt -> lachnan crystal 
	{
		type = "item",
		name = "y-crystal-cnd",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/crystal_3.png",		
		group = "yuoki",		
		stack_size = 500, default_request_amount = 20, 
	},					
	
	{ type = "item", name = "y-unicomp-a2",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/uni-komp-a2-icon.png",  subgroup = "y-raw-material", stack_size = 2500, default_request_amount = 100, },	
	-- dust		
	{ type = "item", name = "y-crush-yres1",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/dust-blue.png",  subgroup = "yuoki-archaeology", stack_size = 1000, default_request_amount = 100, },
	{ type = "item", name = "y-crush-yres2",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/dust-green.png", subgroup = "yuoki-archaeology", stack_size = 1000, default_request_amount = 100, },
	-- pellets	
	{ type = "item", name = "y-refined-yres1",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/n4pellets_icon.png",  subgroup = "y-raw-material", stack_size = 600, default_request_amount = 50, },	
	{ type = "item", name = "y-refined-yres2",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/f7pellets_icon.png",  subgroup = "y-raw-material", stack_size = 600, default_request_amount = 50, },	
	-- blaue Brocken
	{ type = "item", name = "y-unicomp-raw",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/uni-komp-n4-icon.png",  subgroup = "y-raw-material", stack_size = 500, default_request_amount = 50, },	
	-- raw-fuelnium (shard)
	{ type = "item", name = "y-raw-fuelnium",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/crystal_energy.png",  subgroup = "y-raw-material", stack_size = 900,  default_request_amount = 20, },
	-- fuelnium
	{ type = "item", name = "y-fuel-reactor",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/reactor-fuel.png",  subgroup = "y-fuel", stack_size = 335, fuel_category = "yfusion", fuel_value = "300MJ", default_request_amount = 20, },
	-- infused dry-mud
	{ type = "item", name = "y-infused-mud",  icon_size = 32, icon =  "__Yuoki__/graphics/icons/fuel_cell_d.png",  subgroup = "y-fuel", stack_size = 625, fuel_category = "chemical", fuel_value = "80MJ", default_request_amount = 100, },

})