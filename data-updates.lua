--[[ Yuoki Industries Extensions 
Copyright © Michael Cowgill (CHurchOrganist) 2020
adds circuit connections to mining drills
radar visualisation to the Yuoki Radar
logistic filters to storage chests
adds buffer chests to the mod and
introduces vanilla comptaibilty for Yuoki prod modules
Licenced with the MIT licence--]]

--Call buffer chest initialisation script
require("prototypes.buffer-chest")

--Copy Vanilla Mining Drill array
local mining_drill = table.deepcopy(data.raw["mining-drill"]["electric-mining-drill"])

-- Extract circuit connector data
local circuit_connect_sprites = mining_drill.circuit_connector_sprites
local circuit_connect_points = mining_drill.circuit_wire_connection_points
local circuit_wire_max_reach = mining_drill.circuit_wire_max_distance

--Poke Yuoki Mining Drill data.raw defs
-- YI Outpost Mining Drill
data.raw["mining-drill"]["y-mining-drill"].circuit_connector_sprites = circuit_connect_sprites
data.raw["mining-drill"]["y-mining-drill"].circuit_wire_connection_points = circuit_connect_points
data.raw["mining-drill"]["y-mining-drill"].circuit_wire_max_distance = circuit_wire_max_reach

--YI E2 Mining Drill
data.raw["mining-drill"]["y-mining-drill-e2"].circuit_connector_sprites = circuit_connect_sprites
data.raw["mining-drill"]["y-mining-drill-e2"].circuit_wire_connection_points = circuit_connect_points
data.raw["mining-drill"]["y-mining-drill-e2"].circuit_wire_max_distance = circuit_wire_max_reach

--Mastercrafted Miner
data.raw["mining-drill"].y_mc_e2_mining_drill.circuit_connector_sprites = circuit_connect_sprites
data.raw["mining-drill"].y_mc_e2_mining_drill.circuit_wire_connection_points = circuit_connect_points
data.raw["mining-drill"].y_mc_e2_mining_drill.circuit_wire_max_distance = circuit_wire_max_reach

-- Copy Vanilla Radar Minimap Visulaisation
local radar_visualisation = data.raw.radar.radar.radius_minimap_visualisation_color

-- Poke Yuoki Radar Minimap Visualisation def
data.raw.radar.yi_radar.radius_minimap_visualisation_color = radar_visualisation

--[[ *** This section moved to entity definitions for Factorio 1.1.0
-- add logistic filter to y-rare-chest-log and y-rare-m1bunker-log
data.raw["logistic-container"]["y-rare-chest-log"].logistic_slots_count = 1
data.raw["logistic-container"]["y-rare-m1bunker-log"].logistic_slots_count = 1
--]]

-- make Yuoki productivity modules obey same rules as vanilla if configured as such.

--read productivity module setting and call script if true
local prod_mod = settings.startup["yuoki-prod-mod-behaviour"].value
if prod_mod == true then
	require("prototypes.y_prodmod_as_vanilla")
end



-- Factorio Space Age updates
require("prototypes.integration.space-age._all") -- Space Age stuff


