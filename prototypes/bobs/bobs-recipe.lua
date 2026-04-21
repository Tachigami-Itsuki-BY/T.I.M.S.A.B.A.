local B_F_L = require("lib.generator-icons").bearing_fluid_icon
local recipe = "recipe"
local is_gears = "bob-gears"
local is_bearing_ball = "bob-bearings"
advacned_deuterium_fuel_cell_reprocessing = "advacned-deuterium-fuel_cell-reprocessing"
tritium_fuel_cell_reprocessing = "tritium-fuel_cell-reprocessing"
advacned_tritium_fuel_cell_reprocessing = "advacned-tritium-fuel_cell-reprocessing"
data:extend
({
    {
        type = recipe,
        name = ceramic_gear_wheel,
        category = crafting,
        subgroup = is_gears,
        icons = TWO_I(silicon_nitride_bob, ceramic_gear_wheel),
        order = d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = silicon_nitride_bob, amount = 1}},
        results = {{type = item, name = ceramic_gear_wheel, amount = 1}},
        main_product = ceramic_gear_wheel
    },
    {
        type = recipe,
        name = copper_tungsten_gear_wheel,
        category = angels_sintering_4,
        subgroup = is_gears,
        icons = TWO_I(copper_tungsten_powder, copper_tungsten_gear_wheel),
        order = h,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = copper_tungsten_powder, amount = 1}},
        results = {{type = item, name = copper_tungsten_gear_wheel, amount = 1}},
        main_product = copper_tungsten_gear_wheel
    },
    {
        type = recipe,
        name = brass_bearing_ball,
        category = crafting,
        subgroup = is_bearing_ball,
        icons = TWO_I(brass_plate_bob, brass_bearing_ball),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = brass_plate_bob, amount = 1}},
        results = {{type = item, name = brass_bearing_ball, amount = 8}},
        main_product = brass_bearing_ball
    },
    {
        type = recipe,
        name = copper_tungsten_bearing_ball,
        category = angels_sintering_4,
        subgroup = is_bearing_ball,
        icons = TWO_I(copper_tungsten_powder, copper_tungsten_bearing_ball),
        order = h,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients = {{type = item, name = copper_tungsten_powder, amount = 1}},
        results = {{type = item, name = copper_tungsten_bearing_ball, amount = 8}},
        main_product = copper_tungsten_bearing_ball
    },
    {
        type = recipe,
        name = brass_bearing,
        category = crafting_fluid,
        subgroup = is_bearing,
        icons = B_F_L(lubricant, brass_bearing_ball, brass_plate_bob, brass_bearing),
        order = c,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
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
        type = recipe,
        name = copper_tungsten_bearing,
        category = angels_sintering_4,
        subgroup = is_bearing,
        icons = B_F_L(nil, copper_tungsten_bearing_ball, copper_tungsten_powder, copper_tungsten_bearing),
        order = h,
        enabled = false,
        auto_recycle = true,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 1,
        ingredients =
        {
            {type = item, name = copper_tungsten_bearing_ball, amount = 16},
            {type = item, name = copper_tungsten_powder, amount = 2}
        },
        results = {{type = item, name = copper_tungsten_bearing, amount = 2}},
        main_product = copper_tungsten_bearing
    },
    --[[{
        type = recipe,
        name = battery_graphene,
        category = chemistry_or_cryogenics,
        subgroup = "intermediate-product",
        icon = data_item[battery_graphene].icon,
        order = d,
        enabled = false,
        auto_recycle = false,
        allow_productivity = false,
        allow_quality = false,
        allow_decomposition = false,
        energy_required = 4,
        ingredients =
        {
            {type = item, name = graphite, amount = 2},
            {type = item, name = graphene, amount = 2},
            {type = item, name = manganese_oxide, amount = 2},
            {type = item, name = aluminium_plate_bob, amount = 2},
            {type = item, name = plastic, amount = 4},
            {type = fluid, name = lithium_hexafluorophosphate_solution_carbonate, amount = 60}
        },
        results = {{type = item, name = battery_graphene, amount = 1}},
        main_product = battery_graphene
    },
    {
        type = recipe,
        name = advacned_deuterium_fuel_cell_reprocessing,
        category = centrifuging_4,
        subgroup = is_nuclear_cell,
        icons = TWO_D_I(depleted_deuterium_fuel_cell, nil, tritium_gas, muon_fusion_catalyst),
        order = i_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 64,
        ingredients = {{type = item, name = depleted_deuterium_fuel_cell, amount = 8}},
        results =
        {
            {type = fluid, name = tritium_gas, amount = 480},
            {type = item, name = muon_fusion_catalyst, amount = 8, probability = 0.5}
        },
        main_product = tritium_gas
    },
    {
        type = recipe,
        name = tritium_fuel_cell,
        category = centrifuging_4,
        subgroup = is_nuclear_cell,
        icon = data_item[tritium_fuel_cell].icon,
        order = j,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
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
        type = recipe,
        name = tritium_fuel_cell_reprocessing,
        category = centrifuging_4,
        subgroup = is_nuclear_cell,
        icons = TWO_D_I(depleted_tritium_fuel_cell, nil, muon_fusion_catalyst, tritium_gas),
        order = j_a,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
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
        type = recipe,
        name = advacned_tritium_fuel_cell_reprocessing,
        category = centrifuging_4,
        subgroup = is_nuclear_cell,
        icons = TWO_D_I(depleted_tritium_fuel_cell, hydrofluoric_acid_angels, muon_fusion_catalyst, water_greenyellow_waste),
        order = j_b,
        enabled = false,
        auto_recycle = false,
        allow_productivity = true,
        allow_quality = true,
        allow_decomposition = false,
        energy_required = 64,
        ingredients =
        {
            {type = item, name = depleted_tritium_fuel_cell, amount = 8},
            {type = fluid, name = hydrofluoric_acid_angels, amount = 60},
        },
        results =
        {
            {type = item, name = muon_fusion_catalyst, amount = 8},
            {type = item, name = muon_fusion_catalyst, amount = 8, probability = 0.25},
            {type = fluid, name = water_greenyellow_waste, amount = 60}
        },
        main_product = muon_fusion_catalyst
    }]]
})

if settings.startup[setting_early_sintering_oven].value == true then
    data_recipe[ceramic_gear_wheel].category = angels_sintering_2
end

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