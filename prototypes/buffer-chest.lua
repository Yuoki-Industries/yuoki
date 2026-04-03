--[[Add buffer chest to Yuoki Industries 
Copyright © Michael Cowgill July 2020 
Updated by JATMN Oct 2024
--]]

-- Copy recipe from Yuoki Requester Chest
local recipe = table.deepcopy(data.raw.recipe.y_rc22)

-- Poke values for new entity
recipe.name = "y_bc22"
--recipe.results = "y_bc22"
recipe.results = { { type = "item", name = "y_bc22", amount = 1 } }
recipe.main_product = "y_bc22"

--Copy item data for Yuoki Requester Chest and customise for new entity
local item = table.deepcopy(data.raw.item.y_rc22)
item.icon = "__Yuoki__/graphics/y-bc22-icon.png"
item.name = "y_bc22"
item.place_result = "y_bc22"

--Copy entity data for Yuoki Requester Chest and customise for new chest
local entity = table.deepcopy(data.raw["logistic-container"].y_rc22)
entity.name = "y_bc22"
entity.logistic_mode = "buffer"
entity.picture.filename = "__Yuoki__/graphics/y-bc22.png"
entity.minable.result = "y_bc22"

data:extend({ recipe })
data:extend({ item })
data:extend({ entity })
