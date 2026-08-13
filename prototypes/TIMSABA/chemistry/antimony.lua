-- GROUPS
local is_antimony = "is-antimony"
local is_antimony_chemistry = "is-antimony-chemistry"
local is_antimony_casting = "is-antimony-casting"
TIMSABA.functions.create_subgroups(ig_aquilo,
{
    {name = is_antimony,           order = d},
    {name = is_antimony_chemistry, order = d_a},
    {name = is_antimony_casting,   order = d_b}
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
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        name = antimony_ore,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ore-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        name = antimony_processed,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-processed.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        name = antimony_pellet,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-pellet.png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        name = antimony_ingot,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-3.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-4.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-5.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-6.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-7.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-ingot-8.png", width = 64, height = 64, scale = 0.5}
        },
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        name = antimony_powder,
        subgroup = is_antimony,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-powder.png",
        order = e
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "SbCl[font=default-tiny-bold]3[/font]"} or nil,
        name = antimony_chloride_III,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-chloride-III.png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Sb[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil,
        name = antimony_oxide_III,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-oxide-III.png",
        order = d
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        name = antimony_plate,
        subgroup = is_antimony_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-plate.png",
        order = b,
        drop_sound = data_item[iron_plate].drop_sound,
        inventory_move_sound = data_item[iron_plate].inventory_move_sound,
        pick_sound = data_item[iron_plate].pick_sound
    }
})

-- FLUID
antimony_chloride_V_liquid = "antimony-chloride-V-liquid"
antimony_acid = "antimony-acid-solution"
hexachloroantimonic_acid = "hexachloroantimonic-acid-solution"
antimony_molten = "antimony-molten"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "SbCl[font=default-tiny-bold]5[/font]"} or nil,
        name = antimony_chloride_V_liquid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-chloride-V-liquid.png",
        order = b,
        base_color = TIMSABA.functions.fluid_color("SbCl5"),
        flow_color = TIMSABA.functions.flow_color("SbCl5")
    },
    {
        localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]3[/font]SbO[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = antimony_acid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-acid-solution.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("H3SbO4Wp"),
        flow_color = TIMSABA.functions.flow_color("H3SbO4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "HSbCl[font=default-tiny-bold]6(aq)[/font]"} or nil,
        name = hexachloroantimonic_acid,
        subgroup = is_antimony_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/hexachloroantimonic-acid-solution.png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("HSbCl6Wp"),
        flow_color = TIMSABA.functions.flow_color("HSbCl6Wp")
    },
    -- CASTING
    {
        localised_description = show_formula and {chemical_formula, "Sb"} or nil,
        name = antimony_molten,
        subgroup = is_antimony_casting,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/antimony/antimony-molten.png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("SbSbSb"),
        flow_color = TIMSABA.functions.flow_color("SbSbSb")
    }
})
TIMSABA.barreling.add_dangerous_fluid(antimony_chloride_V_liquid)
TIMSABA.barreling.add_dangerous_fluid(antimony_acid)
TIMSABA.barreling.add_dangerous_fluid(hexachloroantimonic_acid)

-- RECIPE
antimony_ingot_2 = "antimony-ingot-2"
antimony_ingot_3 = "antimony-ingot-3"
antimony_chloride_V_liquid_2 = "antimony-chloride-V-liquid-2"
antimony_chloride_V_liquid_3 = "antimony-chloride-V-liquid-3"
TIMSABA.functions.create_recipes
({
    {
        name = antimony_processed,
        category = angels_processed_pressing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_ore, antimony_processed),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = antimony_ore, amount = 4}},
        results = {{type = item, name = antimony_processed, amount = 4}},
        main_product = antimony_processed
    },
    {
        name = antimony_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_processed, antimony_pellet),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = antimony_processed, amount = 4}},
        results = {{type = item, name = antimony_pellet, amount = 4}},
        main_product = antimony_pellet
    },
    {
        name = antimony_ingot,
        category = angels_blast_smelting_4,
        subgroup = is_antimony,
        icons = THREE_I(antimony_ore, carbon_angels, antimony_ingot),
        order = d,
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
        name = antimony_ingot_2,
        category = angels_blast_smelting_4,
        subgroup = is_antimony,
        icons = TWO_D_I(antimony_oxide_III, carbon, antimony_ingot, carbon_dioxide_angels),
        order = d_a,
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
        name = antimony_ingot_3,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony,
        icons = THREE_D_I(hexachloroantimonic_acid, nil, zinc_ingot, antimony_ingot, zinc_chloride, hydrochloric_acid_angels),
        order = d_b,
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
        name = antimony_powder,
        category = powderizing_4,
        subgroup = is_antimony,
        icons = TWO_I(antimony_ingot, antimony_powder),
        order = e,
        energy_required = 0.5,
        ingredients = {{type = item, name = antimony_ingot, amount = 1}},
        results = {{type = item, name = antimony_powder, amount = 1}},
        main_product = antimony_powder
    },
    -- CHEMISTRY
    {
        name = antimony_chloride_III,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_ore, chlorine_angels, antimony_chloride_III),
        order = a,
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
        name = antimony_chloride_V_liquid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_chloride_III, chlorine_angels, antimony_chloride_V_liquid),
        order = b,
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
        name = antimony_chloride_V_liquid_2,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_processed, chlorine_angels, antimony_chloride_V_liquid),
        order = b_a,
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
        name = antimony_chloride_V_liquid_3,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_pellet, chlorine_angels, antimony_chloride_V_liquid),
        order = b_b,
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
        name = antimony_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = TWO_D_I(antimony_chloride_V_liquid, water_purified_angels, antimony_acid, hydrogen_chloride_angels),
        order = c,
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
        name = antimony_oxide_III,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_R_I(antimony_acid, antimony_oxide_III, steam),
        order = d,
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
        name = hexachloroantimonic_acid,
        category = angels_chemical_smelting_4,
        subgroup = is_antimony_chemistry,
        icons = THREE_I(antimony_chloride_V_liquid, hydrochloric_acid_angels, hexachloroantimonic_acid),
        order = e,
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
        name = antimony_molten,
        category = metallurgy,
        subgroup = is_antimony_casting,
        icons = TWO_I(antimony_ingot, antimony_molten),
        order = a,
        allow_productivity = true,
        energy_required = 8,
        ingredients = {{type = item, name = antimony_ingot, amount = 16}},
        results = {{type = fluid, name = antimony_molten, amount = 240}},
        main_product = antimony_molten
    },
    {
        name = antimony_plate,
        category = metallurgy,
        subgroup = is_antimony_casting,
        icons = TWO_I(antimony_molten, antimony_plate),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        ingredients = {{type = fluid, name = antimony_molten, amount = 60}},
        results = {{type = item, name = antimony_plate, amount = 4}},
        main_product = antimony_plate
    }
})

data_item[antimony_powder].hidden = true
data_item[antimony_powder].hidden_in_factoriopedia = true
data_recipe[antimony_powder].hidden = true
data_recipe[antimony_powder].hidden_in_factoriopedia = true