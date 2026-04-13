-- [font=default-tiny-bold][/font]

if mods [muluna_mods] then
    local data_cable = "muluna-data-cable"
    data_item[data_cable].subgroup = is_muluna_logistics
    data_item[data_cable].order = a
    data_item[data_cable].stack_size = 200
    data_item[data_cable].weight = 5000
    data_recipe[data_cable].subgroup = is_muluna_logistics
    data_recipe[data_cable].order = a
    data_pipe[data_cable].subgroup = is_muluna_logistics
    data_pipe[data_cable].order = a

    local advanced_boiler = "muluna-advanced-boiler"
    data_item[advanced_boiler].subgroup = is_muluna_boiler
    data_item[advanced_boiler].order = a
    data_item[advanced_boiler].stack_size = 32
    data_item[advanced_boiler].weight = 31250
    data_recipe[advanced_boiler].subgroup = is_muluna_boiler
    data_recipe[advanced_boiler].order = a
    data_recipe[advanced_boiler].energy_required = 10
    data_recipe[advanced_boiler].ingredients =
    {
        {type = item, name = iron_pipe, amount = 5},
        {type = item, name = boiler_1, amount = 1},
        {type = item, name = steel_plate, amount = 10}
    }
    data_assembling[advanced_boiler].subgroup = is_muluna_boiler
    data_assembling[advanced_boiler].order = a

    local advanced_water_boiling = "advanced-water-boiling"
    data_recipe[advanced_water_boiling].subgroup = is_muluna_boiler
    data_recipe[advanced_water_boiling].icons = CORNER_I(water, nil, oxygen_angels, steam, carbon_dioxide_angels)
    data_recipe[advanced_water_boiling].order = a_a

    local advanced_water_boiling_atmosphere = "advanced-water-boiling-atmosphere"
    data_recipe[advanced_water_boiling_atmosphere].subgroup = is_muluna_boiler
    data_recipe[advanced_water_boiling_atmosphere].icons = CORNER_I(water, nil, atmosphere_maraxsis, steam, carbon_dioxide_angels)
    data_recipe[advanced_water_boiling_atmosphere].order = a_b

    local advanced_water_melting_oxygen = "advanced-water-melting-oxygen"
    data_recipe[advanced_water_melting_oxygen].subgroup = is_muluna_boiler
    data_recipe[advanced_water_melting_oxygen].icons = CORNER_I(ice, nil, oxygen_angels, water, carbon_dioxide_angels)
    data_recipe[advanced_water_melting_oxygen].order = a_c

    local advanced_water_melting_atmosphere = "advanced-water-melting-atmosphere"
    data_recipe[advanced_water_melting_atmosphere].subgroup = is_muluna_boiler
    data_recipe[advanced_water_melting_atmosphere].icons = CORNER_I(ice, nil, atmosphere_maraxsis, water, carbon_dioxide_angels)
    data_recipe[advanced_water_melting_atmosphere].order = a_d

    local controlled_combustion = "controlled-combustion"
    data_recipe[controlled_combustion].subgroup = is_muluna_boiler
    data_recipe[controlled_combustion].icons = TWO_I(oxygen_angels, carbon_dioxide_angels)
    data_recipe[controlled_combustion].order = a_e

    local controlled_combustion_atmosphere = "controlled-combustion-atmosphere"
    data_recipe[controlled_combustion_atmosphere].subgroup = is_muluna_boiler
    data_recipe[controlled_combustion_atmosphere].icons = TWO_I(atmosphere_maraxsis, carbon_dioxide_angels)
    data_recipe[controlled_combustion_atmosphere].order = a_f

    local vacuum_heating_tower = "muluna-vacuum-heating-tower"
    data_item[vacuum_heating_tower].subgroup = is_muluna_heating
    data_item[vacuum_heating_tower].icons = nil
    data_item[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower.png"
    data_item[vacuum_heating_tower].order = a
    data_item[vacuum_heating_tower].stack_size = 32
    data_item[vacuum_heating_tower].weight = 31250
    data_recipe[vacuum_heating_tower].subgroup = is_muluna_heating
    data_recipe[vacuum_heating_tower].icons = nil
    data_recipe[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower.png"
    data_recipe[vacuum_heating_tower].order = a
    data_recipe[vacuum_heating_tower].ingredients =
    {
        {type = item, name = iron_pipe, amount = 20},
        {type = item, name = heat_pipe_1, amount = 10},
        {type = item, name = refined_concrete, amount = 30},
        {type = item, name = efficiency_module_3, amount = 1},
        {type = item, name = heating_tower, amount = 1}
    }
    -- data_assembling[vacuum_heating_tower] --> "mods-final-fix/final-fix-mods"

    local heat = "muluna-heat"
    data_fluid[heat].subgroup = is_muluna_heating
    data_fluid[heat].order = b

    local vacuum_heating = "muluna-vacuum-heating"
    data_recipe[vacuum_heating].subgroup = is_muluna_heating
    data_recipe[vacuum_heating].icons = THREE_R_I(oxygen_angels, heat, carbon_dioxide_angels)
    data_recipe[vacuum_heating].order = b_a

    local cycling_steam_turbine = "muluna-cycling-steam-turbine"
    data_item[cycling_steam_turbine].subgroup = is_muluna_turbine
    data_item[cycling_steam_turbine].order = a
    data_item[cycling_steam_turbine].stack_size = 32
    data_item[cycling_steam_turbine].weight = 31250
    data_recipe[cycling_steam_turbine].subgroup = is_muluna_turbine
    data_recipe[cycling_steam_turbine].order = a
    data_generator_fusion[cycling_steam_turbine].subgroup = is_muluna_turbine
    data_generator_fusion[cycling_steam_turbine].order = a

    local cooled_steam = "cooled-steam"
    data_fluid[cooled_steam].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O"} or nil
    data_fluid[cooled_steam].subgroup = is_muluna_turbine
    data_fluid[cooled_steam].order = b

    local steam_condensation = "muluna-steam-condensation"
    data_recipe[steam_condensation].subgroup = is_muluna_turbine
    data_recipe[steam_condensation].icons = TWO_I(cooled_steam, water)
    data_recipe[steam_condensation].order = b_a

    local steam_stone_furnace = "muluna-steam-stone-furnace"
    data_item[steam_stone_furnace].subgroup = is_muluna_building
    data_item[steam_stone_furnace].icons = nil
    data_item[steam_stone_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-stone-furnace.png"
    data_item[steam_stone_furnace].order = a
    data_item[steam_stone_furnace].stack_size = 32
    data_item[steam_stone_furnace].weight = 31250
    data_recipe[steam_stone_furnace].subgroup = is_muluna_building
    data_recipe[steam_stone_furnace].icons = nil
    data_recipe[steam_stone_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-stone-furnace.png"
    data_recipe[steam_stone_furnace].order = a
    data_recipe[steam_stone_furnace].energy_required = 5
    data_recipe[steam_stone_furnace].ingredients =
    {
        {type = item, name = iron_pipe, amount = 5},
        {type = item, name = stone_furnace, amount = 1}
    }
    data_furnace[steam_stone_furnace].subgroup = is_muluna_building
    data_furnace[steam_stone_furnace].icons = nil
    data_furnace[steam_stone_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-stone-furnace.png"
    data_furnace[steam_stone_furnace].order = a

    local steam_steel_furnace = "muluna-steam-steel-furnace"
    data_item[steam_steel_furnace].subgroup = is_muluna_building
    data_item[steam_steel_furnace].icons = nil
    data_item[steam_steel_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-steel-furnace.png"
    data_item[steam_steel_furnace].order = b
    data_item[steam_steel_furnace].stack_size = 32
    data_item[steam_steel_furnace].weight = 31250
    data_recipe[steam_steel_furnace].subgroup = is_muluna_building
    data_recipe[steam_steel_furnace].icons = nil
    data_recipe[steam_steel_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-steel-furnace.png"
    data_recipe[steam_steel_furnace].order = b
    data_recipe[steam_steel_furnace].energy_required = 5
    data_recipe[steam_steel_furnace].ingredients =
    {
        {type = item, name = steel_plate, amount = 5},
        {type = item, name = steam_stone_furnace, amount = 1}
    }
    data_furnace[steam_steel_furnace].subgroup = is_muluna_building
    data_furnace[steam_steel_furnace].icons = nil
    data_furnace[steam_steel_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-steel-furnace.png"
    data_furnace[steam_steel_furnace].order = b

    local cryolab = "cryolab"
    data_item[cryolab].subgroup = is_muluna_building
    data_item[cryolab].order = c
    data_item[cryolab].stack_size = 32
    data_item[cryolab].weight = 31250
    data_recipe[cryolab].subgroup = is_muluna_building
    data_recipe[cryolab].order = c
    data_lab[cryolab].subgroup = is_muluna_building
    data_lab[cryolab].order = c

    local space_science_pack_muluna = "space-science-pack-muluna"
    data_recipe[space_science_pack_muluna].subgroup = is_muluna_building
    data_recipe[space_science_pack_muluna].icons = R_P_I(space_science_pack, planet_muluna)
    data_recipe[space_science_pack_muluna].order = d_a

    local interstellar_science_pack = "interstellar-science-pack"
    data_tool[interstellar_science_pack].subgroup = is_muluna_building
    data_tool[interstellar_science_pack].order = e
    data_recipe[interstellar_science_pack].subgroup = is_muluna_building
    data_recipe[interstellar_science_pack].icons = R_P_I(interstellar_science_pack, planet_muluna)
    data_recipe[interstellar_science_pack].order = e

    local greenhouse = "muluna-greenhouse"
    data_item[greenhouse].subgroup = is_muluna_building_tree
    data_item[greenhouse].order = a
    data_item[greenhouse].stack_size = 32
    data_item[greenhouse].weight = 31250
    data_recipe[greenhouse].subgroup = is_muluna_building_tree
    data_recipe[greenhouse].order = a

    local greenhouse_wood = "muluna-greenhouse-wood"
    data_item[greenhouse_wood].subgroup = is_muluna_building_tree
    data_item[greenhouse_wood].order = b
    data_item[greenhouse_wood].stack_size = 32
    data_item[greenhouse_wood].weight = 31250
    data_recipe[greenhouse_wood].subgroup = is_muluna_building_tree
    data_recipe[greenhouse_wood].order = b
    data_assembling[greenhouse_wood].subgroup = is_muluna_building_tree
    data_assembling[greenhouse_wood].order = b
    data_assembling[greenhouse_wood].crafting_speed = 8

    local tree_growth_greenhouse = "muluna-tree-growth-greenhouse"
    data_recipe[tree_growth_greenhouse].subgroup = is_muluna_building_tree
    data_recipe[tree_growth_greenhouse].icons = CORNER_I(tree_angels, nil, water, nil, oxygen_angels, number_1)
    data_recipe[tree_growth_greenhouse].order = b_a

    local tree_growth_greenhouse_water_saving = "muluna-tree-growth-greenhouse-water-saving"
    data_recipe[tree_growth_greenhouse_water_saving].subgroup = is_muluna_building_tree
    data_recipe[tree_growth_greenhouse_water_saving].icons = CORNER_I(tree_angels, nil, water, nil, oxygen_angels, number_2)
    data_recipe[tree_growth_greenhouse_water_saving].order = b_b

    local tree_growth_greenhouse_nutrients = "muluna-tree-growth-greenhouse-nutrients"
    data_recipe[tree_growth_greenhouse_nutrients].subgroup = is_muluna_building_tree
    data_recipe[tree_growth_greenhouse_nutrients].icons = CORNER_I(tree_angels, nil, nutrients, nil, oxygen_angels, number_1)
    data_recipe[tree_growth_greenhouse_nutrients].order = b_c

    local tree_growth_greenhouse_water_saving_nutrients = "muluna-tree-growth-greenhouse-water-saving-nutrients"
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].subgroup = is_muluna_building_tree
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].icons = CORNER_I(tree_angels, nil, nutrients, nil, oxygen_angels, number_2)
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].order = b_d

    local tree_growth_greenhouse_vulcanus = "muluna-tree-growth-greenhouse-vulcanus"
    data_recipe[tree_growth_greenhouse_vulcanus].subgroup = is_muluna_building_tree
    data_recipe[tree_growth_greenhouse_vulcanus].icons = CORNER_I(tree_angels, nil, fluoroketone_cold, oxygen_angels, fluoroketone_hot, number_1)
    data_recipe[tree_growth_greenhouse_vulcanus].order = b_e

    local tree_growth_greenhouse_water_saving_vulcanus = "muluna-tree-growth-greenhouse-water-saving-vulcanus"
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].subgroup = is_muluna_building_tree
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].icons = CORNER_I(tree_angels, nil, fluoroketone_cold, oxygen_angels, fluoroketone_hot, number_2)
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].order = b_f

    local tree_crushing = "muluna-tree-crushing"
    data_recipe[tree_crushing].subgroup = is_muluna_building_tree
    data_recipe[tree_crushing].icons = TWO_I(tree_angels, wood)
    data_recipe[tree_crushing].order = b_g

    -- data_recipe[wood_processing] --> "mods-override"

    local steam_crusher = "muluna-steam-crusher"
    data_item[steam_crusher].subgroup = is_muluna_building_crushing
    data_item[steam_crusher].icons = nil
    data_item[steam_crusher].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-crusher.png"
    data_item[steam_crusher].order = a
    data_item[steam_crusher].stack_size = 32
    data_item[steam_crusher].weight = 31250
    data_recipe[steam_crusher].subgroup = is_muluna_building_crushing
    data_recipe[steam_crusher].icons = nil
    data_recipe[steam_crusher].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-crusher.png"
    data_recipe[steam_crusher].order = a
    data_recipe[steam_crusher].ingredients =
    {
        {type = item, name = engine_unit, amount = 8},
        {type = item, name = iron_pipe, amount = 4},
        {type = item, name = steel_plate, amount = 8}
    }
    data_assembling[steam_crusher].subgroup = is_muluna_building_crushing
    data_assembling[steam_crusher].icons = nil
    data_assembling[steam_crusher].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-crusher.png"
    data_assembling[steam_crusher].order = a
    data_assembling[steam_crusher].crafting_speed = 0.5

    table.insert(data_recipe[crusher].ingredients, {type = item, name = steam_crusher, amount = 1})

    local crusher_2 = "crusher-2"
    data_item[crusher_2].subgroup = is_muluna_building_crushing
    data_item[crusher_2].order = c
    data_item[crusher_2].stack_size = 32
    data_item[crusher_2].weight = 31250
    data_recipe[crusher_2].subgroup = is_muluna_building_crushing
    data_recipe[crusher_2].order = c
    data_recipe[crusher_2].ingredients =
    {
        {type = item, name = platinum_plate, amount = 8},
        {type = item, name = tungsten_plate_bob, amount = 8},
        {type = item, name = speed_module_3, amount = 1},
        {type = item, name = crusher, amount = 1}
    }
    data_assembling[crusher_2].subgroup = is_muluna_building_crushing
    data_assembling[crusher_2].order = c
    data_assembling[crusher_2].crafting_speed = 2

    local lunar_regolith = "muluna-lunar-regolith"
    data_item[lunar_regolith].subgroup = is_muluna_building_crushing
    data_item[lunar_regolith].order = d
    data_item[lunar_regolith].stack_size = 200
    data_item[lunar_regolith].weight = 5000

    local regolith_digging = "muluna-regolith-digging"
    data_recipe[regolith_digging].subgroup = is_muluna_building_crushing
    data_recipe[regolith_digging].order = d_a

    local regolith_sorting = "muluna-regolith-sorting"
    data_recipe[regolith_sorting].subgroup = is_muluna_building_crushing
    data_recipe[regolith_sorting].icons = THREE_R_I(lunar_regolith, stone, stone_crushed_angels)
    data_recipe[regolith_sorting].order = d_b

    local stone_crushing = "stone-crushing"
    data_recipe[stone_crushing].subgroup = is_muluna_building_crushing
    data_recipe[stone_crushing].icons = TWO_I(stone, stone_crushed_angels)
    data_recipe[stone_crushing].order = d_c

    local landfill_stone_crushed = "landfill-stone-crushed"
    data_recipe[landfill_stone_crushed].subgroup = is_muluna_building_crushing
    data_recipe[landfill_stone_crushed].icons = TWO_I(stone_crushed_angels, landfill)
    data_recipe[landfill_stone_crushed].order = d_d

    local stone_bricks_stone_crushed = "stone-bricks-stone-crushed"
    data_recipe[stone_bricks_stone_crushed].subgroup = is_muluna_building_crushing
    data_recipe[stone_bricks_stone_crushed].icons = TWO_I(stone_crushed_angels, stone_brick)
    data_recipe[stone_bricks_stone_crushed].order = d_e

    local alumina_crushed = "alumina-crushed"
    data_item[alumina_crushed].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
    data_item[alumina_crushed].subgroup = is_muluna_recipe_anorthite
    data_item[alumina_crushed].order = a
    data_item[alumina_crushed].stack_size = 200
    data_item[alumina_crushed].weight = 5000

    local alumina_crushing = "alumina-crushing"
    data_recipe[alumina_crushing].subgroup = is_muluna_recipe_anorthite
    data_recipe[alumina_crushing].icons = TWO_I(aluminium_oxide, alumina_crushed)
    data_recipe[alumina_crushing].order = a_a

    data_recipe[aluminum_plate_mods].subgroup = is_muluna_recipe_anorthite
    data_recipe[aluminum_plate_mods].icons = TWO_I(aluminium_oxide, aluminium_plate_bob)
    data_recipe[aluminum_plate_mods].order = a_b

    local aluminum_crushed = "aluminum-crushed"
    data_item[aluminum_crushed].localised_description = show_formula and {chemical_formula, "Al"} or nil
    data_item[aluminum_crushed].subgroup = is_muluna_recipe_anorthite
    data_item[aluminum_crushed].order = b
    data_item[aluminum_crushed].stack_size = 200
    data_item[aluminum_crushed].weight = 5000

    local aluminum_crushing = "aluminum-crushing"
    data_recipe[aluminum_crushing].subgroup = is_muluna_recipe_anorthite
    data_recipe[aluminum_crushing].icons = TWO_I(aluminium_plate_bob, aluminum_crushed)
    data_recipe[aluminum_crushing].order = b_a

    local aluminum_cable = "aluminum-cable"
    data_recipe[aluminum_cable].subgroup = is_muluna_recipe_anorthite
    data_recipe[aluminum_cable].icons = TWO_I(aluminium_plate_bob, copper_cable)
    data_recipe[aluminum_cable].order = b_b

    local low_density_structure_from_aluminum = "low-density-structure-from-aluminum"
    data_recipe[low_density_structure_from_aluminum].subgroup = is_muluna_recipe_anorthite
    data_recipe[low_density_structure_from_aluminum].icons = THREE_D_I(aluminium_plate_bob, titanium_plate_bob, plastic, low_density_structure)
    data_recipe[low_density_structure_from_aluminum].order = b_c

    -- data_item[silicon_boule_mods] --> "mods-update/mods/mods-override"
    -- data_item[silicon_cell_mods] --> "mods-update/mods/mods-override"
    -- data_recipe[silicon_cell_mods] --> "mods-update/mods/mods-override"
    -- data_recipe[silicon_carbide_mods] --> "mods-update/mods/mods-override"

    local silicon_solar_panel = "muluna-silicon-solar-panel"
    data_recipe[silicon_solar_panel].category = crafting
    data_recipe[silicon_solar_panel].subgroup = is_muluna_recipe_silicon
    data_recipe[silicon_solar_panel].icons = BUILDING_R_IS(solar_panel_1, silicon_cell_mods)
    data_recipe[silicon_solar_panel].order = d
    data_recipe[silicon_solar_panel].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 10},
        {type = item, name = copper_plate, amount = 5},
        {type = item, name = copper_cable, amount = 10},
        {type = item, name = glass_bob, amount = 5},
        {type = item, name = silicon_cell_mods, amount = 5},
        {type = item, name = steel_plate, amount = 5}
    }

    data_recipe[cellulose_mods].subgroup = is_muluna_recipe_cellulose
    data_recipe[cellulose_mods].icons = THREE_I(wood, sulfuric_acid_angels, cellulose_fiber_angels)
    data_recipe[cellulose_mods].order = a

    data_fluid[tar_mods].subgroup = is_muluna_recipe_cellulose
    data_fluid[tar_mods].order = b

    local wood_gasification = "wood-gasification"
    data_recipe[wood_gasification].subgroup = is_muluna_recipe_cellulose
    data_recipe[wood_gasification].icons = CORNER_I(cellulose_fiber_angels, nil, alumina_crushed, methane_angels, tar_mods)
    data_recipe[wood_gasification].order = b_a

    local plastic_from_wood = "plastic-from-wood"
    data_recipe[plastic_from_wood].subgroup = is_muluna_recipe_cellulose
    data_recipe[plastic_from_wood].icons = THREE_I(cellulose_fiber_angels, methane_angels, plastic)
    data_recipe[plastic_from_wood].order = b_b

    local advanced_wood_gasification = "advanced-wood-gasification"
    data_recipe[advanced_wood_gasification].subgroup = is_muluna_recipe_cellulose
    data_recipe[advanced_wood_gasification].icons = CORNER_I(cellulose_fiber_angels, water, alumina_crushed, methane_angels, fuel_oil_angels, nil, naphtha_angels)
    data_recipe[advanced_wood_gasification].order = b_c

    local solid_fuel_from_tar = "solid-fuel-from-tar"
    data_recipe[solid_fuel_from_tar].subgroup = is_muluna_recipe_cellulose
    data_recipe[solid_fuel_from_tar].icons = TWO_I(tar_mods, solid_fuel)
    data_recipe[solid_fuel_from_tar].order = b_d

    local crude_oil_from_tar = "crude-oil-from-tar"
    data_recipe[crude_oil_from_tar].subgroup = is_muluna_recipe_cellulose
    data_recipe[crude_oil_from_tar].icons = THREE_I(tar_mods, water, crude_oil)
    data_recipe[crude_oil_from_tar].order = b_e

    local electric_engine_unit_from_carbon = "electric-engine-unit-from-carbon"
    data_recipe[electric_engine_unit_from_carbon].subgroup = is_muluna_recipe
    data_recipe[electric_engine_unit_from_carbon].icons = THREE_D_I(engine_unit, electronic_circuit, carbon_angels, electric_engine_unit)
    data_recipe[electric_engine_unit_from_carbon].order = a

    -- data_recipe[ice_melting] --> "mods-update/mods/mods-override"

    local muluna_oxygen_from_oxidizer = "muluna-oxygen-from-oxidizer"
    data_recipe[muluna_oxygen_from_oxidizer].subgroup = is_muluna_recipe
    data_recipe[muluna_oxygen_from_oxidizer].icons = TWO_I(thruster_oxidizer, oxygen_angels)
    data_recipe[muluna_oxygen_from_oxidizer].order = a_a

    -- data_fluid[atmosphere_maraxsis] --> "mods-update/mods/mods-override"
    -- data_recipe[atmosphere_maraxsis] --> "mods-update/mods/mods-override"

    local atmosphere_oxygen_separation = "atmosphere-oxygen-separation"
    data_recipe[atmosphere_oxygen_separation].subgroup = is_muluna_recipe
    data_recipe[atmosphere_oxygen_separation].icons = TWO_I(atmosphere_maraxsis, oxygen_angels)
    data_recipe[atmosphere_oxygen_separation].order = b_a

    local rocket_fuel_aluminum = "rocket-fuel-aluminum"
    data_recipe[rocket_fuel_aluminum].subgroup = is_muluna_recipe
    data_recipe[rocket_fuel_aluminum].icons = THREE_D_I(ice, aluminum_crushed, water, rocket_fuel)
    data_recipe[rocket_fuel_aluminum].order = b_b

    data_item[diffused_plastic_muluna].subgroup = is_muluna_recipe
    data_item[diffused_plastic_muluna].order = c
    data_item[diffused_plastic_muluna].stack_size = 200
    data_item[diffused_plastic_muluna].weight = 5000
    data_recipe[diffused_plastic_muluna].subgroup = is_muluna_recipe
    data_recipe[diffused_plastic_muluna].icons = CORNER_I(carbon_dioxide_angels, nil, plastic, diffused_plastic_muluna, diffused_plastic_muluna)
    data_recipe[diffused_plastic_muluna].order = c

    local microcellular_plastic = "muluna-microcellular-plastic"
    data_item[microcellular_plastic].subgroup = is_muluna_recipe
    data_item[microcellular_plastic].order = d
    data_item[microcellular_plastic].stack_size = 200
    data_item[microcellular_plastic].weight = 5000
    data_recipe[microcellular_plastic].subgroup = is_muluna_recipe
    data_recipe[microcellular_plastic].icons = THREE_I(diffused_plastic_muluna, steam, microcellular_plastic)
    data_recipe[microcellular_plastic].order = d

    local LDSPF = "low-density-space-platform-foundation"
    data_item[LDSPF].subgroup = is_muluna_recipe
    data_item[LDSPF].order = e
    data_recipe[LDSPF].subgroup = is_muluna_recipe
    data_recipe[LDSPF].icons = FOUR_D_I(space_platform_foundation, low_density_structure, aluminium_plate_bob, microcellular_plastic, LDSPF)
    data_recipe[LDSPF].order = e

    data_recipe[carbon_dioxide_mods].subgroup = is_muluna_recipe
    data_recipe[carbon_dioxide_mods].icon = data_fluid[carbon_dioxide_angels].icon
    data_recipe[carbon_dioxide_mods].order = e_a

    data_recipe[molten_aluminum_mods].subgroup = is_muluna_recipe_foundry
    data_recipe[molten_aluminum_mods].icons = THREE_R_I(aluminium_oxide, aluminium_molten_angels, oxygen_angels)
    data_recipe[molten_aluminum_mods].order = a

    local casting_aluminum = "casting-aluminum"
    data_recipe[casting_aluminum].subgroup = is_muluna_recipe_foundry
    data_recipe[casting_aluminum].icons = TWO_I(aluminium_molten_angels, aluminium_plate_bob)
    data_recipe[casting_aluminum].order = a_a

    local casting_aluminum_cable = "casting-aluminum-cable"
    data_recipe[casting_aluminum_cable].subgroup = is_muluna_recipe_foundry
    data_recipe[casting_aluminum_cable].icons = TWO_I(aluminium_molten_angels, copper_cable)
    data_recipe[casting_aluminum_cable].order = a_b

    local casting_low_density_structure_aluminum = "casting-low-density-structure-aluminum"
    data_recipe[casting_low_density_structure_aluminum].subgroup = is_muluna_recipe_foundry
    data_recipe[casting_low_density_structure_aluminum].icons = THREE_D_I(plastic, iron_molten_angels, aluminium_molten_angels, low_density_structure)
    data_recipe[casting_low_density_structure_aluminum].order = a_c

    data_item[telescope].subgroup = is_muluna_recipe_astronomical
    data_item[telescope].order = a
    data_item[telescope].stack_size = 32
    data_item[telescope].weight = 31250
    data_recipe[telescope].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope].order = a
    data_recipe[telescope].energy_required = 10
    data_assembling[telescope].subgroup = is_muluna_recipe_astronomical
    data_assembling[telescope].order = a
    data_assembling[telescope].crafting_speed = 2

    local basic_hard_drive = "muluna-basic-hard-drive"
    data_item[basic_hard_drive].subgroup = is_muluna_recipe_astronomical
    data_item[basic_hard_drive].order = b -- Data tape
    data_item[basic_hard_drive].stack_size = 200
    data_recipe[basic_hard_drive].subgroup = is_muluna_recipe_astronomical
    data_recipe[basic_hard_drive].icons = FOUR_I(iron_plate, plastic, lubricant, basic_hard_drive)
    data_recipe[basic_hard_drive].order = b -- Data tape

    local basic_hard_drive_astronomical_data = "muluna-basic-hard-drive-astronomical-data"
    data_item[basic_hard_drive_astronomical_data].subgroup = is_muluna_recipe_astronomical
    data_item[basic_hard_drive_astronomical_data].order = c -- Data tape (Astronomical data)
    data_item[basic_hard_drive_astronomical_data].stack_size = 200
    data_recipe[basic_hard_drive_astronomical_data].subgroup = is_muluna_recipe_astronomical
    data_recipe[basic_hard_drive_astronomical_data].icons = THREE_IS(basic_hard_drive, astronomical_data_muluna, basic_hard_drive_astronomical_data)
    data_recipe[basic_hard_drive_astronomical_data].order = c -- Data tape (Astronomical data)

    local basic_hard_drive_astronomical_data_empty = "muluna-basic-hard-drive-astronomical-data-empty"
    data_recipe[basic_hard_drive_astronomical_data_empty].subgroup = is_muluna_recipe_astronomical
    data_recipe[basic_hard_drive_astronomical_data_empty].icons = THREE_R_IS(basic_hard_drive_astronomical_data, basic_hard_drive, astronomical_data_muluna)
    data_recipe[basic_hard_drive_astronomical_data_empty].order = c_a -- Load astronomical data from Data tape

    if mods [moshine_mods] then
        local datacell_empty_astronomical_data = "datacell-empty-astronomical-data"
        data_tool[datacell_empty_astronomical_data].subgroup = is_muluna_recipe_astronomical
        data_tool[datacell_empty_astronomical_data].order = d -- Datacell (Astronomical data)
        data_tool[datacell_empty_astronomical_data].stack_size = 200
        data_recipe[datacell_empty_astronomical_data].subgroup = is_muluna_recipe_astronomical
        data_recipe[datacell_empty_astronomical_data].icons = THREE_IS(datacell_empty, astronomical_data_muluna, datacell_empty_astronomical_data)
        data_recipe[datacell_empty_astronomical_data].order = d -- Datacell (Astronomical data)

        local datacell_empty_astronomical_data_empty = "datacell-empty-astronomical-data-empty"
        data_recipe[datacell_empty_astronomical_data_empty].subgroup = is_muluna_recipe_astronomical
        data_recipe[datacell_empty_astronomical_data_empty].icons = THREE_R_IS(datacell_empty_astronomical_data, datacell_empty, astronomical_data_muluna)
        data_recipe[datacell_empty_astronomical_data_empty].order = d_a -- Load astronomical data from Datacell
    end

    data_fluid[astronomical_data_muluna].subgroup = is_muluna_astronomical

    local telescope_observation_nauvis = "muluna-telescope-observation-nauvis"
    data_recipe[telescope_observation_nauvis].icons = BUILDING_R_I(astronomical_data_muluna, planet_nauvis)
    data_recipe[telescope_observation_nauvis].energy_required = 4

    local telescope_observation_muluna = "muluna-telescope-observation-muluna"
    data_recipe[telescope_observation_muluna].icons = BUILDING_R_I(astronomical_data_muluna, planet_muluna)
    data_recipe[telescope_observation_muluna].energy_required = 4

    local telescope_observation_vulcanus = "muluna-telescope-observation-vulcanus"
    data_recipe[telescope_observation_vulcanus].icons = BUILDING_R_I(astronomical_data_muluna, planet_vulcanus)
    data_recipe[telescope_observation_vulcanus].energy_required = 4

    local telescope_observation_gleba = "muluna-telescope-observation-gleba"
    data_recipe[telescope_observation_gleba].icons = BUILDING_R_I(astronomical_data_muluna, planet_gleba)
    data_recipe[telescope_observation_gleba].energy_required = 4

    if mods [terrapalus_mods] then
        local telescope_observation_terrapalus = "muluna-telescope-observation-terrapalus"
        data_recipe[telescope_observation_terrapalus].icons = BUILDING_R_I(astronomical_data_muluna, planet_terrapalus)
        data_recipe[telescope_observation_terrapalus].energy_required = 4
        data_recipe[telescope_observation_terrapalus].results = {{type = fluid, name = astronomical_data_muluna, amount = 20}}
    end

    if mods [maraxsis_mods] then
        local telescope_observation_maraxsis = "muluna-telescope-observation-maraxsis"
        data_recipe[telescope_observation_maraxsis].icons = BUILDING_R_I(astronomical_data_muluna, planet_maraxsis)
        data_recipe[telescope_observation_maraxsis].energy_required = 4
        data_recipe[telescope_observation_maraxsis].results = {{type = fluid, name = astronomical_data_muluna, amount = 60}}
    end

    if mods [castra_mods] then
        local telescope_observation_castra = "muluna-telescope-observation-castra"
        data_recipe[telescope_observation_castra].icons = BUILDING_R_I(astronomical_data_muluna, planet_castra)
        data_recipe[telescope_observation_castra].energy_required = 4
        data_recipe[telescope_observation_castra].results = {{type = fluid, name = astronomical_data_muluna, amount = 40}}
    end

    local telescope_observation_fulgora = "muluna-telescope-observation-fulgora"
    data_recipe[telescope_observation_fulgora].icons = BUILDING_R_I(astronomical_data_muluna, planet_fulgora)
    data_recipe[telescope_observation_fulgora].energy_required = 4

    if mods [shchierbin_mods] then
        local telescope_observation_shchierbin = "muluna-telescope-observation-shchierbin"
        data_recipe[telescope_observation_shchierbin].icons = BUILDING_R_I(astronomical_data_muluna, planet_shchierbin)
        data_recipe[telescope_observation_shchierbin].energy_required = 4
        data_recipe[telescope_observation_shchierbin].results = {{type = fluid, name = astronomical_data_muluna, amount = 20}}
    end

    local telescope_observation_aquilo = "muluna-telescope-observation-aquilo"
    data_recipe[telescope_observation_aquilo].icons = BUILDING_R_I(astronomical_data_muluna, planet_aquilo)
    data_recipe[telescope_observation_aquilo].energy_required = 4
    data_recipe[telescope_observation_aquilo].results = {{type = fluid, name = astronomical_data_muluna, amount = 40}}

    if mods [moshine_mods] then
        local telescope_observation_moshine = "muluna-telescope-observation-moshine"
        data_recipe[telescope_observation_moshine].icons = BUILDING_R_I(astronomical_data_muluna, planet_moshine)
        data_recipe[telescope_observation_moshine].energy_required = 4
        data_recipe[telescope_observation_moshine].results = {{type = fluid, name = astronomical_data_muluna, amount = 20}}
    end

    if mods [shattered_mods] then
        local telescope_observation_shattered = "muluna-telescope-observation-skewer_shattered_planet"
        data_recipe[telescope_observation_shattered].icons = BUILDING_R_I(astronomical_data_muluna, planet_shattered)
        data_recipe[telescope_observation_shattered].energy_required = 4
        data_recipe[telescope_observation_shattered].results = {{type = fluid, name = astronomical_data_muluna, amount = 3000}}
    end

    if mods [paracelsin_mods] then
        local telescope_observation_paracelsin = "muluna-telescope-observation-paracelsin"
        data_recipe[telescope_observation_paracelsin].icons = BUILDING_R_I(astronomical_data_muluna, planet_paracelsin)
        data_recipe[telescope_observation_paracelsin].energy_required = 4
        data_recipe[telescope_observation_paracelsin].results = {{type = fluid, name = astronomical_data_muluna, amount = 80}}
    end

    if mods [arig_mods] then
        local telescope_observation_arig = "muluna-telescope-observation-arig"
        data_recipe[telescope_observation_arig].icons = BUILDING_R_I(astronomical_data_muluna, planet_arig)
        data_recipe[telescope_observation_arig].energy_required = 4
        data_recipe[telescope_observation_arig].results = {{type = fluid, name = astronomical_data_muluna, amount = 20}}
    end

    if mods [hyarion_mods] then
        local telescope_observation_hyarion = "muluna-telescope-observation-hyarion"
        data_recipe[telescope_observation_hyarion].icons = BUILDING_R_I(astronomical_data_muluna, planet_hyarion)
        data_recipe[telescope_observation_hyarion].energy_required = 4
        data_recipe[telescope_observation_hyarion].results = {{type = fluid, name = astronomical_data_muluna, amount = 40}}
    end

    if mods [secretas_frozeta_mods] then
        local telescope_observation_frozeta = "muluna-telescope-observation-frozeta"
        data_recipe[telescope_observation_frozeta].icons = BUILDING_R_I(astronomical_data_muluna, planet_frozeta)
        data_recipe[telescope_observation_frozeta].energy_required = 4
        data_recipe[telescope_observation_frozeta].results = {{type = fluid, name = astronomical_data_muluna, amount = 100}}
    end

    if mods [panglia_mods] then
        local telescope_observation_panglia = "muluna-telescope-observation-panglia"
        data_recipe[telescope_observation_panglia].icons = BUILDING_R_I(astronomical_data_muluna, planet_panglia)
        data_recipe[telescope_observation_panglia].energy_required = 4
        data_recipe[telescope_observation_panglia].results = {{type = fluid, name = astronomical_data_muluna, amount = 20}}
    end

    if mods [vesta_mods] then
        local telescope_observation_vesta = "muluna-telescope-observation-vesta"
        data_recipe[telescope_observation_vesta].icons = BUILDING_R_I(astronomical_data_muluna, planet_vesta)
        data_recipe[telescope_observation_vesta].energy_required = 4
        data_recipe[telescope_observation_vesta].results = {{type = fluid, name = astronomical_data_muluna, amount = 40}}
    end

    if mods [corrundum_mods] then
        local telescope_observation_corrundum = "muluna-telescope-observation-corrundum"
        data_recipe[telescope_observation_corrundum].icons = BUILDING_R_I(astronomical_data_muluna, planet_corrundum)
        data_recipe[telescope_observation_corrundum].energy_required = 4
        data_recipe[telescope_observation_corrundum].results = {{type = fluid, name = astronomical_data_muluna, amount = 40}}
    end

    local telescope_observation_space_platform = "muluna-telescope-observation-space-platform"
    data_recipe[telescope_observation_space_platform].subgroup = is_muluna_astronomical
    data_recipe[telescope_observation_space_platform].icons = BUILDING_R_I(astronomical_data_muluna, space_platform)
    data_recipe[telescope_observation_space_platform].energy_required = 4
    data_recipe[telescope_observation_space_platform].ingredients = nil

    data_technology[thruster_oxidizer].icons = nil
    data_technology[thruster_oxidizer].icon = "__TIMSABA__/graphics/icons/muluna/thruster-oxidizer-technology.png"
    data_technology[thruster_oxidizer].icon_size = 256

    data_technology[thruster_fuel].icons = nil
    data_technology[thruster_fuel].icon = "__TIMSABA__/graphics/icons/muluna/thruster-fuel-technology.png"
    data_technology[thruster_fuel].icon_size = 256

    data_technology["muluna-oxygen"].icons =
    {
        {
            icon = "__TIMSABA__/graphics/icons/muluna/molecule-oxygen.png",
            icon_size = 256
        },
        {
            icon = data_fluid[thruster_oxidizer].icon,
            icon_size = data_fluid[thruster_oxidizer].icon_size,
            shift = {45,-45},
            scale = 0.75
        }
    }

    data_technology["muluna-aluminum-processing"].icons =
    {
        {
            icon = data_item[aluminium_plate_bob].icon,
            icon_size = data_item[aluminium_plate_bob].icon_size,
            shift = {16,-16},
            scale = 1
        },
        {
            icon = data_item[copper_cable].icon,
            icon_size = data_item[copper_cable].icon_size,
            shift = {-16,16},
            scale = 1
        }
    }

    data_technology["muluna-wood-cultivation"].icons =
    {
        {
            icon = data_fluid[carbon_dioxide_angels].icon,
            icon_size = data_fluid[carbon_dioxide_angels].icon_size,
            shift = {16,-16},
            scale = 1
        },
        {
            icon = data_item[tree_angels].icon,
            icon_size = data_item[tree_angels].icon_size,
            shift = {-16,16},
            scale = 1
        }
    }

    data_technology[steam_crusher].icons =
    {
        {
            icon = "__muluna-graphics__/graphics/technology/crusher-ai-upscaled.png",
            icon_size = 256
        },
        {
            icon = data_fluid[steam].icon,
            icon_size = data_fluid[steam].icon_size,
            shift = {45,45},
            scale = 0.75,
        }
    }

    data_technology["muluna-alice-propellant"].icons =
    {
        {
            icon = data_item[aluminum_crushed].icon,
            icon_size = data_item[aluminum_crushed].icon_size,
            shift = {-16,-16},
            scale = 1
        },
        {
            icon = data_item[rocket_fuel].icon,
            icon_size = data_item[rocket_fuel].icon_size,
            shift = {16,16},
            scale = 1
        }
    }

    local wood_gas_processing = "wood-gas-processing"
    data_technology[wood_gas_processing].icon = "__TIMSABA__/graphics/icons/muluna/wood-gas-processing.png"
    data_technology[wood_gas_processing].icon_size = 256

    local advanced_wood_gas_processing = "advanced-wood-gas-processing"
    data_technology[advanced_wood_gas_processing].icon = "__TIMSABA__/graphics/icons/muluna/advanced-wood-gas-processing.png"
    data_technology[advanced_wood_gas_processing].icon_size = 256

    local wood_gas_processing_to_crude_oil = "wood-gas-processing-to-crude-oil"
    data_technology[wood_gas_processing_to_crude_oil].icon = "__TIMSABA__/graphics/icons/muluna/wood-gas-processing-to-crude-oil.png"
    data_technology[wood_gas_processing_to_crude_oil].icon_size = 256

    data_technology[vacuum_heating_tower].icons = nil
    data_technology[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower-technology.png"
    data_technology[vacuum_heating_tower].icon_size = 256
end