if mods["omnia"] then
	data:extend({
		-- Omnite
		{
			type = "recipe",
			name = "y-ac-omnite",
			order = "a",
			energy_required = 2,
			enabled = true,
			ingredients = {
				{ type = "item", name = "omnite", amount = 20 },
			},
			results = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			main_product = "y-unicomp-a2",
			subgroup = "j-y-atomics-4",
			category = "yuoki-atomics",
			icons = {
				{

					icon = "__omnia__/graphics/icons/omnite.png",
					icon_size = 64,
				},
				{
					icon = "__Yuoki__/graphics/icons/atomics/atomics-down-arrow.png",
					icon_size = 128,
					Scale = 1,
				},
			},
			auto_recycle = false,
			allow_quality = false,
		},
		{
			type = "recipe",
			name = "y-ac-uc2omnite",
			order = "a",
			energy_required = 2.0,
			enabled = true,
			ingredients = {
				{ type = "item", name = "y-unicomp-a2", amount = 1 },
			},
			results = {
				{ type = "item", name = "omnite", amount = 10 },
			},
			main_product = "omnite",
			subgroup = "j-y-atomics-13",
			category = "yuoki-atomics",
			icons = {
				{
					icon = "__omnia__/graphics/icons/omnite.png",
					icon_size = 64,
				},
				{
					icon = "__Yuoki__/graphics/icons/atomics/atomics-up-arrow.png",
					icon_size = 128,
					Scale = 1,
				},
			},
			auto_recycle = false,
			allow_quality = false,
		},
	})
end
