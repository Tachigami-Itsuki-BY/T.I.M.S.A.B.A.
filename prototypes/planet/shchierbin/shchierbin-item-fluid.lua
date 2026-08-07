if mods[shchierbin_mods] then
    -- VANADIUM ITEM
    vanadium_processed = "vanadium-processed"
    vanadium_pellet = "vanadium-pellet"
    vanadium_ingot = "vanadium-ingot"
    vanadium_powder = "vanadium-powder"
    dioxovanadium_nitrate_V = "dioxovanadium-nitrate-V"
    ammonium_metavanadate = "ammonium-metavanadate"
    vanadium_steel_gear_wheel = "vanadium-steel-gear-wheel"
    vanadium_steel_bearing_ball = "vanadium-steel-bearing-ball"
    vanadium_steel_bearing = "vanadium-steel-bearing"
    titanium_aluminium_vanadium_plate = "titanium-aluminium-vanadium-plate"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "V"} or nil,
            name = vanadium_processed,
            subgroup = is_shchierbin_vanadium,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-processed.png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "V"} or nil,
            name = vanadium_pellet,
            subgroup = is_shchierbin_vanadium,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-pellet.png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "V"} or nil,
            name = vanadium_ingot,
            subgroup = is_shchierbin_vanadium,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot.png",
            pictures =
            {
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-1.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-2.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-3.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-4.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-5.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-6.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-7.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-ingot-8.png", width = 64, height = 64, scale = 0.5}
            },
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "V"} or nil,
            name = vanadium_powder,
            subgroup = is_shchierbin_vanadium,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-powder.png",
            order = e
        },
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "VO[font=default-tiny-bold]2[/font]NO[font=default-tiny-bold]3[/font]"} or nil,
            name = dioxovanadium_nitrate_V,
            subgroup = is_shchierbin_vanadium_chemistry,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/dioxovanadium-nitrate-V.png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]VO[font=default-tiny-bold]3[/font]"} or nil,
            name = ammonium_metavanadate,
            subgroup = is_shchierbin_vanadium_chemistry,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/ammonium-metavanadate.png",
            order = d
        },
        -- CASTING Fe-V
        -- CASTING FeC-V
        {
            localised_description = show_formula and {chemical_formula, "FeCV"} or nil,
            name = vanadium_steel_gear_wheel,
            subgroup = is_shchierbin_vanadium_steel,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-steel-gear-wheel.png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "FeCV"} or nil,
            name = vanadium_steel_bearing_ball,
            subgroup = is_shchierbin_vanadium_steel,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-steel-bearing-ball.png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "FeCV"} or nil,
            name = vanadium_steel_bearing,
            subgroup = is_shchierbin_vanadium_steel,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-steel-bearing.png",
            order = e
        },
        -- CASTING Ti-Al-V
        {
            localised_description = show_formula and {chemical_formula, "TiAlV"} or nil,
            name = titanium_aluminium_vanadium_plate,
            subgroup = is_shchierbin_titanium_aluminium_vanadium,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/titanium-aluminium-vanadium-plate.png",
            order = b
        },
        -- CASTING Fe-Co-V
        -- CASTING V-Cr-Ti
    })
    data_item[vanadium_powder].hidden = true
    data_item[vanadium_powder].hidden_in_factoriopedia = true

    -- VANADIUM FLUID
    vanadium_sulfate_IV_solution = "vanadium-sulfate-IV-solution"
    vanadium_molten = "vanadium-molten"
    vanadium_steel_molten = "vanadium-steel-molten"
    titanium_aluminium_vanadium_molten = "titanium-aluminium-vanadium-molten"
    TIMSABA.functions.create_fluids
    ({
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "VOSO[font=default-tiny-bold]4(aq)[/font]"} or nil,
            name = vanadium_sulfate_IV_solution,
            subgroup = is_shchierbin_vanadium_chemistry,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-sulfate-IV-solution.png",
            order = c,
            base_color = TIMSABA.functions.fluid_color("VOSO4Wp"),
            flow_color = TIMSABA.functions.flow_color("VOSO4Wp")
        },
        -- CASTING
        {
            localised_description = show_formula and {chemical_formula, "V"} or nil,
            name = vanadium_molten,
            subgroup = is_shchierbin_vanadium_casting,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-molten.png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("VVV"),
            flow_color = TIMSABA.functions.flow_color("VVV")
        },
        -- CASTING Fe-V
        -- CASTING FeC-V
        {
            localised_description = show_formula and {chemical_formula, "FeCV"} or nil,
            name = vanadium_steel_molten,
            subgroup = is_shchierbin_vanadium_steel,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/vanadium-steel-molten.png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("FeCV"),
            flow_color = TIMSABA.functions.flow_color("FeCV")
        },
        -- CASTING Ti-Al-V
        {
            localised_description = show_formula and {chemical_formula, "TiAlV"} or nil,
            name = titanium_aluminium_vanadium_molten,
            subgroup = is_shchierbin_titanium_aluminium_vanadium,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/titanium-aluminium-vanadium-molten.png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("TiAlV"),
            flow_color = TIMSABA.functions.flow_color("TiAlV")
        },
        -- CASTING Fe-Co-V
        -- CASTING V-Cr-Ti
    })
    TIMSABA.barreling.add_dangerous_fluid(vanadium_sulfate_IV_solution)
end