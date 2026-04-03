if mods["space-age"] then
	data:extend({
		{
			type = "recipe",
			name = "j_crushing_to_n4",
			category = "crushing",
			subgroup = "space-crushing",
			enabled = true,
			energy_required = 5.00,
			ingredients = {
				{ type = "item", name = "metallic-asteroid-chunk", amount = 10.0 },
				{ type = "item", name = "oxide-asteroid-chunk", amount = 4.0 },
			},
			results = {
				{ type = "item", name = "y-res1", amount = 20.0 },
				{ type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.2 },
				{ type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.2 },
			},
			main_product = "y-res1",
			icons = yi.lib.recipe.crushing.asteroid_2(
				"metallic-asteroid-chunk",
				64,
				"oxide-asteroid-chunk",
				64,
				"y-res1",
				64
			),
			auto_recycle = false,
			allow_productivity = true,
			allow_decomposition = false,
		},

		{
			type = "recipe",
			name = "j_crushing_to_f7",
			category = "crushing",
			subgroup = "space-crushing",
			enabled = true,
			energy_required = 5.00,
			ingredients = {
				{ type = "item", name = "carbonic-asteroid-chunk", amount = 10.0 },
				{ type = "item", name = "oxide-asteroid-chunk", amount = 4.0 },
			},
			results = {
				{ type = "item", name = "y-res2", amount = 20.0 },
				{ type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.2 },
				{ type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.2 },
			},
			main_product = "y-res2",
			icons = yi.lib.recipe.crushing.asteroid_2(
				"carbonic-asteroid-chunk",
				64,
				"oxide-asteroid-chunk",
				64,
				"y-res2",
				64
			),
			auto_recycle = false,
			allow_productivity = true,
			allow_decomposition = false,
		},
	})
end
