if mods["space-age"] then
	data:extend({

		{
			type = "module",
			name = "y-quality-module-1",
			category = "quality",
			tier = 1,
			icon_size = 64,
			icon = "__Yuoki__/graphics/icons/modul_quality.png",
			subgroup = "y-module",
			order = "m-4c",
			stack_size = 100,
			effect = { quality = 0.2, consumption = 2.5, productivity = 0.05 },
			weight = 20 * kg,
            --auto_recycle = true,
		},
		{
			type = "recipe",
			name = "y-quality-module-1",
			energy_required = 3.0,
			enabled = true,
			ingredients = {
				{ type = "item", name = "y-pink-module-1", amount = 1 },
				{ type = "item", name = "y-chip-2", amount = 3 },
				{ type = "item", name = "y-crystal-cnd", amount = 1 },
				---{ type = "item", name = "y-infused-uca2", amount = 2 },
				{ type = "item", name = "y-quantrinum", amount = 1 },
			},
			results = { { type = "item", name = "y-quality-module-1", amount = 1 } },
			main_product = "y-quality-module-1",
			order = "m-4c",
			--auto_recycle = true,
		},
	})
end
