--require "defines"


remote.add_interface("yuoki",  
{
	spawn = function()
	game.regenerate_entity("y-res1")
	game.regenerate_entity("y-res2")
	end
})

