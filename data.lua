require "util"

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
require("prototypes.item.ir_atomics")
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

-- autobuilds
require("prototypes.z_fluids")
require("prototypes.z_items")
require("prototypes.z_recipes")
--require("prototypes.technology")

-- overwrite hopefully
require("prototypes.objects._tiles")


--require("Yuoki_0234_data-updates")
require("prototypes.item.y_stacksizes")
--require("y_config")

--data.raw["character"]["character"].inventory_size = 120
--data.raw["character"]["character"].build_distance = 10000
--data.raw["character"]["character"].reach_distance = 10000

productivityitemlist ={ "y_slag_brick_burn_recipe", "y_slag_brick_recipe", "y_slag_granulate_recipe", "y_hps_steel_recipe", "y_hps_purecopper_recipe", "y_hps_pureiron_recipe", "y-basic-st2-mf-recipe", "y-chip2-recipe", "yi_magnetron_recipe", "y_ammo_plasma_recipe", "y-battery-single-use3-recipe", "y_blocked_capa_recipe", "y-crystal-cnd-recipe", "y-quantrinum-recipe", "y-fuel-reactor-recipe", "y-infused-mud-recipe", "y-infused-uca2-recipe", "y-mixfuel-load-recipe", "y-wooden-brikett-packed-recipe", "y-pure-copper-recipe", "y-pure-iron-recipe", "y-refined-copper", "y-refined-iron", "y-wash-dirt-recipe", "y-smelt-crush-res1-recipe", "y-smelt-crush-res2-recipe", "y_quantrinum_infusion_recipe", "y_structure_element_recipe", "y-bluegear-recipe", "y_structure_vessel_recipe", "y-basic-st1-mf-recipe", "y_chip_plate_recipe", "y_dotzetron_recipe", "y_structure_electric_recipe", "y-heat-pipe-recipe", "y-heat-pipe-recipe", "y-conductive-coil-1-recipe", "y-conductive-wire-1_recipe", "y-crush-unicomp-raw-recipe", "y-crush-fuel-raw-recipe", "y_slag_granulate_recipe", "y_steinmehl_recipe", "y-coaldust-recipe", "y_granulate_wood_recipe", "y-unicomp-raw-recipe", "y-raw-fuelnium-recipe", "y-bullet-case-recipe", "y_ammo_case_recipe", "yi_graphite_recipe", "y_data_crystal_recipe"}
for _, module in pairs(data.raw.module) do
  if module.effect and module.limitation then
    for effect_name in pairs(module.effect) do
      if effect_name == "productivity"then
    for _, item in pairs( productivityitemlist) do
                table.insert(module.limitation,    item)
    end
        break
      end
    end
  end
end
