advanced_deuterium_fuel_cell_reprocessing = "advanced-deuterium-fuel-cell-reprocessing"
tritium_fuel_cell_reprocessing = "tritium-fuel-cell-reprocessing"
advanced_tritium_fuel_cell_reprocessing = "advanced-tritium-fuel-cell-reprocessing"
TIMSABA.functions.create_recipes
({
    {
        name = ceramic_gear_wheel,
        category = crafting,
        subgroup = is_gears,
        icons = TWO_I(silicon_nitride_bob, ceramic_gear_wheel),
        order = d,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = silicon_nitride_bob, amount = 1}},
        results = {{type = item, name = ceramic_gear_wheel, amount = 1}},
        main_product = ceramic_gear_wheel
    },
    {
        name = copper_tungsten_gear_wheel,
        category = angels_sintering_4,
        subgroup = is_gears,
        icons = TWO_I(copper_tungsten_powder, copper_tungsten_gear_wheel),
        order = i,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = copper_tungsten_powder, amount = 1}},
        results = {{type = item, name = copper_tungsten_gear_wheel, amount = 1}},
        main_product = copper_tungsten_gear_wheel
    },
    -- BEARING BALL
    {
        name = iron_bearing_ball,
        category = crafting,
        subgroup = is_bearing_ball,
        icons = TWO_I(iron_plate, iron_bearing_ball),
        order = a,
        enabled = true,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = iron_plate, amount = 1}},
        results = {{type = item, name = iron_bearing_ball, amount = 8}},
        main_product = iron_bearing_ball
    },
    {
        name = brass_bearing_ball,
        category = crafting,
        subgroup = is_bearing_ball,
        icons = TWO_I(brass_plate_bob, brass_bearing_ball),
        order = c,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = brass_plate_bob, amount = 1}},
        results = {{type = item, name = brass_bearing_ball, amount = 8}},
        main_product = brass_bearing_ball
    },
    {
        name = tungsten_bearing_ball,
        category = angels_sintering_4,
        subgroup = is_bearing_ball,
        icons = TWO_I(tungsten_powder, tungsten_bearing_ball),
        order = g,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = tungsten_powder, amount = 1}},
        results = {{type = item, name = tungsten_bearing_ball, amount = 8}},
        main_product = tungsten_bearing_ball
    },
    {
        name = copper_tungsten_bearing_ball,
        category = angels_sintering_4,
        subgroup = is_bearing_ball,
        icons = TWO_I(copper_tungsten_powder, copper_tungsten_bearing_ball),
        order = i,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients = {{type = item, name = copper_tungsten_powder, amount = 1}},
        results = {{type = item, name = copper_tungsten_bearing_ball, amount = 8}},
        main_product = copper_tungsten_bearing_ball
    },
    -- BEARING
    {
        name = iron_bearing,
        category = crafting,
        subgroup = is_bearing,
        icons = TWO_I(iron_plate, iron_bearing),
        order = a,
        enabled = true,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = iron_bearing_ball, amount = 16},
            {type = item, name = iron_plate, amount = 2}
        },
        results = {{type = item, name = iron_bearing, amount = 2}},
        main_product = iron_bearing
    },
    {
        name = brass_bearing,
        category = crafting_fluid,
        subgroup = is_bearing,
        icons = B_F_L(lubricant, brass_bearing_ball, brass_plate_bob, brass_bearing),
        order = c,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = brass_bearing_ball, amount = 16},
            {type = item, name = brass_plate_bob, amount = 2},
            {type = fluid, name = lubricant, amount = 15}
        },
        results = {{type = item, name = brass_bearing, amount = 2}},
        main_product = brass_bearing
    },
    {
        name = tungsten_bearing,
        category = angels_sintering_4,
        subgroup = is_bearing,
        icons = B_F_L(nil, tungsten_bearing_ball, tungsten_powder, tungsten_bearing),
        order = g,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = tungsten_bearing_ball, amount = 16},
            {type = item, name = tungsten_powder, amount = 2}
        },
        results = {{type = item, name = tungsten_bearing, amount = 2}},
        main_product = tungsten_bearing
    },
    {
        name = copper_tungsten_bearing,
        category = angels_sintering_4,
        subgroup = is_bearing,
        icons = B_F_L(nil, copper_tungsten_bearing_ball, copper_tungsten_powder, copper_tungsten_bearing),
        order = i,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = copper_tungsten_bearing_ball, amount = 16},
            {type = item, name = copper_tungsten_powder, amount = 2}
        },
        results = {{type = item, name = copper_tungsten_bearing, amount = 2}},
        main_product = copper_tungsten_bearing
    },
    {
        name = battery_graphene,
        category = chemistry_or_cryogenics,
        subgroup = "intermediate-product",
        icon = data_item[battery_graphene].icon,
        order = d,
        ingredients =
        {
            {type = item, name = graphite_plate, amount = 2},
            {type = item, name = graphene, amount = 2},
            {type = item, name = manganese_oxide_II, amount = 2},
            {type = item, name = aluminium_plate_bob, amount = 2},
            {type = item, name = plastic, amount = 4},
            {type = fluid, name = lithium_hexafluorophosphate_solution_carbonate, amount = 60}
        },
        results = {{type = item, name = battery_graphene, amount = 1}},
        main_product = battery_graphene
    },
    {
        name = advanced_deuterium_fuel_cell_reprocessing,
        category = angels_advanced_chemistry,
        additional_categories = {cryogenics},
        subgroup = is_nuclear_cell,
        icons = THREE_D_I(depleted_deuterium_fuel_cell, nil, hydrofluoric_acid_angels, muon_fusion_catalyst, tritium_gas, water_greenyellow_waste),
        order = i_b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 64,
        ingredients =
        {
            {type = item, name = depleted_deuterium_fuel_cell, amount = 4},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 60}
        },
        results =
        {
            {type = item, name = muon_fusion_catalyst, amount = 4},
            {type = fluid, name = tritium_gas, amount = 480},
            {type = fluid, name = water_greenyellow_waste, amount = 60}
        },
        main_product = tritium_gas
    },
    {
        name = tritium_fuel_cell,
        category = centrifuging_4,
        subgroup = is_nuclear_cell,
        icon = data_item[tritium_fuel_cell].icon,
        order = j,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 64,
        ingredients =
        {
            {type = item, name = muon_fusion_catalyst, amount = 1},
            {type = item, name = lead_plate_bob, amount = 32},
            {type = fluid, name = tritium_gas, amount = 480}
        },
        results = {{type = item, name = tritium_fuel_cell, amount = 1}},
        main_product = tritium_fuel_cell
    },
    {
        name = tritium_fuel_cell_reprocessing,
        category = angels_advanced_chemistry,
        additional_categories = {cryogenics},
        subgroup = is_nuclear_cell,
        icons = TWO_D_I(depleted_tritium_fuel_cell, nil, muon_fusion_catalyst, tritium_gas),
        order = k_a,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 64,
        ingredients = {{type = item, name = depleted_tritium_fuel_cell, amount = 4}},
        results =
        {
            {type = item, name = muon_fusion_catalyst, amount = 4},
            {type = fluid, name = tritium_gas, amount = 960}
        },
        main_product = tritium_gas
    },
    {
        name = advanced_tritium_fuel_cell_reprocessing,
        category = angels_advanced_chemistry,
        additional_categories = {cryogenics},
        subgroup = is_nuclear_cell,
        icons = THREE_D_I(depleted_tritium_fuel_cell, nil, hydrofluoric_acid_angels, muon_fusion_catalyst, tritium_gas, water_greenyellow_waste),
        order = k_b,
        allow_productivity = true,
        allow_quality = true,
        energy_required = 64,
        ingredients =
        {
            {type = item, name = depleted_tritium_fuel_cell, amount = 4},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 60},
        },
        results =
        {
            {type = item, name = muon_fusion_catalyst, amount = 4},
            {type = item, name = muon_fusion_catalyst, amount = 4, probability = 0.25},
            {type = fluid, name = tritium_gas, amount = 960},
            {type = fluid, name = tritium_gas, amount = 960, probability = 0.25},
            {type = fluid, name = water_greenyellow_waste, amount = 60}
        },
        main_product = muon_fusion_catalyst
    }
})

if settings.startup[setting_early_sintering_oven].value then
    data_recipe[ceramic_gear_wheel].category = angels_sintering_2
end