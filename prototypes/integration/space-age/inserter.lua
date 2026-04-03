if mods["space-age"] then
	data.raw["inserter"]["y-inserter-smart"].stack_size_bonus = 4
	data.raw["inserter"]["y-inserter-smart"].grab_less_to_match_belt_stack = true
	data.raw["inserter"]["y-inserter-smart"].wait_for_full_hand = true
	data.raw["inserter"]["y-inserter-smart"].enter_drop_mode_if_held_stack_spoiled = true
	data.raw["inserter"]["y-inserter-smart"].max_belt_stack_size = 4
end
