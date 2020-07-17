data:extend(
{	
	{
		type = "item",
		name = "y_chip_plate",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/chip_plate.png",		
		--group = "yuoki",		
		subgroup = "y_parts_e",
		order = "a-0",		
		stack_size = 250, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y_dotzetron",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/dot_zetron_32.png",		
		--group = "yuoki",		
		subgroup = "y-parts",
		order = "a-0",		
		stack_size = 250, default_request_amount = 50,
	},
	{
		type = "item",
		name = "y-battery-single-use1",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/battery_2.png",		
		subgroup = "y-electric",
		order = "a-1",				
		stack_size = 250, default_request_amount = 50,
	},	
	{
		type = "item",
		name = "y-battery-single-use2",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/battery_1.png",		
		subgroup = "y-electric",
		order = "a-2",		
		fuel_category = "chemical", 
		fuel_value = "18MJ",
		stack_size = 250, default_request_amount = 50,
	},	
	{
		type = "item",
		name = "y-battery-single-use3",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/battery_3.png",		
		--group = "yuoki",		
		subgroup = "y-electric",
		order = "a-3",		
		fuel_category = "chemical", 
		fuel_value = "38MJ",
		stack_size = 250, default_request_amount = 50,
	},	

	{
		type = "item",
		name = "y_blocked_capa",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/scd-icon.png",		
		--group = "yuoki",		
		subgroup = "y-electric",
		order = "a-4",				
		stack_size = 250, default_request_amount = 50,
	},	
	
	{
		type = "item",
		name = "y-substation-m",
		icon_size = 32, icon =  "__Yuoki__/graphics/icons/substation-icon.png",		
		subgroup = "y-lamps",
		order = "a[energy]-d[substation]-1",
		place_result = "y-substation-m",
		stack_size = 25, default_request_amount = 15,
	},
	{
		type = "item",
		name = "y-substation-h",
		icon_size = 32, icon =  "__Yuoki__/graphics/entity/substation-h-icon.png",		
		subgroup = "y-lamps",
		order = "a[energy]-d[substation]-2",
		place_result = "y-substation-h",
		stack_size = 25, default_request_amount = 15,
	},
	
	{
		type = "item",
		name = "y-accumulator-m",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/medium_accu_icon.png",		
		--group = "yuoki",		
		subgroup = "y-energy-2",
		order = "ac-1",
		place_result = "y-accumulator-m",
		stack_size = 50, default_request_amount = 15,
	},
	{
		type = "item",
		name = "y-accumulator-b",
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/accu_b_icon.png",		
		subgroup = "y-energy-2",
		order = "ac-3",
		place_result = "y-accumulator-b",
		stack_size = 30, default_request_amount = 15,
	},

	{
		type = "item",
		name = "y-ups-flywheel-b", place_result = "y-ups-flywheel-b", stack_size = 30, default_request_amount = 10, 
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/accflywheel_b_icon.png",		
		subgroup = "y-energy-2", order = "ac-7",		
	},
	
	{
		type = "item",
		name = "y-accumulator-m-t2", place_result = "y-accumulator-m-t2", stack_size = 50, default_request_amount = 10, 
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/mcd-icon.png",		
		subgroup = "y-energy-2", order = "ac-2",		
	},
	{
		type = "item",
		name = "y-accumulator-b-t2", place_result = "y-accumulator-b-t2", stack_size = 25, default_request_amount = 10, 
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/bcd-icon.png",		
		subgroup = "y-energy-2", order = "ac-4",		
	},
	{
		type = "item",
		name = "y-accumulator-b-tx", place_result = "y-accumulator-b-tx", stack_size = 25, default_request_amount = 10, 
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/aqe-icon.png",		
		subgroup = "y-energy-2", order = "ac-5",		
	},
	-- Accumulator Crystal
	{
		type = "item",
		name = "y-accumulator-crystal-m", place_result = "y-accumulator-crystal-m", stack_size = 25, default_request_amount = 10, 
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/accu_crystal-m-icon.png",		
		subgroup = "y-energy-2", order = "ac-6",		
	},
	
	-- compensator 25
	{
		type = "item",
		name = "y_compensator_25", place_result = "y_compensator_25", stack_size = 15, default_request_amount = 5, 
		icon_size = 32, icon =  "__Yuoki__/graphics/gfx/compensator25-icon.png",		
		subgroup = "y-energy-2", order = "ac-8",		
	},	
	
	
	
	
})