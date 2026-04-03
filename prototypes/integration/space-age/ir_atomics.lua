if mods["space-age"] then
	data.raw["assembling-machine"]["y-atomic-constructor"].allowed_effects =
		{ "consumption", "speed", "productivity", "pollution", "quality" }


	yi.lib.recipe.atomics.recipes_make_item("calcite", 64, 10, 1, "ore-space-age") -- Calcite
	yi.lib.recipe.atomics.recipes_make_item("tungsten-ore", 64, 10, 1, "ore-space-age") -- Tungsten ore
	yi.lib.recipe.atomics.recipes_make_item("holmium-ore", 64, 10, 1, "ore-space-age") -- Holmium ore
	yi.lib.recipe.atomics.recipes_make_item("scrap", 64, 10, 1, "ore-space-age") -- Scrap ore
end
