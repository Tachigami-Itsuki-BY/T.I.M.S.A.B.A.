-- GROUPS
local is_gallium = "is-gallium"
local is_gallium_chemistry = "is-gallium-chemistry"
TIMSABA.functions.create_subgroups(ig_aquilo,
{
    {name = is_gallium,           order = g},
    {name = is_gallium_chemistry, order = g_a}
})

-- ITEM
galium_ore = "galium-ore"
galium_processed = "galium-processed"
galium_pellet = "galium-pellet"
galium_ingot = "galium-ingot"
galium_powder = "galium-powder"
galium_hydroxide_III = "galium-hydroxide-III"
galium_oxide_III = "galium-oxide-III"
galium_chloride_III = "galium-chloride-III"
galium_arsenide = "galium-arsenide"
galium_nitride = "galium-nitride"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Ga"} or nil,
        name = galium_ore,
        subgroup = is_gallium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ore.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ore-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ore-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ore-3.png", width = 64, height = 64, scale = 0.5}
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Ga"} or nil,
        name = galium_processed,
        subgroup = is_gallium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-processed.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Ga"} or nil,
        name = galium_pellet,
        subgroup = is_gallium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-pellet.png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Ga"} or nil,
        name = galium_ingot,
        subgroup = is_gallium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-2.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-3.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-4.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-5.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-6.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-7.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-ingot-8.png", width = 64, height = 64, scale = 0.5}
        },
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "Ga"} or nil,
        name = galium_powder,
        subgroup = is_gallium,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-powder.png",
        order = e
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "Ga(OH)[font=default-tiny-bold]3[/font]"} or nil,
        name = galium_hydroxide_III,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-hydroxide-III.png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Ga[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil,
        name = galium_oxide_III,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-oxide-III.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "GaCl[font=default-tiny-bold]3[/font]"} or nil,
        name = galium_chloride_III,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-chloride-III.png",
        order = e
    },
    {
        localised_description = show_formula and {chemical_formula, "GaAs"} or nil,
        name = galium_arsenide,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-arsenide.png",
        order = h
    },
    {
        localised_description = show_formula and {chemical_formula, "GaN"} or nil,
        name = galium_nitride,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-nitride.png",
        order = i
    }
})

-- FLUID
sodium_tetrahydroxogallate_III_solution = "sodium-tetrahydroxogallate-III-solution"
galium_liquid = "galium-liquid"
galium_chloride_III_solution_ether = "galium-chloride-III-solution-ether"
lithium_gallium_hydride_solution_ether = "lithium-gallium-hydride-solution-ether"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "NaGa(OH)[font=default-tiny-bold]4(aq)[/font]"} or nil,
        name = sodium_tetrahydroxogallate_III_solution,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/sodium-tetrahydroxogallate-III-solution.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("NaGaO4H4Wp"),
        flow_color = TIMSABA.functions.flow_color("NaGaO4H4Wp")
    },
    {
        localised_description = show_formula and {chemical_formula, "Ga"} or nil,
        name = galium_liquid,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-liquid.png",
        order = d,
        base_color = TIMSABA.functions.fluid_color("GaGaGa"),
        flow_color = TIMSABA.functions.flow_color("GaGaGa")
    },
    {
        localised_description = show_formula and {chemical_formula, "GaCl[font=default-tiny-bold]3(ether)[/font]"} or nil,
        name = galium_chloride_III_solution_ether,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/galium-chloride-III-solution-ether.png",
        order = f,
        base_color = TIMSABA.functions.fluid_color("GaCl3De"),
        flow_color = TIMSABA.functions.flow_color("GaCl3De")
    },
    {
        localised_description = show_formula and {chemical_formula, "LiGaH[font=default-tiny-bold]4(ether)[/font]"} or nil,
        name = lithium_gallium_hydride_solution_ether,
        subgroup = is_gallium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/aquilo/galium/lithium-gallium-hydride-solution-ether.png",
        order = g,
        base_color = TIMSABA.functions.fluid_color("LiGaH4De"),
        flow_color = TIMSABA.functions.flow_color("LiGaH4De")
    }
})

-- RECIPE
galium_hydroxide_III_2 = "galium-hydroxide-III-2"
sodium_tetrahydroxogallate_III_2_solution = "sodium-tetrahydroxogallate-III-2-solution"
TIMSABA.functions.create_recipes
({
    {
        name = galium_processed,
        category = angels_processed_pressing_4,
        subgroup = is_gallium,
        icons = TWO_I(galium_ore, galium_processed),
        order = b,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = galium_ore, amount = 4},
            {type = item, name = ice, amount = 4}
        },
        results = {{type = item, name = galium_processed, amount = 4}},
        main_product = galium_processed
    },
    {
        name = galium_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_gallium,
        icons = TWO_I(galium_processed, galium_pellet),
        order = c,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = galium_processed, amount = 4},
            {type = item, name = ice, amount = 4}
        },
        results = {{type = item, name = galium_pellet, amount = 4}},
        main_product = galium_pellet
    },
    {
        name = galium_ingot,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium,
        icons = TWO_D_I(galium_liquid, nitrogen_liquid, galium_ingot, nitrogen_angels),
        order = d,
        energy_required = 8, -- Ga(l) + N₂(l) --> Ga(s) + N₂(g)
        ingredients =
        {
            {type = fluid, name = galium_liquid, amount = 240},
            {type = fluid, name = nitrogen_liquid, amount = 240}
        },
        results =
        {
            {type = item, name = galium_ingot, amount = 16},
            {type = fluid, name = nitrogen_angels, amount = 120} -- 240
        },
        main_product = galium_ingot
    },
    {
        name = galium_powder,
        category = powderizing_4,
        subgroup = is_gallium,
        icons = TWO_I(galium_ingot, galium_powder),
        order = e,
        energy_required = 0.5,
        ingredients =
        {
            {type = item, name = galium_ingot, amount = 1},
            {type = item, name = ice, amount = 1}
        },
        results = {{type = item, name = galium_powder, amount = 1}},
        main_product = galium_powder
    },
    -- CHEMISTRY
    {
        name = galium_hydroxide_III,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = TWO_D_I(galium_ore, water_purified_angels, galium_hydroxide_III, hydrogen_angels),
        order = a,
        energy_required = 8, -- 2Ga(s) + 6H₂O(l) --> 2Ga(OH)₃(s) + 3H₂(g)
        ingredients =
        {
            {type = item, name = galium_ore, amount = 32},
            {type = fluid, name = water_purified_angels, amount = 720}
        },
        results =
        {
            {type = item, name = galium_hydroxide_III, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 360
        },
        main_product = galium_hydroxide_III
    },
    {
        name = galium_hydroxide_III_2,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = FOUR_THREE_R_I(lithium_gallium_hydride_solution_ether, nil, water_purified_angels, galium_hydroxide_III, lithium_hydroxide, hydrogen_angels, diethyl_ether),
        order = a_a,
        energy_required = 8, -- LiGaH₄(ether) + 4H₂O(l) --> Ga(OH)₃(s) + LiOH(s) + 4H₂(g) + (C₂H₅)₂O
        ingredients =
        {
            {type = fluid, name = lithium_gallium_hydride_solution_ether, amount = 240},
            {type = fluid, name = water_purified_angels, amount = 960}
        },
        results =
        {
            {type = item, name = galium_hydroxide_III, amount = 16},
            {type = item, name = lithium_hydroxide, amount = 8}, -- 16
            {type = fluid, name = hydrogen_angels, amount = 480}, -- 960
            {type = fluid, name = diethyl_ether, amount = 120} -- 240
        },
        main_product = galium_hydroxide_III
    },
    {
        name = galium_oxide_III,
        category = angels_blast_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = THREE_R_I(galium_hydroxide_III, galium_oxide_III, steam),
        order = b,
        energy_required = 8, -- 2Ga(OH)₃(s) --> Ga₂O₃(s) + 3H₂O(g)
        ingredients = {{type = item, name = galium_hydroxide_III, amount = 32}},
        results =
        {
            {type = item, name = galium_oxide_III, amount = 16},
            {type = fluid, name = steam, amount = 240} -- 720
        },
        main_product = galium_oxide_III
    },
    {
        name = sodium_tetrahydroxogallate_III_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = THREE_D_I(galium_oxide_III, sodium_hydroxide_solution_angels, water_purified_angels, sodium_tetrahydroxogallate_III_solution),
        order = c,
        energy_required = 8, -- Ga₂O₃(s) + 2NaOH(aq) + 3H₂O(l) --> 2NaGa(OH)₄(aq)
        ingredients =
        {
            {type = item, name = galium_oxide_III, amount = 16},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 480},
            {type = fluid, name = water_purified_angels, amount = 720}
        },
        results = {{type = fluid, name = sodium_tetrahydroxogallate_III_solution, amount = 240}},
        main_product = sodium_tetrahydroxogallate_III_solution
    },
    {
        name = sodium_tetrahydroxogallate_III_2_solution,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = THREE_D_I(galium_pellet, sodium_hydroxide_solution_angels, water_purified_angels, sodium_tetrahydroxogallate_III_solution, nil, hydrogen_angels),
        order = c_a,
        energy_required = 8, -- 2Ga(s) + 2NaOH(aq) + 6H₂O(l) --> 2NaGa(OH)₄(aq) + 3H₂(g)
        ingredients =
        {
            {type = item, name = galium_pellet, amount = 8},
            {type = fluid, name = sodium_hydroxide_solution_angels, amount = 16},
            {type = fluid, name = water_purified_angels, amount = 720}
        },
        results =
        {
            {type = fluid, name = sodium_tetrahydroxogallate_III_solution, amount = 240},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 360
        },
        main_product = sodium_tetrahydroxogallate_III_solution
    },
    {
        name = galium_liquid,
        category = angels_petrochem_electrolyser,
        subgroup = is_gallium_chemistry,
        icons = FOUR_R_I(sodium_tetrahydroxogallate_III_solution, oxygen_angels, galium_liquid, sodium_hydroxide_angels), -- or FOUR_R_I(sodium_tetrahydroxogallate_III_solution, oxygen_angels, galium_liquid, sodium_hydroxide_solution_angels),
        order = d,
        energy_required = 8, -- 4NaGa(OH)₄(aq) -electrolys/electrode-> 4Ga(l) + 3O₂(g) + 4NaOH(s) + 6H₂O(l) + 4H₂O(l)
        ingredients =
        {
            {type = fluid, name = sodium_tetrahydroxogallate_III_solution, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = fluid, name = galium_liquid, amount = 240},
            {type = fluid, name = oxygen_angels, amount = 60}, -- 180
            {type = item, name = sodium_hydroxide_angels, amount = 8}, -- 16 or --{type = fluid, name = sodium_hydroxide_solution_angels, amount = 120} -- 240
            --{type = fluid, name = water_purified_angels, amount = 120}, -- 360
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = galium_liquid
    },
    {
        name = galium_chloride_III,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = TWO_D_I(galium_processed, hydrogen_chloride_angels, galium_chloride_III, hydrogen_angels),
        order = e,
        energy_required = 8, -- 2Ga(s) + 6HCl(g) --> 2GaCl₃(s) + 3H₂(g)
        ingredients =
        {
            {type = item, name = galium_processed, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 720}
        },
        results =
        {
            {type = item, name = galium_chloride_III, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 360
        },
        main_product = galium_chloride_III
    },
    {
        name = galium_chloride_III_solution_ether,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = THREE_I(galium_chloride_III, diethyl_ether, galium_chloride_III_solution_ether),
        order = f,
        energy_required = 8, -- GaCl₃(s) + (C₂H₅)₂O(l) --> GaCl₃(ether)
        ingredients =
        {
            {type = item, name = galium_chloride_III, amount = 16},
            {type = fluid, name = diethyl_ether, amount = 240}
        },
        results = {{type = fluid, name = galium_chloride_III_solution_ether, amount = 240}},
        main_product = galium_chloride_III_solution_ether
    },
    {
        name = lithium_gallium_hydride_solution_ether,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = TWO_D_I(galium_chloride_III_solution_ether, lithium_hydride, lithium_gallium_hydride_solution_ether, salt_angels),
        order = g,
        energy_required = 8, -- GaCl₃(ether) + 4LiH(s) --> LiGaH₄(ether) + 3LiCl(s)
        ingredients =
        {
            {type = fluid, name = galium_chloride_III_solution_ether, amount = 240},
            {type = item, name = lithium_hydride, amount = 960}
        },
        results =
        {
            {type = fluid, name = lithium_gallium_hydride_solution_ether, amount = 240},
            {type = item, name = salt_angels, amount = 8} -- 24
        },
        main_product = lithium_gallium_hydride_solution_ether
    },
    {
        name = galium_arsenide,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = THREE_I(galium_powder, arsenic_powder, galium_arsenide),
        order = h,
        energy_required = 8, -- Ga(powder) + As(powder) --> GaAs(s)
        ingredients =
        {
            {type = item, name = galium_powder, amount = 16},
            {type = item, name = arsenic_powder, amount = 16}
        },
        results = {{type = item, name = galium_arsenide, amount = 16}},
        main_product = galium_arsenide
    },
    {
        name = galium_nitride,
        category = angels_chemical_smelting_4,
        subgroup = is_gallium_chemistry,
        icons = TWO_D_I(galium_powder, ammonia_angels, galium_nitride, hydrogen_angels),
        order = i,
        energy_required = 8, -- 2Ga(powder) + 2NH₃(g) --> 2GaN(s) + 3H₂(g)
        ingredients =
        {
            {type = item, name = galium_powder, amount = 16},
            {type = fluid, name = ammonia_angels, amount = 240}
        },
        results =
        {
            {type = item, name = galium_nitride, amount = 16},
            {type = fluid, name = hydrogen_angels, amount = 120} -- 360
        },
        main_product = galium_nitride
    }
})