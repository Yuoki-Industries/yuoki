if mods["space-age"] then
	-- e_smelter Space Age modifications
	-- data.raw["assembling-machine"]["y_smelter"].allowed_effects = { "consumption", "speed", "pollution", "quality" }
	data.raw["assembling-machine"]["y_smelter"].effect_receiver = { base_effect = { productivity = 0.5 } }
	data.raw["assembling-machine"]["y_smelter"].working_sound = {
		sound = {
			filename = "__space-age__/sound/entity/foundry/foundry.ogg",
			volume = 0.5,
			audible_distance_modifier = 0.6,
		},
		fade_in_ticks = 4,
		fade_out_ticks = 20,
	}
end
