-- FULGORA AIR
fulgora_air_separation = "fulgora-air-separation"
data:extend
({
    {
        type = recipe,
        name = fulgora_air,
        category = angels_petrochem_air_filtering,
        subgroup = is_fulgora_air,
        icon = data_fluid[fulgora_air].icon,
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        always_show_products = true,
        energy_required = 8,
        ingredients = {},
        results = {{type = fluid, name = fulgora_air, amount = 240}},
        main_product = fulgora_air,
        surface_conditions = {{property = pressure, min = 800, max = 800}}
    },
    {
        type = recipe,
        name = fulgora_air_separation,
        category = angels_advanced_chemistry,
        subgroup = is_fulgora_air,
        icons = FOUR_R_I(fulgora_air, nitrogen_angels, condensates_angels, hydrogen_sulfide_angels),
        order = a_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients = {{type = fluid, name = fulgora_air, amount = 120}},
        results =
        {
            {type = fluid, name = nitrogen_angels, amount = 60},
            {type = fluid, name = condensates_angels, amount = 30},
            {type = fluid, name = hydrogen_sulfide_angels, amount = 30}
        },
        main_product = nitrogen_angels
    }
})

-- SCRAP
construction_scrap_recycling = "construction-scrap-recycling"
machinery_scrap_recycling = "machinery-scrap-recycling"
data:extend
({
    {
        type = recipe,
        name = construction_scrap_recycling,
        category = recycling_hand_crafting,
        subgroup = is_scrap,
        icons = RECYCLING_I(recycling_png, construction_scrap),
        order = b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 0.25, -- Construction Scrap = Plate / Material / Ore
        ingredients = {{type = item, name = construction_scrap, amount = 1}},
        results =
        {
            -- Plate
            {type = item, name = iron_plate, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = steel_plate, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = copper_plate, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = lead_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = tin_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = nickel_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = aluminium_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = zinc_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = silver_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = titanium_plate_bob, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = gold_plate_bob, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = tungsten_plate_bob, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = tungsten_carbide_plate_bob, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = copper_tungsten_plate_bob, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = platinum_plate, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = molybdenum_plate, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = rhenium_plate, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = molybdenum_rhenium_plate, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = bronze_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = brass_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = gunmetal_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = invar_plate_bob, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = cobalt_steel_plate_bob, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = nitinol_plate_bob, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            -- Material
            {type = item, name = ice, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = wood, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = stone, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = clay_brick, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = concrete_brick, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = reinforced_concrete_brick, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = reinforced_titanium_concrete_brick, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            {type = item, name = concrete, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = reinforced_concrete, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = glass_bob, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = silicon_nitride_bob, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            -- Ore
            {type = item, name = brannerite_ore, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false}
        }
    },
    {
        type = recipe,
        name = machinery_scrap_recycling,
        category = recycling_hand_crafting,
        subgroup = is_scrap,
        icons = RECYCLING_I(recycling_png, machinery_scrap),
        order = c,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 0.25, -- Machinery Scrap = Geaw Wheel / Bearing / Wire / Circuit / Battery
        ingredients = {{type = item, name = machinery_scrap, amount = 1}},
        results =
        {
            -- Geaw Wheel
            {type = item, name = iron_gear_wheel, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false},
            {type = item, name = steel_gear_wheel, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
            {type = item, name = brass_gear_wheel, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
            {type = item, name = ceramic_gear_wheel, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = cobalt_steel_gear_wheel, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = titanium_gear_wheel, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = tungsten_gear_wheel, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = nitinol_gear_wheel, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = copper_tungsten_gear_wheel, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = molybdenum_gear_wheel, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            -- Bearing
            {type = item, name = iron_bearing, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false},
            {type = item, name = steel_bearing, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
            {type = item, name = brass_bearing, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
            {type = item, name = ceramic_bearing, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = cobalt_steel_bearing, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = titanium_bearing, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = tungsten_bearing, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = nitinol_bearing, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = copper_tungsten_bearing, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = rhenium_bearing, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            -- Wire
            {type = item, name = copper_cable, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false},
            {type = item, name = tin_cable, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
            {type = item, name = silver_cable, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = gold_cable, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = platinum_cable, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            -- Circuit
            {type = item, name = basic_circuit_board, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
            {type = item, name = electronic_circuit, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = advanced_circuit, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = processing_unit, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = advanced_processing_unit, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
            -- Battery
            {type = item, name = battery_lead_acid, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
            {type = item, name = battery_lithium_ion, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
            {type = item, name = battery_silver_zinc, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
            {type = item, name = battery_graphene, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false}
        }
    }
})

if mods [muluna_mods] then
    data_recipe[machinery_scrap_recycling].results =
    {
        -- Geaw Wheel
        {type = item, name = iron_gear_wheel, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false},
        {type = item, name = steel_gear_wheel, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = item, name = brass_gear_wheel, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = item, name = ceramic_gear_wheel, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
        {type = item, name = cobalt_steel_gear_wheel, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
        {type = item, name = titanium_gear_wheel, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = tungsten_gear_wheel, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = nitinol_gear_wheel, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = copper_tungsten_gear_wheel, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = molybdenum_gear_wheel, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
        -- Bearing
        {type = item, name = iron_bearing, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false},
        {type = item, name = steel_bearing, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = item, name = brass_bearing, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = item, name = ceramic_bearing, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
        {type = item, name = cobalt_steel_bearing, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
        {type = item, name = titanium_bearing, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = tungsten_bearing, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = nitinol_bearing, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = copper_tungsten_bearing, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = rhenium_bearing, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
        -- Wire
        {type = item, name = copper_cable, amount = 1, probability = 0.5, show_details_in_recipe_tooltip = false},
        {type = item, name = tin_cable, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = item, name = aluminium_cable, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false}, -- NEW
        {type = item, name = silver_cable, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
        {type = item, name = gold_cable, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = platinum_cable, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        -- Circuit
        {type = item, name = basic_circuit_board, amount = 1, probability = 0.25, show_details_in_recipe_tooltip = false},
        {type = item, name = electronic_circuit, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
        {type = item, name = advanced_circuit, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = processing_unit, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = advanced_processing_unit, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false},
        -- Battery
        {type = item, name = battery_lead_acid, amount = 1, probability = 0.125, show_details_in_recipe_tooltip = false},
        {type = item, name = battery_lithium_ion, amount = 1, probability = 0.0625, show_details_in_recipe_tooltip = false},
        {type = item, name = battery_silver_zinc, amount = 1, probability = 0.03125, show_details_in_recipe_tooltip = false},
        {type = item, name = battery_graphene, amount = 1, probability = 0.015625, show_details_in_recipe_tooltip = false}
    }
end

-- CALCIUM
calcium_recipe = "calcium-ore-crushed-mix-processing"
calcium_chloride_solution_from_lime = "calcium-chloride-solution-from-lime"
data:extend
({
    {
        type = recipe,
        name = calcium_recipe,
        category = ore_sorting_6,
        subgroup = is_ore_sorting_advanced_1,
        icons = AR_FOUR_I(mineral_catalyst, powellite_crushed, brannerite_crushed, calcium),
        order = a_g,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 2,
        ingredients =
        {
            {type = item, name = mineral_catalyst, amount = 1},
            {type = item, name = powellite_crushed, amount = 2},
            {type = item, name = brannerite_crushed, amount = 2}
        },
        results = {{type = item, name = calcium, amount = 4}},
        main_product = calcium
    },
    {
        type = recipe,
        name = calcium,
        category = angels_petrochem_electrolyser,
        subgroup = is_calcium,
        icons = FOUR_R_I(calcium_chloride_solution, hydrogen_chloride_angels, calcium, oxygen_angels),
        order = a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 8, -- (CaCl₂ + H₂O) -electrode/electrolyser-> Ca + 2HCl + O₂
        ingredients =
        {
            {type = fluid, name = calcium_chloride_solution, amount = 240},
            {type = item, name = electrode, amount = 1}
        },
        results =
        {
            {type = item, name = calcium, amount = 16},
            {type = fluid, name = hydrogen_chloride_angels, amount = 240}, -- 480
            {type = fluid, name = oxygen_angels, amount = 120}, -- 240
            {type = item, name = electrode_used, amount = 1}
        },
        main_product = calcium
    },
    {
        type = recipe,
        name = calcium_chloride_solution_from_lime,
        category = chemistry,
        subgroup = is_calcium_fluids,
        icons = TWO_D_I(lime_angels, hydrochloric_acid_angels, calcium_chloride_solution, water_purified_angels),
        order = b_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4, -- CaO + 2HCl(aq) --> CaCl₂(aq) + 2H₂O
        ingredients =
        {
            {type = item, name = lime_angels, amount = 4},
            {type = fluid, name = hydrochloric_acid_angels, amount = 120}
        },
        results =
        {
            {type = fluid, name = calcium_chloride_solution, amount = 60},
            {type = fluid, name = water_purified_angels, amount = 60} -- 120
        },
        main_product = calcium_chloride_solution
    }
})

--[[
data:extend
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
})
]]