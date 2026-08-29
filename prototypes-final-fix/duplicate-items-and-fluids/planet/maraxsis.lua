if mods[maraxsis_mods] then
    local replace_prototypes =
    {
        [salt_mods] = salt_angels,
		[limestone_mods] = limestone_angels,
		[glass_panes_maraxsis] = glass_bob,
		[sand_mods] = sand_angels,
        [water_saline_maraxsis] = water_saline_angels,
        [oxygen_mods] = oxygen_angels,
        [hydrogen_mods] = hydrogen_angels,
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto = {limestone_mods}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		glass_panes_maraxsis,
		water_saline_maraxsis,
		"maraxsis-liquid-atmosphere",
		"maraxsis-liquid-atmosphere-decompression",
		"maraxsis-limestone-processing",
		"maraxsis-petroleum-gas-cracking",
		"maraxsis-holmium-recrystalization",
		"maraxsis-stone-centrifuging",
		"maraxsis-conduit",
		"maraxsis-effect-transmission-2",
		"sp-spidertron-automation"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end