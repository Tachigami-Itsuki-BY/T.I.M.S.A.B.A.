local kW = "kW"
if mods [muluna_mods] then
    -- LUNAR REGOLITH
    data_item[lunar_regolith].subgroup = is_muluna_crushing
    data_item[lunar_regolith].order = a
    data_item[lunar_regolith].stack_size = 200

    local regolith_sorting = "muluna-regolith-sorting"
    data_recipe[regolith_sorting].category = angels_ore_sorting_5
    data_recipe[regolith_sorting].subgroup = is_muluna_crushing
    data_recipe[regolith_sorting].icons = RECYCLING_I(recycling_png, lunar_regolith)
    data_recipe[regolith_sorting].order = a_a
    data_recipe[regolith_sorting].energy_required = 2
    data_recipe[regolith_sorting].ingredients[1].amount = 8
    data_recipe[regolith_sorting].results =
    {
        {type = item, name = stone, amount = 2},
        {type = item, name = ore_saphirite, amount = 1},
        {type = item, name = ore_jivolite, amount = 1},
        {type = item, name = ore_stiratite, amount = 1},
        {type = item, name = ore_crotinnium, amount = 1},
        {type = item, name = ore_rubyte, amount = 1},
        {type = item, name = ore_bobmonium, amount = 1}
    }
    data_recipe[regolith_sorting].main_product = stone

    local stone_crushing = "stone-crushing"
    data_recipe[stone_crushing].subgroup = is_muluna_crushing
    data_recipe[stone_crushing].icons = TWO_I(stone, stone_crushed_angels)
    data_recipe[stone_crushing].order = a_b
    data_recipe[stone_crushing].energy_required = 4
    data_recipe[stone_crushing].ingredients[1].amount = 1
    data_recipe[stone_crushing].results = {{type = item, name = stone_crushed_angels, amount = 4}}
    data_recipe[stone_crushing].main_product = stone_crushed_angels

    local landfill_stone_crushed = "landfill-stone-crushed"
    data_recipe[landfill_stone_crushed].subgroup = is_muluna_crushing
    data_recipe[landfill_stone_crushed].icons = TWO_I(stone_crushed_angels, landfill)
    data_recipe[landfill_stone_crushed].order = a_c
    data_recipe[landfill_stone_crushed].energy_required = 1
    data_recipe[landfill_stone_crushed].ingredients = {{type = item, name = stone_crushed_angels, amount = 64}}

    local stone_bricks_stone_crushed = "stone-bricks-stone-crushed"
    data_recipe[stone_bricks_stone_crushed].category = smelting_filtering
    data_recipe[stone_bricks_stone_crushed].additional_categories = {angels_sintering_1, metallurgy}
    data_recipe[stone_bricks_stone_crushed].subgroup = is_muluna_crushing
    data_recipe[stone_bricks_stone_crushed].icons = TWO_I(stone_crushed_angels, stone_brick)
    data_recipe[stone_bricks_stone_crushed].order = a_d
    data_recipe[stone_bricks_stone_crushed].energy_required = 4

    -- RECIPE ANORTHITE
    data_item[alumina_crushed].localised_description = show_formula and {chemical_formula, "Al[font=default-tiny-bold]2[/font]O[font=default-tiny-bold]3[/font]"} or nil
    data_item[alumina_crushed].subgroup = is_muluna_recipe_anorthite
    data_item[alumina_crushed].order = a
    data_item[alumina_crushed].stack_size = 200
    data_item[alumina_crushed].weight = 5000

    data_recipe[aluminium_plate_mods].localised_name = {"recipe-name.aluminium-plate"}
    data_recipe[aluminium_plate_mods].subgroup = is_muluna_recipe_anorthite
    data_recipe[aluminium_plate_mods].icons = TWO_I(aluminium_oxide, aluminium_plate_bob)
    data_recipe[aluminium_plate_mods].order = b
    data_recipe[aluminium_plate_mods].energy_required = 4

    data_item[aluminium_plate_crushed].localised_name = {"item-name.crushed-aluminium-plate"}
    data_item[aluminium_plate_crushed].localised_description = show_formula and {chemical_formula, "Al"} or nil
    data_item[aluminium_plate_crushed].subgroup = is_muluna_recipe_anorthite
    data_item[aluminium_plate_crushed].order = c
    data_item[aluminium_plate_crushed].stack_size = 200
    data_item[aluminium_plate_crushed].weight = 5000

    data_recipe[aluminium_cable].subgroup = is_muluna_recipe_anorthite
    data_recipe[aluminium_cable].icons = THREE_I(copper_cable, aluminium_plate_bob, aluminium_cable)
    data_recipe[aluminium_cable].order = d
    data_recipe[aluminium_cable].energy_required = 2
    data_recipe[aluminium_cable].ingredients =
    {
        {type = item, name = copper_cable, amount = 2},
        {type = item, name = aluminium_plate_bob, amount = 4}
    }
    data_recipe[aluminium_cable].results = {{type = item, name = aluminium_cable, amount = 2}}
    data_recipe[aluminium_cable].main_product = aluminium_cable
    data_recipe[aluminium_cable].auto_recycle = true
    data_recipe[aluminium_cable].allow_productivity = true
    data_recipe[aluminium_cable].allow_quality = true
    data_recipe[aluminium_cable].allow_decomposition = true

    data_recipe[casting_aluminium_cable].subgroup = is_muluna_recipe_anorthite
    data_recipe[casting_aluminium_cable].icons = THREE_I(copper_molten_angels, aluminium_molten_angels, aluminium_cable)
    data_recipe[casting_aluminium_cable].order = d_a
    data_recipe[casting_aluminium_cable].energy_required = 4
    data_recipe[casting_aluminium_cable].ingredients =
    {
        {type = fluid, name = copper_molten_angels, amount = 60},
        {type = fluid, name = aluminium_molten_angels, amount = 15}
    }
    data_recipe[casting_aluminium_cable].results = {{type = item, name = aluminium_cable, amount = 16}}
    data_recipe[casting_aluminium_cable].main_product = aluminium_cable

    local low_density_structure_muluna = "low-density-structure-from-aluminum"
    data_recipe[low_density_structure_muluna].localised_name = {"recipe-name.low-density-structure-muluna"}
    data_recipe[low_density_structure_muluna].subgroup = is_muluna_recipe_anorthite
    data_recipe[low_density_structure_muluna].icons = R_P_I(low_density_structure, planet_muluna, nil, number_1)
    data_recipe[low_density_structure_muluna].order = e
    data_recipe[low_density_structure_muluna].energy_required = data_recipe[low_density_structure].energy_required
    data_recipe[low_density_structure_muluna].ingredients = data_recipe[low_density_structure].ingredients
    data_recipe[low_density_structure_muluna].results[1].amount = 2
    data_recipe[low_density_structure_muluna].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    data_recipe[casting_low_density_structure_muluna].localised_name = {"recipe-name.casting-low-density-structure-muluna"}
    data_recipe[casting_low_density_structure_muluna].subgroup = is_muluna_recipe_anorthite
    data_recipe[casting_low_density_structure_muluna].icons = R_P_I(low_density_structure, planet_muluna, nil, number_2)
    data_recipe[casting_low_density_structure_muluna].order = e_a
    data_recipe[casting_low_density_structure_muluna].energy_required = data_recipe[casting_low_density_structure].energy_required
    data_recipe[casting_low_density_structure_muluna].ingredients = data_recipe[casting_low_density_structure].ingredients
    data_recipe[casting_low_density_structure_muluna].results[1].amount = 2
    data_recipe[casting_low_density_structure_muluna].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    -- SILICON
    -- data_item[silicon_boule_mods] --> "prototypes-update/mods/mods-override"
    -- data_item[silicon_cell_mods] --> "prototypes-update/mods/mods-override"
    -- data_recipe[silicon_cell_mods] --> "prototypes-update/mods/mods-override"
    -- data_recipe[silicon_carbide_mods] --> "prototypes-update/mods/mods-override"

    -- SILICON SOLAR PANELS
    local silicon_solar_panel_1 = "muluna-silicon-solar-panel"
    data_recipe[silicon_solar_panel_1].localised_name = {"recipe-name.muluna-silicon-solar-panel-1"}
    data_recipe[silicon_solar_panel_1].category = crafting
    data_recipe[silicon_solar_panel_1].subgroup = is_muluna_SPM_silicon
    data_recipe[silicon_solar_panel_1].icons = BUILDING_R_IS(solar_panel_1, silicon_cell_mods)
    data_recipe[silicon_solar_panel_1].order = a
    data_recipe[silicon_solar_panel_1].energy_required = data_recipe[solar_panel_1].energy_required
    data_recipe[silicon_solar_panel_1].ingredients =
    {
        {type = item, name = electronic_circuit, amount = 8},
        {type = item, name = steel_plate, amount = 8},
        {type = item, name = aluminium_cable, amount = 8},
        {type = item, name = glass_bob, amount = 8},
        {type = item, name = silicon_cell_mods, amount = 8},
        {type = item, name = copper_plate, amount = 8}
    }
    data_recipe[silicon_solar_panel_1].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    -- TREES
    local tree_growth_greenhouse = "muluna-tree-growth-greenhouse"
    data_recipe[tree_growth_greenhouse].subgroup = is_muluna_recipe_tree
    data_recipe[tree_growth_greenhouse].icons = CORNER_I(tree_angels, nil, water, nil, oxygen_angels, number_1)
    data_recipe[tree_growth_greenhouse].order = a
    data_recipe[tree_growth_greenhouse].energy_required = 32
    data_recipe[tree_growth_greenhouse].ingredients =
    {
        {type = item, name = tree_seed, amount = 8},
        {type = fluid, name = carbon_dioxide_angels, amount = 960},
        {type = fluid, name = water, amount = 480}
    }
    data_recipe[tree_growth_greenhouse].results =
    {
        {type = item, name = tree_angels, amount = 8},
        {type = fluid, name = oxygen_angels, amount = 960}
    }
    data_recipe[tree_growth_greenhouse].surface_conditions = nil

    local tree_growth_greenhouse_water_saving = "muluna-tree-growth-greenhouse-water-saving"
    data_recipe[tree_growth_greenhouse_water_saving].subgroup = is_muluna_recipe_tree
    data_recipe[tree_growth_greenhouse_water_saving].icons = CORNER_I(tree_angels, nil, water, nil, oxygen_angels, number_2)
    data_recipe[tree_growth_greenhouse_water_saving].order = a_a
    data_recipe[tree_growth_greenhouse_water_saving].energy_required = 64
    data_recipe[tree_growth_greenhouse_water_saving].ingredients =
    {
        {type = item, name = tree_seed, amount = 8},
        {type = fluid, name = carbon_dioxide_angels, amount = 960},
        {type = fluid, name = water, amount = 240}
    }
    data_recipe[tree_growth_greenhouse_water_saving].results =
    {
        {type = item, name = tree_angels, amount = 8},
        {type = fluid, name = oxygen_angels, amount = 960}
    }

    local tree_growth_greenhouse_nutrients = "muluna-tree-growth-greenhouse-nutrients"
    data_recipe[tree_growth_greenhouse_nutrients].subgroup = is_muluna_recipe_tree
    data_recipe[tree_growth_greenhouse_nutrients].icons = CORNER_I(tree_angels, nil, nutrients, nil, oxygen_angels, number_1)
    data_recipe[tree_growth_greenhouse_nutrients].order = a_b
    data_recipe[tree_growth_greenhouse_nutrients].energy_required = 32
    data_recipe[tree_growth_greenhouse_nutrients].ingredients =
    {
        {type = item, name = tree_seed, amount = 8},
        {type = item, name = nutrients, amount = 8},
        {type = fluid, name = carbon_dioxide_angels, amount = 960},
        {type = fluid, name = water, amount = 480}
    }
    data_recipe[tree_growth_greenhouse_nutrients].results =
    {
        {type = item, name = tree_angels, amount = 16},
        {type = fluid, name = oxygen_angels, amount = 960}
    }
    data_recipe[tree_growth_greenhouse_nutrients].surface_conditions = nil

    local tree_growth_greenhouse_water_saving_nutrients = "muluna-tree-growth-greenhouse-water-saving-nutrients"
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].subgroup = is_muluna_recipe_tree
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].icons = CORNER_I(tree_angels, nil, nutrients, nil, oxygen_angels, number_2)
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].order = a_c
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].energy_required = 64
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].ingredients =
    {
        {type = item, name = tree_seed, amount = 8},
        {type = item, name = nutrients, amount = 8},
        {type = fluid, name = carbon_dioxide_angels, amount = 960},
        {type = fluid, name = water, amount = 240}
    }
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].results =
    {
        {type = item, name = tree_angels, amount = 16},
        {type = fluid, name = oxygen_angels, amount = 960}
    }
    data_recipe[tree_growth_greenhouse_water_saving_nutrients].surface_conditions = nil

    local tree_growth_greenhouse_vulcanus = "muluna-tree-growth-greenhouse-vulcanus"
    data_recipe[tree_growth_greenhouse_vulcanus].subgroup = is_muluna_recipe_tree
    data_recipe[tree_growth_greenhouse_vulcanus].icons = CORNER_I(tree_angels, nil, fluoroketone_cold, oxygen_angels, fluoroketone_hot, number_1)
    data_recipe[tree_growth_greenhouse_vulcanus].order = a_d
    data_recipe[tree_growth_greenhouse_vulcanus].energy_required = 32
    data_recipe[tree_growth_greenhouse_vulcanus].ingredients =
    {
        {type = item, name = tree_seed, amount = 8},
        {type = item, name = nutrients, amount = 8},
        {type = fluid, name = carbon_dioxide_angels, amount = 960},
        {type = fluid, name = fluoroketone_cold, amount = 480},
        {type = fluid, name = water, amount = 480}
    }
    data_recipe[tree_growth_greenhouse_vulcanus].results =
    {
        {type = item, name = tree_angels, amount = 32},
        {type = fluid, name = fluoroketone_hot, amount = 480},
        {type = fluid, name = oxygen_angels, amount = 960}
    }
    data_recipe[tree_growth_greenhouse_vulcanus].surface_conditions = nil

    local tree_growth_greenhouse_water_saving_vulcanus = "muluna-tree-growth-greenhouse-water-saving-vulcanus"
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].subgroup = is_muluna_recipe_tree
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].icons = CORNER_I(tree_angels, nil, fluoroketone_cold, oxygen_angels, fluoroketone_hot, number_2)
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].order = a_e
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].energy_required = 64
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].ingredients =
    {
        {type = item, name = tree_seed, amount = 8},
        {type = item, name = nutrients, amount = 8},
        {type = fluid, name = carbon_dioxide_angels, amount = 960},
        {type = fluid, name = fluoroketone_cold, amount = 960},
        {type = fluid, name = water, amount = 240}
    }
    data_recipe[tree_growth_greenhouse_water_saving_vulcanus].results =
    {
        {type = item, name = tree_angels, amount = 32},
        {type = fluid, name = fluoroketone_hot, amount = 960},
        {type = fluid, name = oxygen_angels, amount = 960}
    }

    local tree_crushing = "muluna-tree-crushing"
    data_recipe[tree_crushing].category = lumber_mill_recipe_category
    data_recipe[tree_crushing].subgroup = is_muluna_recipe_tree
    data_recipe[tree_crushing].icons = TWO_I(tree_angels, wood)
    data_recipe[tree_crushing].order = b
    data_recipe[tree_crushing].energy_required = 4
    data_recipe[tree_crushing].results = {{type = item, name = wood, amount = 8}}

    local greenhouse_wood = "muluna-greenhouse-wood"
    data_item[greenhouse_wood].subgroup = is_muluna_recipe_tree
    data_item[greenhouse_wood].icons = nil
    data_item[greenhouse_wood].icon = "__muluna-graphics__/graphics/greenhouse/sprites/greenhouse-icon.png"
    data_item[greenhouse_wood].icon_size = 64
    data_item[greenhouse_wood].order = z
    data_item[greenhouse_wood].stack_size = 32
    data_item[greenhouse_wood].weight = 31250
    data_recipe[greenhouse_wood].subgroup = is_muluna_recipe_tree
    data_recipe[greenhouse_wood].icons = nil
    data_recipe[greenhouse_wood].icon = "__muluna-graphics__/graphics/greenhouse/sprites/greenhouse-icon.png"
    data_recipe[greenhouse_wood].icon_size = 64
    data_recipe[greenhouse_wood].order = z
    data_recipe[greenhouse_wood].energy_required = 8
    data_recipe[greenhouse_wood].ingredients =
    {
        {type = item, name = landfill, amount = 256},
        {type = item, name = basic_circuit_board, amount = 8},
        {type = item, name = small_lamp, amount = 16},
        {type = item, name = steel_pipe, amount = 16},
        {type = item, name = steel_plate, amount = 16},
        {type = item, name = stone_brick, amount = 16},
        {type = item, name = glass_bob, amount = 32}
    }
    data_assembling[greenhouse_wood].subgroup = is_muluna_recipe_tree
    data_assembling[greenhouse_wood].icons = nil
    data_assembling[greenhouse_wood].icon = "__muluna-graphics__/graphics/greenhouse/sprites/greenhouse-icon.png"
    data_assembling[greenhouse_wood].icon_size = 64
    data_assembling[greenhouse_wood].order = z
    data_assembling[greenhouse_wood].crafting_speed = 4
    data_assembling[greenhouse_wood].energy_usage = 420 .. kW
    data_assembling[greenhouse_wood].energy_source.emissions_per_minute.spores = 16
    data_assembling[greenhouse_wood].energy_source.drain = 60 .. kW

    -- CELLULOSE
    data_recipe[cellulose_mods].subgroup = is_bio_processing_wood
    data_recipe[cellulose_mods].icons = TWO_I(wood, cellulose_fiber_angels, number_2)
    data_recipe[cellulose_mods].order = b_b
    data_recipe[cellulose_mods].ingredients =
    {
        {type = item, name = wood, amount = 16},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }
    data_recipe[cellulose_mods].results =
    {
        {type = item, name = cellulose_fiber_angels, amount = 64},
        {type = fluid, name = sulfuric_acid_angels, amount = 30, ignored_by_productivity = 30}
    }
    data_recipe[cellulose_mods].main_product = cellulose_fiber_angels

    local wood_gasification = "wood-gasification"
    data_recipe[wood_gasification].subgroup = is_muluna_recipe_cellulose
    data_recipe[wood_gasification].icons = FOUR_R_I(cellulose_fiber_angels, methane_angels, nil, tar_mods)
    data_recipe[wood_gasification].order = a_a
    data_recipe[wood_gasification].energy_required = 4
    data_recipe[wood_gasification].ingredients =
    {
        {type = item, name = cellulose_fiber_angels, amount = 16},
        {type = item, name = alumina_crushed, amount = 1}
    }
    data_recipe[wood_gasification].results =
    {
        {type = fluid, name = methane_angels, amount = 30},
        {type = fluid, name = tar_mods, amount = 15},
        {type = item, name = alumina_crushed, amount = 1, probability = 0.5, ignored_by_productivity = 1}
    }
    data_recipe[wood_gasification].main_product = tar_mods
    data_recipe[wood_gasification].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    local advanced_wood_gasification = "advanced-wood-gasification"
    data_recipe[advanced_wood_gasification].subgroup = is_muluna_recipe_cellulose
    data_recipe[advanced_wood_gasification].icons = FOUR_R_I(cellulose_fiber_angels, naphtha_angels, tar_mods, fuel_oil_angels)
    data_recipe[advanced_wood_gasification].order = a_b
    data_recipe[advanced_wood_gasification].energy_required = 8
    data_recipe[advanced_wood_gasification].ingredients =
    {
        {type = item, name = cellulose_fiber_angels, amount = 16},
        {type = fluid, name = water, amount = 120},
        {type = item, name = alumina_crushed, amount = 1}
    }
    data_recipe[advanced_wood_gasification].results =
    {
        {type = fluid, name = tar_mods, amount = 30},
        {type = fluid, name = naphtha_angels, amount = 15},
        {type = fluid, name = fuel_oil_angels, amount = 15},
        {type = item, name = alumina_crushed, amount = 1, probability = 0.5, ignored_by_productivity = 1}
    }
    data_recipe[advanced_wood_gasification].main_product = tar_mods
    data_recipe[advanced_wood_gasification].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    local plastic_from_wood = "plastic-from-wood"
    data_recipe[plastic_from_wood].subgroup = is_muluna_recipe_cellulose
    data_recipe[plastic_from_wood].icons = THREE_I(cellulose_fiber_angels, methane_angels, plastic)
    data_recipe[plastic_from_wood].order = a_c
    data_recipe[plastic_from_wood].ingredients =
    {
        {type = item, name = cellulose_fiber_angels, amount = 4},
        {type = fluid, name = tar_mods, amount = 30}
    }
    data_recipe[plastic_from_wood].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    data_fluid[tar_mods].subgroup = is_muluna_recipe_cellulose
    data_fluid[tar_mods].order = b

    local solid_fuel_from_tar = "solid-fuel-from-tar"
    data_recipe[solid_fuel_from_tar].subgroup = is_muluna_recipe_cellulose
    data_recipe[solid_fuel_from_tar].icons = TWO_I(tar_mods, solid_fuel)
    data_recipe[solid_fuel_from_tar].order = b_a
    data_recipe[solid_fuel_from_tar].energy_required = 4
    data_recipe[solid_fuel_from_tar].ingredients[1].amount = 30
    data_recipe[solid_fuel_from_tar].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    local crude_oil_from_tar = "crude-oil-from-tar"
    data_recipe[crude_oil_from_tar].subgroup = is_muluna_recipe_cellulose
    data_recipe[crude_oil_from_tar].icons = THREE_I(tar_mods, water, crude_oil)
    data_recipe[crude_oil_from_tar].order = b_b
    data_recipe[crude_oil_from_tar].energy_required = 4
    data_recipe[crude_oil_from_tar].ingredients =
    {
        {type = fluid, name = tar_mods, amount = 30},
        {type = fluid, name = water, amount = 120}
    }
    data_recipe[crude_oil_from_tar].results[1].amount = 30
    data_recipe[crude_oil_from_tar].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    -- RECIPE
    local electric_engine_unit_from_carbon = "electric-engine-unit-from-carbon"
    data_recipe[electric_engine_unit_from_carbon].subgroup = is_muluna_recipe
    data_recipe[electric_engine_unit_from_carbon].icons = BUILDING_R_I(electric_engine_unit, carbon_angels)
    data_recipe[electric_engine_unit_from_carbon].order = a

    local muluna_oxygen_from_oxidizer = "muluna-oxygen-from-oxidizer"
    data_recipe[muluna_oxygen_from_oxidizer].category = angels_advanced_chemistry
    data_recipe[muluna_oxygen_from_oxidizer].subgroup = is_muluna_recipe
    data_recipe[muluna_oxygen_from_oxidizer].icons = FOUR_R_I(thruster_oxidizer, nitrogen_angels, oxygen_angels, water)
    data_recipe[muluna_oxygen_from_oxidizer].order = b
    data_recipe[muluna_oxygen_from_oxidizer].energy_required = 1 -- 4(HNO₃ + N₂O₄) --> (2H₂O + 13O₂ + 6N₂) / 4
    data_recipe[muluna_oxygen_from_oxidizer].ingredients[1].amount = 120
    data_recipe[muluna_oxygen_from_oxidizer].results =
    {
        {type = fluid, name = oxygen_angels, amount = 90},
        {type = fluid, name = nitrogen_angels, amount = 45},
        {type = fluid, name = water, amount = 15}
    }

    local rocket_fuel_aluminum = "rocket-fuel-aluminum"
    data_recipe[rocket_fuel_aluminum].subgroup = is_muluna_recipe
    data_recipe[rocket_fuel_aluminum].icons = BUILDING_R_I(rocket_fuel, planet_muluna)
    data_recipe[rocket_fuel_aluminum].order = c
    data_recipe[rocket_fuel_aluminum].energy_required = 16
    data_recipe[rocket_fuel_aluminum].ingredients =
    {
        {type = item, name = ice, amount = 8},
        {type = item, name = aluminium_plate_crushed, amount = 16},
        {type = fluid, name = water, amount = 120}
    }
    data_recipe[rocket_fuel_aluminum].surface_conditions = data_recipe[space_science_pack_muluna].surface_conditions

    data_item[diffused_plastic_muluna].subgroup = is_muluna_recipe
    data_item[diffused_plastic_muluna].order = d
    data_item[diffused_plastic_muluna].stack_size = 200
    data_item[diffused_plastic_muluna].spoil_ticks = 30 * second
    data_recipe[diffused_plastic_muluna].subgroup = is_muluna_recipe
    data_recipe[diffused_plastic_muluna].icons = FOUR_R_I(plastic, diffused_plastic_muluna, nil, diffused_plastic_muluna)
    data_recipe[diffused_plastic_muluna].order = d
    data_recipe[diffused_plastic_muluna].energy_required = 8
    data_recipe[diffused_plastic_muluna].ingredients =
    {
        {type = item, name = plastic, amount = 1},
        {type = fluid, name = carbon_dioxide_angels, amount = 120}
    }
    data_recipe[diffused_plastic_muluna].results =
    {
        {type = item, name = diffused_plastic_muluna, amount = 1, probability = 0.25},
        {type = item, name = diffused_plastic_muluna, amount = 1, probability = 0.25, percent_spoiled = 0.95},
        {type = fluid, name = carbon_dioxide_angels, amount = 60}
    }

    local microcellular_plastic = "muluna-microcellular-plastic"
    data_item[microcellular_plastic].subgroup = is_muluna_recipe
    data_item[microcellular_plastic].order = e
    data_item[microcellular_plastic].stack_size = 200
    data_recipe[microcellular_plastic].subgroup = is_muluna_recipe
    data_recipe[microcellular_plastic].icons = THREE_I(diffused_plastic_muluna, steam, microcellular_plastic)
    data_recipe[microcellular_plastic].order = e
    data_recipe[microcellular_plastic].ingredients =
    {
        {type = item, name = diffused_plastic_muluna, amount = 1},
        {type = fluid, name = steam, amount = 30}
    }

    local LDSPF = "low-density-space-platform-foundation"
    data_item[LDSPF].subgroup = is_muluna_recipe
    data_item[LDSPF].order = f
    data_recipe[LDSPF].subgroup = is_muluna_recipe
    data_recipe[LDSPF].order = f
    data_recipe[LDSPF].energy_required = 32
    data_recipe[LDSPF].ingredients =
    {
        {type = item, name = space_platform_foundation, amount = 1},
        {type = item, name = low_density_structure, amount = 4},
        {type = item, name = diffused_plastic_muluna, amount = 4}
    }

    data_recipe[space_science_pack_muluna].subgroup = is_muluna_recipe
    data_recipe[space_science_pack_muluna].icons = R_P_I(space_science_pack, planet_muluna)
    data_recipe[space_science_pack_muluna].order = g
    data_recipe[space_science_pack_muluna].energy_required = 16
    data_recipe[space_science_pack_muluna].ingredients =
    {
        {type = item, name = nitinol_plate_bob, amount = 2},
        {type = item, name = carbon_angels, amount = 4},
        {type = item, name = ice, amount = 4}
    }
    data_recipe[space_science_pack_muluna].results[1].amount = 2

    data_tool[interstellar_science_pack].subgroup = is_muluna_recipe
    data_tool[interstellar_science_pack].order = h
    data_recipe[interstellar_science_pack].subgroup = is_muluna_recipe
    data_recipe[interstellar_science_pack].icons = R_P_I(interstellar_science_pack, planet_muluna)
    data_recipe[interstellar_science_pack].order = h
    data_recipe[interstellar_science_pack].energy_required = 32
    data_recipe[interstellar_science_pack].ingredients =
    {
        {type = item, name = rocket_fuel, amount = 1},
        {type = item, name = steam_crusher, amount = 1},
        {type = item, name = LDSPF, amount = 2},
        {type = fluid, name = astronomical_data_muluna, amount = 15}
    }
    data_recipe[interstellar_science_pack].results[1].amount = 4

    -- BOILER
    local advanced_water_melting_oxygen = "advanced-water-melting-oxygen"
    data_recipe[advanced_water_melting_oxygen].subgroup = is_muluna_boiler
    data_recipe[advanced_water_melting_oxygen].icons = TWO_I(ice, water, number_1)
    data_recipe[advanced_water_melting_oxygen].order = a_a
    data_recipe[advanced_water_melting_oxygen].energy_required = 0.25
    data_recipe[advanced_water_melting_oxygen].ingredients =
    {
        {type = item, name = ice, amount = 1},
        {type = fluid, name = oxygen_angels, amount = 15}
    }
    data_recipe[advanced_water_melting_oxygen].results =
    {
        {type = fluid, name = water, amount = 15, temperature = 15},
        {type = fluid, name = carbon_dioxide_angels, amount = 15, temperature = 165}
    }

    local advanced_water_melting_compressed_air = "advanced-water-melting-atmosphere"
    data_recipe[advanced_water_melting_compressed_air].subgroup = is_muluna_boiler
    data_recipe[advanced_water_melting_compressed_air].icons = TWO_I(ice, water, number_2)
    data_recipe[advanced_water_melting_compressed_air].order = a_b
    data_recipe[advanced_water_melting_compressed_air].energy_required = 0.25
    data_recipe[advanced_water_melting_compressed_air].ingredients =
    {
        {type = item, name = ice, amount = 1},
        {type = fluid, name = compressed_air, amount = 60}
    }
    data_recipe[advanced_water_melting_compressed_air].results =
    {
        {type = fluid, name = water, amount = 15, temperature = 15},
        {type = fluid, name = carbon_dioxide_angels, amount = 15, temperature = 165}
    }

    local advanced_water_boiling = "advanced-water-boiling"
    data_recipe[advanced_water_boiling].subgroup = is_muluna_boiler
    data_recipe[advanced_water_boiling].icons = TWO_I(water, steam, number_1)
    data_recipe[advanced_water_boiling].order = b_a
    data_recipe[advanced_water_boiling].energy_required = 0.25
    data_recipe[advanced_water_boiling].ingredients =
    {
        {type = fluid, name = water, amount = 15, temperature = 15},
        {type = fluid, name = oxygen_angels, amount = 15}
    }
    data_recipe[advanced_water_boiling].results =
    {
        {type = fluid, name = steam, amount = 15, temperature = 165},
        {type = fluid, name = carbon_dioxide_angels, amount = 15, temperature = 165}
    }

    local advanced_water_boiling_compressed_air = "advanced-water-boiling-atmosphere"
    data_recipe[advanced_water_boiling_compressed_air].subgroup = is_muluna_boiler
    data_recipe[advanced_water_boiling_compressed_air].icons = TWO_I(water, steam, number_2)
    data_recipe[advanced_water_boiling_compressed_air].order = b_b
    data_recipe[advanced_water_boiling_compressed_air].energy_required = 0.25
    data_recipe[advanced_water_boiling_compressed_air].ingredients =
    {
        {type = fluid, name = water, amount = 15, temperature = 15},
        {type = fluid, name = compressed_air, amount = 60}
    }
    data_recipe[advanced_water_boiling_compressed_air].results =
    {
        {type = fluid, name = steam, amount = 15, temperature = 165},
        {type = fluid, name = carbon_dioxide_angels, amount = 15, temperature = 165}
    }

    local controlled_combustion = "controlled-combustion"
    data_recipe[controlled_combustion].subgroup = is_muluna_boiler
    data_recipe[controlled_combustion].icons = TWO_I(oxygen_angels, carbon_dioxide_angels)
    data_recipe[controlled_combustion].order = c_a
    data_recipe[controlled_combustion].energy_required = 0.25
    data_recipe[controlled_combustion].ingredients[1].amount = 15
    data_recipe[controlled_combustion].results[1].amount = 15

    local controlled_combustion_compressed_air = "controlled-combustion-atmosphere"
    data_recipe[controlled_combustion_compressed_air].subgroup = is_muluna_boiler
    data_recipe[controlled_combustion_compressed_air].icons = TWO_I(compressed_air, carbon_dioxide_angels)
    data_recipe[controlled_combustion_compressed_air].order = c_b
    data_recipe[controlled_combustion_compressed_air].energy_required = 0.25
    data_recipe[controlled_combustion_compressed_air].ingredients[1].name = compressed_air
    data_recipe[controlled_combustion_compressed_air].ingredients[1].amount = 60
    data_recipe[controlled_combustion_compressed_air].results[1].amount = 15

    local advanced_boiler = "muluna-advanced-boiler"
    data_item[advanced_boiler].subgroup = is_muluna_boiler
    data_item[advanced_boiler].order = z
    data_item[advanced_boiler].stack_size = 32
    data_item[advanced_boiler].weight = 31250
    data_recipe[advanced_boiler].subgroup = is_muluna_boiler
    data_recipe[advanced_boiler].order = z
    data_recipe[advanced_boiler].energy_required = 8
    data_recipe[advanced_boiler].ingredients =
    {
        {type = item, name = steel_pipe, amount = 4},
        {type = item, name = steel_plate, amount = 8},
        {type = item, name = boiler_1, amount = 1}
    }
    data_assembling[advanced_boiler].subgroup = is_muluna_boiler
    data_assembling[advanced_boiler].order = z
    data_assembling[advanced_boiler].crafting_speed = 4
    data_assembling[advanced_boiler].energy_usage = 1800 .. kW
    data_assembling[advanced_boiler].energy_source.effectivity = nil

    -- HEAT
    data_fluid[heat].subgroup = is_muluna_heating
    data_fluid[heat].order = a

    data_item[vacuum_heating_tower].subgroup = is_muluna_heating
    data_item[vacuum_heating_tower].icons = nil
    data_item[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower.png"
    data_item[vacuum_heating_tower].order = z
    data_item[vacuum_heating_tower].stack_size = 32
    data_item[vacuum_heating_tower].weight = 31250
    data_recipe[vacuum_heating_tower].subgroup = is_muluna_heating
    data_recipe[vacuum_heating_tower].icons = nil
    data_recipe[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower.png"
    data_recipe[vacuum_heating_tower].order = z
    data_recipe[vacuum_heating_tower].energy_required = 8
    if mods [bobmodules] then
        data_recipe[vacuum_heating_tower].ingredients =
        {
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = heat_pipe_4, amount = 8},
            {type = item, name = reinforced_concrete, amount = 32},
            {type = item, name = efficiency_module_5, amount = 1},
            {type = item, name = heating_tower, amount = 1},
            {type = item, name = heat_exchanger_4, amount = 2}
        }
    else
        data_recipe[vacuum_heating_tower].ingredients =
        {
            {type = item, name = molybdenum_rhenium_plate, amount = 16},
            {type = item, name = heat_pipe_4, amount = 8},
            {type = item, name = reinforced_concrete, amount = 32},
            {type = item, name = efficiency_module_3, amount = 1},
            {type = item, name = heating_tower, amount = 1},
            {type = item, name = heat_exchanger_4, amount = 2}
        }
    end
    -- data_assembling[vacuum_heating_tower] --> "mods-final-fix/final-fix-mods"

    -- COOLED STEAM
    local cooled_steam = "cooled-steam"
    data_fluid[cooled_steam].localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]O"} or nil
    data_fluid[cooled_steam].subgroup = is_muluna_turbine
    data_fluid[cooled_steam].order = a

    local steam_condensation = "muluna-steam-condensation"
    data_recipe[steam_condensation].category = angels_cooling
    data_recipe[steam_condensation].subgroup = is_muluna_turbine
    data_recipe[steam_condensation].icons = TWO_I(cooled_steam, water)
    data_recipe[steam_condensation].order = a_a
    data_recipe[steam_condensation].energy_required = 16
    data_recipe[steam_condensation].ingredients[1].amount = 960
    data_recipe[steam_condensation].results[1].amount = 120

    local cycling_steam_turbine = "muluna-cycling-steam-turbine"
    data_item[cycling_steam_turbine].subgroup = is_muluna_turbine
    data_item[cycling_steam_turbine].order = z
    data_item[cycling_steam_turbine].stack_size = 32
    data_item[cycling_steam_turbine].weight = 31250
    data_recipe[cycling_steam_turbine].subgroup = is_muluna_turbine
    data_recipe[cycling_steam_turbine].order = z
    data_recipe[cycling_steam_turbine].energy_required = 8
    if mods [bobmodules] then
        data_recipe[cycling_steam_turbine].ingredients =
        {
            {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
            {type = item, name = niobium_iron_bearing, amount = 16},
            {type = item, name = steam_turbine_4, amount = 1},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
            {type = item, name = niobium_titanium_plate, amount = 8},
            {type = item, name = superconductor, amount = 8},
            {type = item, name = quality_module_5, amount = 1}
        }
    else
        data_recipe[cycling_steam_turbine].ingredients =
        {
            {type = item, name = niobium_tungsten_molybdenum_gear_wheel, amount = 16},
            {type = item, name = niobium_iron_bearing, amount = 16},
            {type = item, name = steam_turbine_4, amount = 1},
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
            {type = item, name = niobium_titanium_plate, amount = 8},
            {type = item, name = superconductor, amount = 8},
            {type = item, name = quality_module_3, amount = 1}
        }
    end
    data_generator_fusion[cycling_steam_turbine].subgroup = is_muluna_turbine
    data_generator_fusion[cycling_steam_turbine].order = z
    data_generator_fusion[cycling_steam_turbine].max_fluid_usage = 120/60
    data_generator_fusion[cycling_steam_turbine].energy_source.output_flow_limit = 21600 .. kW

    -- BUILDING
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
    data_recipe[steam_stone_furnace].energy_required = 4
    data_recipe[steam_stone_furnace].ingredients =
    {
        {type = item, name = iron_pipe, amount = 4},
        {type = item, name = stone_furnace, amount = 1}
    }
    data_furnace[steam_stone_furnace].subgroup = is_muluna_building
    data_furnace[steam_stone_furnace].icons = nil
    data_furnace[steam_stone_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-stone-furnace.png"
    data_furnace[steam_stone_furnace].order = a
    data_furnace[steam_stone_furnace].energy_usage = (675 / 6) .. kW
    data_furnace[steam_stone_furnace].energy_source.effectivity = 0.25
    data_furnace[steam_stone_furnace].energy_source.fluid_box.maximum_temperature = 1000

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
    data_recipe[steam_steel_furnace].energy_required = 4
    data_recipe[steam_steel_furnace].ingredients =
    {
        {type = item, name = steel_pipe, amount = 4},
        {type = item, name = steam_stone_furnace, amount = 1}
    }
    data_furnace[steam_steel_furnace].subgroup = is_muluna_building
    data_furnace[steam_steel_furnace].icons = nil
    data_furnace[steam_steel_furnace].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-steel-furnace.png"
    data_furnace[steam_steel_furnace].order = b
    data_furnace[steam_steel_furnace].energy_usage = (675 / 6) .. kW
    data_furnace[steam_steel_furnace].energy_source.effectivity = 0.5
    data_furnace[steam_steel_furnace].energy_source.fluid_box.maximum_temperature = 1000

    data_item[steam_crusher].subgroup = is_muluna_building
    data_item[steam_crusher].icons = nil
    data_item[steam_crusher].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-crusher.png"
    data_item[steam_crusher].order = c
    data_item[steam_crusher].stack_size = 32
    data_item[steam_crusher].weight = 31250
    data_recipe[steam_crusher].subgroup = is_muluna_building
    data_recipe[steam_crusher].icons = nil
    data_recipe[steam_crusher].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-crusher.png"
    data_recipe[steam_crusher].order = c
    data_recipe[steam_crusher].energy_required = 8
    data_recipe[steam_crusher].ingredients =
    {
        {type = item, name = engine_unit, amount = 8},
        {type = item, name = iron_pipe, amount = 4},
        {type = item, name = steel_plate, amount = 8}
    }
    data_assembling[steam_crusher].subgroup = is_muluna_building
    data_assembling[steam_crusher].icons = nil
    data_assembling[steam_crusher].icon = "__TIMSABA__/graphics/icons/muluna/muluna-steam-crusher.png"
    data_assembling[steam_crusher].order = c
    data_assembling[steam_crusher].crafting_speed = 0.5
    data_assembling[steam_crusher].energy_usage = (675 / 6) .. kW
    data_assembling[steam_crusher].energy_source.fluid_box.maximum_temperature = 1000
    data_assembling[steam_crusher].graphics_set.animation.animation_speed = 0.5

    data_item[crusher].localised_name = {"entity-name.crusher-1"}
    data_item[crusher].subgroup = is_muluna_building
    data_item[crusher].order = d
    data_recipe[crusher].localised_name = {"entity-name.crusher-1"}
    data_recipe[crusher].subgroup = is_muluna_building
    data_recipe[crusher].order = d
    data_recipe[crusher].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 8},
        {type = item, name = low_density_structure, amount = 16},
        {type = item, name = molybdenum_rhenium_plate, amount = 8},
        {type = item, name = steam_crusher, amount = 1}
    }
    data_assembling[crusher].localised_name = {"entity-name.crusher-1"}
    data_assembling[crusher].subgroup = is_muluna_building
    data_assembling[crusher].order = d

    local crusher_2 = "crusher-2"
    data_item[crusher_2].subgroup = is_muluna_building
    data_item[crusher_2].order = e
    data_item[crusher_2].stack_size = 32
    data_item[crusher_2].weight = 31250
    data_recipe[crusher_2].subgroup = is_muluna_building
    data_recipe[crusher_2].order = e
    data_recipe[crusher_2].energy_required = 8
    if mods [bobmodules] then
        data_recipe[crusher_2].ingredients =
        {
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
            {type = item, name = niobium_iron_plate, amount = 8},
            {type = item, name = speed_module_5, amount = 1},
            {type = item, name = crusher, amount = 1}
        }
    else
        data_recipe[crusher_2].ingredients =
        {
            {type = item, name = niobium_tungsten_molybdenum_plate, amount = 8},
            {type = item, name = niobium_iron_plate, amount = 8},
            {type = item, name = speed_module_3, amount = 1},
            {type = item, name = crusher, amount = 1}
        }
    end
    data_assembling[crusher_2].subgroup = is_muluna_building
    data_assembling[crusher_2].order = e
    data_assembling[crusher_2].crafting_speed = 2
    data_assembling[crusher_2].energy_usage = 930 .. kW
    data_assembling[crusher_2].energy_source.drain = 30 .. kW

    local cryolab = "cryolab"
    data_item[cryolab].subgroup = is_muluna_building
    data_item[cryolab].order = f
    data_item[cryolab].stack_size = 32
    data_item[cryolab].weight = 31250
    data_recipe[cryolab].subgroup = is_muluna_building
    data_recipe[cryolab].order = f
    data_recipe[cryolab].energy_required = 8
    if mods [bobmodules] then
        data_recipe[cryolab].ingredients =
        {
            {type = item, name = productivity_module_5, amount = 1},
            {type = item, name = quantum_processor, amount = 32},
            {type = item, name = pentapod_egg, amount = 4},
            {type = item, name = biter_egg, amount = 4},
            {type = item, name = biolab, amount = 4},
            {type = item, name = antimony_plate, amount = 32},
            {type = item, name = germanium_plate, amount = 32},
            {type = fluid, name = fluoroketone_cold, amount = 480}
        }
    else
        data_recipe[cryolab].ingredients =
        {
            {type = item, name = productivity_module_3, amount = 1},
            {type = item, name = quantum_processor, amount = 32},
            {type = item, name = pentapod_egg, amount = 4},
            {type = item, name = biter_egg, amount = 4},
            {type = item, name = biolab, amount = 4},
            {type = item, name = antimony_plate, amount = 32},
            {type = item, name = germanium_plate, amount = 32},
            {type = fluid, name = fluoroketone_cold, amount = 480}
        }
    end
    data_lab[cryolab].subgroup = is_muluna_building
    data_lab[cryolab].order = f
    data_lab[cryolab].researching_speed = 8
    data_lab[cryolab].module_slots = 8
    data_lab[cryolab].energy_usage = 960 .. kW

    -- ASTRONOMICAL
    local basic_hard_drive = "muluna-basic-hard-drive"
    data_item[basic_hard_drive].subgroup = is_muluna_astronomical
    data_item[basic_hard_drive].order = a -- Data tape
    data_item[basic_hard_drive].stack_size = 200
    data_recipe[basic_hard_drive].subgroup = is_muluna_astronomical
    data_recipe[basic_hard_drive].icons = FOUR_I(iron_plate, plastic, lubricant, basic_hard_drive)
    data_recipe[basic_hard_drive].order = a -- Data tape
    data_recipe[basic_hard_drive].energy_required = 1
    data_recipe[basic_hard_drive].ingredients =
    {
        {type = item, name = platinum_plate, amount = 4},
        {type = item, name = plastic, amount = 4},
        {type = fluid, name = lubricant, amount = 15}
    }

    local basic_hard_drive_astronomical_data = "muluna-basic-hard-drive-astronomical-data"
    data_item[basic_hard_drive_astronomical_data].subgroup = is_muluna_astronomical
    data_item[basic_hard_drive_astronomical_data].order = b -- Data tape (Astronomical data)
    data_item[basic_hard_drive_astronomical_data].stack_size = 200
    data_recipe[basic_hard_drive_astronomical_data].subgroup = is_muluna_astronomical
    data_recipe[basic_hard_drive_astronomical_data].icons = THREE_IS(basic_hard_drive, astronomical_data_muluna, basic_hard_drive_astronomical_data)
    data_recipe[basic_hard_drive_astronomical_data].order = b -- Data tape (Astronomical data)
    data_recipe[basic_hard_drive_astronomical_data].energy_required = 4
    data_recipe[basic_hard_drive_astronomical_data].ingredients =
    {
        {type = item, name = basic_hard_drive, amount = 1},
        {type = fluid, name = astronomical_data_muluna, amount = 240}
    }

    local basic_hard_drive_astronomical_data_empty = "muluna-basic-hard-drive-astronomical-data-empty"
    data_recipe[basic_hard_drive_astronomical_data_empty].subgroup = is_muluna_astronomical
    data_recipe[basic_hard_drive_astronomical_data_empty].icons = THREE_R_IS(basic_hard_drive_astronomical_data, basic_hard_drive, astronomical_data_muluna)
    data_recipe[basic_hard_drive_astronomical_data_empty].order = b_a -- Load astronomical data from Data tape
    data_recipe[basic_hard_drive_astronomical_data_empty].energy_required = 4
    data_recipe[basic_hard_drive_astronomical_data_empty].results =
    {
        {type = item, name = basic_hard_drive, amount = 1},
        {type = fluid, name = astronomical_data_muluna, amount = 240}
    }

    if mods [moshine_mods] then
        local datacell_empty_astronomical_data = "datacell-empty-astronomical-data"
        data_tool[datacell_empty_astronomical_data].subgroup = is_muluna_astronomical
        data_tool[datacell_empty_astronomical_data].order = c -- Datacell (Astronomical data)
        data_tool[datacell_empty_astronomical_data].stack_size = 200
        data_recipe[datacell_empty_astronomical_data].subgroup = is_muluna_astronomical
        data_recipe[datacell_empty_astronomical_data].icons = THREE_IS(datacell_empty, astronomical_data_muluna, datacell_empty_astronomical_data)
        data_recipe[datacell_empty_astronomical_data].order = c -- Datacell (Astronomical data)
        data_recipe[datacell_empty_astronomical_data].energy_required = 4
        data_recipe[datacell_empty_astronomical_data].ingredients =
        {
            {type = item, name = datacell_empty, amount = 1},
            {type = fluid, name = astronomical_data_muluna, amount = 960}
        }

        local datacell_empty_astronomical_data_empty = "datacell-empty-astronomical-data-empty"
        data_recipe[datacell_empty_astronomical_data_empty].subgroup = is_muluna_astronomical
        data_recipe[datacell_empty_astronomical_data_empty].icons = THREE_R_IS(datacell_empty_astronomical_data, datacell_empty, astronomical_data_muluna)
        data_recipe[datacell_empty_astronomical_data_empty].order = c_a -- Load astronomical data from Datacell
        data_recipe[datacell_empty_astronomical_data_empty].energy_required = 4
        data_recipe[datacell_empty_astronomical_data_empty].results =
        {
            {type = item, name = datacell_empty, amount = 1},
            {type = fluid, name = astronomical_data_muluna, amount = 960}
        }
    end

    local data_cable = "muluna-data-cable"
    data_item[data_cable].subgroup = is_muluna_astronomical
    data_item[data_cable].order = y
    data_item[data_cable].stack_size = 200
    data_recipe[data_cable].subgroup = is_muluna_astronomical
    data_recipe[data_cable].order = y
    data_recipe[data_cable].ingredients =
    {
        {type = item, name = aluminium_cable, amount = 8},
        {type = item, name = silicon_carbide_bob, amount = 1},
        {type = item, name = silicon_boule_mods, amount = 1}
    }
    data_pipe[data_cable].subgroup = is_muluna_astronomical
    data_pipe[data_cable].order = y

    data_item[telescope].subgroup = is_muluna_astronomical
    data_item[telescope].order = z
    data_item[telescope].stack_size = 1
    data_item[telescope].weight = 31250
    data_recipe[telescope].subgroup = is_muluna_astronomical
    data_recipe[telescope].order = z
    data_recipe[telescope].energy_required = 8
    data_recipe[telescope].ingredients =
    {
        {type = item, name = electric_engine_unit, amount = 8},
        {type = item, name = advanced_processing_unit, amount = 32},
        {type = item, name = molybdenum_rhenium_plate, amount = 64},
        {type = item, name = data_cable, amount = 8},
        {type = item, name = silicon_cell_mods, amount = 16}
    }
    data_assembling[telescope].subgroup = is_muluna_astronomical
    data_assembling[telescope].order = z
    data_assembling[telescope].crafting_speed = 1
    data_assembling[telescope].module_slots = 4
    data_assembling[telescope].energy_usage = 9760 .. kW
    data_assembling[telescope].energy_source.drain = 240 .. kW

    bobmods.lib.recipe.update_recycling_recipe
    ({
        greenhouse_wood,
        LDSPF,
        advanced_boiler,
        vacuum_heating_tower,
        cycling_steam_turbine,
        steam_stone_furnace,
        steam_steel_furnace,
        steam_crusher,
        crusher,
        crusher_2,
        cryolab,
        basic_hard_drive,
        data_cable,
        telescope
    })

    data_fluid[astronomical_data_muluna].subgroup = is_muluna_recipe_astronomical
    data_fluid[astronomical_data_muluna].order = a

    local telescope_observation_nauvis = "muluna-telescope-observation-nauvis"
    data_recipe[telescope_observation_nauvis].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope_observation_nauvis].icons = BUILDING_R_I(astronomical_data_muluna, planet_nauvis)
    data_recipe[telescope_observation_nauvis].order = a_a
    data_recipe[telescope_observation_nauvis].energy_required = 4
    data_recipe[telescope_observation_nauvis].results[1].amount = 15

    local telescope_observation_vulcanus = "muluna-telescope-observation-vulcanus"
    data_recipe[telescope_observation_vulcanus].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope_observation_vulcanus].icons = BUILDING_R_I(astronomical_data_muluna, planet_vulcanus)
    data_recipe[telescope_observation_vulcanus].order = a_b
    data_recipe[telescope_observation_vulcanus].energy_required = 4
    data_recipe[telescope_observation_vulcanus].results[1].amount = 30

    local telescope_observation_gleba = "muluna-telescope-observation-gleba"
    data_recipe[telescope_observation_gleba].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope_observation_gleba].icons = BUILDING_R_I(astronomical_data_muluna, planet_gleba)
    data_recipe[telescope_observation_gleba].order = a_c
    data_recipe[telescope_observation_gleba].energy_required = 4
    data_recipe[telescope_observation_gleba].results[1].amount = 30

    local telescope_observation_fulgora = "muluna-telescope-observation-fulgora"
    data_recipe[telescope_observation_fulgora].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope_observation_fulgora].icons = BUILDING_R_I(astronomical_data_muluna, planet_fulgora)
    data_recipe[telescope_observation_fulgora].order = a_d
    data_recipe[telescope_observation_fulgora].energy_required = 4
    data_recipe[telescope_observation_fulgora].results[1].amount = 30

    local telescope_observation_aquilo = "muluna-telescope-observation-aquilo"
    data_recipe[telescope_observation_aquilo].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope_observation_aquilo].icons = BUILDING_R_I(astronomical_data_muluna, planet_aquilo)
    data_recipe[telescope_observation_aquilo].order = a_e
    data_recipe[telescope_observation_aquilo].energy_required = 4
    data_recipe[telescope_observation_aquilo].results[1].amount = 60

    if mods [moshine_mods] then
        local telescope_observation_moshine = "muluna-telescope-observation-moshine"
        data_recipe[telescope_observation_moshine].subgroup = is_muluna_recipe_astronomical
        data_recipe[telescope_observation_moshine].icons = BUILDING_R_I(astronomical_data_muluna, planet_moshine)
        data_recipe[telescope_observation_moshine].order = a_f
        data_recipe[telescope_observation_moshine].energy_required = 4
        data_recipe[telescope_observation_moshine].results[1].amount = 30
    end

    if mods [arig_mods] then
        local telescope_observation_arig = "muluna-telescope-observation-arig"
        data_recipe[telescope_observation_arig].subgroup = is_muluna_recipe_astronomical
        data_recipe[telescope_observation_arig].icons = BUILDING_R_I(astronomical_data_muluna, planet_arig)
        data_recipe[telescope_observation_arig].order = a_g
        data_recipe[telescope_observation_arig].energy_required = 4
        data_recipe[telescope_observation_arig].results[1].amount = 15
    end

    if mods [hyarion_mods] then
        local telescope_observation_hyarion = "muluna-telescope-observation-hyarion"
        data_recipe[telescope_observation_hyarion].subgroup = is_muluna_recipe_astronomical
        data_recipe[telescope_observation_hyarion].icons = BUILDING_R_I(astronomical_data_muluna, planet_hyarion)
        data_recipe[telescope_observation_hyarion].order = a_h
        data_recipe[telescope_observation_hyarion].energy_required = 4
        data_recipe[telescope_observation_hyarion].results[1].amount = 30
    end

    if mods [tellus_mods] then
        local telescope_observation_tellus = "muluna-telescope-observation-tellus"
        data_recipe[telescope_observation_tellus].subgroup = is_muluna_recipe_astronomical
        data_recipe[telescope_observation_tellus].icons = BUILDING_R_I(astronomical_data_muluna, planet_tellus)
        data_recipe[telescope_observation_tellus].order = a_i
        data_recipe[telescope_observation_tellus].energy_required = 4
        data_recipe[telescope_observation_tellus].results[1].amount = 30
    end

    local telescope_observation_muluna = "muluna-telescope-observation-muluna"
    data_recipe[telescope_observation_muluna].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope_observation_muluna].icons = BUILDING_R_I(astronomical_data_muluna, planet_muluna)
    data_recipe[telescope_observation_muluna].order = b_a
    data_recipe[telescope_observation_muluna].energy_required = 4
    data_recipe[telescope_observation_muluna].results[1].amount = 15

    if mods [panglia_mods] then
        local telescope_observation_panglia = "muluna-telescope-observation-panglia"
        data_recipe[telescope_observation_panglia].subgroup = is_muluna_recipe_astronomical
        data_recipe[telescope_observation_panglia].icons = BUILDING_R_I(astronomical_data_muluna, planet_panglia)
        data_recipe[telescope_observation_panglia].order = b_b
        data_recipe[telescope_observation_panglia].energy_required = 4
        data_recipe[telescope_observation_panglia].results[1].amount = 15
    end

    --[[if mods [terrapalus_mods] then
        local telescope_observation_terrapalus = "muluna-telescope-observation-terrapalus"
        data_recipe[telescope_observation_terrapalus].icons = BUILDING_R_I(astronomical_data_muluna, planet_terrapalus)
        data_recipe[telescope_observation_terrapalus].energy_required = 4
    end

    if mods [maraxsis_mods] then
        local telescope_observation_maraxsis = "muluna-telescope-observation-maraxsis"
        data_recipe[telescope_observation_maraxsis].icons = BUILDING_R_I(astronomical_data_muluna, planet_maraxsis)
        data_recipe[telescope_observation_maraxsis].energy_required = 4
    end

    if mods [castra_mods] then
        local telescope_observation_castra = "muluna-telescope-observation-castra"
        data_recipe[telescope_observation_castra].icons = BUILDING_R_I(astronomical_data_muluna, planet_castra)
        data_recipe[telescope_observation_castra].energy_required = 4
    end

    if mods [shchierbin_mods] then
        local telescope_observation_shchierbin = "muluna-telescope-observation-shchierbin"
        data_recipe[telescope_observation_shchierbin].icons = BUILDING_R_I(astronomical_data_muluna, planet_shchierbin)
        data_recipe[telescope_observation_shchierbin].energy_required = 4
    end

    if mods [shattered_mods] then
        local telescope_observation_shattered = "muluna-telescope-observation-skewer_shattered_planet"
        data_recipe[telescope_observation_shattered].icons = BUILDING_R_I(astronomical_data_muluna, planet_shattered)
        data_recipe[telescope_observation_shattered].energy_required = 4
    end

    if mods [paracelsin_mods] then
        local telescope_observation_paracelsin = "muluna-telescope-observation-paracelsin"
        data_recipe[telescope_observation_paracelsin].icons = BUILDING_R_I(astronomical_data_muluna, planet_paracelsin)
        data_recipe[telescope_observation_paracelsin].energy_required = 4
    end

    if mods [secretas_frozeta_mods] then
        local telescope_observation_frozeta = "muluna-telescope-observation-frozeta"
        data_recipe[telescope_observation_frozeta].icons = BUILDING_R_I(astronomical_data_muluna, planet_frozeta)
        data_recipe[telescope_observation_frozeta].energy_required = 4
    end

    if mods [vesta_mods] then
        local telescope_observation_vesta = "muluna-telescope-observation-vesta"
        data_recipe[telescope_observation_vesta].icons = BUILDING_R_I(astronomical_data_muluna, planet_vesta)
        data_recipe[telescope_observation_vesta].energy_required = 4
    end

    if mods [corrundum_mods] then
        local telescope_observation_corrundum = "muluna-telescope-observation-corrundum"
        data_recipe[telescope_observation_corrundum].icons = BUILDING_R_I(astronomical_data_muluna, planet_corrundum)
        data_recipe[telescope_observation_corrundum].energy_required = 4
    end]]

    local telescope_observation_space_platform = "muluna-telescope-observation-space-platform"
    data_recipe[telescope_observation_space_platform].subgroup = is_muluna_recipe_astronomical
    data_recipe[telescope_observation_space_platform].icons = BUILDING_R_I(astronomical_data_muluna, space_platform)
    data_recipe[telescope_observation_space_platform].order = a_z
    data_recipe[telescope_observation_space_platform].energy_required = 4
    data_recipe[telescope_observation_space_platform].ingredients = nil
    data_recipe[telescope_observation_space_platform].results[1].amount = 120

    -- TECHNOLOGY
    data_technology[thruster_oxidizer].icons = nil
    data_technology[thruster_oxidizer].icon = "__TIMSABA__/graphics/icons/muluna/thruster-oxidizer-technology.png"
    data_technology[thruster_oxidizer].icon_size = 256

    data_technology[thruster_fuel].icons = nil
    data_technology[thruster_fuel].icon = "__TIMSABA__/graphics/icons/muluna/thruster-fuel-technology.png"
    data_technology[thruster_fuel].icon_size = 256

    local tech_oxygen = "muluna-oxygen"
    data_technology[tech_oxygen].icons =
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
    data_technology[tech_oxygen].effects = {{type = unlock_recipe, recipe = muluna_oxygen_from_oxidizer}}

    data_technology["muluna-aluminum-processing"].icons =
    {
        {
            icon = "__reskins-angels__/graphics/icons/smelting/plates/angels-plate-aluminium.png",
            icon_size = data_item[aluminium_plate_bob].icon_size,
            shift = {16,-16},
            scale = 1
        },
        {
            icon = "__TIMSABA__/graphics/icons/muluna/aluminium-cable.png",
            icon_size = data_item[copper_cable].icon_size,
            shift = {-16,16},
            scale = 1
        }
    }

    data_technology["muluna-greenhouses"].effects = {{type = unlock_recipe, recipe = greenhouse_wood}}

    local tehc_wood_cultivation = "muluna-wood-cultivation"
    data_technology[tehc_wood_cultivation].icons =
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
    data_technology[tehc_wood_cultivation].effects =
    {
        {type = unlock_recipe, recipe = tree_growth_greenhouse},
        {type = unlock_recipe, recipe = tree_growth_greenhouse_water_saving},
        {type = unlock_recipe, recipe = tree_crushing}
    }

    local tech_anorthite_processing = "muluna-anorthite-processing"
    table.insert(data_technology[tech_anorthite_processing].effects, {type = unlock_recipe, recipe = anorthite_crushing_2})
    table.insert(data_technology[tech_anorthite_processing].effects, {type = unlock_recipe, recipe = anorthite_crushing_3})

    local tech_greenhouses = "muluna-greenhouses"
    table.insert(data_technology[tech_greenhouses].effects, {type = unlock_recipe, recipe = lumber_mill})

    local tech_silicon_processing = "muluna-silicon-processing"
    data_technology[tech_silicon_processing].prerequisites = {"muluna-aluminum-processing", tech_anorthite_processing}
    data_technology[tech_silicon_processing].effects =
    {
        {type = unlock_recipe, recipe = advanced_anorthite_crushing_1},
        {type = unlock_recipe, recipe = silicon_cell_mods},
        {type = unlock_recipe, recipe = silicon_solar_panel_small_1},
        {type = unlock_recipe, recipe = silicon_solar_panel_small_2},
        {type = unlock_recipe, recipe = silicon_solar_panel_small_3},
        {type = unlock_recipe, recipe = silicon_solar_panel_small_4},
        {type = unlock_recipe, recipe = silicon_solar_panel_1},
        {type = unlock_recipe, recipe = silicon_solar_panel_2},
        {type = unlock_recipe, recipe = silicon_solar_panel_3},
        {type = unlock_recipe, recipe = silicon_solar_panel_4},
        {type = unlock_recipe, recipe = silicon_solar_panel_large_1},
        {type = unlock_recipe, recipe = silicon_solar_panel_large_2},
        {type = unlock_recipe, recipe = silicon_solar_panel_large_3},
        {type = unlock_recipe, recipe = silicon_solar_panel_large_4}
    }

    data_technology[tech_silicon_processing].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1}
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

    local tech_wood_gas_processing = "wood-gas-processing"
    data_technology[tech_wood_gas_processing].icon = "__TIMSABA__/graphics/icons/muluna/wood-gas-processing.png"
    data_technology[tech_wood_gas_processing].icon_size = 256

    local tech_alice_propellant = "muluna-alice-propellant"
    data_technology[tech_alice_propellant].icons =
    {
        {
            icon = data_item[aluminium_plate_crushed].icon,
            icon_size = data_item[aluminium_plate_crushed].icon_size,
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
    data_technology[tech_alice_propellant].prerequisites = {tech_wood_gas_processing}

    local tech_advanced_wood_gas_processing = "advanced-wood-gas-processing"
    data_technology[tech_advanced_wood_gas_processing].icon = "__TIMSABA__/graphics/icons/muluna/advanced-wood-gas-processing.png"
    data_technology[tech_advanced_wood_gas_processing].icon_size = 256

    local tech_wood_gas_processing_to_crude_oil = "wood-gas-processing-to-crude-oil"
    data_technology[tech_wood_gas_processing_to_crude_oil].icon = "__TIMSABA__/graphics/icons/muluna/wood-gas-processing-to-crude-oil.png"
    data_technology[tech_wood_gas_processing_to_crude_oil].icon_size = 256

    local function greenhouse_technology_icon(item_sprite,item_sprite_size)
        if not item_sprite_size then item_sprite_size = 64 end
        return
        {
            {
                icon = "__muluna-graphics__/graphics/greenhouse/sprites/greenhouse-icon-big.png",
                icon_size = 640,
            },
            {
                icon = item_sprite,
                icon_size = item_sprite_size,
                shift = {45, 45},
                scale= 0.75,
            }
        }
    end
    local tech_fertilized_greenhouses_vulcanus = "muluna-fertilized-greenhouses-vulcanus"
    data_technology[tech_fertilized_greenhouses_vulcanus].icons = greenhouse_technology_icon(data_fluid[fluoroketone_cold].icon, 64)
    data_technology[tech_fertilized_greenhouses_vulcanus].effects =
    {
        {type = unlock_recipe, recipe = tree_growth_greenhouse_vulcanus},
        {type = unlock_recipe, recipe = tree_growth_greenhouse_water_saving_vulcanus}
    }

    table.insert(data_technology[crusher].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[crusher].unit.ingredients, {utility_science_pack, 1})

    table.insert(data_technology[crusher_2].prerequisites, tech_niobium_tungsten_molybdenum_processing)
    table.insert(data_technology[crusher_2].prerequisites, tech_niobium_iron_processing)

    data_technology[vacuum_heating_tower].icons = nil
    data_technology[vacuum_heating_tower].icon = "__TIMSABA__/graphics/icons/muluna/muluna-vacuum-heating-tower-technology.png"
    data_technology[vacuum_heating_tower].icon_size = 256

    table.insert(data_technology[cycling_steam_turbine].prerequisites, tech_niobium_titanium_processing)
    table.insert(data_technology[cycling_steam_turbine].prerequisites, tech_niobium_tungsten_molybdenum_processing)
    table.insert(data_technology[cycling_steam_turbine].prerequisites, tech_niobium_iron_processing)

    if mods [bobmodules] then
        table.insert(data_technology[crusher_2].prerequisites, speed_module_5)
        table.insert(data_technology[vacuum_heating_tower].prerequisites, efficiency_module_5)
        table.insert(data_technology[cryolab].prerequisites, productivity_module_5)
        table.insert(data_technology[cycling_steam_turbine].prerequisites, quality_module_5)
    end

    local tech_regolith_digging = "muluna-regolith-digging"
    data_technology[tech_regolith_digging].localised_description = {"technology-description.muluna-regolith-digging"}
    data_technology[tech_regolith_digging].research_trigger.entity = electric_mining_drill_5 .. "-ground-digger"

    table.insert(data_technology[satellite_radar].prerequisites, radar_5)

    local tech_advanced_stone_processing = "muluna-advanced-stone-processing"
    table.insert(data_technology[tech_advanced_stone_processing].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[tech_advanced_stone_processing].unit.ingredients, {utility_science_pack, 1})

    -- METALLIC
    table.insert(data_technology[metallic_asteroid_crushing_1].effects, {type = unlock_recipe, recipe = metallic_asteroid_crushing_2})
    table.insert(data_technology[metallic_asteroid_crushing_1].effects, {type = unlock_recipe, recipe = metallic_asteroid_crushing_3})
    table.insert(data_technology[metallic_asteroid_crushing_1].effects, {type = unlock_recipe, recipe = metallic_asteroid_crushing_4})
    table.insert(data_technology[metallic_asteroid_crushing_1].effects, {type = unlock_recipe, recipe = metallic_asteroid_crushing_5})
    table.insert(data_technology[metallic_asteroid_crushing_1].effects, {type = unlock_recipe, recipe = metallic_asteroid_crushing_6})

    -- OXIDE
    data_technology[oxide_asteroid_crushing_1].effects =
    {
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_1},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_2},
        {type = unlock_recipe, recipe = oxide_asteroid_crushing_3},
        {type = unlock_recipe, recipe = ice_melting},
        {type = unlock_recipe, recipe = nitrogen_oxide_separation},
        {type = unlock_recipe, recipe = chlorine_oxide_separation},
        {type = unlock_recipe, recipe = hydrogen_chloride_separation},
        {type = unlock_recipe, recipe = nitrogen_monoxide_space},
        {type = unlock_recipe, recipe = hydrazine_space},
        {type = unlock_recipe, recipe = dinitrogen_tetroxide_space}
    }

    data_technology[tech_asteroid_productivity].effects =
    {
        {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_1, change = 0.1},
        {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_2, change = 0.1},
        {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_3, change = 0.1},
        {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_4, change = 0.1},
        {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_5, change = 0.1},
        {type = change_recipe_productivity, recipe = metallic_asteroid_crushing_6, change = 0.1},
        {type = change_recipe_productivity, recipe = carbonic_asteroid_crushing_1, change = 0.1},
        --{type = change_recipe_productivity, recipe = carbonic_asteroid_crushing_2, change = 0.1},
        --{type = change_recipe_productivity, recipe = carbonic_asteroid_crushing_3, change = 0.1},
        --{type = change_recipe_productivity, recipe = carbonic_asteroid_crushing_4, change = 0.1},
        {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_1, change = 0.1},
        {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_2, change = 0.1},
        {type = change_recipe_productivity, recipe = oxide_asteroid_crushing_3, change = 0.1},
        {type = change_recipe_productivity, recipe = anorthite_crushing_1, change = 0.1},
        {type = change_recipe_productivity, recipe = anorthite_crushing_2, change = 0.1},
        {type = change_recipe_productivity, recipe = anorthite_crushing_3, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_1, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_2, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_3, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_metallic_asteroid_crushing_4, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_carbonic_asteroid_crushing_1, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_carbonic_asteroid_crushing_2, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_oxide_asteroid_crushing_1, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_oxide_asteroid_crushing_2, change = 0.1},
        {type = change_recipe_productivity, recipe = advanced_anorthite_crushing_1, change = 0.1}
    }
end