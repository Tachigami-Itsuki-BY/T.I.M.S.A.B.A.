if mods[muria_mods] then
    -- RECIPE
    data_fluid[muriatic_solution].subgroup = is_muria_recipe
    data_fluid[muriatic_solution].order = a
    TIMSABA.barreling.add_dangerous_fluid(muriatic_solution)

    local muriatic_solution_separation = "muriatic-solution-separation"
    data_recipe[muriatic_solution_separation].subgroup = is_muria_recipe
    data_recipe[muriatic_solution_separation].icons = THREE_D_I(muriatic_solution, nil, nil, cotunnite, chlorine_angels, hydronium_solution)
    data_recipe[muriatic_solution_separation].order = a_a
    data_recipe[muriatic_solution_separation].ingredients[1].amount = 60
    data_recipe[muriatic_solution_separation].results =
    {
        {type = item, name = cotunnite, amount = 1},
        {type = fluid, name = chlorine_angels, amount = 60},
        {type = fluid, name = hydronium_solution, amount = 15}
    }

    data_fluid[hydronium_solution].localised_description = show_formula and {chemical_formula, "(H[font=default-tiny-bold]3[/font]O + OH)"} or nil
    data_fluid[hydronium_solution].subgroup = is_muria_recipe
    data_fluid[hydronium_solution].order = b
    TIMSABA.barreling.add_dangerous_fluid(hydronium_solution)

    local hydronium_destruction = "hydronium-destruction"
    data_recipe[hydronium_destruction].subgroup = is_muria_recipe
    data_recipe[hydronium_destruction].icons = THREE_R_I(hydronium_solution, hydrogen_angels, oxygen_angels)
    data_recipe[hydronium_destruction].order = b_a
    -- (H₃O + OH)(l/aq) --> 2H₂(g) + O₂(g)
    data_recipe[hydronium_destruction].ingredients[1].amount = 30
    data_recipe[hydronium_destruction].results =
    {
        {type = fluid, name = hydrogen_angels, amount = 60},
        {type = fluid, name = oxygen_angels, amount = 30}
    }

    local oxyhydrogen_combustion = "oxyhydrogen-combustion"
    data_recipe[oxyhydrogen_combustion].subgroup = is_muria_recipe
    data_recipe[oxyhydrogen_combustion].icons = THREE_D_I(carbon_angels, hydrogen_angels, oxygen_angels, steam, nil, carbon_monoxide_angels)
    data_recipe[oxyhydrogen_combustion].order = b_b
    -- C(s) + H₂(g) + O₂(g) --> H₂O(g) + CO(g)
    data_recipe[oxyhydrogen_combustion].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = fluid, name = hydrogen_angels, amount = 60},
        {type = fluid, name = oxygen_angels, amount = 60}
    }
    data_recipe[oxyhydrogen_combustion].results =
    {
        {type = fluid, name = steam, amount = 60, temperature = 915},
        {type = fluid, name = carbon_monoxide_angels, amount = 60}
    }

    local hydrogenated_oil_processing = "hydrogenated-oil-processing"
    data_recipe[hydrogenated_oil_processing].subgroup = is_muria_recipe
    data_recipe[hydrogenated_oil_processing].icons = THREE_D_I(crude_oil, nil, hydrogen_angels, methane_angels, fuel_oil_angels, naphtha_angels)
    data_recipe[hydrogenated_oil_processing].order = b_c
    data_recipe[hydrogenated_oil_processing].energy_required = 4 -- CnH₂n+₂(l) + 8H₂(g) --> 2CH₄(g) + C₂₀H₄₂(l) + C₈H₁₈(l) / n = 30
    data_recipe[hydrogenated_oil_processing].ingredients =
    {
        {type = fluid, name = crude_oil, amount = 60},
        {type = fluid, name = hydrogen_angels, amount = 480}
    }
    data_recipe[hydrogenated_oil_processing].results =
    {
        {type = fluid, name = methane_angels, amount = 120},
        {type = fluid, name = fuel_oil_angels, amount = 60},
        {type = fluid, name = naphtha_angels, amount = 60}
    }

    local kerolox_rocket_fuel = "kerolox-rocket-fuel"
    data_recipe[kerolox_rocket_fuel].subgroup = is_muria_recipe
    data_recipe[kerolox_rocket_fuel].icons = BUILDING_R_I(rocket_fuel, planet_muria)
    data_recipe[kerolox_rocket_fuel].order = b_d
    data_recipe[kerolox_rocket_fuel].energy_required = 8
    data_recipe[kerolox_rocket_fuel].ingredients =
    {
        {type = item, name = solid_fuel, amount = 2},
        {type = fluid, name = fuel_oil_angels, amount = 15},
        {type = fluid, name = oxygen_angels, amount = 120}
    }
    data_recipe[kerolox_rocket_fuel].surface_conditions = {{property = pressure, min = 2180, max = 2180}}

    local solid_fuel_hydrogen = "solid-fuel-from-hydrogen"
    data_recipe[solid_fuel_hydrogen].subgroup = is_muria_recipe
    data_recipe[solid_fuel_hydrogen].icons = THREE_I(sulfur, hydrogen_angels, solid_fuel)
    data_recipe[solid_fuel_hydrogen].order = b_e
    data_recipe[solid_fuel_hydrogen].ingredients =
    {
        {type = item, name = sulfur, amount = 2},
        {type = fluid, name = hydrogen_angels, amount = 480}
    }

    local polyvinyl_chloride = "polyvinyl-chloride"
    data_recipe[polyvinyl_chloride].subgroup = is_muria_recipe
    data_recipe[polyvinyl_chloride].icons = THREE_I(chlorine_angels, methane_angels, plastic)
    data_recipe[polyvinyl_chloride].order = b_f
    data_recipe[polyvinyl_chloride].ingredients =
    {
        {type = fluid, name = chlorine_angels, amount = 15},
        {type = fluid, name = methane_angels, amount = 30}
    }
    data_recipe[polyvinyl_chloride].surface_conditions = {{property = pressure, min = 2180, max = 2180}}

    local hydrogen_chloride_biter_egg = "chlorane-from-biter-egg"
    data_recipe[hydrogen_chloride_biter_egg].subgroup = is_muria_recipe
    data_recipe[hydrogen_chloride_biter_egg].icons = THREE_I(biter_egg, water_purified_angels, hydrogen_chloride_angels)
    data_recipe[hydrogen_chloride_biter_egg].order = b_g
    data_recipe[hydrogen_chloride_biter_egg].ingredients =
    {
        {type = item, name = biter_egg, amount = 2},
        {type = fluid, name = water_purified_angels, amount = 30}
    }
    data_recipe[hydrogen_chloride_biter_egg].results[1].amount = 120

    local hydrogen_chloride_spoilage = "chlorane-from-spoilage"
    data_recipe[hydrogen_chloride_spoilage].subgroup = is_muria_recipe
    data_recipe[hydrogen_chloride_spoilage].icons = THREE_I(spoilage, water_purified_angels, hydrogen_chloride_angels)
    data_recipe[hydrogen_chloride_spoilage].order = b_h
    data_recipe[hydrogen_chloride_spoilage].ingredients =
    {
        {type = item, name = spoilage, amount = 8},
        {type = fluid, name = water_purified_angels, amount = 30}
    }
    data_recipe[hydrogen_chloride_spoilage].results[1].amount = 60

    local hydrogen_chloride_explosives = "chlorane-explosives"
    data_recipe[hydrogen_chloride_explosives].subgroup = is_muria_recipe
    data_recipe[hydrogen_chloride_explosives].icons = THREE_D_I(carbon_angels, oxygen_angels, hydrogen_chloride_angels, explosives)
    data_recipe[hydrogen_chloride_explosives].order = b_i
    data_recipe[hydrogen_chloride_explosives].energy_required = 8
    data_recipe[hydrogen_chloride_explosives].ingredients =
    {
        {type = item, name = carbon_angels, amount = 4},
        {type = fluid, name = oxygen_angels, amount = 120},
        {type = fluid, name = hydrogen_chloride_angels, amount = 15}
    }

    -- EXCHATOTAXITE
    data_item[eschatotaxite_sprout].subgroup = is_eschatotaxite
    data_item[eschatotaxite_sprout].order = a
    data_item[eschatotaxite_sprout].stack_size = 200
    data_item[eschatotaxite_sprout].fuel_category = base_fuel
    data_item[eschatotaxite_sprout].fuel_value = 225 .. kJ
    TIMSABA.void.freezing_organics(eschatotaxite_sprout)

    local eschatotaxite_paste = "eschatotaxite-paste"
    data_capsule[eschatotaxite_paste].subgroup = is_eschatotaxite
    data_capsule[eschatotaxite_paste].order = b
    data_capsule[eschatotaxite_paste].fuel_category = base_fuel
    data_capsule[eschatotaxite_paste].fuel_value = 225 .. kJ
    TIMSABA.void.freezing_organics(eschatotaxite_paste)
    data_recipe[eschatotaxite_paste].subgroup = is_eschatotaxite
    data_recipe[eschatotaxite_paste].icons = THREE_I(eschatotaxite_sprout, water_purified_angels, eschatotaxite_paste)
    data_recipe[eschatotaxite_paste].order = b
    data_recipe[eschatotaxite_paste].energy_required = 4
    data_recipe[eschatotaxite_paste].ingredients =
    {
        {type = item, name = eschatotaxite_sprout, amount = 1},
        {type = fluid, name = water_purified_angels, amount = 15}
    }
    data_recipe[eschatotaxite_paste].results[1].amount = 8

    local nutrients_eschatotaxite_sprout = "nutrients-from-eschatotaxite-sprout"
    data_recipe[nutrients_eschatotaxite_sprout].subgroup = is_eschatotaxite
    data_recipe[nutrients_eschatotaxite_sprout].icons = TWO_I(eschatotaxite_sprout, nutrients)
    data_recipe[nutrients_eschatotaxite_sprout].order = b_a
    data_recipe[nutrients_eschatotaxite_sprout].ingredients[1].amount = 4
    data_recipe[nutrients_eschatotaxite_sprout].results[1].amount = 16

    local crude_oil_eschatotaxite_paste = "crude-oil-from-eschatotaxite-paste"
    data_recipe[crude_oil_eschatotaxite_paste].subgroup = is_eschatotaxite
    data_recipe[crude_oil_eschatotaxite_paste].icons = THREE_I(eschatotaxite_paste, chlorine_angels, crude_oil)
    data_recipe[crude_oil_eschatotaxite_paste].order = b_b
    data_recipe[crude_oil_eschatotaxite_paste].energy_required = 2
    data_recipe[crude_oil_eschatotaxite_paste].ingredients =
    {
        {type = item, name = eschatotaxite_paste, amount = 4},
        {type = fluid, name = chlorine_angels, amount = 30}
    }
    data_recipe[crude_oil_eschatotaxite_paste].results[1].amount = 60

    local eschatotaxite_low_density_structure = "eschatotaxite-low-density-structure"
    data_recipe[eschatotaxite_low_density_structure].subgroup = is_eschatotaxite
    data_recipe[eschatotaxite_low_density_structure].icons = BUILDING_R_I(low_density_structure, planet_muria)
    data_recipe[eschatotaxite_low_density_structure].order = b_c
    data_recipe[eschatotaxite_low_density_structure].energy_required = 16
    data_recipe[eschatotaxite_low_density_structure].ingredients =
    {
        {type = item, name = steel_plate, amount = 16},
        {type = item, name = eschatotaxite_paste, amount = 8},
        {type = fluid, name = chlorine_angels, amount = 30}
    }
    data_recipe[eschatotaxite_low_density_structure].surface_conditions = {{property = pressure, min = 2180, max = 2180}}

    local eschatotaxite_carbon_fiber = "eschatotaxite-carbon-fiber"
    data_recipe[eschatotaxite_carbon_fiber].subgroup = is_eschatotaxite
    data_recipe[eschatotaxite_carbon_fiber].icons = BUILDING_R_I(carbon_fiber, planet_muria)
    data_recipe[eschatotaxite_carbon_fiber].order = b_d
    data_recipe[eschatotaxite_carbon_fiber].energy_required = 8
    data_recipe[eschatotaxite_carbon_fiber].ingredients =
    {
        {type = item, name = carbon_angels, amount = 2},
        {type = item, name = eschatotaxite_paste, amount = 8},
        {type = fluid, name = hydrogen_angels, amount = 60}
    }
    data_recipe[eschatotaxite_carbon_fiber].surface_conditions = {{property = pressure, min = 2180, max = 2180}}

    -- ACIDOPHILE
    local chlorine_salt_deposit = "chlorine-salt-deposit"
    data_resource[chlorine_salt_deposit].subgroup = is_acidophile
    data_resource[chlorine_salt_deposit].order = a
    data_resource[chlorine_salt_deposit].minable.mining_time = 1

    data_item[chlorine_salts].subgroup = is_acidophile
    data_item[chlorine_salts].order = b
    data_item[chlorine_salts].stack_size = 200

    data_item[acidophile_lichen].subgroup = is_acidophile
    data_item[acidophile_lichen].order = c
    data_item[acidophile_lichen].stack_size = 200
    TIMSABA.void.freezing_organics(acidophile_lichen)

    local acidophile_lichen_cultivation = "acidophile-lichen-cultivation"
    data_recipe[acidophile_lichen_cultivation].subgroup = is_acidophile
    data_recipe[acidophile_lichen_cultivation].icons = STONKS_I(stonks_png, acidophile_lichen)
    data_recipe[acidophile_lichen_cultivation].order = c_a
    data_recipe[acidophile_lichen_cultivation].ingredients =
    {
        {type = item, name = acidophile_lichen, amount = 2},
        {type = item, name = nutrients, amount = 8},
        {type = fluid, name = chlorine_angels, amount = (15/2)}
    }

    local nutrients_acidophile_lichen = "nutrients-from-acidophile-lichen"
    data_recipe[nutrients_acidophile_lichen].subgroup = is_acidophile
    data_recipe[nutrients_acidophile_lichen].icons = TWO_I(acidophile_lichen, nutrients)
    data_recipe[nutrients_acidophile_lichen].order = c_b
    data_recipe[nutrients_acidophile_lichen].ingredients[1].amount = 4
    data_recipe[nutrients_acidophile_lichen].results[1].amount = 8

    local chloric_fuel = "chloric-fuel"
    data_item[chloric_fuel].subgroup = is_acidophile
    data_item[chloric_fuel].order = d
    data_item[chloric_fuel].stack_size = 200
    data_item[chloric_fuel].fuel_category = advanced_fuel
    data_item[chloric_fuel].fuel_value = 7200 .. kJ
    TIMSABA.void.freezing_organics(chloric_fuel)
    data_recipe[chloric_fuel].subgroup = is_acidophile
    data_recipe[chloric_fuel].order = d
    data_recipe[chloric_fuel].ingredients =
    {
        {type = item, name = acidophile_lichen, amount = 4},
        {type = fluid, name = oxygen_angels, amount = 60},
        {type = fluid, name = chlorine_angels, amount = 15}
    }
    data_recipe[chloric_fuel].results[1].amount = 4

    local artificial_lichen_colony = "artificial-lichen-colony"
    data_item[artificial_lichen_colony].subgroup = is_acidophile
    data_item[artificial_lichen_colony].order = e
    data_recipe[artificial_lichen_colony].subgroup = is_acidophile
    data_recipe[artificial_lichen_colony].order = e
    data_recipe[artificial_lichen_colony].ingredients =
    {
        {type = item, name = acidophile_lichen, amount = 4},
        {type = item, name = foundation, amount = 8},
        {type = fluid, name = hydrogen_chloride_angels, amount = 30}
    }
    data_tile[artificial_lichen_colony].subgroup = is_acidophile
    data_tile[artificial_lichen_colony].order = e

    -- LEAD
    data_item[cotunnite].subgroup = is_muria_lead
    data_item[cotunnite].order = a
    data_item[cotunnite].stack_size = 200

    local lead_plate_muria = "muria-lead-plate"
    data_recipe[lead_plate_muria].localised_name = data_item[lead_plate_bob].localised_name
    data_recipe[lead_plate_muria].category = sintering_6
    data_recipe[lead_plate_muria].subgroup = is_muria_lead
    data_recipe[lead_plate_muria].icons = TWO_I(lead_powder, lead_plate_bob)
    data_recipe[lead_plate_muria].order = c
    data_recipe[lead_plate_muria].energy_required = 1
    data_recipe[lead_plate_muria].ingredients = {{type = item, name = lead_powder, amount = 1}}
    data_recipe[lead_plate_muria].results = {{type = item, name = lead_plate_bob, amount = 1}}
    data_recipe[lead_plate_muria].main_product = lead_plate_bob
    data_recipe[lead_plate_muria].surface_conditions = {{property = pressure, min = 2180, max = 2180}}

    data_item[leaded_fuel].subgroup = is_muria_lead
    data_item[leaded_fuel].order = d
    data_item[leaded_fuel].stack_size = 50
    data_item[leaded_fuel].fuel_category = transport_fuel
    data_item[leaded_fuel].fuel_value = (115200 * 4) .. kJ
    data_recipe[leaded_fuel].subgroup = is_muria_lead
    data_recipe[leaded_fuel].order = d
    data_recipe[leaded_fuel].energy_required = 8
    data_recipe[leaded_fuel].ingredients =
    {
        {type = item, name = lead_plate_bob, amount = 4},
        {type = item, name = rocket_fuel, amount = 1},
        {type = fluid, name = naphtha_angels, amount = 30}
    }

    data_item[inert_muriatic_science_pack].subgroup = is_muria_lead
    data_item[inert_muriatic_science_pack].order = e
    data_recipe[inert_muriatic_science_pack].subgroup = is_muria_lead
    data_recipe[inert_muriatic_science_pack].order = e
    data_recipe[inert_muriatic_science_pack].energy_required = 8
    data_recipe[inert_muriatic_science_pack].ingredients =
    {
        {type = item, name = chloric_fuel, amount = 4},
        {type = item, name = eschatotaxite_paste, amount = 4},
        {type = item, name = lead_plate_bob, amount = 4},
        {type = fluid, name = water_purified_angels, amount = 15},
        {type = fluid, name = hydrogen_chloride_angels, amount = 15}
    }
    data_recipe[inert_muriatic_science_pack].results[1].amount = 8

    data_tool[muriatic_science_pack].subgroup = is_muria_lead
    data_tool[muriatic_science_pack].order = f
    data_tool[muriatic_science_pack].spoil_result = inert_muriatic_science_pack
    TIMSABA.void.freezing_organics(muriatic_science_pack)

    data_item[anti_corrosion_cladding].subgroup = is_muria_lead
    data_item[anti_corrosion_cladding].order = g
    data_item[anti_corrosion_cladding].stack_size = 256
    data_recipe[anti_corrosion_cladding].subgroup = is_muria_lead
    data_recipe[anti_corrosion_cladding].order = g
    data_recipe[anti_corrosion_cladding].energy_required = 8
    data_recipe[anti_corrosion_cladding].ingredients =
    {
        {type = item, name = lead_plate_bob, amount = 4},
        {type = item, name = eschatotaxite_paste, amount = 2},
        {type = fluid, name = hydrogen_angels, amount = 240}
    }

    -- BUILDING
    local fungicultural_tower = "fungicultural-tower"
    data_item[fungicultural_tower].subgroup = is_muria_building
    data_item[fungicultural_tower].order = a
    data_item[fungicultural_tower].stack_size = 32
    data_item[fungicultural_tower].weight = 31250
    data_recipe[fungicultural_tower].subgroup = is_muria_building
    data_recipe[fungicultural_tower].order = a
    data_recipe[fungicultural_tower].energy_required = 8
    data_recipe[fungicultural_tower].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 2},
        {type = item, name = landfill, amount = 2},
        {type = item, name = rhenium_plate, amount = 8},
        {type = item, name = spoilage, amount = 8}
    }
    data_agricultural_tower[fungicultural_tower].subgroup = is_muria_building
    data_agricultural_tower[fungicultural_tower].order = a
    data_agricultural_tower[fungicultural_tower].energy_usage = 480 .. kW

    local biovat = "biovat"
    data_item[biovat].subgroup = is_muria_building
    data_item[biovat].order = b
    data_item[biovat].stack_size = 32
    data_item[biovat].weight = 31250
    data_recipe[biovat].subgroup = is_muria_building
    data_recipe[biovat].order = b
    data_recipe[biovat].energy_required = 8
    data_recipe[biovat].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 4},
        {type = item, name = rhenium_plate, amount = 8},
        {type = item, name = nutrients, amount = 4},
        {type = item, name = eschatotaxite_sprout, amount = 4}
    }
    data_assembling[biovat].subgroup = is_muria_building
    data_assembling[biovat].order = b
    data_assembling[biovat].energy_usage = 900 .. kW

    local acidworking_plant = "acidworking-plant"
    data_item[acidworking_plant].subgroup = is_muria_building
    data_item[acidworking_plant].order = c
    data_item[acidworking_plant].stack_size = 32
    data_item[acidworking_plant].weight = 31250
    data_recipe[acidworking_plant].subgroup = is_muria_building
    data_recipe[acidworking_plant].order = c
    data_recipe[acidworking_plant].energy_required = 16
    data_recipe[acidworking_plant].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 16},
        {type = item, name = lead_plate_bob, amount = 8},
        {type = item, name = molybdenum_plate, amount = 16},
        {type = item, name = carbon_concrete_brick, amount = 16},
        {type = fluid, name = chlorine_angels, amount = 30}
    }
    data_assembling[acidworking_plant].subgroup = is_muria_building
    data_assembling[acidworking_plant].order = c
    data_assembling[acidworking_plant].energy_usage = 900 .. kW

    local smelting_plant = "smelting-plant"
    data_item[smelting_plant].subgroup = is_muria_building
    data_item[smelting_plant].order = d
    data_item[smelting_plant].stack_size = 32
    data_item[smelting_plant].weight = 31250
    data_recipe[smelting_plant].subgroup = is_muria_building
    data_recipe[smelting_plant].order = d
    data_recipe[smelting_plant].energy_required = 16
    data_recipe[smelting_plant].ingredients =
    {
        {type = item, name = advanced_processing_unit, amount = 16},
        {type = item, name = lead_plate_bob, amount = 8},
        {type = item, name = rhenium_plate, amount = 16},
        {type = item, name = carbon_concrete_brick, amount = 16},
        {type = fluid, name = oxygen_angels, amount = 240}
    }
    data_assembling[smelting_plant].subgroup = is_muria_building
    data_assembling[smelting_plant].order = d
    data_assembling[smelting_plant].crafting_speed = 2
    data_assembling[smelting_plant].energy_usage = 900 .. kW

    -- WAR
    local toxic_rounds_magazine = "toxic-rounds-magazine"
    data_ammo[toxic_rounds_magazine].subgroup = is_muria_war
    data_ammo[toxic_rounds_magazine].order = a
    data_ammo[toxic_rounds_magazine].magazine_size = 30
    data_recipe[toxic_rounds_magazine].subgroup = is_muria_war
    data_recipe[toxic_rounds_magazine].order = a
    data_recipe[toxic_rounds_magazine].energy_required = 8
    data_recipe[toxic_rounds_magazine].ingredients =
    {
        {type = item, name = lead_plate_bob, amount = 2},
        {type = item, name = piercing_rounds_magazine, amount = 1},
        {type = fluid, name = oxygen_angels, amount = 30}
    }

    local heavy_shotgun_shell = "heavy-shotgun-shell"
    data_ammo[heavy_shotgun_shell].subgroup = is_muria_war
    data_ammo[heavy_shotgun_shell].order = b
    data_ammo[heavy_shotgun_shell].magazine_size = 30
    data_recipe[heavy_shotgun_shell].subgroup = is_muria_war
    data_recipe[heavy_shotgun_shell].order = b
    data_recipe[heavy_shotgun_shell].ingredients =
    {
        {type = item, name = shotgun_pellets, amount = 4},
        {type = item, name = shotgun_shell, amount = 2},
        {type = item, name = rhenium_plate, amount = 2}
    }
    data_recipe[heavy_shotgun_shell].results[1].amount = 2

    local acidthrower = "acidthrower"
    data_gun[acidthrower].subgroup = is_muria_war
    data_gun[acidthrower].order = c
    data_gun[acidthrower].stack_size = 1
    data_gun[acidthrower].weight = 1000000
    data_recipe[acidthrower].subgroup = is_muria_war
    data_recipe[acidthrower].order = c
    data_recipe[acidthrower].energy_required = 16
    data_recipe[acidthrower].ingredients =
    {
        {type = item, name = molybdenum_gear_wheel, amount = 16},
        {type = item, name = lead_plate_bob, amount = 4},
        {type = item, name = anti_corrosion_cladding, amount = 4},
        {type = item, name = carbon_fiber, amount = 4},
        {type = item, name = biter_egg, amount = 1}
    }

    local acidthrower_ammo = "acidthrower-ammo"
    data_ammo[acidthrower_ammo].subgroup = is_muria_war
    data_ammo[acidthrower_ammo].order = d
    data_ammo[acidthrower_ammo].magazine_size = 120
    data_recipe[acidthrower_ammo].subgroup = is_muria_war
    data_recipe[acidthrower_ammo].order = d
    data_recipe[acidthrower_ammo].energy_required = 8
    data_recipe[acidthrower_ammo].ingredients =
    {
        {type = item, name = lead_plate_bob, amount = 4},
        {type = item, name = nutrients, amount = 2},
        {type = fluid, name = hydrogen_chloride_angels, amount = 60},
        {type = fluid, name = sulfuric_acid_angels, amount = 60}
    }

    local shotgun_turret = "shotgun-turret"
    data_item[shotgun_turret].subgroup = is_muria_war
    data_item[shotgun_turret].order = e
    data_item[shotgun_turret].stack_size = 32
    data_item[shotgun_turret].weight = 31250
    data_recipe[shotgun_turret].subgroup = is_muria_war
    data_recipe[shotgun_turret].order = e
    data_recipe[shotgun_turret].energy_required = 16
    data_recipe[shotgun_turret].ingredients =
    {
        {type = item, name = molybdenum_gear_wheel, amount = 16},
        {type = item, name = lead_plate_bob, amount = 16},
        {type = item, name = rhenium_plate, amount = 8},
        {type = item, name = anti_corrosion_cladding, amount = 4},
        {type = item, name = carbon_fiber, amount = 8}
    }
    data_ammo_turret[shotgun_turret].subgroup = is_muria_war
    data_ammo_turret[shotgun_turret].order = e
    data_ammo_turret[shotgun_turret].attack_parameters.min_range = 4
    data_ammo_turret[shotgun_turret].attack_parameters.range = 16

    bobmods.lib.recipe.update_recycling_recipe
    ({
        fungicultural_tower,
        biovat,
        acidworking_plant,
        smelting_plant,
        toxic_rounds_magazine,
        acidthrower,
        acidthrower_ammo,
        1
    })

    -- TECHNOLOGY
    local planet_discovery_muria = "planet-discovery-muria"
    data_technology[planet_discovery_muria].prerequisites = {tech_advanced_asteroid_processing, rocket_turret}
    table.insert(data_technology[planet_discovery_muria].effects, {type = unlock_recipe, recipe = muria_air})
    table.insert(data_technology[planet_discovery_muria].effects, {type = unlock_recipe, recipe = muria_air_separation})

    table.insert(data_technology["lichen-cultivation"].effects, {type = unlock_recipe, recipe = artificial_lichen_colony})

    data_technology["lead-processing"].effects =
    {
        {type = unlock_recipe, recipe = lead_powder_muria},
        {type = unlock_recipe, recipe = lead_plate_muria}
    }

    data_technology[muriatic_science_pack].research_trigger =
    {
        type = craft_item,
        item = leaded_fuel,
        count = 256
    }

    local battery = "battery"
    data_technology[battery .. _productivity].prerequisites = {muriatic_science_pack}
    data_technology[battery .. _productivity].effects =
    {
        {type = change_recipe_productivity, recipe = battery_lead_acid, change = 0.1},
        {type = change_recipe_productivity, recipe = battery_lithium_ion, change = 0.1},
        {type = change_recipe_productivity, recipe = battery_silver_zinc, change = 0.1},
        {type = change_recipe_productivity, recipe = battery_graphene, change = 0.1}
    }
    data_technology[battery .. _productivity].unit.ingredients =
    {
        {automation_science_pack, 1},
        {logistic_science_pack, 1},
        {chemical_science_pack, 1},
        {production_science_pack, 1},
        {utility_science_pack, 1},
        {space_science_pack, 1},
        {metallurgic_science_pack, 1},
        {agricultural_science_pack, 1}
    }

    local advanced_paste_applications = "advanced-paste-applications"
    table.insert(data_technology[advanced_paste_applications].unit.ingredients, {metallurgic_science_pack, 1})

    local offworld_chlorane_production = "offworld-chlorane-production"
    table.insert(data_technology[offworld_chlorane_production].unit.ingredients, {automation_science_pack, 1})
    table.insert(data_technology[offworld_chlorane_production].unit.ingredients, {logistic_science_pack, 1})
    table.insert(data_technology[offworld_chlorane_production].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[offworld_chlorane_production].unit.ingredients, {utility_science_pack, 1})
    table.insert(data_technology[offworld_chlorane_production].unit.ingredients, {metallurgic_science_pack, 1})
    table.insert(data_technology[offworld_chlorane_production].unit.ingredients, {agricultural_science_pack, 1})

    table.insert(data_technology[shotgun_turret].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[shotgun_turret].unit.ingredients, {metallurgic_science_pack, 1})

    local _damage = "-damage"
    table.insert(data_technology[shotgun_turret .. _damage].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[shotgun_turret .. _damage].unit.ingredients, {metallurgic_science_pack, 1})
    table.insert(data_technology[shotgun_turret .. _damage].unit.ingredients, {agricultural_science_pack, 1})

    local tech_weapon_shooting_speed_7 = "weapon-shooting-speed-7"
    table.insert(data_technology[tech_weapon_shooting_speed_7].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[tech_weapon_shooting_speed_7].unit.ingredients, {metallurgic_science_pack, 1})

    local tech_weapon_shooting_speed_8 = "weapon-shooting-speed-8"
    table.insert(data_technology[tech_weapon_shooting_speed_8].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[tech_weapon_shooting_speed_8].unit.ingredients, {metallurgic_science_pack, 1})

    local tech_acid_weaponization = "acid-weaponization"
    table.insert(data_technology[tech_acid_weaponization].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[tech_acid_weaponization].unit.ingredients, {metallurgic_science_pack, 1})

    local tech_refined_acid_weaponry = "refined-acid-weaponry"
    data_technology[tech_refined_acid_weaponry].effects = {{type = "ammo-damage", ammo_category = acidthrower, modifier = 0.2}}
    table.insert(data_technology[tech_refined_acid_weaponry].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[tech_refined_acid_weaponry].unit.ingredients, {metallurgic_science_pack, 1})

    local tech_hydrogen_chloride_explosives = "chlorane-explosives"
    table.insert(data_technology[tech_hydrogen_chloride_explosives].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[tech_hydrogen_chloride_explosives].unit.ingredients, {metallurgic_science_pack, 1})

    table.insert(data_technology[explosives .. _productivity].unit.ingredients, {metallurgic_science_pack, 1})
    table.insert(data_technology[explosives .. _productivity].unit.ingredients, {agricultural_science_pack, 1})

    table.insert(data_technology[toxic_rounds_magazine].unit.ingredients, {production_science_pack, 1})
    table.insert(data_technology[toxic_rounds_magazine].unit.ingredients, {metallurgic_science_pack, 1})
end