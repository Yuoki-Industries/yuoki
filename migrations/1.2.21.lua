require("__Yuoki__/lib/yi-tools")
game.print("Yuoki Migration Running!")

if game then
	local target = prototypes.item["angels-slag"]

	if target and not target.hidden then
		local replacements = {
			["y-slag"] = "angels-slag",
		}

		if yi and yi.lib and yi.lib.migration then
			yi.lib.migration.bulk_replace(replacements)
		end
	end
end
