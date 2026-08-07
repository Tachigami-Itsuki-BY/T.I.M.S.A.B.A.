-- GROUPS
local is_niobium = "is-niobium"
local is_niobium_chemistry = "is-niobium-chemistry"
local is_niobium_titanium = "is-niobium-titanium"
local is_niobium_iron = "is-niobium-iron"
local is_niobium_tungsten_molybdenum = "is-niobium-tungsten-molybdenum"
TIMSABA.functions.create_subgroups(ig_vulcanus,
{
    {name = is_niobium,                     order = c_a},
    {name = is_niobium_chemistry,           order = c_b},
    {name = is_niobium_titanium,            order = c_d},
    {name = is_niobium_iron,                order = c_e},
    {name = is_niobium_tungsten_molybdenum, order = c_f}
})

-- ITEM
niobium_ore = "niobium-ore"
niobium_processed = "niobium-processed"
niobium_pellet = "niobium-pellet"
niobium_powder = "niobium-powder"
niobium_oxide_V = "niobium-oxide-V"
potassium_niobate = "potassium-niobate"
niobium_hydroxide_V = "niobium-hydroxide-V"
niobium_titanium_plate = "niobium-titanium-plate"
niobium_titanium_cable = "niobium-titanium-cable"
niobium_iron_plate = "niobium-iron-plate"
niobium_iron_bearing_ball = "niobium-iron-bearing-ball"
niobium_iron_bearing = "niobium-iron-bearing"
niobium_tungsten_molybdenum_powder_mixture = "niobium-tungsten-molybdenum-powder-mixture"
niobium_tungsten_molybdenum_plate = "niobium-tungsten-molybdenum-plate"
niobium_tungsten_molybdenum_gear_wheel = "niobium-tungsten-molybdenum-gear-wheel"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "Nb"} or nil,
        name = niobium_ore,
        subgroup = is_niobium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-ore.png",
        pictures =
        {
            {filename = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-ore-1.png", width = 64, height = 64, scale = 0.5},
            {filename = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-ore-2.png", width = 64, height = 64, scale = 0.5},
            --[[{filename = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-ore-3.png", width = 64, height = 64, scale = 0.5}]]
        },
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "Nb"} or nil,
        name = niobium_processed,
        subgroup = is_niobium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-processed.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Nb"} or nil,
        name = niobium_pellet,
        subgroup = is_niobium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-pellet.png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "Nb"} or nil,
        name = niobium_powder,
        subgroup = is_niobium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-powder.png",
        order = d
    },
    {
        localised_description = show_formula and {chemical_formula, "NbWFe"} or nil,
        name = niobium_tungsten_molybdenum_powder_mixture,
        subgroup = is_niobium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-tungsten-molybdenum-powder-mixture.png",
        order = f
    },
    -- CHEMISTRY
    {
        localised_description = show_formula and {chemical_formula, "Nb[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil,
        name = niobium_oxide_V,
        subgroup = is_niobium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-oxide-V.png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "KNbO[font=default-tiny-bold]3[/font]"} or nil,
        name = potassium_niobate,
        subgroup = is_niobium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/potassium-niobate.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "Nb(OH)[font=default-tiny-bold]5[/font]"} or nil,
        name = niobium_hydroxide_V,
        subgroup = is_niobium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-hydroxide-V.png",
        order = d
    },
    -- CASTING
    -- CASTING Nb-Ti
    {
        localised_description = show_formula and {chemical_formula, "NbTi"} or nil,
        name = niobium_titanium_plate,
        subgroup = is_niobium_titanium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-titanium-plate.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "NbTi"} or nil,
        name = niobium_titanium_cable,
        subgroup = is_niobium_titanium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-titanium-cable.png",
        order = c
    },
    -- CASTING Nb-Fe
    {
        localised_description = show_formula and {chemical_formula, "NbFe"} or nil,
        name = niobium_iron_plate,
        subgroup = is_niobium_iron,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-iron-plate.png",
        order = b
    },
    {
        localised_description = show_formula and {chemical_formula, "NbFe"} or nil,
        name = niobium_iron_bearing_ball,
        subgroup = is_niobium_iron,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-iron-bearing-ball.png",
        order = c
    },
    {
        localised_description = show_formula and {chemical_formula, "NbFe"} or nil,
        name = niobium_iron_bearing,
        subgroup = is_niobium_iron,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-iron-bearing.png",
        order = d
    },
    -- CASTING Nb-W-Mo
    {
        localised_description = show_formula and {chemical_formula, "NbWMo"} or nil,
        name = niobium_tungsten_molybdenum_plate,
        subgroup = is_niobium_tungsten_molybdenum,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-tungsten-molybdenum-plate.png",
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "NbWMo"} or nil,
        name = niobium_tungsten_molybdenum_gear_wheel,
        subgroup = is_niobium_tungsten_molybdenum,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-tungsten-molybdenum-gear-wheel.png",
        order = b
    }
})

-- FLUID
heptafluoroniobic_acid = "heptafluoroniobic-acid-solution"
niobium_titanium_molten = "niobium-titanium-molten"
niobium_iron_molten = "niobium-iron-molten"
ammonium_fluoride_solution = "ammonium-fluoride-solution"
nitrogen_liquid = "nitrogen-liquid"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "HNbF[font=default-tiny-bold]7(aq)[/font]"} or nil,
        name = heptafluoroniobic_acid,
        subgroup = is_niobium_chemistry,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/heptafluoroniobic-acid-solution.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("HNbF7Wp"),
        flow_color = TIMSABA.functions.flow_color("HNbF7Wp")
    },
    -- CASTING Nb-Ti
    {
        localised_description = show_formula and {chemical_formula, "NbTi"} or nil,
        name = niobium_titanium_molten,
        subgroup = is_niobium_titanium,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-titanium-molten.png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("NbTi"),
        flow_color = TIMSABA.functions.flow_color("NbTi")
    },
    -- CASTING Nb-Fe
    {
        localised_description = show_formula and {chemical_formula, "NbFe"} or nil,
        name = niobium_iron_molten,
        subgroup = is_niobium_iron,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/niobium-iron-molten.png",
        order = a,
        base_color = TIMSABA.functions.fluid_color("NbFe"),
        flow_color = TIMSABA.functions.flow_color("NbFe")
    },
    -- NITROGEN LIQUIDS
    {
        localised_description = show_formula and {chemical_formula, "NH[font=default-tiny-bold]4[/font]F[font=default-tiny-bold](aq)[/font]"} or nil,
        name = ammonium_fluoride_solution,
        subgroup = is_nitrogen_fluids,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/ammonium-fluoride-solution.png",
        order = v,
        base_color = TIMSABA.functions.fluid_color("NH4FWp"),
        flow_color = TIMSABA.functions.flow_color("NH4FWp")
    },
    -- NITORGEN AQUILO
    {
        localised_description = show_formula and {chemical_formula, "N[font=default-tiny-bold]2(liquid)[/font]"} or nil,
        name = nitrogen_liquid,
        subgroup = is_aquilo_air,
        icon = "__TIMSABA__/graphics/icons/space-age/vulcanus/nitrogen-liquid.png",
        order = e,
        base_color = TIMSABA.functions.fluid_color("NNN"),
        flow_color = TIMSABA.functions.flow_color("NNN"),
        default_temperature = -210,
        max_temperature = -196
    }
})
TIMSABA.barreling.add_dangerous_fluid(heptafluoroniobic_acid)
TIMSABA.barreling.add_dangerous_fluid(ammonium_fluoride_solution)
TIMSABA.barreling.add_gas(nitrogen_liquid)

niobium_oxide_V_2 = "niobium-oxide-V-2"
niobium_oxide_V_3 = "niobium-oxide-V-3"
superconductor_2 = "superconductor-2"
TIMSABA.functions.create_recipes
({
    {
        name = niobium_processed,
        category = angels_processed_pressing_4,
        subgroup = is_niobium,
        icons = TWO_I(niobium_ore, niobium_processed),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = niobium_ore, amount = 4}},
        results = {{type = item, name = niobium_processed, amount = 4}},
        main_product = niobium_processed
    },
    {
        name = niobium_pellet,
        category = angels_pellet_pressing_4,
        subgroup = is_niobium,
        icons = TWO_I(niobium_processed, niobium_pellet),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = niobium_processed, amount = 4}},
        results = {{type = item, name = niobium_pellet, amount = 4}},
        main_product = niobium_pellet
    },
    {
        name = niobium_powder,
        category = angels_blast_smelting_4,
        subgroup = is_niobium,
        icons = TWO_D_I(niobium_oxide_V, aluminium_ingot, niobium_powder, aluminium_oxide),
        order = d,
        energy_required = 8, -- 3Nb₂O₅(s) + 10Al(s) --> 6Nb(s) + 5Al₂O₃(s)
        ingredients =
        {
            {type = item, name = niobium_oxide_V, amount = 12},
            {type = item, name = aluminium_ingot, amount = 40}
        },
        results =
        {
            {type = item, name = niobium_powder, amount = 24},
            {type = item, name = aluminium_oxide, amount = 8} -- 20
        },
        main_product = niobium_powder
    },
    {
        name = niobium_tungsten_molybdenum_powder_mixture,
        category = angels_powder_mixing_4,
        subgroup = is_niobium,
        icons = THREE_D_I(niobium_powder, tungsten_powder, molybdenum_powder, niobium_tungsten_molybdenum_powder_mixture),
        order = f,
        energy_required = 8, -- Niobium powder + Tungsten powder + Molybdenum powder --> Niobium-tungsten-molybdenum powder mixture
        ingredients =
        {
            {type = item, name = niobium_powder, amount = 8},
            {type = item, name = tungsten_powder, amount = 8},
            {type = item, name = molybdenum_powder, amount = 8}
        },
        results = {{type = item, name = niobium_tungsten_molybdenum_powder_mixture, amount = 8}},
        main_product = niobium_tungsten_molybdenum_powder_mixture
    },
    -- CHEMISTRY
    {
        name = niobium_oxide_V,
        category = angels_blast_smelting_4,
        subgroup = is_niobium_chemistry,
        icons = THREE_I(niobium_ore, oxygen_angels, niobium_oxide_V),
        order = a,
        energy_required = 8, -- 4Nb(ore) + 5O₂(g) --> 2Nb₂O₅(s)
        ingredients =
        {
            {type = item, name = niobium_ore, amount = 32},
            {type = fluid, name = oxygen_angels, amount = 300}
        },
        results = {{type = item, name = niobium_oxide_V, amount = 8}},
        main_product = niobium_oxide_V
    },
    {
        name = niobium_oxide_V_2,
        category = angels_chemical_smelting_4,
        subgroup = is_niobium_chemistry,
        icons = TWO_D_I(potassium_niobate, sulfuric_acid_angels, niobium_oxide_V, potassium_sulfate_solution),
        order = a_a,
        energy_required = 8, -- 2KNbO₃(s) + H₂SO₄(l) --> Nb₂O₅(s) + K₂SO₄(aq)
        ingredients =
        {
            {type = item, name = potassium_niobate, amount = 16},
            {type = fluid, name = sulfuric_acid_angels, amount = 120}
        },
        results =
        {
            {type = item, name = niobium_oxide_V, amount = 8},
            {type = fluid, name = potassium_sulfate_solution, amount = 60} -- 120
        },
        main_product = niobium_oxide_V
    },
    {
        name = niobium_oxide_V_3,
        category = angels_blast_smelting_4,
        subgroup = is_niobium_chemistry,
        icons = THREE_R_I(niobium_hydroxide_V, niobium_oxide_V, steam),
        order = a_b,
        energy_required = 8, -- 2Nb(OH)₅(s) --> Nb₂O₅(s) + 5H₂O(g)
        ingredients = {{type = item, name = niobium_hydroxide_V, amount = 16}},
        results =
        {
            {type = item, name = niobium_oxide_V, amount = 8},
            {type = fluid, name = steam, amount = 120} -- 600
        },
        main_product = niobium_oxide_V
    },
    {
        name = potassium_niobate,
        category = angels_blast_smelting_4,
        subgroup = is_niobium_chemistry,
        icons = THREE_D_I(niobium_processed, potassium_hydroxide, potassium_chlorate, potassium_niobate, potassium_chloride, steam),
        order = b,
        energy_required = 8, -- 6Nb(prcessed) + 6KOH(s) + 5KClO₃(s) --> 6KNbO₃(s) + 5KCl(s) + 3H₂O(g)
        ingredients =
        {
            {type = item, name = niobium_processed, amount = 24},
            {type = item, name = potassium_hydroxide, amount = 24},
            {type = item, name = potassium_chlorate, amount = 20}
        },
        results =
        {
            {type = item, name = potassium_niobate, amount = 24},
            {type = item, name = potassium_chloride, amount = 4}, -- 20
            {type = fluid, name = steam, amount = 60} -- 180
        },
        main_product = potassium_niobate
    },
    {
        name = heptafluoroniobic_acid,
        category = angels_advanced_chemistry,
        subgroup = is_niobium_chemistry,
        icons = THREE_D_I(niobium_pellet, nitric_acid_angels, hydrofluoric_acid_angels, heptafluoroniobic_acid, nitrogen_monoxide_angels, water_purified_angels),
        order = c,
        -- Nb(pellet) + 2HNO₃(l) + 7HF(aq) --> HNbF₇(aq) + 2NO(g) + 4H₂O(l) + 6H₂O(l)
        ingredients =
        {
            {type = item, name = niobium_pellet, amount = 4},
            {type = fluid, name = nitric_acid_angels, amount = 240},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 840}
        },
        results =
        {
            {type = fluid, name = heptafluoroniobic_acid, amount = 120},
            {type = fluid, name = nitrogen_monoxide_angels, amount = 120}, -- 240
            {type = fluid, name = water_purified_angels, amount = 600} -- 1200
        },
        main_product = heptafluoroniobic_acid
    },
    {
        name = niobium_hydroxide_V,
        category = angels_advanced_chemistry,
        subgroup = is_niobium_chemistry,
        icons = THREE_D_I(heptafluoroniobic_acid, ammonia_solution, water_purified_angels, niobium_hydroxide_V, nil, ammonium_fluoride_solution),
        order = d,
        -- HNbF₇(aq) + 7NH₃(aq) + 4H₂O(l) --> Nb(OH)₅(s) + 7NH₄F(aq)
        ingredients =
        {
            {type = fluid, name = heptafluoroniobic_acid, amount = 120},
            {type = fluid, name = ammonia_solution, amount = 840},
            {type = fluid, name = water_purified_angels, amount = 480}
        },
        results =
        {
            {type = item, name = niobium_hydroxide_V, amount = 8},
            {type = fluid, name = ammonium_fluoride_solution, amount = 360} -- 840
        },
        main_product = niobium_hydroxide_V
    },
    -- CASTING
    -- CASTING Nb-Ti
    {
        name = niobium_titanium_molten,
        category = metallurgy,
        subgroup = is_niobium_titanium,
        icons = THREE_I(niobium_powder, titanium_molten_angels, niobium_titanium_molten),
        order = a,
        allow_productivity = true,
        energy_required = 8, -- Niobium powder + Titanium molten --> Niobium-titanium molten
        ingredients =
        {
            {type = item, name = niobium_powder, amount = 16},
            {type = fluid, name = titanium_molten_angels, amount = 240}
        },
        results = {{type = fluid, name = niobium_titanium_molten, amount = 240}},
        main_product = niobium_titanium_molten
    },
    {
        name = niobium_titanium_plate,
        category = metallurgy,
        subgroup = is_niobium_titanium,
        icons = TWO_I(niobium_titanium_molten, niobium_titanium_plate),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        -- Niobium-titanium molten --> Niobium-titanium plate
        ingredients = {{type = fluid, name = niobium_titanium_molten, amount = 60}},
        results = {{type = item, name = niobium_titanium_plate, amount = 4}},
        main_product = niobium_titanium_plate
    },
    {
        name = niobium_titanium_cable,
        category = metallurgy,
        subgroup = is_niobium_titanium,
        icons = TWO_I(niobium_titanium_molten, niobium_titanium_cable),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        -- Niobium-titanium molten --> Niobium-titanium cable
        ingredients = {{type = fluid, name = niobium_titanium_molten, amount = 60}},
        results = {{type = item, name = niobium_titanium_cable, amount = 16}},
        main_product = niobium_titanium_cable
    },
    -- CASTING Nb-Fe
    {
        name = niobium_iron_molten,
        category = metallurgy,
        subgroup = is_niobium_iron,
        icons = THREE_I(niobium_powder, iron_molten_angels, niobium_iron_molten),
        order = a,
        allow_productivity = true,
        energy_required = 8, -- Niobium powder + Iron molten --> Ferroniobium molten
        ingredients =
        {
            {type = item, name = niobium_powder, amount = 16},
            {type = fluid, name = iron_molten_angels, amount = 240}
        },
        results = {{type = fluid, name = niobium_iron_molten, amount = 240}},
        main_product = niobium_iron_molten
    },
    {
        name = niobium_iron_plate,
        category = metallurgy,
        subgroup = is_niobium_iron,
        icons = TWO_I(niobium_iron_molten, niobium_iron_plate),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        -- Ferroniobium molten --> Ferroniobium plate
        ingredients = {{type = fluid, name = niobium_iron_molten, amount = 60}},
        results = {{type = item, name = niobium_iron_plate, amount = 4}},
        main_product = niobium_iron_plate
    },
    {
        name = niobium_iron_bearing_ball,
        category = metallurgy,
        subgroup = is_niobium_iron,
        icons = TWO_I(niobium_iron_molten, niobium_iron_bearing_ball),
        order = c,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = fluid, name = niobium_iron_molten, amount = 15}},
        results = {{type = item, name = niobium_iron_bearing_ball, amount = 8}},
        main_product = niobium_iron_bearing_ball
    },
    {
        name = niobium_iron_bearing,
        category = metallurgy,
        subgroup = is_niobium_iron,
        icons = B_F_L(lubricant, niobium_iron_bearing_ball, niobium_iron_molten, niobium_iron_bearing),
        order = d,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = niobium_iron_bearing_ball, amount = 16},
            {type = fluid, name = niobium_iron_molten, amount = 30},
            {type = fluid, name = lubricant, amount = 15}
        },
        results = {{type = item, name = niobium_iron_bearing, amount = 2}},
        main_product = niobium_iron_bearing
    },
    -- CASTING Nb-W-Mo
    {
        name = niobium_tungsten_molybdenum_plate,
        category = sintering_6,
        subgroup = is_niobium_tungsten_molybdenum,
        icons = TWO_I(niobium_tungsten_molybdenum_powder_mixture, niobium_tungsten_molybdenum_plate),
        order = a,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 8, -- Niobium-tungsten-molybdenum powder mixture --> Niobium-tungsten-molybdenum plate
        ingredients = {{type = item, name = niobium_tungsten_molybdenum_powder_mixture, amount = 16}},
        results = {{type = item, name = niobium_tungsten_molybdenum_plate, amount = 16}},
        main_product = niobium_tungsten_molybdenum_plate
    },
    {
        name = niobium_tungsten_molybdenum_gear_wheel,
        category = sintering_6,
        subgroup = is_niobium_tungsten_molybdenum,
        icons = TWO_I(niobium_tungsten_molybdenum_powder_mixture, niobium_tungsten_molybdenum_gear_wheel),
        order = b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = niobium_tungsten_molybdenum_powder_mixture, amount = 1}},
        results = {{type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 1}},
        main_product = niobium_tungsten_molybdenum_gear_wheel
    },
    -- FLUORITE
    {
        name = fluorite_angels,
        category = chemistry,
        subgroup = is_calcium,
        icons = THREE_D_I(ammonium_fluoride_solution, nil, calcium_hydroxide, fluorite_angels, ammonia_solution, water_purified_angels),
        order = b,
        -- 2NH₄F(aq) + Ca(OH)₂(s) --> CaF₂(s) + 2NH₃(aq) + 2H₂O(l)
        ingredients =
        {
            {type = fluid, name = ammonium_fluoride_solution, amount = 120},
            {type = item, name = calcium_hydroxide, amount = 4}
        },
        results =
        {
            {type = item, name = fluorite_angels, amount = 4},
            {type = fluid, name = ammonia_solution, amount = 120},
            {type = fluid, name = water_purified_angels, amount = 120}
        },
        main_product = fluorite_angels
    },
    -- NITORGEN AQUILO
    {
        name = nitrogen_liquid,
        category = cryogenics,
        subgroup = is_aquilo_air,
        icons = TWO_I(nitrogen_angels, nitrogen_liquid),
        order = e,
        ingredients =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = fluoroketone_cold, amount = 120}
        },
        results =
        {
            {type = fluid, name = nitrogen_liquid, amount = 60},
            {type = fluid, name = fluoroketone_hot, amount = 60} -- 120
        },
        main_product = nitrogen_liquid
    },
    -- SUPERCONDUCTOR FULGORA
    {
        name = superconductor_2,
        category = electromagnetics,
        subgroup = is_fulgora_recipe,
        icons = R_P_I(superconductor, nil, nil, number_2),
        order = a_a,
        allow_productivity = true,
        allow_quality = true,
        -- Niobium-titanium cable + Copper cable + LDS + Steel plate + Liquid nitrogen --> Superconductor + Nitrogen gas
        ingredients =
        {
            {type = item, name = niobium_titanium_cable, amount = 4},
            {type = item, name = copper_cable, amount = 4},
            {type = item, name = low_density_structure, amount = 4},
            {type = item, name = steel_plate, amount = 4},
            {type = fluid, name = nitrogen_liquid, amount = 60}
        },
        results =
        {
            {type = item, name = superconductor, amount = 4},
            {type = fluid, name = nitrogen_angels, amount = 30, ignored_by_productivity = 30}
        },
        main_product = superconductor
    }
})