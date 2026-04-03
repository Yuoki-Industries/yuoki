data:extend({
	--recipe
	{
		type = "recipe",
		name = "y_sc11",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y-refined-yres1", amount = 2 },
			{ type = "item", name = "iron-plate", amount = 5 },
		},
		results = {
			{ type = "item", name = "y_sc11", amount = 1 },
		},
		main_product = "y_sc11",
		group = "yuoki",
		subgroup = "j-y-logi-5",
		order = "a",
	},

	{
		type = "recipe",
		name = "y_c22",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_structure_element", amount = 2 },
			{ type = "item", name = "iron-plate", amount = 2 },
		},
		results = {
			{ type = "item", name = "y_c22", amount = 1 },
		},
		main_product = "y_c22",
		group = "yuoki",
		subgroup = "j-y-logi-5",
		order = "b",
	},

	-- provider chest 22
	{
		type = "recipe",
		name = "y_pc22",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_structure_element", amount = 2 },
			{ type = "item", name = "iron-plate", amount = 2 },
			{ type = "item", name = "y-chip-2", amount = 1 },
		},
		results = {
			{ type = "item", name = "y_pc22", amount = 1 },
		},
		main_product = "y_pc22",
		subgroup = "j-y-logi-7",
		order = "a",
	},

	{
		type = "recipe",
		name = "y_rc22",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_structure_element", amount = 2 },
			{ type = "item", name = "iron-plate", amount = 2 },
			{ type = "item", name = "y-chip-2", amount = 1 },
		},
		results = {
			{ type = "item", name = "y_rc22", amount = 1 },
		},
		main_product = "y_rc22",
		subgroup = "j-y-logi-7",
		order = "c",
	},

	{
		type = "recipe",
		name = "y_cg33",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_structure_element", amount = 4 },
			{ type = "item", name = "steel-plate", amount = 2 },
		},
		results = {
			{ type = "item", name = "y_cg33", amount = 1 },
		},
		main_product = "y_cg33",
		group = "yuoki",
		subgroup = "j-y-logi-5",
		order = "c",
	},

	-- 4x4
	{
		type = "recipe",
		name = "y_sc44",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_structure_element", amount = 8 },
			{ type = "item", name = "steel-plate", amount = 3 },
		},
		results = {
			{ type = "item", name = "y_sc44", amount = 1 },
		},
		main_product = "y_sc44",
		group = "yuoki",
		subgroup = "j-y-logi-5",
		order = "d",
	},

	{
		type = "recipe",
		name = "y-rare-chest-log",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-lc11-icon.png",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_sc11", amount = 1 },
			{ type = "item", name = "y-conductive-wire-1", amount = 2 },
			{ type = "item", name = "y-chip-1", amount = 1 },
		},
		group = "yuoki",
		subgroup = "j-y-logi-6",
		order = "b",
		results = {
			{ type = "item", name = "y-rare-chest-log", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "y-rare-chest-log",
	},

	{
		type = "recipe",
		name = "y-rare-m1bunker-log",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-cl33-icon.png",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_cg33", amount = 1 },
			{ type = "item", name = "y-chip-1", amount = 1 },
			{ type = "item", name = "y-conductive-wire-1", amount = 8 },
		},
		group = "yuoki",
		subgroup = "j-y-logi-8",
		order = "a",
		results = {
			{ type = "item", name = "y-rare-m1bunker-log", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "y-rare-m1bunker-log",
	},

	-- Requester Recipe (JATMN)
	{
		type = "recipe",
		name = "j-dl-request",
		icon_size = 32,
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Requester-Icon.png",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_sc11", amount = 1 },
			{ type = "item", name = "y-conductive-wire-1", amount = 2 },
			{ type = "item", name = "y-chip-1", amount = 1 },
		},
		group = "j_yuoki_logistics",
		subgroup = "j-y-logi-6",
		order = "d",
		results = {
			{ type = "item", name = "j-dl-request", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "j-dl-request",
	},

	-- Provider Recipe (JATMN)
	{
		type = "recipe",
		name = "j-dl-provider",
		icon_size = 32,
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Provider-Icon.png",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_sc11", amount = 1 },
			{ type = "item", name = "y-conductive-wire-1", amount = 2 },
			{ type = "item", name = "y-chip-1", amount = 1 },
		},
		group = "j_yuoki_logistics",
		subgroup = "j-y-logi-6",
		order = "a",
		results = {
			{ type = "item", name = "j-dl-provider", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "j-dl-provider",
	},

	-- Buffer Recipe (JATMN)
	{
		type = "recipe",
		name = "j-dl-buffer",
		icon_size = 32,
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Buffer-Icon.png",
		energy_required = 3.0,
		enabled = true,
		ingredients = {
			{ type = "item", name = "y_sc11", amount = 1 },
			{ type = "item", name = "y-conductive-wire-1", amount = 2 },
			{ type = "item", name = "y-chip-1", amount = 1 },
		},
		group = "j_yuoki_logistics",
		subgroup = "j-y-logi-6",
		order = "c",
		results = {
			{ type = "item", name = "j-dl-buffer", amount = 1 },
			{ type = "item", name = "y_rwtechsign", amount = 1 },
		},
		main_product = "j-dl-buffer",
	},

	-- new chest 1x1
	{
		type = "item",
		name = "y_sc11",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-c11-icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-5",
		place_result = "y_sc11",
		stack_size = 30,
	},
	-- new chest 2x2
	{
		type = "item",
		name = "y_c22",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-c22-icon.png",
		subgroup = "j-y-logi-5",
		place_result = "y_c22",
		stack_size = 30,
	},
	-- new chest 3x3
	{
		type = "item",
		name = "y_cg33",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-c33-icon.png",
		subgroup = "j-y-logi-5",
		place_result = "y_cg33",
		stack_size = 30,
	},
	-- new chest 4x4
	{
		type = "item",
		name = "y_sc44",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-c44-icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-5",
		place_result = "y_sc44",
		stack_size = 30,
	},
	-- new requester 2x2
	{
		type = "item",
		name = "y_rc22",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-rc22-icon.png",
		subgroup = "j-y-logi-7",
		place_result = "y_rc22",
		stack_size = 30,
	},
	-- new provider 2x2
	{
		type = "item",
		name = "y_pc22",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-pc22-icon.png",
		subgroup = "j-y-logi-7",
		place_result = "y_pc22",
		stack_size = 30,
	},
	-- logistic chest 1x1
	{
		type = "item",
		name = "y-rare-chest-log",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-lc11-icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-6",
		place_result = "y-rare-chest-log",
		stack_size = 30,
	},
	-- logistic chest 3x3
	{
		type = "item",
		name = "y-rare-m1bunker-log",
		place_result = "y-rare-m1bunker-log",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/store/y-cl33-icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-8",
		stack_size = 30,
	},
	-- Requester (JATMN)
	{
		type = "item",
		name = "j-dl-request",
		icon_size = 32,
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Requester-Icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-6",
		place_result = "j-dl-request",
		stack_size = 30,
	},
	-- Provider	(JATMN)
	{
		type = "item",
		name = "j-dl-provider",
		icon_size = 32,
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Provider-Icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-6",
		place_result = "j-dl-provider",
		stack_size = 30,
	},
	-- Buffer Recipe (JATMN)
	{
		type = "item",
		name = "j-dl-buffer",
		icon_size = 32,
		icon = "__Yuoki__/graphics/entity/store/Durotal-Logistics-Buffer-Icon.png",
		group = "yuoki",
		subgroup = "j-y-logi-6",
		place_result = "j-dl-buffer",
		stack_size = 30,
	},
})
