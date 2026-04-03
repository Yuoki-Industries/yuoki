--
-- From JATMN's Fixes Update: 05/10/2022
-- Added to Yuoki Industiries 10/27/2024
--
--  Replaced Yuoki's resource spawning system with one based off the newer Base spawn system (1.0)
--  made some adjustments to deal with Yuoki's lower res textures
--  Resoureces are now based off Iron and Copper ores as thats sorta what they are anyhow?
--
--
--
-- Special thanks to the following people for helping me work thru this!
--
--	Bilka
--  justarandomgeek
--  Maxreader
--
-- Additional thanks to YellowMiner for their fix https://mods.factorio.com/mod/zJatmnYiFixes/discussion/627ab1a35401ebad228e2562
--
-- Notes:
--	This should be revisited, its kinda hacked together to added local's from 2.0
--
--

local resource_autoplace = require("resource-autoplace")
local sounds = require("__base__.prototypes.entity.sounds")
local simulations = require("__base__.prototypes.factoriopedia-simulations")

--local noise = require("noise")
--local tne = noise.to_noise_expression
--local resource_autoplace = require("resource-autoplace")
-- local sounds = require ("prototypes.entity.sounds")

-- Initialize the core patch sets in a predictable order
resource_autoplace.initialize_patch_set("y-res1", true)
resource_autoplace.initialize_patch_set("y-res2", true)

--local planet_map_gen = require("__base__/prototypes/planet/planet-map-gen")

--table.insert (data.raw.planet_map_gen.nauvis, {autoplace_controls = {["y-res1"] = {}}})
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["y-res1"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_controls["y-res2"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["y-res1"] = {}
data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["y-res2"] = {}

local function autoplace_settings(name, order, coverage)
	return {
		order = order,
		control = name,
		sharpness = 15 / 16,
		richness_multiplier = 1500,
		richness_multiplier_distance_bonus = 20,
		richness_base = 10,
		coverage = coverage,
		peaks = {
			{
				noise_layer = name,
				noise_octaves_difference = -0.85,
				noise_persistence = 0.4,
			},
		},
		starting_area_size = 5500 * coverage,
		starting_area_amount = 1600,
	}
end

local function resource(resource_parameters, autoplace_parameters)
	local gfx_size, frame_count = 38, 4
	if resource_parameters.name == "y-res2" then
		gfx_size, frame_count = 40, 8
	end

	if coverage == nil then
		coverage = 0.02
	end

	if resource_parameters.name == "y-res2" then
		return {

			type = "resource",
			name = resource_parameters.name,
			icon = "__Yuoki__/graphics/icons/" .. resource_parameters.name .. ".png",
			icon_size = 64,
			icon_mipmaps = 1,
			flags = { "placeable-neutral" },
			order = "a-b-" .. resource_parameters.order,
			tree_removal_probability = 0.8,
			tree_removal_max_distance = 32 * 32,
			minable = {
				mining_particle = "stone-particle",
				-- mining_particle = resource_parameters.name .. "-particle",
				mining_time = resource_parameters.mining_time,
				result = resource_parameters.name,
			},
			walking_sound = resource_parameters.walking_sound,
			collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
			selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
			autoplace = resource_autoplace.resource_autoplace_settings({
				name = resource_parameters.name,
				order = resource_parameters.order,
				base_density = autoplace_parameters.base_density,
				has_starting_area_placement = true,
				regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
				starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
				candidate_spot_count = autoplace_parameters.candidate_spot_count,
			}),
			stage_counts = { 4000, 2000, 1500, 900, 300, 75, 25, 10 },
			stages = {

				sheet = {
					filename = "__Yuoki__/graphics/entity/resources/" .. resource_parameters.name .. ".png",
					priority = "extra-high",
					width = gfx_size,
					height = gfx_size,
					frame_count = frame_count,
					variation_count = 8,
				},
			},
			stages_effect = {
				sheet = {
					filename = "__Yuoki__/graphics/entity/resources/" .. resource_parameters.name .. "-glow.png",
					priority = "extra-high",
					width = gfx_size,
					height = gfx_size,
					frame_count = frame_count,
					variation_count = 8,
					scale = 0.9,
					blend_mode = "additive",
					flags = { "light" },
				},
			},
			effect_animation_period = 5,
			effect_animation_period_deviation = 1,
			effect_darkness_multiplier = 3.6,
			min_effect_alpha = 0.2,
			max_effect_alpha = 0.3,
			map_color = resource_parameters.map_color,
			mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
		}
	else
		return {
			type = "resource",
			name = resource_parameters.name,
			icon = "__Yuoki__/graphics/icons/" .. resource_parameters.name .. ".png",
			icon_size = 64,
			icon_mipmaps = 1,
			flags = { "placeable-neutral" },
			order = "a-b-" .. resource_parameters.order,
			tree_removal_probability = 0.8,
			tree_removal_max_distance = 32 * 32,
			minable = {
				mining_particle = "stone-particle",
				-- mining_particle = resource_parameters.name .. "-particle",
				mining_time = resource_parameters.mining_time,
				result = resource_parameters.name,
			},
			walking_sound = resource_parameters.walking_sound,
			collision_box = { { -0.1, -0.1 }, { 0.1, 0.1 } },
			selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
			autoplace = resource_autoplace.resource_autoplace_settings({
				name = resource_parameters.name,
				order = resource_parameters.order,
				base_density = autoplace_parameters.base_density,
				has_starting_area_placement = true,
				regular_rq_factor_multiplier = autoplace_parameters.regular_rq_factor_multiplier,
				starting_rq_factor_multiplier = autoplace_parameters.starting_rq_factor_multiplier,
				candidate_spot_count = autoplace_parameters.candidate_spot_count,
			}),
			stage_counts = { 4000, 2000, 1500, 900, 300, 75, 25, 10 },
			stages = {

				sheet = {
					filename = "__Yuoki__/graphics/entity/resources/" .. resource_parameters.name .. ".png",
					priority = "extra-high",
					width = gfx_size,
					height = gfx_size,
					frame_count = frame_count,
					variation_count = 8,
				},
			},
			map_color = resource_parameters.map_color,
			mining_visualisation_tint = resource_parameters.mining_visualisation_tint,
		}
	end
end

data:extend({

	resource({
		name = "y-res1",
		order = "b",
		map_color = { r = 0.1, g = 0.1, b = 0.7 },
		mining_time = 1,
		-- walking_sound = sounds.ore,
		mining_visualisation_tint = { r = 0.1, g = 0.1, b = 0.7, a = 1.000 },
	}, {
		base_density = 8,
		regular_rq_factor_multiplier = 1.10,
		starting_rq_factor_multiplier = 1.5,
		candidate_spot_count = 22,
	}),

	resource({
		name = "y-res2",
		order = "b",
		map_color = { r = 0.85, g = 0.85, b = 0.2 },
		mining_time = 1,
		-- walking_sound = sounds.ore,
		mining_visualisation_tint = { r = 0.85, g = 0.85, b = 0.2, a = 1.000 },
	}, {
		base_density = 8,
		regular_rq_factor_multiplier = 1.10,
		starting_rq_factor_multiplier = 1.2,
		candidate_spot_count = 22,
	}),

	{
		type = "autoplace-control",
		name = "y-res1",
		localised_name = { "", "[entity=y-res1] ", { "entity-name.y-res1" } },
		richness = true,
		order = "y-ore",
		category = "resource",
	},
	{
		type = "autoplace-control",
		name = "y-res2",
		localised_name = { "", "[entity=y-res2] ", { "entity-name.y-res2" } },
		richness = true,
		order = "y-ore",
		category = "resource",
	},
})

--[[
Original code..
Removed 10/27/2024
]]
data:extend({
	--[[
	{
		type = "autoplace-control",
		name = "y-res1",
		richness = true,
		order = "y-ore",
		category = "resource",
		has_starting_area_placement = true,
	},
]]
	-- unicomp
	{
		type = "item",
		name = "y-res1",
		icon_size = 64,
		icon = "__Yuoki__/graphics/icons/uni-com-pur.png",
		subgroup = "raw-resource",
		order = "r",
		stack_size = 250,
	},
	--[[
	{
		type = "resource",
		name = "y-res1",
		icon_size = 64, icon =  "__Yuoki__/graphics/icons/uni-com-pur.png",
		flags = {"placeable-neutral"},
		order="a-b-d",
		minable =
		{
			hardness = 0.8,
			mining_particle = "stone-particle",
			mining_time = 1,
			result = "y-res1",
		},
		collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
		selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
		autoplace =
		{
			control = "y-res1",
			sharpness = 15/16,
			richness_multiplier = 1500,
			richness_multiplier_distance_bonus = 200,
			richness_base = 10,
			coverage = 0.005,
			peaks = {
				{
					noise_layer = "iron-ore",
					noise_octaves_difference = -0.85,
					noise_persistence = 0.4,
				},
			},
			starting_area_size = 5,
			starting_area_amount = 1500,
			
		},
		stage_counts = {4000, 2000, 1500, 900, 300, 75, 25, 10},
		stages = { 
			sheet = {
				filename = "__Yuoki__/graphics/entity/resources/yi-res-1e.png",
				priority = "extra-high",
				width = 38,
				height = 38,
				frame_count = 4,
				variation_count = 8
			}
		},
		map_color = {r=0.1, g=0.1, b=0.7}
	}	


  ]]
})
