-- item name, tech level, has custom stack icon
local itemTable =
{
	{"y-crush-yres1", 1, false},
	{"y-crush-yres2", 1, false},
	{"y-dirt", 1, false},	
	{"y-unicomp-a2", 1, false},
	{"y-refined-yres1", 1, false},
	{"y-refined-yres2", 1, false},
	{"y-unicomp-raw", 1, false},
	{"y-raw-fuelnium", 1, false},
	{"y-fuel-reactor", 1, false},
	{"y-infused-mud", 1, false},
	{"y_drillhead", 1, false},
	{"y_toolhead", 1, false},		
	{"yi_graphite", 1, false},
	{"y-conductive-coil-1", 1, false},
	{"y-orange-stuff", 1, false},
	{"y-conductive-wire-1", 1, false},
	{"y_structure_electric", 1, false},
	{"y_slag_brick", 1, false},
	{"y_slag_granulate", 1, false},
	{"y-pure-copper", 1, false},
	{"y-pure-iron", 1, false},
	{"y-richdust", 1, false},
	{"y_rwtechsign", 1, false},
	{"ypfw_trader_sign", 1, false},
	{"y_greensign", 1, false},
	{"y-chip-1", 1, false},
	{"y-chip-2", 1, false},
	{"y-basic-t2-mf", 1, false},
	{"y-basic-t1-mf", 1, false},
	{"yi_magnetron", 1, false},
	{"y-slag", 1, false},
	{"ye_science_blue", 1, false},
	{"y-crystal2", 1, false},
	{"y_quantrinum_infused", 1, false},
	{"y_crystal2_combined", 1, false},
	{"y-bluegear", 1, false},
	{"y_organic_dust", 1, false},
	{"y_structure_element", 1, false},
	{"y-heat-pipe", 1, false},
	{"y-crystal-cnd", 1, false},	
	{"y-coal-dust", 1, false},
	{"y_structure_vessel", 1, false},
	{"y-quantrinum", 1, false},
	{"y-infused-uca2", 1, false},
	{"y_chip_plate", 1, false},
	{"y_dotzetron", 1, false},
	{"y-battery-single-use1", 1, false},
	{"y-battery-single-use2", 1, false},
	{"y-battery-single-use3", 1, false},
	{"y_blocked_capa", 1, false},
	{"y-bullet-case", 1, false},
	{"y_ammo_case", 1, false},
	{"y-coal-brikett", 1, false},
	{"y-coal-stack", 1, false},
	{"y-mixed-fuel", 1, false},
	{"y-mixed-fuel-loaded", 1, false},
	{"y-wooden-brikett", 1, false},
	{"y-wooden-brikett-packed", 1, false},
	{"y-c_mud", 1, false},
	{"y-dry_mud", 1, false},
	{"y-toxic-dust", 1, false},		
}

if deadlock_stacking then
	for _, item in ipairs(itemTable) do
		if data.raw.item[item[1]] then
            if item[3] then
    			deadlock.add_stack(item[1], "___Yuoki__/graphics/stacks/"..item[1].."-stack.png", "deadlock-stacking-"..item[2],32)
            else
                deadlock.add_stack(item[1], nil, "deadlock-stacking-"..item[2],32)
            end
		end
	end
end 

if deadlock_crating then
  for _, item in pairs(itemTable) do
    if data.raw.item[item[1]] then
      deadlock_crating.add_crate(item[1], "deadlock-crating-"..item[2])
    end
  end
end



