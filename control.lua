--require "defines"
require("scripts.add_yi_suit")

remote.add_interface("yuoki", {
	spawn = function()
		game.regenerate_entity("y-res1")
		game.regenerate_entity("y-res2")
	end,
})

--[[
script.on_configuration_changed(function(data)

        game.print("[color=red][font=default-large-bold][img=item/y_rwtechsign] Yuoki Industries (Factorio 2.0) [img=item/y_rwtechsign][/font] Will soon be Deprecated![/color] \n Don't worry though! I will be moving my work to the original [font=default-large-bold]Yuoki Industries[/font] Mod! Please download [font=default-large-bold]Yuoki Industries[/font] to continue getting the latest updates!")

end)
]]
