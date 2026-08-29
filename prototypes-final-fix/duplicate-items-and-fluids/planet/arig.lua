if mods[arig_mods] then
    local replace_prototypes =
    {
        [glass_arig] = glass_bob,
		[raw_diamond_arig] = raw_diamond_bob
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto = {glass_arig, raw_diamond_arig}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		"planetaris-steam-venting",
		"planetaris-sulfur",
		"planetaris-lithium-brine-sifting",
		"planetaris-lithium-plate"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end