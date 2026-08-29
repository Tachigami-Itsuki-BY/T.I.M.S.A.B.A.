if mods[foliax_mods] then
    local fluorine_foliax = "foliax-fluorine"
    local replace_prototypes =
    {
        [fluorine_foliax] = fluorine
    }
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    data_fluid[fluorine_foliax] = nil
end