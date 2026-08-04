-- [font=default-tiny-bold][/font]

if mods[castra_mods] then
    data_item[military_transport_belt_mods].subgroup = is_castra_logistics
    data_item[military_transport_belt_mods].stack_size = 200
    data_item[military_transport_belt_mods].weight = 5000
    data_recipe[military_transport_belt_mods].subgroup = is_castra_logistics
    data_recipe[military_transport_belt_mods].energy_required = 1
    data_transport_belt[military_transport_belt_mods].subgroup = is_castra_logistics

    data_item[military_underground_belt_mods].subgroup = is_castra_logistics
    data_item[military_underground_belt_mods].stack_size = 32
    data_item[military_underground_belt_mods].weight = 31250
    data_recipe[military_underground_belt_mods].subgroup = is_castra_logistics
    data_recipe[military_underground_belt_mods].energy_required = 1
    data_underground_belt[military_underground_belt_mods].subgroup = is_castra_logistics
    data_underground_belt[military_underground_belt_mods].max_distance = 16

    data_item[military_splitter_mods].subgroup = is_castra_logistics
    data_item[military_splitter_mods].stack_size = 16
    data_item[military_splitter_mods].weight = 62500
    data_recipe[military_splitter_mods].subgroup = is_castra_logistics
    data_recipe[military_splitter_mods].energy_required = 1
    data_splitter[military_splitter_mods].subgroup = is_castra_logistics

    local combat_roboport = "combat-roboport"
    data_item[combat_roboport].subgroup = is_castra_logistics
    data_item[combat_roboport].stack_size = 32
    data_item[combat_roboport].weight = 31250
    data_recipe[combat_roboport].subgroup = is_castra_logistics
    data_container[combat_roboport].subgroup = is_castra_logistics

    local defender_capsule_castra_data = "defender-capsule-castra-data"
    data_recipe[defender_capsule_castra_data].subgroup = is_castra_logistics
    data_recipe[defender_capsule_castra_data].icons = BUILDING_R_IS(defender_capsule, castra_data)

    local distractor_capsule_castra_data = "distractor-capsule-castra-data"
    data_recipe[distractor_capsule_castra_data].subgroup = is_castra_logistics
    data_recipe[distractor_capsule_castra_data].icons = BUILDING_R_IS(distractor_capsule, castra_data)

    local destroyer_capsule_castra_data = "destroyer-capsule-castra-data"
    data_recipe[destroyer_capsule_castra_data].subgroup = is_castra_logistics
    data_recipe[destroyer_capsule_castra_data].icons = BUILDING_R_IS(destroyer_capsule, castra_data)

    local jammer_radar = "jammer-radar"
    data_item[jammer_radar].subgroup = is_castra_building
    data_item[jammer_radar].stack_size = 32
    data_item[jammer_radar].weight = 31250
    data_recipe[jammer_radar].subgroup = is_castra_building
    data_radar[jammer_radar].subgroup = is_castra_building

    local forge = "forge"
    data_item[forge].subgroup = is_castra_building
    data_item[forge].stack_size = 32
    data_item[forge].weight = 31250
    data_recipe[forge].subgroup = is_castra_building
    data_assembling[forge].subgroup = is_castra_building
    data_assembling[forge].effect_receiver = {base_effect = {productivity = 1}}

    local jammed_data_collector = "jammed-data-collector"
    data_item[jammed_data_collector].subgroup = is_castra_building
    data_item[jammed_data_collector].stack_size = 32
    data_item[jammed_data_collector].weight = 31250
    data_recipe[jammed_data_collector].subgroup = is_castra_building
    data_assembling[jammed_data_collector].subgroup = is_castra_building

    local firearm_magazine_nickel = "firearm-magazine-nickel"
    data_recipe[firearm_magazine_nickel].subgroup = is_castra_war
    data_recipe[firearm_magazine_nickel].icons = TWO_I(nickel_plate_bob, firearm_magazine)
    data_recipe[firearm_magazine_nickel].order = a

    local piercing_rounds_catalyzing = "piercing-rounds-catalyzing"
    data_recipe[piercing_rounds_catalyzing].subgroup = is_castra_war
    data_recipe[piercing_rounds_catalyzing].icons = THREE_D_I(firearm_magazine, copper_plate, millerite_mods, piercing_rounds_magazine)
    data_recipe[piercing_rounds_catalyzing].order = a_a

    local tank_nickel = "tank-nickel"
    data_recipe[tank_nickel].subgroup = is_castra_war
    data_recipe[tank_nickel].icons = BUILDING_R_IS(tank_1, nickel_plate_bob)
    data_recipe[tank_nickel].order = a_b

    local explosives_gunpowder = "explosives-gunpowder"
    data_recipe[explosives_gunpowder].subgroup = is_castra_war
    data_recipe[explosives_gunpowder].icons = THREE_I(gunpowder_mods, water, explosives)
    data_recipe[explosives_gunpowder].order = a_c

    local grenade_gunpowder = "grenade-gunpowder"
    data_recipe[grenade_gunpowder].subgroup = is_castra_war
    data_recipe[grenade_gunpowder].icons = THREE_I(gunpowder_mods, iron_plate, grenade)
    data_recipe[grenade_gunpowder].order = a_d

    local slowdown_capsule_sulfur = "slowdown-capsule-sulfur"
    data_recipe[slowdown_capsule_sulfur].subgroup = is_castra_war
    data_recipe[slowdown_capsule_sulfur].icons = THREE_D_I(electronic_circuit, nickel_plate_bob, sulfur, slowdown_capsule)
    data_recipe[slowdown_capsule_sulfur].order = a_e

    local poison_capsule_sulfur = "poison-capsule-sulfur"
    data_recipe[poison_capsule_sulfur].subgroup = is_castra_war
    data_recipe[poison_capsule_sulfur].icons = THREE_D_I(electronic_circuit, nickel_plate_bob, sulfur, poison_capsule)
    data_recipe[poison_capsule_sulfur].order = a_f

    local carbon_fiber_wall = "carbon-fiber-wall"
    data_item[carbon_fiber_wall].subgroup = is_castra_war
    data_item[carbon_fiber_wall].order = b
    data_item[carbon_fiber_wall].stack_size = 200
    data_item[carbon_fiber_wall].weight = 5000
    data_recipe[carbon_fiber_wall].subgroup = is_castra_war
    data_recipe[carbon_fiber_wall].order = b
    data_wall[carbon_fiber_wall].subgroup = is_castra_war
    data_wall[carbon_fiber_wall].order = b

    local energy_shield_mk3_equipment = "energy-shield-mk3-equipment"
    data_item[energy_shield_mk3_equipment].subgroup = is_castra_war
    data_item[energy_shield_mk3_equipment].order = c
    data_item[energy_shield_mk3_equipment].stack_size = 8
    data_item[energy_shield_mk3_equipment].weight = 125000
    data_recipe[energy_shield_mk3_equipment].subgroup = is_castra_war
    data_recipe[energy_shield_mk3_equipment].order = c

    data_item[gunpowder_mods].localised_description = show_formula and {chemical_formula, "KNO[font=default-tiny-bold]3[/font]SC"} or nil
    data_item[gunpowder_mods].subgroup = is_castra_recipe
    data_item[gunpowder_mods].order = a
    data_resource[gunpowder_mods].subgroup = is_castra_recipe
    data_resource[gunpowder_mods].order = a

    local engine_unit_gunpowder = "engine-unit-gunpowder"
    data_recipe[engine_unit_gunpowder].subgroup = is_castra_recipe
    data_recipe[engine_unit_gunpowder].icons = THREE_D_I(gunpowder_mods, iron_gear_wheel, iron_pipe, engine_unit)
    data_recipe[engine_unit_gunpowder].order = a_a

    local gunpowder_carbon = "gunpowder-carbon"
    data_recipe[gunpowder_carbon].subgroup = is_castra_recipe
    data_recipe[gunpowder_carbon].icons = TWO_I(gunpowder_mods, carbon_angels)
    data_recipe[gunpowder_carbon].order = a_b

    data_item[millerite_mods].localised_description = show_formula and {chemical_formula, "NiS"} or nil
    data_item[millerite_mods].subgroup = is_castra_recipe
    data_item[millerite_mods].order = b
    data_resource[millerite_mods].subgroup = is_castra_recipe
    data_resource[millerite_mods].order = b

    local nickel_extraction = "nickel-extraction"
    data_recipe[nickel_extraction].subgroup = is_castra_recipe
    data_recipe[nickel_extraction].icons = THREE_D_I(millerite_mods, nil, nil, nickel_plate_bob, iron_ore, sulfur)
    data_recipe[nickel_extraction].order = b_a

    local battery_nickel = "battery-nickel"
    data_recipe[battery_nickel].subgroup = is_castra_recipe
    data_recipe[battery_nickel].icons = THREE_D_IS(copper_plate, nickel_plate_bob, sulfuric_acid_angels, battery_lead_acid)
    data_recipe[battery_nickel].order = b_b

    local nickel_sulfide_reduction = "nickel-sulfide-reduction"
    data_recipe[nickel_sulfide_reduction].subgroup = is_castra_recipe
    data_recipe[nickel_sulfide_reduction].icons = THREE_P_TWO_I(millerite_mods, copper_plate, sulfur, iron_plate, nickel_plate_bob)
    data_recipe[nickel_sulfide_reduction].order = b_c

    local advanced_nickel_processing = "advanced-nickel-processing"
    data_recipe[advanced_nickel_processing].subgroup = is_castra_recipe
    data_recipe[advanced_nickel_processing].icons = THREE_P_TWO_R_I(millerite_mods, carbon_angels, nickel_plate_bob, sulfur, iron_molten_angels)
    data_recipe[advanced_nickel_processing].order = b_d

    local holmium_catalyzing = "holmium-catalyzing"
    data_recipe[holmium_catalyzing].subgroup = is_castra_recipe
    data_recipe[holmium_catalyzing].icons = THREE_I(holmium_solution, millerite_mods, holmium_plate)
    data_recipe[holmium_catalyzing].order = b_e

    local reverse_cracking = "reverse-cracking"
    data_recipe[reverse_cracking].subgroup = is_castra_recipe
    data_recipe[reverse_cracking].icons = THREE_P_TWO_R_I(millerite_mods, sulfur, fuel_oil_angels, water, crude_oil, naphtha_angels)
    data_recipe[reverse_cracking].order = b_f

    data_item[castra_data].subgroup = is_castra_recipe
    data_item[castra_data].order = c

    local jammed_data_collector_process = "jammed-data-collector-process"
    data_recipe[jammed_data_collector_process].subgroup = is_castra_recipe
    data_recipe[jammed_data_collector_process].order = c_a

    local electronic_circuit_battlefield_data = "electronic-circuit-battlefield-data"
    data_recipe[electronic_circuit_battlefield_data].subgroup = is_castra_recipe
    data_recipe[electronic_circuit_battlefield_data].icons = TWO_D_I(copper_cable, castra_data, electronic_circuit)
    data_recipe[electronic_circuit_battlefield_data].order = c_b

    local advanced_circuit_battlefield_data = "advanced-circuit-battlefield-data"
    data_recipe[advanced_circuit_battlefield_data].subgroup = is_castra_recipe
    data_recipe[advanced_circuit_battlefield_data].icons = THREE_D_I(electronic_circuit, plastic, castra_data, advanced_circuit)
    data_recipe[advanced_circuit_battlefield_data].order = c_c

    local processing_unit_battlefield_data = "processing-unit-battlefield-data"
    data_recipe[processing_unit_battlefield_data].subgroup = is_castra_recipe
    data_recipe[processing_unit_battlefield_data].icons = THREE_D_I(advanced_circuit, sulfuric_acid_angels, castra_data, processing_unit)
    data_recipe[processing_unit_battlefield_data].order = c_d

    local battlefield_science_pack = "battlefield-science-pack"
    data_tool[battlefield_science_pack].subgroup = is_castra_recipe
    data_tool[battlefield_science_pack].order = c_e
    data_recipe[battlefield_science_pack].subgroup = is_castra_recipe
    data_recipe[battlefield_science_pack].order = c_e

    local hydrogen_sulfide_electrolysis = "hydrogen-sulfide-electrolysis"
    data_recipe[hydrogen_sulfide_electrolysis].subgroup = is_castra_recipe
    data_recipe[hydrogen_sulfide_electrolysis].icons = THREE_R_I(hydrogen_sulfide_angels, sulfur, water)
    data_recipe[hydrogen_sulfide_electrolysis].order = d_a

    local hydrogen_sulfide_carbon_extraction = "hydrogen-sulfide-carbon-extraction"
    data_recipe[hydrogen_sulfide_carbon_extraction].subgroup = is_castra_recipe
    data_recipe[hydrogen_sulfide_carbon_extraction].icons = THREE_P_TWO_R_I(sulfur, hydrogen_sulfide_angels, water, carbon_angels, sulfuric_acid_angels)
    data_recipe[hydrogen_sulfide_carbon_extraction].order = d_b

    local plastic_hydrogen_sulfide = "plastic-hydrogen-sulfide"
    data_recipe[plastic_hydrogen_sulfide].subgroup = is_castra_recipe
    data_recipe[plastic_hydrogen_sulfide].icons = THREE_D_I(carbon_angels, hydrogen_sulfide_angels, methane_angels, plastic)
    data_recipe[plastic_hydrogen_sulfide].order = d_c

    local rocket_fuel_sulfur = "rocket-fuel-sulfur"
    data_recipe[rocket_fuel_sulfur].subgroup = is_castra_recipe
    data_recipe[rocket_fuel_sulfur].icons = THREE_I(sulfur, fuel_oil_angels, rocket_fuel)
    data_recipe[rocket_fuel_sulfur].order = d_d

    local lithium_battery = "lithium-battery"
    data_item[lithium_battery].subgroup = is_castra_recipe
    data_item[lithium_battery].order = e
    data_item[lithium_battery].stack_size = 200
    data_item[lithium_battery].weight = 5000
    data_recipe[lithium_battery].subgroup = is_castra_recipe
    data_recipe[lithium_battery].icons = THREE_D_I(supercapacitor, lithium_plate_bob, nickel_plate_bob, lithium_battery)
    data_recipe[lithium_battery].order = e

    local jammer_interference = "jammer-interference"
    data_item[jammer_interference].subgroup = is_castra_recipe
    data_item[jammer_interference].order = f
    data_item[jammer_interference].stack_size = 200
    data_item[jammer_interference].weight = 5000

    data_technology[advanced_nickel_processing].icons =
    {
        {
            icon = data_item[nickel_plate_bob].icon,
            icon_size = data_item[nickel_plate_bob].icon_size,
            scale = 0.7,
            shift = {0,-10}
        },
        {
            icon = data_fluid[iron_molten_angels].icon,
            scale = 0.5,
            shift = {-10,10}
        },
        {
            icon = data_item[sulfur].icon,
            scale = 0.5,
            shift = {10,10}
        }
    }

    data_technology[reverse_cracking].icons =
    {
        {
            icon = data_fluid[naphtha_angels].icon,
            scale = 0.7,
            shift = {-10,10}
        },
        {
            icon = data_fluid[crude_oil].icon,
            scale = 0.7,
            shift = {10,-10}
        },
        {
            icon = data_item[millerite_mods].icon,
            scale = 0.5,
            shift = {-10,-10}
        },
        {
            icon = data_fluid[fuel_oil_angels].icon,
            scale = 0.5,
            shift = {0,-10}
        },
        {
            icon = data_fluid[water].icon,
            scale = 0.5,
            shift = {10,10}
        }
    }
end