if mods[tellus_mods] then
    local replace_prototypes =
    {
        [compost_tellus] = compost_angels
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_proto =
	{
		compost_tellus
	}
	TIMSABA.functions.delete_duplicated_prototypes(delete_proto)

    local delete_prototypes =
    {
        "planetaris-tellus-condensing-agricultural-tower",
        "planetaris-three-long-handed-inserter",
        "planetaris-long-stack-inserter",
        "planetaris-preservation-unit",
        "planetaris-space-preservation",
        "planetaris-acid-refined-concrete",
        "planetaris-pink-refined-concrete",
        "planetaris-brown-refined-concrete",
        "tellus-transport-belt-capacity-3"
    }
    TIMSABA.functions.delete_prototypes(delete_prototypes)

    data_recipe["planetaris-tellus-rocket-silo"] = nil
end