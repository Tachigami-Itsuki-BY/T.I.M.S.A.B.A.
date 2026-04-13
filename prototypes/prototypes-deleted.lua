-- LOGISTICS
local brass_chest = "bob-brass-chest"
data_item[brass_chest] = nil
data_recipe[brass_chest] = nil
data_container[brass_chest] = nil

data_technology["logistic-system-2"] = nil

local chests_2 =
{
    "bob-passive-provider-chest-2",
    "bob-active-provider-chest-2",
    "bob-storage-chest-2",
    "bob-buffer-chest-2",
    "bob-requester-chest-2"
}
for _, name in pairs(chests_2) do
    data_item[name] = nil
    data_recipe[name] = nil
    data_logistic_container[name] = nil
end

local titanium_chest = "bob-titanium-chest"
data_item[titanium_chest] = nil
data_recipe[titanium_chest] = nil
data_container[titanium_chest] = nil

data_technology["logistic-system-3"] = nil

local chests_3 =
{
    "bob-passive-provider-chest-3",
    "bob-active-provider-chest-3",
    "bob-storage-chest-3",
    "bob-buffer-chest-3",
    "bob-requester-chest-3"
}
for _, name in pairs(chests_3) do
    data_item[name] = nil
    data_recipe[name] = nil
    data_logistic_container[name] = nil
end

-- ADVANCED LOGISTICS
local robot_drone_frame = "bob-robot-drone-frame"
data_item[robot_drone_frame] = nil
data_recipe[robot_drone_frame] = nil

local robot_drone_frame_large = "bob-robot-drone-frame-large"
data_item[robot_drone_frame_large] = nil
data_recipe[robot_drone_frame_large] = nil

local robot_gun_drone = "bob-robot-gun-drone"
data_technology["bob-robot-gun-drones"] = nil
data_item[robot_gun_drone] = nil
data_recipe[robot_gun_drone] = nil
data_unit[robot_gun_drone] = nil

local robot_laser_drone = "bob-robot-laser-drone"
data_technology["bob-robot-laser-drones"] = nil
data_item[robot_laser_drone] = nil
data_recipe[robot_laser_drone] = nil
data_unit[robot_laser_drone] = nil

local robot_flamethrower_drone = "bob-robot-flamethrower-drone"
data_technology["bob-robot-flamethrower-drones"] = nil
data_item[robot_flamethrower_drone] = nil
data_recipe[robot_flamethrower_drone] = nil
data_unit[robot_flamethrower_drone] = nil

local robot_plasma_drone = "bob-robot-plasma-drone"
data_technology["bob-robot-plasma-drones"] = nil
data_item[robot_plasma_drone] = nil
data_recipe[robot_plasma_drone] = nil
data_unit[robot_plasma_drone] = nil

local logistic_zone_interface = "bob-logistic-zone-interface"
data_item[logistic_zone_interface] = nil
data_recipe[logistic_zone_interface] = nil
data_roboport[logistic_zone_interface] = nil

-- PRODUCTION
local fast_accumulator = "bob-fast-accumulator"
data_item[fast_accumulator] = nil
data_recipe[fast_accumulator] = nil
data_accumulator[fast_accumulator] = nil

local slow_accumulator = "bob-slow-accumulator"
data_item[slow_accumulator] = nil
data_recipe[slow_accumulator] = nil
data_accumulator[slow_accumulator] = nil

local fast_accumulator_2 = "bob-fast-accumulator-2"
data_item[fast_accumulator_2] = nil
data_recipe[fast_accumulator_2] = nil
data_accumulator[fast_accumulator_2] = nil

local slow_accumulator_2 = "bob-slow-accumulator-2"
data_item[slow_accumulator_2] = nil
data_recipe[slow_accumulator_2] = nil
data_accumulator[slow_accumulator_2] = nil

local fast_accumulator_3 = "bob-fast-accumulator-3"
data_item[fast_accumulator_3] = nil
data_recipe[fast_accumulator_3] = nil
data_accumulator[fast_accumulator_3] = nil

local slow_accumulator_3 = "bob-slow-accumulator-3"
data_item[slow_accumulator_3] = nil
data_recipe[slow_accumulator_3] = nil
data_accumulator[slow_accumulator_3] = nil

-- COMBAT
local uranium_bullet_projectile = "bob-uranium-bullet-projectile"
data_item[uranium_bullet_projectile] = nil
data_recipe[uranium_bullet_projectile] = nil

local uranium_bullet = "bob-uranium-bullet"
data_item[uranium_bullet] = nil
data_recipe[uranium_bullet] = nil

local scatter_cannon_shell = "bob-scatter-cannon-shell"
data_technology["bob-scatter-cannon-shells"] = nil
data_ammo[scatter_cannon_shell] = nil
data_recipe[scatter_cannon_shell] = nil

local reinforced_wall = "bob-reinforced-wall"
data_technology[reinforced_wall] = nil
data_item[reinforced_wall] = nil
data_recipe[reinforced_wall] = nil
data_wall[reinforced_wall] = nil

local reinforced_gate = "bob-reinforced-gate"
data_item[reinforced_gate] = nil
data_recipe[reinforced_gate] = nil
data_gate[reinforced_gate] = nil

local distractor_mine = "bob-distractor-mine"
data_technology[distractor_mine] = nil
data_item[distractor_mine] = nil
data_recipe[distractor_mine] = nil
data_land_mine[distractor_mine] = nil

local artifact_radar = "bob-artifact-radar"
data_technology[artifact_radar] = nil
data_item[artifact_radar] = nil
data_recipe[artifact_radar] = nil
data_radar[artifact_radar] = nil

-- ANGELS RESOURCE REFINING
data_technology["angels-thermal-water-processing"] = nil

-- ANGELS METALLURGY SMELTING and CASTING
data_recipe["angels-solid-iron-hydroxide-smelting"] = nil

data_recipe["angels-liquid-molten-iron-3"] = nil
data_recipe["angels-liquid-molten-iron-4"] = nil
data_recipe["angels-liquid-molten-iron-5"] = nil

data_technology["angels-iron-casting-4"] = nil

data_recipe["angels-liquid-molten-steel-3"] = nil
data_recipe["angels-liquid-molten-steel-4"] = nil
data_recipe["angels-liquid-molten-steel-5"] = nil

data_technology["angels-steel-smelting-4"] = nil

data_recipe["angels-liquid-molten-titanium-4"] = nil
data_recipe["angels-liquid-molten-titanium-5"] = nil

-- ANGELS WATER TREATMENT
data_recipe["angels-thermal-water-filtering-1"] = nil
data_recipe["angels-thermal-water-filtering-2"] = nil

-- SPACE AGE
local battery_mk3_SA = "battery-mk3-equipment"
data_item[battery_mk3_SA] = nil
data_recipe[battery_mk3_SA] = nil
data_battery_equipment[battery_mk3_SA] = nil
data_technology[battery_mk3_SA] = nil

-- MODS
if mods [corrundum_mods] then
    data_item[sulfur_ore_mods] = nil
end

if mods [secretas_frozeta_mods] then
    local hyper_inserter = "hyper-inserter"
    data_item[hyper_inserter] = nil
    data_recipe[hyper_inserter] = nil
    data_inserter[hyper_inserter] = nil
    data_technology[hyper_inserter] = nil

    local gold_heat_pipe = "gold-heat-pipe"
    data_item[gold_heat_pipe] = nil
    data_recipe[gold_heat_pipe] = nil
    data_heat_pipe[gold_heat_pipe] = nil
    data_technology[gold_heat_pipe] = nil
end

if mods [moshine_mods] then
    local long_stack_inserter = "long-stack-inserter"
    data_technology[long_stack_inserter] = nil
	data_item[long_stack_inserter] = nil
	data_recipe[long_stack_inserter] = nil
	data_inserter[long_stack_inserter] = nil
end

if mods [muluna_mods] then
    local space_chest_muluna = "space-chest-muluna"
	data_technology[space_chest_muluna] = nil
    data_item[space_chest_muluna] = nil
    data_recipe[space_chest_muluna] = nil
	data_container[space_chest_muluna] = nil
end

if mods [paracelsin_mods] then
    local advanced_repair_device = "advanced-repair-device"
	data_technology[advanced_repair_device] = nil
	data_repair_tool[advanced_repair_device] = nil
	data_recipe[advanced_repair_device] = nil
end

if mods [shattered_mods] then
    data_fluid[helium_mods] = nil

    data_technology["s1_shattered_modules"] = nil

    data_module["speed-module-3-shattered"] = nil
    data_recipe["ske_speed_module_3"] = nil

    data_module["efficiency-module-3-shattered"] = nil
    data_recipe["ske_efficiency_module_3"] = nil

    data_module["productivity-module-3-shattered"] = nil
    data_recipe["ske_production_module_3"] = nil

    data_recipe["nitrogen"] = nil
end

if mods [clowns_nuclear] then
    data_technology[atomic_rocket].effects =
    {
        {type = unlock_recipe, recipe = atomic_rocket},
        {type = unlock_recipe, recipe = "angels-atomic-bomb"},
        {type = unlock_recipe, recipe = "angels-atomic-bomb-2"}
    }

    local plutonium_atomic_rocket = "plutonium-atomic-bomb"
    data_ammo[plutonium_atomic_rocket] = nil
    data_recipe[plutonium_atomic_rocket] = nil

    local artillery_shell_nuclear = "artillery-shell-nuclear"
    data_ammo[artillery_shell_nuclear] = nil
    data_recipe[artillery_shell_nuclear] = nil

    local artillery_shell_thermonuclear = "artillery-shell-thermonuclear"
    data_ammo[artillery_shell_thermonuclear] = nil
    data_recipe[artillery_shell_thermonuclear] = nil
end

data_recipe[coke_pellet_angels].auto_recycle = false