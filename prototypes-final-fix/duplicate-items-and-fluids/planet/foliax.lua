if mods[foliax_mods] then
    local fluorine_barrel_foliax = "foliax-fluorine-barrel"
    local replace_prototypes = {[fluorine_barrel_foliax] = "fluorine-bottle"}
	TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_prototypes = {fluorine_barrel_foliax}
	TIMSABA.functions.delete_prototypes(delete_prototypes)
end