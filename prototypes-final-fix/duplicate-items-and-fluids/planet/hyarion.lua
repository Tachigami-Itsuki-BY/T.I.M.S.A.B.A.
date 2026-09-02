if mods[hyarion_mods] then
    local replace_prototypes =
    {
        [aluminium_hyarion] = aluminium_molten_angels,
        [raw_emerald_hyarion] = raw_emerald_bob,
        [raw_ruby_hyarion] = raw_ruby_bob,
        [raw_sapphire_hyarion] = raw_sapphire_bob,
        [polished_diamond_hyarion] = polished_diamond_bob,
        [polished_emerald_hyarion] = polished_emerald_bob,
        [polished_ruby_hyarion] = polished_ruby_bob,
        [polished_sapphire_hyarion] = polished_sapphire_bob,
		[carbon_nanotube_hyarion] = carbon_nanotube
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto =
	{
		raw_emerald_hyarion,
		raw_ruby_hyarion,
		raw_sapphire_hyarion,
		polished_diamond_hyarion,
		polished_emerald_hyarion,
		polished_ruby_hyarion,
		polished_sapphire_hyarion,
		carbon_nanotube_hyarion
	}
	TIMSABA.functions.delete_duplicated_items(delete_proto)

	local delete_prototypes =
	{
		aluminium_hyarion,
		"planetaris-beryllium-coating",
		"planetaris-metallic-smelting",
		"planetaris-burner-drill-alternative",
		"planetaris-hyarion-rocket-silo",
		"planetaris-hyarion-cargo-landing-pad",
		"planetaris-lig-carbon-wood"
	}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end