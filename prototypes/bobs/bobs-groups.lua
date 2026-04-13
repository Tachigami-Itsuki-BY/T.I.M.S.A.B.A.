local advanced_logistics = "bob-logistics"
is_circuit_networks = "is-circuit-networks"
is_artillery_wagon = "is-artillery-wagon"
data_item_subgroup["bob-logistic-robots"].order = f_b
data_item_subgroup["bob-construction-robots"].order = f_c
data_item_subgroup["bob-logistic-roboport"].order = f_d
data_item_subgroup["bob-logistic-roboport-zone"].order = f_e
data_item_subgroup["bob-logistic-roboport-chest"].order = f_f
data_item_subgroup["bob-logistic-roboport-charge"].order = f_g
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
data:extend
({
    {
        type = item_subgroup,
        name = is_circuit_networks,
        group = advanced_logistics,
        order = a
    },
    {
        type = item_subgroup,
        name = is_artillery_wagon,
        group = advanced_logistics,
        order = e_b
    },
    {
        type = item_subgroup,
        name = is_transport_tanks,
        group = advanced_logistics,
        order = f_a
    },
    {
        type = item_subgroup,
        name = is_logistic_roboport_charge_large,
        group = advanced_logistics,
        order = f_h
    },
    {
        type = item_subgroup,
        name = is_rp_antena,
        group = advanced_logistics,
        order = g
    },
    {
        type = item_subgroup,
        name = is_rp_door,
        group = advanced_logistics,
        order = g_a
    },
    {
        type = item_subgroup,
        name = is_rp_chargepad,
        group = advanced_logistics,
        order = g_b
    },
    {
        type = item_subgroup,
        name = is_flying_robot_frames,
        group = advanced_logistics,
        order = g_c
    },
    {
        type = item_subgroup,
        name = is_robot_brain,
        group = advanced_logistics,
        order = g_d
    },
    {
        type = item_subgroup,
        name = is_robot_tool_c,
        group = advanced_logistics,
        order = g_e
    },
    {
        type = item_subgroup,
        name = is_robot_tool_l,
        group = advanced_logistics,
        order = g_f
    },
    {
        type = item_subgroup,
        name = is_spidertron,
        group = advanced_logistics,
        order = g_g
    },
    {
        type = item_subgroup,
        name = is_spidertron_material,
        group = advanced_logistics,
        order = g_h
    },
})