script.on_init(function()
	if settings.startup["yuoki-start-with-yi-suit"].value == true then
		if remote.interfaces["freeplay"] then
			local created_items = remote.call("freeplay", "get_created_items")
			created_items["yi_armor_gray"] = 1
			created_items["yi_equip_shield_a"] = 1
			created_items["yi_equip_battery_a"] = 1
			created_items["yi_equip_generator_a"] = 1
			created_items["yi_equip_roboport"] = 1
			created_items["yi_construction-robot"] = 25
			remote.call("freeplay", "set_created_items", created_items)
		end
	end
end)
