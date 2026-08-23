if mods[arig_mods] then
    local replace_prototypes =
    {
        [glass_arig] = glass_bob,
		[raw_diamond_arig] = raw_diamond_bob
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

	local delete_proto =
	{
		glass_arig,
		raw_diamond_arig
	}
	for _, name in ipairs(delete_proto) do
		data_item[name] = nil
		data_recipe[name .. _recycling] = nil
		if mods[panglia_mods] then
			data_recipe[item_ .. name .. _panglia_crushing] = nil
		end
	end

	local delete_prototypes =
	{
		"planetaris-steam-venting",
		"planetaris-sulfur",
		"planetaris-lithium-brine-sifting",
		"planetaris-lithium-plate"
	}
	TIMSABA.functions.delete_the_replaced_prototypes(delete_prototypes)
end