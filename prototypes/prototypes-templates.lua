-- ITEM
--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = item,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons////.png",
        order = ,
        stack_size = 200,
        weight = 5000
    }
})]]

-- FLUID
--[[data:extend
({
    {
        localised_description = show_formula and {chemical_formula, ""} or nil,
        type = fluid,
        name = ,
        subgroup = ,
        icon = "__TIMSABA__/graphics/icons////.png",
        order = ,
        default_temperature = 0,
        heat_capacity = "0.1kJ",
        base_color = TIMSABA.functions.fluid_color(""), -- or -- base_color = {r =  / 255, g =  / 255, b =  / 255},
        flow_color = TIMSABA.functions.flow_color(""), -- or -- flow_color = {r =  / 255, g =  / 255, b =  / 255},
        max_temperature = 0,
        auto_barrel = false
    }
})]]

-- RECIPE
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
        energy_required = , -- 
        ingredients = {{type = , name = , amount = }},
        results = {{type = , name = , amount = }},
        main_product = 
    }
})]]

-- TECHNOLOGY
--[[data:extend
({
    {
        type = ,
        name = ,
        icon = ,
        icon_size = 256,
        prerequisites = {},
        effects = {{type = unlock_recipe, recipe = }},
        unit =
        {
            count = ,
            ingredients = {{, }},
            time = 
        }
    }
})]]

-- FUNCTIONS
--[[TIMSABA.functions.create_subgroups]]

--[[TIMSABA.functions.create_items
({
    {
        localised_description = items.localised_description,
        type = item,
        name = items.name,
        subgroup = items.subgroup,
        icon = items.icon or error_png, -- if not sting "icon" then used "error_png"
        icon_size = items.icon_size or 64,

        pictures = items.pictures,

        order = items.order,
        stack_size = items.stack_size or 200,
        weight = items.weight or 5000,

        fuel_category = items.fuel_category,
        fuel_value = items.fuel_value,

        consumption_glow_alternative_tint = items.consumption_glow_alternative_tint,
        fuel_glow_color = items.fuel_glow_color
    }
})]]

--[[TIMSABA.functions.create_fluids
({
    {
        localised_name = fluids.localised_name,
        localised_description = fluids.localised_description,
        type = fluid,
        name = fluids.name,
        subgroup = fluids.subgroup,
        order = fluids.order,
        icon = fluids.icon or error_png, -- if not sting "icon" then used "error_png"

        default_temperature = fluids.default_temperature or 0,
        max_temperature = fluids.max_temperature or 0,
        heat_capacity = fluids.heat_capacity or "0.1kJ",

        base_color = fluids.base_color,
        flow_color = fluids.flow_color,

        auto_barrel = false
    }
})]]

--[[TIMSABA.functions.create_recipes
({
    {
        localised_name = recipes.localised_name,
        name = recipes.name,
        category = recipes.category,
        additional_categories = recipes.additional_categories,
        subgroup = recipes.subgroup,
        icons = recipes.icons,
        order = recipes.order,
        enabled = recipes.enabled or false,
        auto_recycle = recipes.auto_recycle or false,
        allow_productivity = recipes.allow_productivity or false,
        allow_quality = recipes.allow_quality or false,
        allow_decomposition = recipes.allow_decomposition or false,
        energy_required = recipes.energy_required or 4,
        ingredients = recipes.ingredients,
        results = recipes.results,
        main_product = recipes.main_product,
        surface_conditions = recipes.surface_conditions
    }
})]]

--[[TIMSABA.functions.create_buildings
({
    {
        type = item,
        name = buildings.name,
        subgroup = buildings.subgroup,
        icons = buildings.icons,
        order = buildings.order or d,
        place_result = buildings.name,
        stack_size = buildings.stack_size or 32,
        weight = buildings.weight or 31250
    },
    {
        localised_name = buildings.localised_name,
        type = recipe,
        name = buildings.name,
        category = crafting,
        subgroup = buildings.subgroup,
        icons = buildings.icons,
        order = buildings.order or d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = buildings.energy_required or 4,
        ingredients = buildings.ingredients,
        results = {{type = item, name = buildings.name, amount = 1}},
        main_product = buildings.name,
        surface_conditions = buildings.surface_conditions
    },
    util.merge
    ({
        buildings.base_prototype,
        {
            localised_description = buildings.localised_description,
            name = buildings.name,
            subgroup = buildings.subgroup,
            icons = buildings.icons,
            order = buildings.order or d,
            minable = {result = buildings.name},
            module_slots = buildings.module_slots or 4,
            crafting_speed = buildings.crafting_speed or 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = buildings.pollution or 4},
                drain = buildings.drain or (60 .. kW)
            },
            energy_usage = buildings.energy_usage or (420 .. kW),
            max_health = buildings.max_health,
            heating_energy = buildings.heating_energy
        }
    })
})]]

--TIMSABA.barreling.add_simple_fluid("name-fluid")
--TIMSABA.barreling.add_dangerous_fluid("name-fluid")
--TIMSABA.barreling.add_gas("name-fluid")
--TIMSABA.void.void_fluids("name-fluid") -- Used list from TIMSABA.barreling.add_simple_fluid("name-fluid") and TIMSABA.barreling.add_dangerous_fluid("name-fluid")
--TIMSABA.void.void_gases("name-fluid") -- Used list from TIMSABA.barreling.add_gas("name-fluid")
--TIMSABA.void.void_organics("name-item")