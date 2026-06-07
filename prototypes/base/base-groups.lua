-- LOGISTICS
local logistics = "logistics"
is_medium_electric_pole = "is-medium-electric-pole"
is_big_electric_pole = "is-big-electric-pole"
is_substation = "is-substation"
is_pipe = "bob-pipe"
is_pipe_to_ground = "bob-pipe-to-ground"
data:extend
({
    {
        type = item_subgroup,
        name = is_medium_electric_pole,
        group = logistics,
        order = d_a
    },
    {
        type = item_subgroup,
        name = is_big_electric_pole,
        group = logistics,
        order = d_b
    },
    {
        type = item_subgroup,
        name = is_substation,
        group = logistics,
        order = d_c
    }
})

-- PRODUCTION
local production = "production"
data_item_subgroup["bob-energy-boiler"].order = b
data_item_subgroup["bob-energy-steam-engine"].order = b_a
data_item_subgroup["bob-energy-fluid-generator"].order = b_c
data_item_subgroup["bob-energy-solar-panel"].order = b_e
data_item_subgroup["bob-energy-accumulator"].order = b_g
is_energy_steam_turbine = "is-energy-steam-turbine"
is_solar_panel_small = "solar-panel-small"
is_solar_panel_large = "solar-panel-large"
is_extraction_machine_mining = "is-extraction-machine-mining"
is_extraction_machine_muluna = "is-extraction-machine-muluna"
is_extraction_machine_maraxsis = "is-extraction-machine-maraxsis"
is_extraction_machine_pumpjack = "is-extraction-machine-pumpjack"
is_lab = "is-lab"
data:extend
({
    {
        type = item_subgroup,
        name = is_energy_steam_turbine,
        group = production,
        order = b_b
    },
    {
        type = item_subgroup,
        name = is_solar_panel_small,
        group = production,
        order = b_d
    },
    {
        type = item_subgroup,
        name = is_solar_panel_large,
        group = production,
        order = b_f
    },
    {
        type = item_subgroup,
        name = is_extraction_machine_mining,
        group = production,
        order = c_a
    },
    {
        type = item_subgroup,
        name = is_extraction_machine_pumpjack,
        group = production,
        order = c_d
    },
    {
        type = item_subgroup,
        name = is_lab,
        group = production,
        order = e_b
    }
})

if mods [muluna_mods] then
    data:extend
    ({
        {
            type = item_subgroup,
            name = is_extraction_machine_muluna,
            group = production,
            order = c_b
        }
    })
end

if mods [maraxsis_mods] then
    data:extend
    ({
        {
            type = item_subgroup,
            name = is_extraction_machine_maraxsis,
            group = production,
            order = c_c
        }
    })
end

-- INTERMEDIATE PRODUCTS
local intermediate_products = "intermediate-products"
is_alien_science_pack = "is-alien-science-pack"
is_gears = "bob-gears"
is_bearing_ball = "bob-bearings"
is_bearing = "is-bearing"
data_item_subgroup["bob-electronic-components"].order = d
is_boards = "bob-boards"
data_item_subgroup[is_boards].order = d_a
is_circuit_boards = "is-circuit-boards"
data_item_subgroup["bob-electronic-boards"].order = d_c
is_nuclear_item = "is-nuclear-item"
is_nuclear_recipe = "is-nuclear-recipe"
is_uranium_235_item = "is-uranium-235-item"
is_uranium_235_recipe = "is-uranium-235_recipe"
is_nuclear_cell = "is-nuclear-cell"
data:extend
({
    {
        type = item_subgroup,
        name = is_alien_science_pack,
        group = intermediate_products,
        order = a_a
    },
    {
        type = item_subgroup,
        name = is_bearing,
        group = intermediate_products,
        order = b_c
    },
    {
        type = item_subgroup,
        name = is_circuit_boards,
        group = intermediate_products,
        order = d_b
    },
    {
        type = item_subgroup,
        name = is_nuclear_item,
        group = intermediate_products,
        order = e
    },
    {
        type = item_subgroup,
        name = is_nuclear_recipe,
        group = intermediate_products,
        order = e_a
    },
    {
        type = item_subgroup,
        name = is_uranium_235_item,
        group = intermediate_products,
        order = e_b
    },
    {
        type = item_subgroup,
        name = is_uranium_235_recipe,
        group = intermediate_products,
        order = e_c
    },
    {
        type = item_subgroup,
        name = is_nuclear_cell,
        group = intermediate_products,
        order = e_d
    }
})

-- COMBAT
ig_combat = "combat"
is_shotgun = "is-shotgun"
is_laser = "is-laser"
is_rocket = "is-rocket"
is_flame = "is-flame"
is_bullet_projectile = "is-bullet-projectile"
is_bullet = "is-bullet"
is_ammo_magazine = "is-ammo-magazine"
is_ammo_shotgun = "is-ammo-shothun"
is_ammo_rocket = "is-ammo-rocket"
is_rocket_warhead = "is-rocket-warhead"
is_combat_robots_entites = "is-combat-robots-entites"
is_combat_robots = "is-combat-robots"
is_combat_robot_brain = "is-combat-robot-brain"
is_combat_robot_tool = "is-combat-robot-tool"
is_equipment_2 = "is-equipment-2"
is_equipment_3 = "is-equipment-3"
is_equipment_4 = "is-equipment-4"
is_equipment_5 = "is-equipment-5"
is_utility_equipment_2 = "is-utility-equipment-2"
is_utility_equipment_3 = "is-utility-equipment-3"
is_utility_equipment_4 = "is-utility-equipment-4"
is_military_equipment_2 = "is-military-equipment-2"
is_vehicle_equipment_2 = "is-vehicle-equipment-2"
is_vehicle_equipment_3 = "is-vehicle-equipment-3"
is_vehicle_equipment_4 = "is-vehicle-equipment-4"
is_vehicle_equipment_5 = "is-vehicle-equipment-5"
is_vehicle_equipment_6 = "is-vehicle-equipment-6"
is_vehicle_equipment_7 = "is-vehicle-equipment-7"
is_vehicle_equipment_8 = "is-vehicle-equipment-8"
is_vehicle_equipment_9 = "is-vehicle-equipment-9"
is_vehicle_equipment_10 = "is-vehicle-equipment-10"
is_vehicle_equipment_11 = "is-vehicle-equipment-11"
is_vehicle_equipment_12 = "is-vehicle-equipment-12"
is_defensive_structure_2 = "is-defensive-structure-2"
is_turret_2 = "is-turret-2"
is_turret_3 = "is-turret-3"
is_turret_4 = "is-turret-4"
is_turret_5 = "is-turret-5"
data:extend
({
    {
        type = item_subgroup,
        name = is_shotgun,
        group = ig_combat,
        order = a_a
    },
    {
        type = item_subgroup,
        name = is_laser,
        group = ig_combat,
        order = a_b
    },
    {
        type = item_subgroup,
        name = is_rocket,
        group = ig_combat,
        order = a_c
    },
    {
        type = item_subgroup,
        name = is_flame,
        group = ig_combat,
        order = a_d
    },
    {
        type = item_subgroup,
        name = is_bullet_projectile,
        group = ig_combat,
        order = b_b
    },
    {
        type = item_subgroup,
        name = is_bullet,
        group = ig_combat,
        order = b_c
    },
    {
        type = item_subgroup,
        name = is_ammo_magazine,
        group = ig_combat,
        order = b_d
    },
    {
        type = item_subgroup,
        name = is_ammo_shotgun,
        group = ig_combat,
        order = b_e
    },
    {
        type = item_subgroup,
        name = is_rocket_warhead,
        group = ig_combat,
        order = b_f
    },
    {
        type = item_subgroup,
        name = is_ammo_rocket,
        group = ig_combat,
        order = b_g
    },
    {
        type = item_subgroup,
        name = is_combat_robots_entites,
        group = ig_combat,
        order = c_a
    },
    {
        type = item_subgroup,
        name = is_combat_robots,
        group = ig_combat,
        order = c_c
    },
    {
        type = item_subgroup,
        name = is_combat_robot_brain,
        group = ig_combat,
        order = c_d
    },
    {
        type = item_subgroup,
        name = is_combat_robot_tool,
        group = ig_combat,
        order = c_e
    },
    {
        type = item_subgroup,
        name = is_equipment_2,
        group = ig_combat,
        order = e_a
    },
    {
        type = item_subgroup,
        name = is_equipment_3,
        group = ig_combat,
        order = e_b
    },
    {
        type = item_subgroup,
        name = is_equipment_4,
        group = ig_combat,
        order = e_c
    },
    {
        type = item_subgroup,
        name = is_equipment_5,
        group = ig_combat,
        order = e_d
    },
    {
        type = item_subgroup,
        name = is_utility_equipment_2,
        group = ig_combat,
        order = f_a
    },
    {
        type = item_subgroup,
        name = is_utility_equipment_3,
        group = ig_combat,
        order = f_b
    },
    {
        type = item_subgroup,
        name = is_utility_equipment_4,
        group = ig_combat,
        order = f_c
    },
    {
        type = item_subgroup,
        name = is_military_equipment_2,
        group = ig_combat,
        order = g_a
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_2,
        group = ig_combat,
        order = g_c
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_3,
        group = ig_combat,
        order = g_d
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_4,
        group = ig_combat,
        order = g_e
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_5,
        group = ig_combat,
        order = g_f
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_6,
        group = ig_combat,
        order = g_g
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_7,
        group = ig_combat,
        order = g_h
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_8,
        group = ig_combat,
        order = g_i
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_9,
        group = ig_combat,
        order = g_j
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_10,
        group = ig_combat,
        order = g_k
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_11,
        group = ig_combat,
        order = g_l
    },
    {
        type = item_subgroup,
        name = is_vehicle_equipment_12,
        group = ig_combat,
        order = g_m
    },
    {
        type = item_subgroup,
        name = is_defensive_structure_2,
        group = ig_combat,
        order = h_a
    },
    {
        type = item_subgroup,
        name = is_turret_2,
        group = ig_combat,
        order = i_a
    },
    {
        type = item_subgroup,
        name = is_turret_3,
        group = ig_combat,
        order = i_b
    },
    {
        type = item_subgroup,
        name = is_turret_4,
        group = ig_combat,
        order = i_c
    },
    {
        type = item_subgroup,
        name = is_turret_5,
        group = ig_combat,
        order = i_d
    },
})