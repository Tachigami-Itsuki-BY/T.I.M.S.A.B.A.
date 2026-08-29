if mods[moshine_mods] then
    local replace_prototypes =
    {
		[neodymium_mods] = neodymium_ore,
        [sand_mods] = sand_angels,
        [glass_mods] = glass_bob,
        [silicon_carbide_mods] = silicon_carbide_bob
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto = {neodymium_mods, glass_mods}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		"concrete-from-molten-iron-and-sand",
		"petroleum-from-sand-sulfur-steam-carbon",
		"moshine-concrete-from-molten-iron-and-sand",
		"moshine-petroleum-from-sand-sulfur-steam-carbon",
		"snouz_better_substation",
		"snouz_better_substation_tech",
		"long-stack-inserter"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end