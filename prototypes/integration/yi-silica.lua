data:extend({
	-- pure atomic constructs
	{
		type = "recipe",
		name = "y-ac-uc2silica",
		order = "a",
		energy_required = 2.0,
		enabled = true,
		ingredients = { { type = "item", name = "y-unicomp-a2", amount = 1 } },
		results = { { type = "item", name = "raw-silica", amount = 20 } },
		--result = "raw-silica",
		--result_count = 20,
		subgroup = "y-atomics",
		category = "yuoki-atomics",
		icon = "__Yuoki__/graphics/icons/crystal_blue.png",
	},
})
