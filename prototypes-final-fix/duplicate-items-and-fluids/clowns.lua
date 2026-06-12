local plutonium_240_angels = "angels-plutonium-240"
if mods [clowns_nuclear] and mods [shattered_mods] then
    local replacements =
    {
        [plutonium_239_bob] = plutonium_239_shattered,
        [plutonium_239_mods] = plutonium_239_shattered
    }
    delete_duplicate_item_and_fluid(replacements)

    data_item[plutonium_239_bob] = nil
    data_recipe[plutonium_239_bob .. _recycling] = nil

    data_item[plutonium_239_mods] = nil
    data_recipe[plutonium_239_mods .. _recycling] = nil

    data_recipe[plutonium_240_angels .. _recycling] = nil
elseif mods [clowns_nuclear] and not mods [shattered_mods] then
    local replacements =
    {
        [plutonium_239_mods] = plutonium_239_bob
    }
    delete_duplicate_item_and_fluid(replacements)

    data_item[plutonium_239_mods] = nil
elseif not mods [clowns_nuclear] and mods [shattered_mods] then
    local replacements =
    {
        [plutonium_239_bob] = plutonium_239_shattered
    }
    delete_duplicate_item_and_fluid(replacements)

    data_item[plutonium_239_bob] = nil
    data_recipe[plutonium_239_bob .. _recycling] = nil

    data_recipe[plutonium_240_angels .. _recycling] = nil
end
