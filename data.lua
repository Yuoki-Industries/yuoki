require("util")

require("lib.yi-tools")

require("prototypes.z_groups")
require("prototypes.fuel_categorys")
require("prototypes.entity.e_storeage")
require("prototypes.entity.e_defense")
require("prototypes.entity.e_defense_f12")
require("prototypes.entity.e_walls")
require("prototypes.entity.e_pipes")
require("prototypes.entity.e_electric")
require("prototypes.entity.e_energy-gen")
require("prototypes.entity.y_entities")
require("prototypes.entity.e_projectiles")
require("prototypes.entity.e_robots")
require("prototypes.entity.e_entity216")
require("prototypes.entity.e_advmachinery")
require("prototypes.entity.e_mastercrafted")
require("prototypes.entity.e_ultimates")
require("prototypes.entity.e_smelter")
require("prototypes.entity.resources.y_mine1")
require("prototypes.entity.resources.y_mine2")
require("prototypes.entity.e_entity219")
require("prototypes.entity.e_entity220")

require("prototypes.item.i_ores")
require("prototypes.item.i_fluids")

require("prototypes.item.i_electric")
require("prototypes.item.i_energy")
require("prototypes.item.i_pipes")
require("prototypes.item.y_items")
require("prototypes.item.i_defense")
require("prototypes.item.ir_dirty")
require("prototypes.item.ir_ammo")
require("prototypes.item.ir_storeage")
require("prototypes.item.ir_parts")
require("prototypes.item.ir_process-machines")
require("prototypes.item.ir_tools")
require("prototypes.item.ir_stargate")

require("prototypes.recipe.r_defense")
require("prototypes.recipe.r_metal-process")
require("prototypes.recipe.r_fluids")
require("prototypes.recipe.r_electric")
require("prototypes.recipe.r_energy")
require("prototypes.recipe.y_recipies")
require("prototypes.recipe.r_entity216_temp")
require("prototypes.recipe.r_science_exchange")

require("prototypes.objects.y-lamps")
require("prototypes.objects.y_gf_lamps")
require("prototypes.objects.y-module")
require("prototypes.objects.y_inserter")
require("prototypes.objects.y_inserter_2")
require("prototypes.objects.rie_turret_flame")
require("prototypes.objects.rie_turret_plasma")
require("prototypes.objects.rie_mines")
require("prototypes.objects.y_erfolge")
require("prototypes.objects.y_player_styles")
require("prototypes.objects.y_player_styles_items")
require("prototypes.objects.y_player_equipment")
require("prototypes.integration.space-age._data") -- Data stage stuff for Space Age

-- autobuilds
require("prototypes.z_fluids")
require("prototypes.z_items")
require("prototypes.z_recipes")
--require("prototypes.technology")

-- overwrite hopefully
require("prototypes.objects._tiles")

require("prototypes.item.ir_atomics")

--require("Yuoki_0234_data-updates")
require("prototypes.item.y_stacksizes")
--require("y_config")

--add list of Yuoki intermeidate producrs to vanilla intermediates (thank you Codec)
require("prototypes.y_intermediates_list")

--load configurable character options from settings file
data.raw["character"]["character"].inventory_size = settings.startup["yuoki-inventory-size"].value
data.raw["character"]["character"].build_distance = settings.startup["yuoki-player-reach"].value
data.raw["character"]["character"].reach_distance = settings.startup["yuoki-player-reach"].value
