if mods[pelagos_mods] then
    local replace_prototypes =
    {
		[ethanol_mods] = ethanol_angels,
        [titanium_plate_mods] = titanium_plate_bob,
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    data_fluid[ethanol_mods] = nil

    local delete_proto = {titanium_plate_mods}
    TIMSABA.functions.delete_duplicated_items(delete_proto)

    local delete_prototypes =
	{
        "fast-diesel-inserter",
        "long-handed-diesel-inserter",
        "diesel-inserter",
        "crane-bulk-diesel-inserter",
        "crane-stack-diesel-inserter",
        "diesel-barreling-machine",
        "burner-barreling-machine",
        "electric-barreling-machine",
        "pelagos-biochamber",
        "corrosive-" .. firearm_magazine,
        "calciner-advanced-steel-smelting",
        "calciner-calcite-brick",
        "calciner-fish-calcining",
        "calciner-mineral-glass",
        "pelagos-processing-unit",
        "pelagos-battery",
        "pelagos-casting-engine-unit",
        "portable-diesel-generator",
        "ethanol-thruster",
        "oxide-asteroid-melting",
        "metallic-asteroid-methane-crushing",
        "carbonic-asteroid-gasification",
        "pelagos-asteroid-bioprocessing",
        "diesel-asteroid-collector",
        "degradation-module",
        "degradation-module-2",
        "degradation-module-3",
        "degradation-module-technology",
        "lubrication-tower",
        "lubrication-tower-source",
        "diesel-dragon",
        "pelagos-diesel-rocket-part",
        "gleba-diesel-rocket-part",
        "aquilo-diesel-rocket-part",
        "nauvis-diesel-rocket-part",
        "vulcanus-diesel-rocket-part",
        "fulgora-diesel-rocket-part",
        "copper-plate-from-copper-biter-egg",
        "cococoncrete",
        "pelagos-spoilage-concrete",
        "improvised-concrete",
        "nutrients-from-spoilage-methane",
        "pelagos-explosives"
    }
    TIMSABA.functions.delete_prototypes(delete_prototypes)
end