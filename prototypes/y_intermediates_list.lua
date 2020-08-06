--[[Yuoki intermediates script
Copyright joshrick (Codec) © August 2020
adds Yuoki intermediate products to the vanilla intermediates list--]]
local productivity_item_list=
                      { "y_slag_brick_burn_recipe",
                        "y_slag_brick_recipe",
                        "y_slag_granulate_recipe",
                        "y_hps_steel_recipe",
                        "y_hps_purecopper_recipe",
                        "y_hps_pureiron_recipe",
                        "y-basic-st2-mf-recipe",
                        "y-chip2-recipe",
                        "yi_magnetron_recipe",
                        "y_ammo_plasma_recipe",
                        "y-battery-single-use3-recipe",
                        "y_blocked_capa_recipe",
                        "y-crystal-cnd-recipe",
                        "y-quantrinum-recipe",
                        "y-fuel-reactor-recipe",
                        "y-infused-mud-recipe",
                        "y-infused-uca2-recipe",
                        "y-mixfuel-load-recipe",
                        "y-wooden-brikett-packed-recipe",
                        "y-pure-copper-recipe",
                        "y-pure-iron-recipe",
                        "y-refined-copper",
                        "y-refined-iron",
                        "y-wash-dirt-recipe",
                        "y-smelt-crush-res1-recipe",
                        "y-smelt-crush-res2-recipe",
                        "y_quantrinum_infusion_recipe",
                        "y_structure_element_recipe",
                        "y-bluegear-recipe",
                        "y_structure_vessel_recipe",
                        "y-basic-st1-mf-recipe",
                        "y_chip_plate_recipe",
                        "y_dotzetron_recipe",
                        "y_structure_electric_recipe",
                        "y-heat-pipe-recipe",
                        "y-heat-pipe-recipe",
                        "y-conductive-coil-1-recipe",
                        "y-conductive-wire-1_recipe",
                        "y-crush-unicomp-raw-recipe",
                        "y-crush-fuel-raw-recipe",
                        "y_slag_granulate_recipe",
                        "y_steinmehl_recipe",
                        "y-coaldust-recipe",
                        "y_granulate_wood_recipe",
                        "y-unicomp-raw-recipe",
                        "y-raw-fuelnium-recipe",
                        "y-bullet-case-recipe",
                        "y_ammo_case_recipe",
                        "yi_graphite_recipe",
                        "y_data_crystal_recipe"
                      }

for _, module in pairs(data.raw.module) do
  if module.effect and module.limitation then
    for effect_name in pairs(module.effect) do
      if effect_name == "productivity"then
    for _, item in pairs( productivity_item_list) do
                table.insert(module.limitation,    item)
    end
        break
      end
    end
  end
end
