if mods[castra_mods] then
    -- CASTRA AIR
    castra_air = "castra-air"
    TIMSABA.functions.create_fluids
    ({
        {
            name = castra_air,
            subgroup = is_castra_air,
            icon = "__TIMSABA__/graphics/icons/castra/castra-air.png",
            order = a,
            base_color = {r = 102 / 255, g = 071 / 255, b = 035 / 255},
            flow_color = {r = 110 / 255, g = 080 / 255, b = 045 / 255}
        }
    })

    -- CASTRA CHEMYSTRY
    -- ITEM
    potassium_nitrate = "potassium-nitrate"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "KNO[font=default-tiny-bold]3[/font]"} or nil,
            name = potassium_nitrate,
            subgroup = is_potassium,
            icon = "__TIMSABA__/graphics/icons/castra/potassium-nitrate.png",
            order = h
        }
    })

    -- FLUID
    potassium_nitrate_solution = "potassium-nitrate-solution"
    nitrosyl_chloride_gas = "nitrosyl-chloride-gas"
    toluene_sulfur_solution = "toluene-sulfur-solution"
    TIMSABA.functions.create_fluids
    ({
        -- POTASSIUM
        {
            localised_description = show_formula and {chemical_formula, "KNO[font=default-tiny-bold]3[/font]SC[font=default-tiny-bold](aq)[/font]"} or nil,
            name = potassium_nitrate_solution,
            subgroup = is_potassium_fluid,
            icon = "__TIMSABA__/graphics/icons/castra/potassium-nitrate-solution.png",
            order = h,
            base_color = TIMSABA.functions.fluid_color("KNO3SCWp"),
            flow_color = TIMSABA.functions.flow_color("KNO3SCWp")
        },
        -- NITROGEN
        {
            localised_description = show_formula and {chemical_formula, "NOCl"} or nil,
            name = nitrosyl_chloride_gas,
            subgroup = is_nitrogen_fluids,
            icon = "__TIMSABA__/graphics/icons/castra/nitrosyl-chloride-gas.png",
            order = y,
            base_color = TIMSABA.functions.fluid_color("NOCl"),
            flow_color = TIMSABA.functions.flow_color("NOCl")
        },
        -- SULFUR
        {
            localised_description = show_formula and {chemical_formula, "S[font=default-tiny-bold](Toluene)[/font]"} or nil,
            name = toluene_sulfur_solution,
            subgroup = is_sulfur_fluids,
            icon = "__TIMSABA__/graphics/icons/castra/toluene-sulfur-solution.png",
            order = h,
            base_color = TIMSABA.functions.fluid_color("SSSTo"),
            flow_color = TIMSABA.functions.flow_color("SSSTo")
        }
    })
end