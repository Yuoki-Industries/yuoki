y_weapon_ztt = {
	filename = "__Yuoki__/graphics/entity/defense/zzt-place.png",
	priority = "medium",
	width = 160,
	height = 160,
	shift = { 0.31, -0.75 },
	direction_count = 8,
	frame_count = 1,
	line_length = 1,
	axially_symmetrical = false,
}

data:extend({
	{
		type = "electric-turret",
		name = "y-weapon-ztt",
		icon_size = 64,
		icon = "__Yuoki__/graphics/entity/defense/zzt-icon.png",
		flags = { "placeable-player", "placeable-enemy", "player-creation" },
		minable = { mining_time = 0.5, result = "y-weapon-ztt" },
		max_health = 6000,
		corpse = "small-remnants",
		collision_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
		selection_box = { { -1.4, -1.4 }, { 1.4, 1.4 } },
		rotation_speed = 0.01,
		preparing_speed = 0.05,
		dying_explosion = "medium-explosion",
		folding_speed = 0.05,
		resistances = {
			{ type = "physical", decrease = 5, percent = 60 },
			{ type = "explosion", decrease = 5, percent = 60 },
			{ type = "fire", percent = 50 },
		},
		energy_source = {
			type = "electric",
			buffer_capacity = "24MJ",
			input_flow_limit = "6MW",
			drain = "125kW",
			usage_priority = "primary-input",
		},
		folded_animation = (function()
			local res = util.table.deepcopy(y_weapon_ztt)
			res.frame_count = 1
			res.line_length = 1
			return res
		end)(),
		preparing_animation = y_weapon_ztt,

		prepared_animation = {
			filename = "__Yuoki__/graphics/entity/defense/zzt-sheet.png",
			priority = "medium",
			width = 160,
			height = 160,
			shift = { 0.31, -0.75 },
			direction_count = 64,
			frame_count = 1,
			line_length = 8,
			axially_symmetrical = false,
		},
		folding_animation = (function()
			local res = util.table.deepcopy(y_weapon_ztt)
			res.run_mode = "backward"
			return res
		end)(),

		graphics_set = blank_sprite,

		attack_parameters = {
			type = "projectile",
			damage = 4,
			damage_modifier = 5,
			ammo_category = "laser", -- "electric",
			cooldown = 20,			
			projectile_center = { 0, 0 },
			projectile_creation_distance = 0.75,
			range = 38,
			sound = { { filename = "__base__/sound/fight/laser-1.ogg", volume = 0.1 } },
			ammo_type = {
				type = "projectile",
				category = "laser",
				energy_consumption = "400kJ",
				action = {
					{
						type = "direct",
						action_delivery = {
							{
								type = "projectile",
								projectile = "cyan-laser",
								starting_speed = 0.9,
							},
						},
					},
				},
			},
		},
		order = "a",
		call_for_help_radius = 40,
	},
	
})
