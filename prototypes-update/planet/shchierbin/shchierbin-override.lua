if mods[shchierbin_mods] then
    -- ORE
    local carbon_ore = "carbon-ore"
    data_resource[carbon_ore].subgroup = is_shchierbin_ore
    data_resource[carbon_ore].icon = data_item[carbon_angels].icon
    data_resource[carbon_ore].icon_size = data_item[carbon_angels].icon_size
    data_resource[carbon_ore].order = a
    data_resource[carbon_ore].minable.mining_time = 1

    -- VANADIUM
    data_item[vanadium_ore].localised_description = show_formula and {chemical_formula, "V"} or nil
    data_item[vanadium_ore].subgroup = is_shchierbin_vanadium
    data_item[vanadium_ore].order = a
    data_item[vanadium_ore].stack_size = 200
    data_resource[vanadium_ore].subgroup = is_shchierbin_vanadium
    data_resource[vanadium_ore].icon = "__TIMSABA__/graphics/icons/space-age/aquilo/vanadium/vanadium-ore.png"
    data_resource[vanadium_ore].icon_size = 64
    data_resource[vanadium_ore].order = a

    -- VANADIUM CHEMISTRY
    data_item[vanadium_oxide_V].localised_description = show_formula and {chemical_formula, "V[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]5[/font]"} or nil
    data_item[vanadium_oxide_V].subgroup = is_shchierbin_vanadium_chemistry
    data_item[vanadium_oxide_V].order = a
    data_item[vanadium_oxide_V].stack_size = 200
    data_recipe[vanadium_oxide_V].category = angels_blast_smelting_4
    data_recipe[vanadium_oxide_V].subgroup = is_shchierbin_vanadium_chemistry
    data_recipe[vanadium_oxide_V].icons = THREE_I(vanadium_ore, oxygen_angels, vanadium_oxide_V)
    data_recipe[vanadium_oxide_V].order = a
    data_recipe[vanadium_oxide_V].energy_required = 8 -- 4V + 5O₂ --> 2V₂O₅
    data_recipe[vanadium_oxide_V].ingredients =
    {
        {type = item, name = vanadium_ore, amount = 32},
        {type = fluid, name = oxygen_angels, amount = 300}
    }
    data_recipe[vanadium_oxide_V].results = {{type = item, name = vanadium_oxide_V, amount = 8}}
    data_recipe[vanadium_oxide_V].main_product = vanadium_oxide_V

    -- VANADIUM CASTING
    data_item[vanadium_plate].localised_description = show_formula and {chemical_formula, "V"} or nil
    data_item[vanadium_plate].subgroup = is_shchierbin_vanadium_casting
    data_item[vanadium_plate].order = b
    data_item[vanadium_plate].stack_size = 200
    data_recipe[vanadium_plate].category = angels_casting_4
    data_recipe[vanadium_plate].subgroup = is_shchierbin_vanadium_casting
    data_recipe[vanadium_plate].icons = TWO_I(vanadium_molten, vanadium_plate)
    data_recipe[vanadium_plate].order = b
    data_recipe[vanadium_plate].energy_required = 4
    data_recipe[vanadium_plate].ingredients = {{type = fluid, name = vanadium_molten, amount = 60}}
    data_recipe[vanadium_plate].results[1].amount = 4
    data_recipe[vanadium_plate].main_product = vanadium_plate

    -- VANADIUM CASTING FeC-V
    data_item[vanadium_steel_plate].localised_description = show_formula and {chemical_formula, "FeCV"} or nil
    data_item[vanadium_steel_plate].subgroup = is_shchierbin_vanadium_steel
    data_item[vanadium_steel_plate].order = b
    data_item[vanadium_steel_plate].stack_size = 200
    data_recipe[vanadium_steel_plate].subgroup = is_shchierbin_vanadium_steel
    data_recipe[vanadium_steel_plate].icons = TWO_I(vanadium_steel_molten, vanadium_steel_plate)
    data_recipe[vanadium_steel_plate].order = b
    data_recipe[vanadium_steel_plate].energy_required = 4
    data_recipe[vanadium_steel_plate].ingredients = {{type = fluid, name = vanadium_steel_molten, amount = 60}}
    data_recipe[vanadium_steel_plate].results[1].amount = 4

    -- RECIPE
    data_recipe[slaked_lime_mods].localised_name = {"item-name." .. calcium_hydroxide}
    data_recipe[slaked_lime_mods].category = angels_liquifying
    data_recipe[slaked_lime_mods].subgroup = is_shchierbin_recipe
    data_recipe[slaked_lime_mods].icons = THREE_I(lime_angels, water_purified_angels, calcium_hydroxide)
    data_recipe[slaked_lime_mods].order = a
    data_recipe[slaked_lime_mods].energy_required = 2 -- CaO(s) + H₂O(l) --> Ca(OH)₂(s)
    data_recipe[slaked_lime_mods].ingredients =
    {
        {type = item, name = lime_angels, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 60}
    }
    data_recipe[slaked_lime_mods].main_product = calcium_hydroxide
    data_recipe[slaked_lime_mods].surface_conditions = {{property = pressure, max = 1500, min = 1500}}

    data_recipe[calcium_mods].localised_name = {"item-name." .. calcium}
    data_recipe[calcium_mods].category = angels_liquifying
    data_recipe[calcium_mods].subgroup = is_shchierbin_recipe
    data_recipe[calcium_mods].icons = THREE_R_I(calcium_hydroxide, calcium, hydrogen_peroxide)
    data_recipe[calcium_mods].order = b
    data_recipe[calcium_mods].energy_required = 2 -- Ca(OH)₂(s) --> Ca(s) + H₂O₂(l)
    data_recipe[calcium_mods].ingredients = {{type = item, name = calcium_hydroxide, amount = 4}}
    data_recipe[calcium_mods].results =
    {
        {type = item, name = calcium, amount = 4},
        {type = fluid, name = hydrogen_peroxide, amount = 30}
    }
    data_recipe[calcium_mods].main_product = calcium
    data_recipe[calcium_mods].surface_conditions = {{property = pressure, max = 1500, min = 1500}}

    local solid_fuel_from_methane = "solid-fuel-from-methane"
    data_recipe[solid_fuel_from_methane].subgroup = is_shchierbin_recipe
    data_recipe[solid_fuel_from_methane].icons = TWO_I(methane_angels, solid_fuel)
    data_recipe[solid_fuel_from_methane].order = c
    data_recipe[solid_fuel_from_methane].ingredients[1].amount = 30

    data_recipe[chlorine_mods].localised_name = {"fluid-name." .. chlorine_angels}
    data_recipe[chlorine_mods].subgroup = is_shchierbin_recipe
    data_recipe[chlorine_mods].icons = THREE_D_I(salt_angels, water_purified_angels, oxygen_angels, chlorine_angels, nil, sodium_hydroxide_solution_angels)
    data_recipe[chlorine_mods].order = d
    data_recipe[chlorine_mods].energy_required = 8 -- 4NaCl(s) + 6H₂O(l) + O₂(g) --> 2Cl₂(g) + 4NaOH(aq)
    data_recipe[chlorine_mods].ingredients =
    {
        {type = item, name = salt_angels, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 90},
        {type = fluid, name = oxygen_angels, amount = 15}
    }
    data_recipe[chlorine_mods].results =
    {
        {type = fluid, name = chlorine_angels, amount = 30},
        {type = fluid, name = sodium_hydroxide_solution_angels, amount = 60}
    }
    data_recipe[chlorine_mods].main_product = chlorine_angels
    data_recipe[chlorine_mods].surface_conditions = {{property = pressure, max = 1500, min = 1500}}

    data_recipe[chloromethane_mods].localised_name = {"fluid-name." .. chloromethane_angels}
    data_recipe[chloromethane_mods].subgroup = is_shchierbin_recipe
    data_recipe[chloromethane_mods].icons = TWO_D_I(methane_angels, chlorine_angels, chloromethane_angels, hydrogen_angels)
    data_recipe[chloromethane_mods].order = e
    data_recipe[chloromethane_mods].energy_required = 4 -- 2CH₄(g) + Cl₂(g) --> 2CH₃Cl(g) + H₂(g)
    data_recipe[chloromethane_mods].ingredients =
    {
        {type = fluid, name = methane_angels, amount = 120},
        {type = fluid, name = chlorine_angels, amount = 60}
    }
    data_recipe[chloromethane_mods].results =
    {
        {type = fluid, name = chloromethane_angels, amount = 120},
        {type = fluid, name = hydrogen_angels, amount = 60}
    }
    data_recipe[chloromethane_mods].main_product = chloromethane_angels
    data_recipe[chloromethane_mods].surface_conditions = {{property = pressure, max = 1500, min = 1500}}

    data_recipe[ethylene_mods].localised_name = {"fluid-name." .. ethylene_angels}
    data_recipe[ethylene_mods].subgroup = is_shchierbin_recipe
    data_recipe[ethylene_mods].icons = THREE_D_I(chloromethane_angels, nil, sodium_hydroxide_solution_angels, ethylene_angels, salt_angels, water_purified_angels)
    data_recipe[ethylene_mods].order = f
    data_recipe[ethylene_mods].energy_required = 4 -- 2CH₃Cl(g) + 2NaOH(aq) --> C₂H₄(g) + 2NaCl(s) + 4H₂O(l)
    data_recipe[ethylene_mods].ingredients =
    {
        {type = fluid, name = chloromethane_angels, amount = 120},
        {type = fluid, name = sodium_hydroxide_solution_angels, amount = 120}
    }
    data_recipe[ethylene_mods].results =
    {
        {type = fluid, name = ethylene_angels, amount = 60},
        {type = item, name = salt_angels, amount = 4}, -- 8
        {type = fluid, name = water_purified_angels, amount = 120} -- 240
    }
    data_recipe[ethylene_mods].main_product = ethylene_mods
    data_recipe[ethylene_mods].surface_conditions = {{property = pressure, max = 1500, min = 1500}}

    data_fluid[vinylchloride_mods].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]3[/font]Cl"} or nil
    data_fluid[vinylchloride_mods].subgroup = is_shchierbin_recipe
    data_fluid[vinylchloride_mods].order = g
    TIMSABA.barreling.add_gas(vinylchloride_mods)
    data_recipe[vinylchloride_mods].subgroup = is_shchierbin_recipe
    data_recipe[vinylchloride_mods].icons = TWO_D_I(ethylene_mods, chlorine_angels, vinylchloride_mods, hydrogen_angels)
    data_recipe[vinylchloride_mods].order = g
    data_recipe[vinylchloride_mods].energy_required = 4 -- 2C₂H₄(g) + Cl₂(g) --> 2C₂H₃Cl(g) + H₂(g)
    data_recipe[vinylchloride_mods].ingredients =
    {
        {type = fluid, name = ethylene_mods, amount = 60},
        {type = fluid, name = chlorine_angels, amount = 30}
    }
    data_recipe[vinylchloride_mods].results =
    {
        {type = fluid, name = vinylchloride_mods, amount = 60},
        {type = fluid, name = hydrogen_angels, amount = 30}
    }
    data_recipe[vinylchloride_mods].main_product = vinylchloride_mods
    data_recipe[vinylchloride_mods].surface_conditions = {{property = pressure, max = 1500, min = 1500}}

    local plastic_vinylchloride = "plastic-vinylchloride"
    data_recipe[plastic_vinylchloride].subgroup = is_shchierbin_recipe
    data_recipe[plastic_vinylchloride].icons = TWO_I(vinylchloride_mods, plastic)
    data_recipe[plastic_vinylchloride].order = g_a
    data_recipe[plastic_vinylchloride].ingredients[1].amount = 60
    data_recipe[plastic_vinylchloride].surface_conditions = {{property = pressure, max = 1500, min = 1500}}

    data_tool[vanadium_science_pack].subgroup = is_shchierbin_recipe
    data_tool[vanadium_science_pack].order = h
    data_recipe[vanadium_science_pack].subgroup = is_shchierbin_recipe
    data_recipe[vanadium_science_pack].order = h
    data_recipe[vanadium_science_pack].energy_required = 8
    data_recipe[vanadium_science_pack].ingredients =
    {
        {type = item, name = vanadium_plate, amount = 2},
        {type = fluid, name = sodium_hydroxide_solution_angels, amount = 30}
    }

    data_item[vanadium_electro_engine_unit].subgroup = is_shchierbin_recipe
    data_item[vanadium_electro_engine_unit].order = i
    data_item[vanadium_electro_engine_unit].stack_size = 200
    data_recipe[vanadium_electro_engine_unit].subgroup = is_shchierbin_recipe
    data_recipe[vanadium_electro_engine_unit].order = i
    data_recipe[vanadium_electro_engine_unit].ingredients =
    {
        {type = item, name = vanadium_steel_gear_wheel, amount = 4},
        {type = item, name = vanadium_steel_bearing, amount = 2},
        {type = item, name = niobium_titanium_cable, amount = 8},
        {type = item, name = electric_engine_unit, amount = 1},
        {type = item, name = vanadium_steel_plate, amount = 4}
    }

    local artillery_shell_vanad = "artillery-shell-vanad"
    data_recipe[artillery_shell_vanad].subgroup = is_shchierbin_recipe
    data_recipe[artillery_shell_vanad].icons = R_P_I(artillery_shell, nil, vanadium_steel_plate)
    data_recipe[artillery_shell_vanad].order = h
    data_recipe[artillery_shell_vanad].energy_required = 16
    data_recipe[artillery_shell_vanad].ingredients =
    {
        {type = item, name = explosive_cannon_shell, amount = 4},
        {type = item, name = vanadium_steel_plate, amount = 4},
        {type = item, name = explosives, amount = 8},
        {type = item, name = calcite, amount = 1}
    }

    if mods[muluna_mods] then
        data_item[vanadium_crusher].subgroup = is_muluna_building
        data_recipe[vanadium_crusher].subgroup = is_muluna_building
        data_recipe[vanadium_crusher].ingredients =
        {
            {type = item, name = vanadium_electro_engine_unit, amount = 8},
            {type = item, name = vanadium_steel_plate, amount = 16},
            {type = item, name = titanium_aluminium_vanadium_plate, amount = 16},
            {type = item, name = crusher_2, amount = 1}
        }
        data_assembling[vanadium_crusher].subgroup = is_muluna_building
    else
        data_item[vanadium_crusher].subgroup = space_platform
        data_recipe[vanadium_crusher].subgroup = space_platform
        data_recipe[vanadium_crusher].ingredients =
        {
            {type = item, name = vanadium_electro_engine_unit, amount = 8},
            {type = item, name = vanadium_steel_plate, amount = 16},
            {type = item, name = titanium_aluminium_vanadium_plate, amount = 16},
            {type = item, name = crusher, amount = 1}
        }
        data_assembling[vanadium_crusher].subgroup = space_platform
    end
    data_item[vanadium_crusher].order = f
    data_item[vanadium_crusher].stack_size = 32
    data_item[vanadium_crusher].weight = 31250
    data_recipe[vanadium_crusher].order = f
    data_recipe[vanadium_crusher].energy_required = 8
    data_assembling[vanadium_crusher].order = f
    data_assembling[vanadium_crusher].crafting_speed = 2
    data_assembling[vanadium_crusher].energy_usage = 960 .. kW
    data_assembling[vanadium_crusher].energy_source.drain = 30 .. kW
    data_assembling[vanadium_crusher].effect_receiver.base_effect.productivity = 0.5

    bobmods.lib.recipe.update_recycling_recipe
    ({
        vanadium_electro_engine_unit,
        vanadium_crusher
    })

    -- TECHNOLOGY
    data_technology[planet_discovery_shchierbin].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    local tech_natural_gas_processing = "natural-gas-processing"
    data_technology[tech_natural_gas_processing].icon = nil
    data_technology[tech_natural_gas_processing].icons = data_technology[tech_basic_chemistry_1].icons

    local tech_chlorine_processing = "chlorine-processing"
    data_technology[tech_chlorine_processing].icon = nil
    data_technology[tech_chlorine_processing].icons = TIMSABA.functions.create_gas_tech_icon("ClClCl")

    local tech_chlorine_soed = "chlorine-soed"
    data_technology[tech_chlorine_soed].icon = nil
    data_technology[tech_chlorine_soed].icons = TIMSABA.functions.create_gas_tech_icon("CHCl")

    data_technology[vanadium_science_pack].prerequisites = {tech_natural_gas_processing, tech_chlorine_processing, tech_vanadium_smelting_1}

    data_technology[vanadium_steel_plate].icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/technology/vanadium-steel-processing.png"
    table.insert(data_technology[vanadium_steel_plate].prerequisites, tech_vulcanus_metallurgic)
    data_technology[vanadium_steel_plate].effects =
    {
        {type = unlock_recipe, recipe = vanadium_steel_molten},
        {type = unlock_recipe, recipe = vanadium_steel_plate},
        {type = unlock_recipe, recipe = vanadium_steel_gear_wheel},
        {type = unlock_recipe, recipe = vanadium_steel_bearing_ball},
        {type = unlock_recipe, recipe = vanadium_steel_bearing}
    }
    data_technology[vanadium_steel_plate].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    table.insert(data_technology[vanadium_crusher].prerequisites, tech_niobium_titanium_processing)
    table.insert(data_technology[vanadium_crusher].prerequisites, tech_titanium_aluminium_vanadium_processing)
    if mods[muluna_mods] then
        table.insert(data_technology[vanadium_crusher].prerequisites, crusher_2)
    end
    data_technology[vanadium_crusher].effects =
    {
        {type = unlock_recipe, recipe = vanadium_electro_engine_unit},
        {type = unlock_recipe, recipe = vanadium_crusher}
    }
    data_technology[vanadium_crusher].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    data_technology["alt-vanad-artil"].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {military_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    if mods[castra_mods] then
        table.insert(data_technology[tech_vanadium_synthesis].prerequisites, tech_vanadium_smelting_3)
    end

    table.insert(data_technology[planet_discovery_aquilo].prerequisites, vanadium_science_pack)

    table.insert(data_technology[plastic .. _productivity].effects, {type = change_recipe_productivity, recipe = plastic_vinylchloride, change = 0.1})
end
