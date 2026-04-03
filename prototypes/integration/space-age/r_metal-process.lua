if mods["space-age"] then
	data:extend({

		{
			type = "recipe",
			name = "yi-molten-iron",
			icon = "__Yuoki__/graphics/icons/pure-iron-n.png",
			icon_size = 64,
			category = "metallurgy",
			subgroup = "vulcanus-processes",
			order = "a[melting]-b[molten-iron]",
			auto_recycle = false,
			show_amount_in_title = false,
			always_show_products = true,
			enabled = true,
			ingredients = {
				{ type = "item", name = "y-pure-iron", amount = 30 },
				{ type = "item", name = "calcite", amount = 1 },
				{ type = "item", name = "y-refined-yres1", amount = 1 },
			},
			energy_required = 32,
			results = {
				{ type = "fluid", name = "molten-iron", amount = 600 },
			},
			allow_productivity = true,
			hide_from_signal_gui = false,
			main_product = "molten-iron",
		},
		{
			type = "recipe",
			name = "yi-molten-copper",
			icon = "__Yuoki__/graphics/icons/pure-copper-n.png",
			icon_size = 64,
			category = "metallurgy",
			subgroup = "vulcanus-processes",
			order = "a[melting]-c[molten-copper]",
			auto_recycle = false,
			show_amount_in_title = false,
			always_show_products = true,
			enabled = true,
			ingredients = {
				{ type = "item", name = "y-pure-copper", amount = 30 },
				{ type = "item", name = "calcite", amount = 1 },
				{ type = "item", name = "y-refined-yres2", amount = 1 },
			},
			energy_required = 32,
			results = {
				{ type = "fluid", name = "molten-copper", amount = 600 },
			},
			hide_from_signal_gui = false,
			allow_productivity = true,
			main_product = "molten-copper",
		},
	})
end
