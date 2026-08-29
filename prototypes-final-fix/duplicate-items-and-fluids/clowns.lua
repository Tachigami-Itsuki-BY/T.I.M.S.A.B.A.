if mods[clowns_nuclear] and mods[shattered_mods] then
    local replace_prototypes =
    {
        [plutonium_239_bob] = plutonium_239_shattered,
        [plutonium_239_mods] = plutonium_239_shattered
    }
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_proto = {plutonium_239_bob, plutonium_239_mods}
    TIMSABA.functions.delete_duplicated_items(delete_proto)
elseif mods[clowns_nuclear] and not mods[shattered_mods] then
    local replace_prototypes = {[plutonium_239_mods] = plutonium_239_bob}
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    data_item[plutonium_239_mods] = nil
elseif not mods[clowns_nuclear] and mods[shattered_mods] then
    local replace_prototypes = {[plutonium_239_bob] = plutonium_239_shattered}
    TIMSABA.functions.replace_duplicate_prototypes(replace_prototypes)

    local delete_proto = {plutonium_239_bob}
    TIMSABA.functions.delete_duplicated_items(delete_proto)
end
