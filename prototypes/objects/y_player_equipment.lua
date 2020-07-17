data:extend(
	{
		{
			type = "recipe",
			name = "yi_equip_shield_a_recipe",
			energy_required = 3,
			ingredients = {{"y-accumulator-b", 1}, {"y_structure_element", 4}},
			result = "yi_equip_shield_a",
			enabled = "true",
			result_count = 1,
			order = "a1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_equip_shield_b_recipe",
			energy_required = 3,
			ingredients = {{"y-accumulator-b-t2", 1}, {"y_structure_element", 8}},
			result = "yi_equip_shield_b",
			enabled = "true",
			result_count = 1,
			order = "a2",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_equip_battery_a_recipe",
			energy_required = 3,
			ingredients = {{"y-raw-fuelnium", 8}, {"y-chip-2", 6}, {"y_structure_vessel", 2}},
			result = "yi_equip_battery_a",
			enabled = "true",
			result_count = 1,
			order = "b1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_equip_generator_a_recipe",
			energy_required = 3,
			ingredients = {{"y_steam_turbine_mc", 1}, {"y-infused-uca2", 4}, {"y-basic-t2-mf", 8}, {"y_structure_vessel", 8}},
			result = "yi_equip_generator_a",
			enabled = "true",
			result_count = 1,
			order = "c1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_equip_legs_a_recipe",
			energy_required = 3,
			ingredients = {{"y-basic-t2-mf", 8}, {"y_structure_element", 12}, {"y-bluegear", 8}, {"y-chip-2", 2}},
			result = "yi_equip_legs_a",
			enabled = "true",
			result_count = 1,
			order = "d1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_minigun_recipe",
			energy_required = 3,
			ingredients = {{"y-basic-t2-mf", 1}, {"y_structure_element", 4}, {"y-bluegear", 3}},
			result = "yi_minigun",
			enabled = "true",
			result_count = 1,
			order = "w1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_lasergun_recipe",
			energy_required = 3,
			ingredients = {{"y-raw-fuelnium", 3}, {"y-crystal-cnd", 1}, {"y_structure_element", 3}},
			result = "yi_lasergun",
			enabled = "true",
			result_count = 1,
			order = "w2",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_ammo_energie_recipe",
			energy_required = 2,
			ingredients = {{"y-raw-fuelnium", 1}, {"y_structure_element", 2}, {"y-conductive-wire-1", 1}},
			result = "yi_ammo_energie",
			enabled = "true",
			result_count = 10,
			order = "x1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "crafting"
		},
		{
			type = "recipe",
			name = "yi_equip_roboport_recipe",
			energy_required = 3,
			ingredients = {{"personal-roboport-equipment", 1}, {"y_rwtechsign", 500}, {"y_compensator_25", 2}, {"yi_equip_battery_a", 1}},
			result = "yi_equip_roboport",
			enabled = "true",
			result_count = 1,
			order = "e1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{
			type = "recipe",
			name = "yi_equip_pld_recipe",
			energy_required = 3,
			ingredients = {{"y_turret_laser22f12", 1}, {"y_rwtechsign", 300}, {"y_structure_element", 6}},
			result = "yi_pld_equipment",
			enabled = "true",
			result_count = 1,
			order = "f1",
			group = "yuoki-energy",
			subgroup = "y_personal_equip",
			category = "yuoki-wonder-recipe"
		},
		{type = "item", name = "yi_equip_shield_a", icon_size = 32, icon = "__Yuoki__/graphics/armor/panz4_32.png", order = "a1", stack_size = 15, placed_as_equipment_result = "yi_equip_shield_a", group = "yuoki-energy", subgroup = "y_personal_equip"},
		{type = "item", name = "yi_equip_shield_b", icon_size = 32, icon = "__Yuoki__/graphics/armor/panz5_32.png", order = "a2", stack_size = 15, placed_as_equipment_result = "yi_equip_shield_b", group = "yuoki-energy", subgroup = "y_personal_equip"},
		{type = "item", name = "yi_equip_battery_a", icon_size = 32, icon = "__Yuoki__/graphics/armor/lfg13.png", order = "b1", stack_size = 15, placed_as_equipment_result = "yi_equip_battery_a", group = "yuoki-energy", subgroup = "y_personal_equip"},
		{type = "item", name = "yi_equip_generator_a", icon_size = 32, icon = "__Yuoki__/graphics/armor/energy_icon.png", order = "c1", stack_size = 15, placed_as_equipment_result = "yi_equip_generator_a", group = "yuoki-energy", subgroup = "y_personal_equip"},
		{type = "item", name = "yi_equip_legs_a", icon_size = 32, icon = "__Yuoki__/graphics/armor/exo1_icon_e.png", order = "d1", stack_size = 15, placed_as_equipment_result = "yi_equip_legs_a", group = "yuoki-energy", subgroup = "y_personal_equip"},
		{type = "item", name = "yi_equip_roboport", icon_size = 32, icon = "__Yuoki__/graphics/armor/mobile_roboport_32.png", order = "e1", stack_size = 15, placed_as_equipment_result = "yi_equip_roboport", group = "yuoki-energy", subgroup = "y_personal_equip"},
		{type = "item", name = "yi_pld_equipment", icon_size = 32, icon = "__Yuoki__/graphics/armor/personal_laser_defense_icon.png", order = "f1", stack_size = 15, placed_as_equipment_result = "yi_pld_equipment", group = "yuoki-energy", subgroup = "y_personal_equip"},
		{
			type = "energy-shield-equipment",
			name = "yi_equip_shield_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/panz_4-96be.png",
				width = 96,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 3,
				height = 2,
				type = "full"
			},
			max_shield_value = 350,
			energy_source = {
				type = "electric",
				buffer_capacity = "350KJ",
				input_flow_limit = "700KW",
				usage_priority = "primary-input"
			},
			energy_per_shield = "30KJ",
			categories = {"armor"}
		},
		{
			type = "energy-shield-equipment",
			name = "yi_equip_shield_b",
			sprite = {
				filename = "__Yuoki__/graphics/armor/panz_5-96be.png",
				width = 96,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 3,
				height = 2,
				type = "full"
			},
			max_shield_value = 600,
			energy_source = {
				type = "electric",
				buffer_capacity = "600KJ",
				input_flow_limit = "1.2MW",
				usage_priority = "primary-input"
			},
			energy_per_shield = "30KJ",
			categories = {"armor"}
		},
		{
			type = "battery-equipment",
			name = "yi_equip_battery_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/lfg13_64.png",
				width = 64,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 2,
				type = "full"
			},
			energy_source = {
				type = "electric",
				buffer_capacity = "300MJ",
				input_flow_limit = "2GW",
				output_flow_limit = "2GW",
				usage_priority = "tertiary"
			},
			categories = {"armor"}
		},
		{
			type = "generator-equipment",
			name = "yi_equip_generator_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/energy-128e.png",
				width = 128,
				height = 128,
				priority = "medium"
			},
			shape = {
				width = 4,
				height = 4,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "primary-output"
			},
			power = "1.6MW",
			categories = {"armor"}
		},
		-- schnelle Beine
		{
			type = "movement-bonus-equipment",
			name = "yi_equip_legs_a",
			sprite = {
				filename = "__Yuoki__/graphics/armor/exo1_upgrade_e.png",
				width = 64,
				height = 96,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 3,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-input"
			},
			energy_consumption = "250kW",
			movement_bonus = 0.275,
			categories = {"armor"}
		},
		-- Minigun
		{
			type = "gun",
			name = "yi_minigun",
			icon_size = 32,
			icon = "__Yuoki__/graphics/armor/minigun.png",
			subgroup = "y_personal_equip",
			group = "yuoki-energy",
			order = "a[basic-clips]-b[submachine-gun]",
			attack_parameters = {
				type = "projectile",
				ammo_category = "bullet",
				cooldown = 2,
				movement_slow_down_factor = 0.8,
				damage_modifier = 2,
				shell_particle = {
					name = "shell-particle",
					direction_deviation = 0.1,
					speed = 0.1,
					speed_deviation = 0.03,
					center = {0, 0.6},
					creation_distance = 0.6,
					starting_frame_speed = 0.4,
					starting_frame_speed_deviation = 0.1
				},
				projectile_creation_distance = 0.6,
				range = 18,
				sound = {
					{
						filename = "__base__/sound/railgun.ogg",
						volume = 0.2
					}
				}
			},
			stack_size = 100
		},
		-- Lasergun
		{
			type = "gun",
			name = "yi_lasergun",
			icon_size = 32,
			icon = "__Yuoki__/graphics/armor/lasergun.png",
			subgroup = "y_personal_equip",
			group = "yuoki-energy",
			order = "c[railgun]",
			attack_parameters = {
				type = "projectile",
				ammo_category = "plasma",
				cooldown = 8,
				movement_slow_down_factor = 0.1,
				projectile_creation_distance = 0.6,
				range = 30,
				damage_modifier = 1,
				sound = {
					{
						filename = "__Yuoki__/sounds/plasma-1.ogg",
						volume = 0.2
					}
				}
			},
			stack_size = 10
		},
		{
			type = "ammo",
			name = "yi_ammo_energie",
			icon_size = 32,
			icon = "__Yuoki__/graphics/armor/bst_z2.png",
			ammo_type = {
				category = "plasma",
				target_type = "direction",
				action = {
					type = "direct",
					repeat_count = 16,
					action_delivery = {
						type = "projectile",
						projectile = "p2",
						--projectile = "piercing-shotgun-pellet",
						starting_speed = 1.5,
						direction_deviation = 0.0,
						range_deviation = 0.0,
						max_range = 20,
						target_effects = {
							{
								type = "create-entity",
								entity_name = "explosion-hit"
							},
							{type = "damage", damage = {amount = 20, type = "fire"}},
							{type = "damage", damage = {amount = 5, type = "impact"}}
						}
					}
				}
			},
			magazine_size = 25,
			subgroup = "y_personal_equip",
			group = "yuoki-energy",
			order = "c[railgun]",
			stack_size = 1000
		},
		{
			type = "projectile",
			name = "p2",
			flags = {"not-on-map"},
			collision_box = {{-0.05, -1}, {0.05, 1}},
			acceleration = 0,
			direction_only = true,
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 8, type = "impact"}
					}
				}
			},
			animation = {
				filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
				tint = {r = 0.0, g = 1.0, b = 0.0},
				frame_count = 1,
				width = 3,
				height = 50,
				priority = "high"
			}
		},
		{
			type = "roboport-equipment",
			name = "yi_equip_roboport",
			take_result = "yi_equip_roboport",
			sprite = {
				filename = "__Yuoki__/graphics/armor/mobile_roboport_64.png",
				width = 64,
				height = 64,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 2,
				type = "full"
			},
			energy_source = {
				type = "electric",
				buffer_capacity = "120MJ",
				input_flow_limit = "12000kW",
				usage_priority = "secondary-input"
			},
			charging_energy = "4000kW",
			--energy_consumption = "50kW",
			robot_limit = 25,
			construction_radius = 25,
			spawn_and_station_height = 0.4,
			charge_approach_distance = 3.6,
			recharging_animation = {
				filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
				priority = "high",
				width = 37,
				height = 35,
				frame_count = 16,
				scale = 1.5,
				animation_speed = 0.5
			},
			recharging_light = {intensity = 0.4, size = 5},
			stationing_offset = {0, -0.6},
			charging_station_shift = {0, 0.5},
			charging_station_count = 4,
			charging_distance = 1.6,
			charging_threshold_distance = 5,
			categories = {"armor"}
		},
		{
			type = "active-defense-equipment",
			name = "yi_pld_equipment",
			sprite = {
				filename = "__Yuoki__/graphics/armor/personal_laser_defense_96.png",
				width = 64,
				height = 96,
				priority = "medium"
			},
			shape = {
				width = 2,
				height = 3,
				type = "full"
			},
			energy_source = {
				type = "electric",
				usage_priority = "secondary-input",
				buffer_capacity = "1200kJ"
			},
			attack_parameters = {
				type = "beam",
				cooldown = 10,
				range = 24,
				--source_direction_count = 64,
				--source_offset = {0, -3.423489 / 4},
				damage_modifier = 6,
				ammo_type = {
					category = "laser-turret",
					energy_consumption = "150kJ",
					action = {
						type = "direct",
						action_delivery = {
							type = "beam",
							beam = "laser-beam",
							max_length = 24,
							duration = 10,
							source_offset = {0, -1.31439}
						}
					}
				}
			},
			automatic = true,
			categories = {"armor"}
		}
	}
)
