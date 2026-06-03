if mods[moshine_mods] then
    -- MOSHINE AIR
    moshine_air = "moshine-air"
    data:extend
    ({
        {
            type = fluid,
            name = moshine_air,
            subgroup = is_moshine_ore,
            icon = "__TIMSABA__/graphics/icons/moshine/moshine-air.png",
            order = a,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = {r = 140 / 255, g = 115 / 255, b = 30 / 255},
            flow_color = {r = 150 / 255, g = 120 / 255, b = 40 / 255},
            max_temperature = 0,
            auto_barrel = false
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
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            type = item,
            name = neodymium_ore,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-ore.png",
            order = a,
            stack_size = 200,
            weight = 5000,
            pictures =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ore-1.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ore-2.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ore-3.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                }
            }
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            type = item,
            name = neodymium_processed,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-processed.png",
            order = b,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            type = item,
            name = neodymium_pellet,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-pellet.png",
            order = c,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd"} or nil,
            type = item,
            name = neodymium_ingot,
            subgroup = is_neodymium,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot.png",
            order = d,
            stack_size = 200,
            weight = 5000,
            pictures =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-1.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-2.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-3.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-4.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-5.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-6.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-7.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/neodymium-ingot-8.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                }
            }
        },
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "NdCl[font=default-tiny-bold]3[/font]"} or nil,
            type = item,
            name = neodymium_chloride_III,
            subgroup = is_neodymium_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-chloride-III.png",
            icon_szie = 64,
            order = a,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd(OH)[font=default-tiny-bold]3[/font]"} or nil,
            type = item,
            name = neodymium_hydroxide_III,
            subgroup = is_neodymium_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-hydroxide-III.png",
            icon_szie = 64,
            order = b,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = show_formula and {chemical_formula, "Nd[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
            type = item,
            name = neodymium_oxide_III,
            subgroup = is_neodymium_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-oxide-III.png",
            icon_szie = 64,
            order = c,
            stack_size = 200,
            weight = 5000
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = item,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]

    -- FLUID
    neodymium_iron_boron_molten = "neodymium-iron-boron-molten"
    data:extend
    ({
        -- CASTING
        {
            localised_description = show_formula and {chemical_formula, "Nd[font=default-tiny-bold]2[/font]Fe[font=default-tiny-bold]14[/font]B"} or nil,
            type = fluid,
            name = neodymium_iron_boron_molten,
            subgroup = is_neodymium_casting,
            icon = "__TIMSABA__/graphics/icons/moshine/neodymium-iron-boron-molten.png",
            order = a,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color("Nd2Fe14B"),
            flow_color = TIMSABA.functions.flow_color("Nd2Fe14B"),
            max_temperature = 0,
            auto_barrel = false
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = fluid,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color(""),
            flow_color = TIMSABA.functions.flow_color(""),
            max_temperature = 0,
            auto_barrel = false
        }
    })]]

    -- CERIUM
    cerium_ore = "cerium-ore"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "Ce"} or nil,
            type = item,
            name = cerium_ore,
            subgroup = is_cerium,
            icon = "__TIMSABA__/graphics/icons/moshine/cerium-ore.png",
            order = a,
            stack_size = 200,
            weight = 5000,
            pictures =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/cerium-ore-1.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/cerium-ore-2.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/cerium-ore-3.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                }
            }
        }
    })

    -- PROMETHIUM
    promethium_ore = "promethium-ore"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "Pm"} or nil,
            type = item,
            name = promethium_ore,
            subgroup = is_promethium,
            icon = "__TIMSABA__/graphics/icons/moshine/promethium-ore.png",
            order = a,
            stack_size = 200,
            weight = 5000,
            pictures =
            {
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/promethium-ore-1.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/promethium-ore-2.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                },
                {
                    filename = "__TIMSABA__/graphics/icons/moshine/promethium-ore-3.png",
                    width = 64,
                    height = 64,
                    scale = 0.5
                }
            }
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = item,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]

    -- SMELTING
    lead_sulfate_II = "lead-sulfate-II"
    boron_oxide_III = "boron-oxide-III"
    boron = "boron"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "PbSO[font=default-tiny-bold]4[/font]"} or nil,
            type = item,
            name = lead_sulfate_II,
            subgroup = is_lead_chemistry,
            icon = "__TIMSABA__/graphics/icons/moshine/lead-sulfate-II.png",
            icon_size = 64,
            order = g,
            stack_size = 200,
            weight = 5000
        },
        -- BORON
        {
            localised_description = show_formula and {chemical_formula, "B[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
            type = item,
            name = boron_oxide_III,
            subgroup = is_boron,
            icon = "__TIMSABA__/graphics/icons/moshine/boron-oxide-III.png",
            order = d,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = show_formula and {chemical_formula, "B"} or nil,
            type = item,
            name = boron,
            subgroup = is_boron,
            icon = "__TIMSABA__/graphics/icons/moshine/boron.png",
            order = z,
            stack_size = 200,
            weight = 5000
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = item,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]

    -- FLUID
    orthophosphoric_acid = "orthophosphoric-acid-solution"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]PO[font=default-tiny-bold]4[/font]"} or nil,
            type = fluid,
            name = orthophosphoric_acid,
            subgroup = is_phosphorus,
            icon = "__TIMSABA__/graphics/icons/moshine/orthophosphoric-acid-solution.png",
            order = h,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color("H3PO4Wp"),
            flow_color = TIMSABA.functions.flow_color("H3PO4Wp"),
            max_temperature = 0,
            auto_barrel = false
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = fluid,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color(""),
            flow_color = TIMSABA.functions.flow_color(""),
            max_temperature = 0,
            auto_barrel = false
        }
    })]]

    -- WATER TREATMENT (Phosphoric Waste Water)
    water_orange_waste = "water-orange-waste"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O(Ca[font=default-tiny-bold]3[/font](PO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font])"} or nil,
            type = fluid,
            name = water_orange_waste,
            subgroup = is_water_cleaning_fluid,
            icon = "__TIMSABA__/graphics/icons/moshine/water-orange-waste.png",
            order = e,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color("WpPOWp"),
            flow_color = TIMSABA.functions.flow_color("WpPOWp"),
            max_temperature = 0,
            auto_barrel = false
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = fluid,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = TIMSABA.functions.fluid_color(""),
            flow_color = TIMSABA.functions.flow_color(""),
            max_temperature = 0,
            auto_barrel = false
        }
    })]]

    -- PETROCHEM
    calcium_phosphate = "calcium-phosphate"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "Ca[font=default-tiny-bold]3[/font](PO[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]"} or nil,
            type = item,
            name = calcium_phosphate,
            subgroup = is_calcium,
            icon = "__TIMSABA__/graphics/icons/moshine/calcium-phosphate.png",
            order = i,
            stack_size = 200,
            weight = 5000
        }
    })

    -- BARITE
    barite = "barite"
    barium_sulfate = "barium-sulfate"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "(Ba,Ca,Pb)SO[font=default-tiny-bold]4[/font]"} or nil,
            type = item,
            name = barite,
            subgroup = is_barium,
            icon = "__TIMSABA__/graphics/icons/moshine/barite.png",
            order = a,
            stack_size = 200,
            weight = 5000
        },
        {
            localised_description = show_formula and {chemical_formula, "BaSO[font=default-tiny-bold]4[/font]"} or nil,
            type = item,
            name = barium_sulfate,
            subgroup = is_barium,
            icon = "__TIMSABA__/graphics/icons/moshine/barium-sulfate.png",
            order = b,
            stack_size = 200,
            weight = 5000
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = item,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]

    -- BIOTITE MICA
    biotite_mica = "biotite-mica"
    data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, "K(Mg,Fe,Al)[font=default-tiny-bold]2-3[/font][Si[font=default-tiny-bold]4[/font]O[font=default-tiny-bold]10[/font]](OH,F)[font=default-tiny-bold]2[/font]"} or nil,
            type = item,
            name = biotite_mica,
            subgroup = is_biotite_mica,
            icon = "__TIMSABA__/graphics/icons/moshine/biotite-mica.png",
            order = a,
            stack_size = 200,
            weight = 5000
        }
    })

    --[[data:extend
    ({
        {
            localised_description = show_formula and {chemical_formula, ""} or nil,
            type = item,
            name = ,
            subgroup = ,
            icon = "__TIMSABA__/graphics/icons/moshine/.png",
            order = ,
            stack_size = 200,
            weight = 5000
        }
    })]]
end