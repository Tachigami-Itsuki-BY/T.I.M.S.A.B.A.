if mods[moshine_mods] then
    -- MOSHINE AIR
    moshine_air = "moshine-air"
    TIMSABA.functions.create_fluids
    ({
        {
            name = moshine_air,
            subgroup = is_moshine_air,
            icon = "__TIMSABA__/graphics/icons/moshine/moshine-air.png",
            order = a,
            base_color = {r = 168 / 255, g = 109 / 255, b = 061 / 255},
            flow_color = {r = 180 / 255, g = 120 / 255, b = 070 / 255}
        }
    })

    -- NEODYMIUM
    neodymium_ore = "neodymium-ore"
    neodymium_processed = "neodymium-processed"
    neodymium_pellet = "neodymium-pellet"
    neodymium_ingot = "neodymium-ingot"
    neodymium_chloride_III = "neodymium-chloride-III"
    neodymium_hydroxide_III = "neodymium-hydroxide-III"
    neodymium_oxide_III = "neodymium-oxide-III"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            name = neodymium_ore,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-ore.png",
            pictures =
            {
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ore-1.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ore-2.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ore-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            name = neodymium_processed,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-processed.png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            name = neodymium_pellet,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-pellet.png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            name = neodymium_ingot,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot.png",
            pictures =
            {
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-1.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-2.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-3.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-3.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-5.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-6.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-7.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-8.png", width = 64, height = 64, scale = 0.5}
            },
            order = d
        },
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "NdCl[font=default-tiny-bold]3[/font]"} or nil,
            name = neodymium_chloride_III,
            subgroup = is_neodymium_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-chloride-III.png",
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd(OH)[font=default-tiny-bold]3[/font]"} or nil,
            name = neodymium_hydroxide_III,
            subgroup = is_neodymium_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-hydroxide-III.png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
            name = neodymium_oxide_III,
            subgroup = is_neodymium_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-oxide-III.png",
            order = c
        }
    })

    -- FLUID
    neodymium_iron_boron_molten = "neodymium-iron-boron-molten"
    TIMSABA.functions.create_fluids
    ({
        -- CASTING
        {
            localised_description = show_formula and {chemical_formula, "Nd[font=default-tiny-bold]2[/font]Fe[font=default-tiny-bold]14[/font]B"} or nil,
            name = neodymium_iron_boron_molten,
            subgroup = is_neodymium_casting,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-iron-boron-molten.png",
            order = a,
            base_color = TIMSABA.functions.fluid_color("Nd2Fe14B"),
            flow_color = TIMSABA.functions.flow_color("Nd2Fe14B")
        }
    })

    -- CERIUM
    cerium_ore = "cerium-ore"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Ce"} or nil,
            name = cerium_ore,
            subgroup = is_cerium,
            icon = "__TIMSABA__/graphics/icons/moshine/cerium-ore.png",
            pictures =
            {
                {filename = "__TIMSABA__/graphics/icons/moshine/cerium-ore-1.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/cerium-ore-2.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/cerium-ore-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        }
    })

    -- PROMETHIUM
    promethium_ore = "promethium-ore"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Pm"} or nil,
            name = promethium_ore,
            subgroup = is_promethium,
            icon = "__TIMSABA__/graphics/icons/moshine/promethium-ore.png",
            pictures =
            {
                {filename = "__TIMSABA__/graphics/icons/moshine/promethium-ore-1.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/promethium-ore-2.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/moshine/promethium-ore-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        }
    })

    -- SMELTING ITEM
    lead_sulfate_II = "lead-sulfate-II"
    boron_oxide_III = "boron-oxide-III"
    boron = "boron"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "PbSO[font=default-tiny-bold]4[/font]"} or nil,
            name = lead_sulfate_II,
            subgroup = is_lead_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/lead-sulfate-II.png",
            order = g
        },
        -- BORON
        {
            localised_description = show_formula and {chemical_formula, "B[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
            name = boron_oxide_III,
            subgroup = is_boron,
            icon = "__TIMSABA__/graphics/icons/moshine/boron-oxide-III.png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "B"} or nil,
            name = boron,
            subgroup = is_boron,
            icon = "__TIMSABA__/graphics/icons/moshine/boron.png",
            order = z
        }
    })

    -- SMELTING FLUID
    orthophosphoric_acid = "orthophosphoric-acid-solution"
    TIMSABA.functions.create_fluids
    ({
        {
            localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]PO[font=default-tiny-bold]4[/font]"} or nil,
            name = orthophosphoric_acid,
            subgroup = is_phosphorus,
            icon = "__TIMSABA__/graphics/icons/moshine/orthophosphoric-acid-solution.png",
            order = h,
            base_color = TIMSABA.functions.fluid_color("H3PO4Wp"),
            flow_color = TIMSABA.functions.flow_color("H3PO4Wp")
        }
    })

    -- WATER TREATMENT (Phosphoric Waste Water)
    water_orange_waste = "water-orange-waste"
    TIMSABA.functions.create_fluids
    ({
        {
            localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(Ca[font=default-tiny-bold]3[/font](PO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font])"} or nil,

            name = water_orange_waste,
            subgroup = is_water_cleaning_fluid,
            icon = "__TIMSABA__/graphics/icons/moshine/water-orange-waste.png",
            order = e,
            base_color = TIMSABA.functions.fluid_color("WpPOWp"),
            flow_color = TIMSABA.functions.flow_color("WpPOWp")
        }
    })

    -- PETROCHEM
    calcium_phosphate = "calcium-phosphate"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Ca[font=default-tiny-bold]3[/font](PO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]"} or nil,
            name = calcium_phosphate,
            subgroup = is_calcium,
            icon = "__TIMSABA__/graphics/icons/moshine/calcium-phosphate.png",
            order = i
        }
    })

    -- BARITE
    barite = "barite"
    barium_sulfate = "barium-sulfate"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "(Ba,Ca,Pb)SO[font=default-tiny-bold]4[/font]"} or nil,
            name = barite,
            subgroup = is_barium,
            icon = "__TIMSABA__/graphics/icons/moshine/barite.png",
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "BaSO[font=default-tiny-bold]4[/font]"} or nil,
            name = barium_sulfate,
            subgroup = is_barium,
            icon = "__TIMSABA__/graphics/icons/moshine/barium-sulfate.png",
            order = b
        }
    })

    -- BIOTITE MICA
    biotite_mica = "biotite-mica"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "K(Mg,Fe,Al)[font=default-tiny-bold]2-3[/font][Si[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]10[/font]](OH,F)[font=default-tiny-bold]2[/font]"} or nil,
            name = biotite_mica,
            subgroup = is_biotite_mica,
            icon = "__TIMSABA__/graphics/icons/moshine/biotite-mica.png",
            order = a
        }
    })
end