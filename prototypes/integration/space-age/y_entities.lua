if mods["space-age"] then
	data.raw["assembling-machine"]["y-crusher"].working_sound = {
		sound = {
			filename = "__space-age__/sound/entity/crusher/crusher-loop.ogg",
			volume = 0.8,
			audible_distance_modifier = 0.6,
		},
		fade_in_ticks = 4,
		fade_out_ticks = 20,
		max_sounds_per_prototype = 3,
	}

	data.raw["assembling-machine"]["y-atomic-quantum-composer"].allowed_effects =
		{ "consumption", "speed", "productivity", "pollution", "quality" }
	data.raw["assembling-machine"]["y-alien-infuser"].allowed_effects =
		{ "consumption", "speed", "productivity", "pollution", "quality" }
	data.raw["assembling-machine"]["y-atomic-constructor"].allowed_effects =
		{ "consumption", "speed", "productivity", "pollution", "quality" }
end
