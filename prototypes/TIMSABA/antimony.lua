-- GROUPS
local aquilo = "aquilo"
local is_antimony = "is-antimony"
local is_antimony_chemistry = "is-antimony-chemistry"
local is_antimony_casting = "is-antimony-casting"
data:extend
({
    {
        type = item_subgroup,
        name = is_antimony,
        group = aquilo,
        order = d
    },
    {
        type = item_subgroup,
        name = is_antimony_chemistry,
        group = aquilo,
        order = d_a
    },
    {
        type = item_subgroup,
        name = is_antimony_casting,
        group = aquilo,
        order = d_b
    }
})

-- ITEM
antimony_ore = "antimony-ore"
antimony_processed = "antimony-processed"
antimony_pellet = "antimony-pellet"
antimony_ingot = "antimony-ingot"
antimony_powder = "antimony-powder"
antimony_chloride_III = "antimony-chloride-III"
antimony_oxide_III = "antimony-oxide-III"
antimony_plate = "antimony-plate"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_ore,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore.png",
        order = a,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_processed,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-processed.png",
        order = b,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_pellet,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-pellet.png",
        order = c,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_ingot,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot.png",
        order = d,
        stack_size = 200,
        weight = 5000,
        pictures =
        {
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-1.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-2.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-3.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-4.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-5.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-6.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-7.png",
                width = 64,
                height = 64,
                scale = 0.5
            },
            {
                filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-8.png",
                width = 64,
                height = 64,
                scale = 0.5
            }
        }
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_powder,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-powder.png",
        order = e,
        stack_size = 200,
        weight = 5000
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "SbCl[font=default-tiny-bold]3[/font]"} or nil,
        type = item,
        name = antimony_chloride_III,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-chloride-III.png",
        icon_size = 64,
        order = a,
        stack_size = 200,
        weight = 5000
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil,
        type = item,
        name = antimony_oxide_III,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-oxide-III.png",
        icon_size = 64,
        order = d,
        stack_size = 200,
        weight = 5000
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = item,
        name = antimony_plate,
        subgroup = is_antimony_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-plate.png",
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
        icon = "__TIMSABA__/graphics/icons/angels/aquilo/antimony/.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
antimony_chloride_V_liquid = "antimony-chloride-V-liquid"
antimony_acid = "antimony-acid-solution"
hexachloroantimonic_acid = "hexachloroantimonic-acid-solution"
antimony_molten = "antimony-molten"
data:extend
({
    {
        localised_description = show_formula and {chemical_formula, "SbCl[font=default-tiny-bold]5[/font]"} or nil,
        type = fluid,
        name = antimony_chloride_V_liquid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-chloride-V-liquid.png",
        order = b,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SbCl5"),
        flow_color = TIMSABA.functions.flow_color("SbCl5"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]SbO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        type = fluid,
        name = antimony_acid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-acid-solution.png",
        order = c,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("H3SbO4Wp"),
        flow_color = TIMSABA.functions.flow_color("H3SbO4Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    {
        localised_description = show_formula and {chemical_formula, "HSbCl[font=default-tiny-bold]6(aq)[/font]"} or nil,
        type = fluid,
        name = hexachloroantimonic_acid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/hexachloroantimonic-acid-solution.png",
        order = e,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("HSbCl6Wp"),
        flow_color = TIMSABA.functions.flow_color("HSbCl6Wp"),
        max_temperature = 0,
        auto_barrel = false
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        type = fluid,
        name = antimony_molten,
        subgroup = is_antimony_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-molten.png",
        order = a,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color("SbSbSb"),
        flow_color = TIMSABA.functions.flow_color("SbSbSb"),
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
        icon = "__TIMSABA__/graphics/icons/angels/aquilo/antimony/.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = angelsmods.functions.fluid_color(""),
        flow_color = angelsmods.functions.flow_color(""),
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- RECIPE
antimony_ingot_2 = "antimony-ingot-2"
antimony_ingot_3 = "antimony-ingot-3"
antimony_chloride_V_liquid_2 = "antimony-chloride-V-liquid-2"
antimony_chloride_V_liquid_3 = "antimony-chloride-V-liquid-3"
data:extend
({
    {
        type = recipe,
        name = antimony_processed,
        category = angels_processed_pressing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_ore, antimony_processed),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = antimony_ore, amount = 4}},
        results = {{type = item, name = antimony_processed, amount = 4}},
        main_product = antimony_processed
    },
    {
        type = recipe,
        name = antimony_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_processed, antimony_pellet),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = item, name = antimony_processed, amount = 4}},
        results = {{type = item, name = antimony_pellet, amount = 4}},
        main_product = antimony_pellet
    },
    {
        type = recipe,
        name = antimony_ingot,
        category = angels_blast_smelting_4,
        subgroup = is_antimony,
        icons = THREE_I(antimony_ore, carbon_angels, antimony_ingot),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Sb -C-> Sb
        ingredients =
        {
            {type = item, name = antimony_ore, amount = 32},
            {type = item, name = carbon_angels, amount = 32}
        },
        results = {{type = item, name = antimony_ingot, amount = 16}},
        main_product = antimony_ingot
    },
    {
        type = recipe,
        name = antimony_ingot_2,
        category = angels_blast_smelting_4,
        subgroup = is_antimony,
        icons = TWO_D_I(antimony_oxide_III, carbon, antimony_ingot, carbon_dioxide_angels),
        order = d_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- Sb₂O₅ + 5C --> 2Sb + 5CO 
        ingredients =
        {
            {type = item, name = antimony_oxide_III, amount = 8},
            {type = item, name = carbon, amount = 40}
        },
        results =
        {
            {type = item, name = antimony_ingot, amount = 16},
            {type = fluid, name = carbon_dioxide_angels, amount = 480} -- 1200
        },
        main_product = antimony_ingot
    },
    {
        type = recipe,
        name = antimony_ingot_3,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony,
        icons = THREE_D_I(hexachloroantimonic_acid, nil, zinc_ingot, antimony_ingot, zinc_chloride, hydrochloric_acid_angels),
        order = d_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2HSbCl₆(aq) + 5Zn --> 2Sb + 5ZnCl₂ + 2HCl(aq)
        ingredients =
        {
            {type = fluid, name = hexachloroantimonic_acid, amount = 240},
            {type = item, name = zinc_ingot, amount = 40}
        },
        results =
        {
            {type = item, name = antimony_ingot, amount = 16},
            {type = item, name = zinc_chloride, amount = 120}, -- 600
            {type = fluid, name = hydrochloric_acid_angels, amount = 120} -- 240
        },
        main_product = antimony_ingot
    },
    {
        type = recipe,
        name = antimony_powder,
        category = powderizing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_ingot, antimony_powder),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 0.5,
        ingredients = {{type = item, name = antimony_ingot, amount = 1}},
        results = {{type = item, name = antimony_powder, amount = 1}},
        main_product = antimony_powder
    },
    -- CHEMISTRY
    {
        type = recipe,
        name = antimony_chloride_III,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_ore, chlorine_angels, antimony_chloride_III),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Sb + 3Cl₂ --> 2SbCl₃
        ingredients =
        {
            {type = item, name = antimony_ore, amount = 32},
            {type = fluid, name = chlorine_angels, amount = 360}
        },
        results = {{type = item, name = antimony_chloride_III, amount = 16}},
        main_product = antimony_chloride_III
    },
    {
        type = recipe,
        name = antimony_chloride_V_liquid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_chloride_III, chlorine_angels, antimony_chloride_V_liquid),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SbCl₃ + Cl₂ --> SbCl₅
        ingredients =
        {
            {type = item, name = antimony_chloride_III, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 240}
        },
        results = {{type = fluid, name = antimony_chloride_V_liquid, amount = 240}},
        main_product = antimony_chloride_V_liquid
    },
    {
        type = recipe,
        name = antimony_chloride_V_liquid_2,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_processed, chlorine_angels, antimony_chloride_V_liquid),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Sb + 5Cl₂ --> 2SbCl₅
        ingredients =
        {
            {type = item, name = antimony_processed, amount = 16},
            {type = fluid, name = chlorine_angels, amount = 600}
        },
        results = {{type = fluid, name = antimony_chloride_V_liquid, amount = 240}},
        main_product = antimony_chloride_V_liquid
    },
    {
        type = recipe,
        name = antimony_chloride_V_liquid_3,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_pellet, chlorine_angels, antimony_chloride_V_liquid),
        order = b_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2Sb + 5Cl₂ --> 2SbCl₅
        ingredients =
        {
            {type = item, name = antimony_pellet, amount = 8},
            {type = fluid, name = chlorine_angels, amount = 600}
        },
        results = {{type = fluid, name = antimony_chloride_V_liquid, amount = 240}},
        main_product = antimony_chloride_V_liquid
    },
    {
        type = recipe,
        name = antimony_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = TWO_D_I(antimony_chloride_V_liquid, water_purified_angels, antimony_acid, hydrogen_chloride_angels),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SbCl₅ + 5H₂O --> H₃SbO₄(aq) + 5HCl
        ingredients =
        {
            {type = fluid, name = antimony_chloride_V_liquid, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 600}
        },
        results =
        {
            {type = fluid, name = antimony_acid, amount = 240},
            {type = fluid, name = hydrogen_chloride_angels, amount = 120} -- 600
        },
        main_product = antimony_acid
    },
    {
        type = recipe,
        name = antimony_oxide_III,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_R_I(antimony_acid, antimony_oxide_III, steam),
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- 2H₃SbO₄(aq) --> Sb₂O₅ + 5H₂O(g)
        ingredients = {{type = fluid, name = antimony_acid, amount = 240}},
        results =
        {
            {type = item, name = antimony_oxide_III, amount = 8},
            {type = fluid, name = steam, amount = 120} -- 600
        },
        main_product = antimony_oxide_III
    },
    {
        type = recipe,
        name = hexachloroantimonic_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_chloride_V_liquid, hydrochloric_acid_angels, hexachloroantimonic_acid),
        order = e,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- SbCl₅ + HCl(aq) --> HSbCl₆(aq)
        ingredients =
        {
            {type = fluid, name = antimony_chloride_V_liquid, amount = 240},
            {type = fluid, name = hydrochloric_acid_angels, amount = 240}
        },
        results = {{type = fluid, name = hexachloroantimonic_acid, amount = 240}},
        main_product = hexachloroantimonic_acid
    },
    -- CASTING
    {
        type = recipe,
        name = antimony_molten,
        category = metallurgy,
        subgroup = is_antimony_casting,
        icons = TWO_I(antimony_ingot, antimony_molten),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8,
        ingredients = {{type = item, name = antimony_ingot, amount = 16}},
        results = {{type = fluid, name = antimony_molten, amount = 240}},
        main_product = antimony_molten
    },
    {
        type = recipe,
        name = antimony_plate,
        category = metallurgy,
        subgroup = is_antimony_casting,
        icons = TWO_I(antimony_molten, antimony_plate),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 4,
        ingredients = {{type = fluid, name = antimony_molten, amount = 60}},
        results = {{type = item, name = antimony_plate, amount = 4}},
        main_product = antimony_plate
    }
})

--[[data:extend
({
    {
        type = recipe,
        name = ,
        category = ,
        subgroup = ,
        icons = ,
        order = ,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = ,
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]