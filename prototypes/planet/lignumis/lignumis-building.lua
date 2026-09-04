if mods[lignumis_mods] then
    burner_ore_sorting_facility = "burner-ore-sorting-facility"
    TIMSABA.functions.create_burner_buildings
    ({
        {
            name = burner_ore_sorting_facility,
            subgroup = is_ore_crusher,
            icons = angelsmods.functions.add_number_icon_layer({{icon = "__angelsrefininggraphics__/graphics/icons/ore-sorting-facility.png", icon_size = 64}}, 0, angelsmods.refining.number_tint),
            order = b,

            enabled = true,
            ingredients =
            {
                {type = item, name = gold_cable, amount = 8},
                {type = item, name = wooden_gear_wheel, amount = 32},
                {type = item, name = lumber, amount = 32},
                {type = item, name = stone, amount = 64}
            },

            base_prototype = data_assembling[ore_sorting_facility_1],

            localised_description = {"entity-description.angels-ore-sorting-facility"},
            crafting_speed = 0.5,
            crafting_categories = {angels_ore_sorting_1}
        },
    })
end