if mods["space-age"] then
    -- y_crusher2 Space Age modifications
	data.raw["assembling-machine"]["y_crusher2"].energy_usage = "633.772kW"
	data.raw["assembling-machine"]["y_crusher2"].crafting_categories = { "y-crushing", "crushing" }
	data.raw["assembling-machine"]["y_crusher2"].working_sound = {
		sound = {
			filename = "__space-age__/sound/entity/crusher/crusher-loop.ogg",
			volume = 0.8,
			audible_distance_modifier = 0.6,
		},
		fade_in_ticks = 4,
		fade_out_ticks = 20,
		max_sounds_per_prototype = 3,
	}
end
