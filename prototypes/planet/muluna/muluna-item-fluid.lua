if mods[muluna_mods] then
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "CuAl"} or nil,
            name = aluminium_cable,
            subgroup = is_muluna_recipe_anorthite,
            icon = "__TIMSABA__/graphics/icons/muluna/aluminium-cable.png",
            order = d,
            drop_sound = data_item[copper_cable].drop_sound,
            inventory_move_sound = data_item[copper_cable].inventory_move_sound,
            pick_sound = data_item[copper_cable].pick_sound
        }
    })
end