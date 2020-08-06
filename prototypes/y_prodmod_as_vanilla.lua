--[[y_prodmod_as_vanilla
Sets Yuoki Productivity modules to behave like vanilla
Copyright © Michael Cowgill (ChurchOrganist) August 2020]]

--read intermediates list from data.raw
local intermediates_list = data.raw.module["productivity-module"].limitation

--apply intermediates list to yuoki productivity modules
data.raw.module["y-pink-module-1"].limitation = intermediates_list
data.raw.module["y-pink-module-2"].limitation = intermediates_list
data.raw.module["y-pink-module-3"].limitation = intermediates_list
data.raw.module.y_modul_science.limitation = intermediates_list
