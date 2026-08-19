ig_advanced_logistics = "bob-logistics"
is_circuit_networks = "is-circuit-networks"
is_artillery_wagon = "is-artillery-wagon"
is_transport_tanks = "is-transport-tanks"
is_logistic_roboport_charge_large = "logistic-roboport-charge-large"
is_rp_antena = "is-rp-antena"
is_rp_door = "is-rp-door"
is_rp_chargepad = "is-rp-chargepad"
is_flying_robot_frames = "is-flying-robot-frames"
is_robot_brain = "is-robot-brain"
is_robot_tool_c = "is-robot-tool-c"
is_robot_tool_l = "is-robot-tool-l"
is_spidertron = "is-spidertron"
is_spidertron_material = "is-spidertron-nmaterial"
TIMSABA.functions.create_subgroups(ig_advanced_logistics,
{
    {name = is_circuit_networks,               order = a},
    {name = is_artillery_wagon,                order = e_b},
    {name = is_transport_tanks,                order = f_a},
    {name = is_logistic_roboport_charge_large, order = f_h},
    {name = is_rp_antena,                      order = g},
    {name = is_rp_door,                        order = g_a},
    {name = is_rp_chargepad,                   order = g_b},
    {name = is_flying_robot_frames,            order = g_c},
    {name = is_robot_brain,                    order = g_d},
    {name = is_robot_tool_c,                   order = g_e},
    {name = is_robot_tool_l,                   order = g_f},
    {name = is_spidertron,                     order = g_g},
    {name = is_spidertron_material,            order = g_h}
})

is_speed_module = speed_module_1
is_efficiency_module = efficiency_module_1
is_productivity_module = productivity_module_1
is_pollution_clean_module = "pollution-clean-module"
is_pollution_create_module = "pollution-create-module"
is_quality_module = quality_module_1
is_agricultural_module = agricultural_module_1