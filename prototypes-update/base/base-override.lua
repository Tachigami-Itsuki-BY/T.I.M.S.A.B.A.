data_item[sulfur].icon = "__base__/graphics/icons/sulfur.png"
data_item[sulfur].icon_size = nil

-- BASE MODULES
data_item[beacon_1].stack_size = 32
data_item[beacon_1].weight = 31250
data_recipe[beacon_1].energy_required = 16
data_recipe[beacon_1].ingredients =
{
    {type = item, name = basic_circuit_board,       amount = 16},
    {type = item, name = electronic_circuit,        amount = 16},
    {type = item, name = steel_plate,               amount = 8},
    {type = item, name = copper_cable,              amount = 8},
    {type = item, name = crystal_splinter_harmonic, amount = 1}
}

-- speed
data_recipe[speed_module_1].energy_required = 8
data_recipe[speed_module_1].ingredients =
{
    {type = item, name = electronic_circuit,    amount = 4},
    {type = item, name = advanced_circuit,      amount = 4},
    {type = item, name = crystal_splinter_blue, amount = 1}
}

data_recipe[speed_module_2].energy_required = 8
data_recipe[speed_module_2].ingredients =
{
    {type = item, name = advanced_circuit,   amount = 4},
    {type = item, name = processing_unit,    amount = 4},
    {type = item, name = speed_module_1,     amount = 1},
    {type = item, name = crystal_shard_blue, amount = 1}
}

data_recipe[speed_module_3].energy_required = 16
data_recipe[speed_module_3].ingredients =
{
    {type = item, name = processing_unit,          amount = 4},
    {type = item, name = advanced_processing_unit, amount = 4},
    {type = item, name = speed_module_2,           amount = 1},
    {type = item, name = crystal_full_green,       amount = 1},
    {type = item, name = tungsten_carbide,         amount = 4}
}

-- efficiency
data_recipe[efficiency_module_1].energy_required = 8
data_recipe[efficiency_module_1].ingredients =
{
    {type = item, name = electronic_circuit,     amount = 4},
    {type = item, name = advanced_circuit,       amount = 4},
    {type = item, name = crystal_splinter_green, amount = 1}
}

data_recipe[efficiency_module_2].energy_required = 8
data_recipe[efficiency_module_2].ingredients =
{
    {type = item, name = advanced_circuit,    amount = 4},
    {type = item, name = processing_unit,     amount = 4},
    {type = item, name = efficiency_module_1, amount = 1},
    {type = item, name = crystal_shard_green, amount = 1}
}

data_recipe[efficiency_module_3].energy_required = 16
data_recipe[efficiency_module_3].ingredients =
{
    {type = item, name = processing_unit,          amount = 4},
    {type = item, name = advanced_processing_unit, amount = 4},
    {type = item, name = efficiency_module_2,      amount = 1},
    {type = item, name = crystal_full_green,       amount = 1},
    {type = item, name = spoilage,                 amount = 16}
}

-- productivity
data_recipe[productivity_module_1].energy_required = 8
data_recipe[productivity_module_1].ingredients =
{
    {type = item, name = electronic_circuit,   amount = 4},
    {type = item, name = advanced_circuit,     amount = 4},
    {type = item, name = crystal_splinter_red, amount = 1}
}

data_recipe[productivity_module_2].energy_required = 8
data_recipe[productivity_module_2].ingredients =
{
    {type = item, name = advanced_circuit,      amount = 4},
    {type = item, name = processing_unit,       amount = 4},
    {type = item, name = productivity_module_1, amount = 1},
    {type = item, name = crystal_shard_red,     amount = 1}
}

data_recipe[productivity_module_3].energy_required = 16
data_recipe[productivity_module_3].ingredients =
{
    {type = item, name = processing_unit,          amount = 4},
    {type = item, name = advanced_processing_unit, amount = 4},
    {type = item, name = productivity_module_2,    amount = 1},
    {type = item, name = crystal_full_red,         amount = 1},
    {type = item, name = biter_egg,                amount = 1}
}

-- quality
data_recipe[quality_module_1].energy_required = 8
data_recipe[quality_module_1].ingredients =
{
    {type = item, name = electronic_circuit,        amount = 4},
    {type = item, name = advanced_circuit,          amount = 4},
    {type = item, name = crystal_splinter_harmonic, amount = 1}
}

data_recipe[quality_module_2].energy_required = 8
data_recipe[quality_module_2].ingredients =
{
    {type = item, name = advanced_circuit,       amount = 4},
    {type = item, name = processing_unit,        amount = 4},
    {type = item, name = quality_module_1,       amount = 1},
    {type = item, name = crystal_shard_harmonic, amount = 1}
}

data_recipe[quality_module_3].energy_required = 16
data_recipe[quality_module_3].ingredients =
{
    {type = item, name = processing_unit,          amount = 4},
    {type = item, name = advanced_processing_unit, amount = 4},
    {type = item, name = quality_module_2,         amount = 1},
    {type = item, name = crystal_full_harmonic,    amount = 1},
    {type = item, name = superconductor,           amount = 4}
}

-- agricultural
data_recipe[agricultural_module_1].energy_required = 8
data_recipe[agricultural_module_1].ingredients =
{
    {type = item, name = electronic_circuit,        amount = 4},
    {type = item, name = advanced_circuit,          amount = 4},
    {type = item, name = bio_token,                 amount = 1},
    {type = item, name = crystal_splinter_harmonic, amount = 1}
}

data_recipe[agricultural_module_2].energy_required = 8
data_recipe[agricultural_module_2].ingredients =
{
    {type = item, name = advanced_circuit,          amount = 4},
    {type = item, name = processing_unit,           amount = 4},
    {type = item, name = bio_token,                 amount = 2},
    {type = item, name = agricultural_module_1,     amount = 1},
    {type = item, name = crystal_shard_harmonic,    amount = 1}
}

data_recipe[agricultural_module_3].energy_required = 16
data_recipe[agricultural_module_3].ingredients =
{
    {type = item, name = processing_unit,           amount = 4},
    {type = item, name = advanced_processing_unit,  amount = 4},
    {type = item, name = bio_token,                 amount = 4},
    {type = item, name = agricultural_module_2,     amount = 1},
    {type = item, name = crystal_full_harmonic,     amount = 1}
}

bobmods.lib.recipe.update_recycling_recipe
({
    beacon_1,
    speed_module_1,
    speed_module_2,
    speed_module_3,
    efficiency_module_1,
    efficiency_module_2,
    efficiency_module_3,
    productivity_module_1,
    productivity_module_2,
    productivity_module_3,
    quality_module_1,
    quality_module_2,
    quality_module_3,
    agricultural_module_1,
    agricultural_module_2,
    agricultural_module_3
})