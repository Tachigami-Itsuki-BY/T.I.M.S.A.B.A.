local garden_cultivating = "angels-garden-cultivating"
data_recipe[garden_cultivating].icons = FOUR_R_I(bio_token, garden_temperate, garden_swamp, garden_desert)
data_recipe[garden_cultivating].order = a
data_recipe[garden_cultivating].energy_required = 32
data_recipe[garden_cultivating].ingredients[1].amount = 64
data_recipe[garden_cultivating].ingredients[2].amount = 16
data_recipe[garden_cultivating].ingredients[3].amount = 240
data_recipe[garden_cultivating].results =
{
    {type = item, name = garden_temperate, amount = 1},
    {type = item, name = garden_swamp, amount = 1},
    {type = item, name = garden_desert, amount = 1}
}

data_item[garden_temperate].order = b
data_recipe[garden_temperate].icons = FOUR_D_I(garden_temperate, bio_token, fertilizer_alienated, water_mineralized_angels, garden_temperate)
data_recipe[garden_temperate].energy_required = 64
data_recipe[garden_temperate].ingredients[2].amount = 4
data_recipe[garden_temperate].ingredients[3].amount = 16
data_recipe[garden_temperate].ingredients[4].amount = 240

data_item[garden_swamp].order = c
data_recipe[garden_swamp].icons = FOUR_D_I(garden_swamp, bio_token, fertilizer_alienated, water_mineralized_angels, garden_swamp)
data_recipe[garden_swamp].energy_required = 64
data_recipe[garden_swamp].ingredients[2].amount = 4
data_recipe[garden_swamp].ingredients[3].amount = 16
data_recipe[garden_swamp].ingredients[4].amount = 240

data_item[garden_desert].order = d
data_recipe[garden_desert].icons = FOUR_D_I(garden_desert, bio_token, fertilizer_alienated, water_mineralized_angels, garden_desert)
data_recipe[garden_desert].energy_required = 64
data_recipe[garden_desert].ingredients[2].amount = 4
data_recipe[garden_desert].ingredients[3].amount = 16
data_recipe[garden_desert].ingredients[4].amount = 240

local is_farming_gardens = "angels-farming-gardens"
data_tool[bio_token].subgroup = is_farming_gardens
data_tool[bio_token].order = e

local garden_temperate_cultivating_a = "angels-temperate-garden-cultivating-a"
data_recipe[garden_temperate_cultivating_a].icons = TWO_I(garden_temperate, bio_token)
data_recipe[garden_temperate_cultivating_a].order = e_a
data_recipe[garden_temperate_cultivating_a].energy_required = 256

local garden_swamp_cultivating_a = "angels-swamp-garden-cultivating-a"
data_recipe[garden_swamp_cultivating_a].icons = TWO_I(garden_swamp, bio_token)
data_recipe[garden_swamp_cultivating_a].order = e_b
data_recipe[garden_swamp_cultivating_a].energy_required = 256

local garden_desert_cultivating_a = "angels-desert-garden-cultivating-a"
data_recipe[garden_desert_cultivating_a].icons = TWO_I(garden_desert, bio_token)
data_recipe[garden_desert_cultivating_a].order = e_c
data_recipe[garden_desert_cultivating_a].energy_required = 256

local bio_tile = "angels-bio-tile"
data_item[bio_tile].subgroup = is_farming_gardens
data_item[bio_tile].order = z
data_recipe[bio_tile].subgroup = is_farming_gardens
data_recipe[bio_tile].order = z
data_recipe[bio_tile].ingredients[1].amount = 2
data_recipe[bio_tile].ingredients[2].amount = 2
data_recipe[bio_tile].ingredients[3].amount = 2
data_recipe[bio_tile].ingredients[4].amount = 2
data_recipe[bio_tile].results = {{type = item, name = bio_tile, amount = 8}}
data_tile[bio_tile].subgroup = is_farming_gardens
data_tile[bio_tile].order = z

-- TEMPERATE GARDEN
data_item_subgroup["angels-farming-temperate-seed"].order = b_a

local seed_wheaton = "angels-temperate-1-seed"
data_recipe[seed_wheaton].icons = TWO_I(wheaton, seed_wheaton)
data_recipe[seed_wheaton].ingredients[1].amount = 4
data_recipe[seed_wheaton].results[1].amount = 8

local seed_tianaton = "angels-temperate-2-seed"
data_recipe[seed_tianaton].icons = TWO_I(tianaton, seed_tianaton)
data_recipe[seed_tianaton].ingredients[1].amount = 4
data_recipe[seed_tianaton].results[1].amount = 8

local seed_okarinome = "angels-temperate-3-seed"
data_recipe[seed_okarinome].icons = TWO_I(okarinome, seed_okarinome)
data_recipe[seed_okarinome].ingredients[1].name = okarinome
data_recipe[seed_okarinome].ingredients[1].amount = 4
data_recipe[seed_okarinome].results = {{type = item, name = seed_okarinome, amount = 8}}

local seed_quillnoa = "angels-temperate-4-seed"
data_recipe[seed_quillnoa].icons = TWO_I(quillnoa, seed_quillnoa)
data_recipe[seed_quillnoa].ingredients[1].name = quillnoa
data_recipe[seed_quillnoa].ingredients[1].amount = 4
data_recipe[seed_quillnoa].results = {{type = item, name = seed_quillnoa, amount = 8}}

local seed_kendallion = "angels-temperate-5-seed"
data_recipe[seed_kendallion].icons = TWO_I(kendallion, seed_kendallion)
data_recipe[seed_kendallion].ingredients[1].name = kendallion
data_recipe[seed_kendallion].ingredients[1].amount = 4
data_recipe[seed_kendallion].results = {{type = item, name = seed_kendallion, amount = 8}}

local garden_temperate_a = "angels-temperate-garden-a"
data_recipe[garden_temperate_a].icons = CORNER_I(garden_temperate, seed_wheaton, seed_tianaton, seed_okarinome, seed_kendallion, nil, seed_quillnoa, bio_token)
data_recipe[garden_temperate_a].energy_required = 256
data_recipe[garden_temperate_a].results =
{
    {type = item, name = bio_token, amount = 16},
    {type = item, name = seed_wheaton, amount = 4, probability = 0.125},
    {type = item, name = seed_tianaton, amount = 4, probability = 0.125},
    {type = item, name = seed_okarinome, amount = 4, probability = 0.125},
    {type = item, name = seed_kendallion, amount = 4, probability = 0.0625},
    {type = item, name = seed_quillnoa, amount = 4, probability = 0.0625}
}

local garden_temperate_b = "angels-temperate-garden-b"
data_recipe[garden_temperate_b].icons = CORNER_I(garden_temperate, seed_wheaton, seed_tianaton, seed_okarinome, seed_kendallion, nil, seed_quillnoa)
data_recipe[garden_temperate_b].energy_required = 256
data_recipe[garden_temperate_b].results =
{
    {type = item, name = seed_wheaton, amount = 4, probability = 0.25},
    {type = item, name = seed_tianaton, amount = 4, probability = 0.25},
    {type = item, name = seed_okarinome, amount = 4, probability = 0.25},
    {type = item, name = seed_kendallion, amount = 4, probability = 0.125},
    {type = item, name = seed_quillnoa, amount = 4, probability = 0.125}
}

data_item_subgroup["angels-farming-temperate"].order = b_b

data_item[wheaton].spoil_ticks = 1 * hour
data_item[wheaton].spoil_result = spoilage
TIMSABA.void.void_organics(wheaton)
TIMSABA.void.freezing_organics(wheaton)
data_recipe[wheaton].icons = THREE_D_I(seed_wheaton, soil_angels, water, wheaton)
data_recipe[wheaton].energy_required = 32
data_recipe[wheaton].ingredients[1].amount = 4
data_recipe[wheaton].ingredients[2].amount = 4
data_recipe[wheaton].ingredients[3].amount = 60
data_recipe[wheaton].results = {{type = item, name = wheaton, amount = 64}}

data_item[tianaton].spoil_ticks = 1 * hour
data_item[tianaton].spoil_result = spoilage
TIMSABA.void.void_organics(tianaton)
TIMSABA.void.freezing_organics(tianaton)
data_recipe[tianaton].icons = THREE_D_I(seed_tianaton, soil_angels, water, tianaton)
data_recipe[tianaton].energy_required = 32
data_recipe[tianaton].ingredients[1].amount = 4
data_recipe[tianaton].ingredients[2].amount = 4
data_recipe[tianaton].ingredients[3].amount = 60
data_recipe[tianaton].results = {{type = item, name = tianaton, amount = 64}}

data_item[okarinome].spoil_ticks = 2 * hour
data_item[okarinome].spoil_result = spoilage
TIMSABA.void.void_organics(okarinome)
TIMSABA.void.freezing_organics(okarinome)
data_recipe[okarinome].icons = THREE_D_I(seed_okarinome, soil_angels, water, okarinome)
data_recipe[okarinome].energy_required = 32
data_recipe[okarinome].ingredients[1].amount = 4
data_recipe[okarinome].ingredients[2].amount = 4
data_recipe[okarinome].ingredients[3].amount = 60
data_recipe[okarinome].results = {{type = item, name = okarinome, amount = 32}}

data_item[quillnoa].spoil_ticks = 4 * hour
data_item[quillnoa].spoil_result = spoilage
TIMSABA.void.void_organics(quillnoa)
TIMSABA.void.freezing_organics(quillnoa)
data_recipe[quillnoa].icons = FOUR_D_I(seed_quillnoa, soil_angels, fertilizer_angels, water, quillnoa)
data_recipe[quillnoa].energy_required = 32
data_recipe[quillnoa].ingredients[1].amount = 4
data_recipe[quillnoa].ingredients[2].amount = 4
data_recipe[quillnoa].ingredients[3].amount = 1
data_recipe[quillnoa].ingredients[4].amount = 60
data_recipe[quillnoa].results = {{type = item, name = quillnoa, amount = 16}}

data_item[kendallion].spoil_ticks = 4 * hour
data_item[kendallion].spoil_result = spoilage
TIMSABA.void.void_organics(kendallion)
TIMSABA.void.freezing_organics(kendallion)
data_recipe[kendallion].icons = FOUR_D_I(seed_kendallion, soil_angels, fertilizer_angels, water, kendallion)
data_recipe[kendallion].energy_required = 32
data_recipe[kendallion].ingredients[1].amount = 4
data_recipe[kendallion].ingredients[2].amount = 4
data_recipe[kendallion].ingredients[3].amount = 1
data_recipe[kendallion].ingredients[4].amount = 60
data_recipe[kendallion].results = {{type = item, name = kendallion, amount = 16}}

local sorting_wheaton = "angels-sorting-temperate-1"
data_recipe[sorting_wheaton].subgroup = is_temperate_vegetables_processing
data_recipe[sorting_wheaton].icons = TWO_I(wheaton, corn)
data_recipe[sorting_wheaton].ingredients[1].amount = 16
data_recipe[sorting_wheaton].results[1].amount = 8
data_recipe[sorting_wheaton].reset_freshness_on_craft = true

local sorting_tianaton = "angels-sorting-temperate-2"
data_recipe[sorting_tianaton].subgroup = is_temperate_vegetables_processing
data_recipe[sorting_tianaton].icons = TWO_I(tianaton, cellulose_fiber_angels)
data_recipe[sorting_tianaton].ingredients[1].amount = 16
data_recipe[sorting_tianaton].results[1].amount = 16
data_recipe[sorting_tianaton].reset_freshness_on_craft = true

local sorting_okarinome = "angels-sorting-temperate-3"
data_recipe[sorting_okarinome].subgroup = is_temperate_vegetables_processing
data_recipe[sorting_okarinome].icons = TWO_D_I(okarinome, nil, leaves, cellulose_fiber_angels)
data_recipe[sorting_okarinome].ingredients[1].amount = 16
data_recipe[sorting_okarinome].results[2].amount = 8
data_recipe[sorting_okarinome].reset_freshness_on_craft = true

local sorting_quillnoa = "angels-sorting-temperate-4"
data_recipe[sorting_quillnoa].subgroup = is_temperate_vegetables_processing
data_recipe[sorting_quillnoa].icons = TWO_D_I(quillnoa, nil, pips, fruits)
data_recipe[sorting_quillnoa].ingredients[1].amount = 16
data_recipe[sorting_quillnoa].results[1].amount = 8
data_recipe[sorting_quillnoa].results[2].amount = 32
data_recipe[sorting_quillnoa].reset_freshness_on_craft = true

local sorting_kendallion = "angels-sorting-temperate-5"
data_recipe[sorting_kendallion].subgroup = is_temperate_vegetables_processing
data_recipe[sorting_kendallion].icons = THREE_D_I(kendallion, nil, nil, corn, cellulose_fiber_angels, crystal_dust)
data_recipe[sorting_kendallion].ingredients[1].amount = 16
data_recipe[sorting_kendallion].results[1].amount = 16
data_recipe[sorting_kendallion].reset_freshness_on_craft = true

-- SWAMP GARDEN
data_item_subgroup["angels-farming-swamp-seed"].order = c_a

local seed_elendilomone = "angels-swamp-1-seed"
data_recipe[seed_elendilomone].icons = TWO_I(elendilomone, seed_elendilomone)
data_recipe[seed_elendilomone].ingredients[1].amount = 4
data_recipe[seed_elendilomone].results[1].amount = 8

local seed_zombieecalyptus = "angels-swamp-2-seed"
data_recipe[seed_zombieecalyptus].icons = TWO_I(zombieecalyptus, seed_zombieecalyptus)
data_recipe[seed_zombieecalyptus].ingredients[1].amount = 4
data_recipe[seed_zombieecalyptus].results[1].amount = 8

local seed_saundsrcress = "angels-swamp-3-seed"
data_recipe[seed_saundsrcress].icons = TWO_I(saundsrcress, seed_saundsrcress)
data_recipe[seed_saundsrcress].ingredients[1].name = saundsrcress
data_recipe[seed_saundsrcress].ingredients[1].amount = 4
data_recipe[seed_saundsrcress].results = {{type = item, name = seed_saundsrcress, amount = 8}}

local seed_nexeflax = "angels-swamp-4-seed"
data_recipe[seed_nexeflax].icons = TWO_I(nexeflax, seed_nexeflax)
data_recipe[seed_nexeflax].ingredients[1].name = nexeflax
data_recipe[seed_nexeflax].ingredients[1].amount = 4
data_recipe[seed_nexeflax].results = {{type = item, name = seed_nexeflax, amount = 8}}

local seed_mushredtato = "angels-swamp-5-seed"
data_recipe[seed_mushredtato].icons = TWO_I(mushredtato, seed_mushredtato)
data_recipe[seed_mushredtato].ingredients[1].name = mushredtato
data_recipe[seed_mushredtato].ingredients[1].amount = 4
data_recipe[seed_mushredtato].results = {{type = item, name = seed_mushredtato, amount = 8}}

local garden_swamp_a = "angels-swamp-garden-a"
data_recipe[garden_swamp_a].icons = CORNER_I(garden_swamp, seed_elendilomone, seed_zombieecalyptus, seed_saundsrcress, seed_mushredtato, nil, seed_nexeflax, bio_token)
data_recipe[garden_swamp_a].energy_required = 256
data_recipe[garden_swamp_a].results =
{
    {type = item, name = bio_token, amount = 16},
    {type = item, name = seed_elendilomone, amount = 4, probability = 0.125},
    {type = item, name = seed_zombieecalyptus, amount = 4, probability = 0.125},
    {type = item, name = seed_saundsrcress, amount = 4, probability = 0.125},
    {type = item, name = seed_nexeflax, amount = 4, probability = 0.0625},
    {type = item, name = seed_mushredtato, amount = 4, probability = 0.0625}
}

local garden_swamp_b = "angels-swamp-garden-b"
data_recipe[garden_swamp_b].icons = CORNER_I(garden_swamp, seed_elendilomone, seed_zombieecalyptus, seed_saundsrcress, seed_mushredtato, nil, seed_nexeflax)
data_recipe[garden_swamp_b].energy_required = 256
data_recipe[garden_swamp_b].results =
{
    {type = item, name = seed_elendilomone, amount = 4, probability = 0.25},
    {type = item, name = seed_zombieecalyptus, amount = 4, probability = 0.25},
    {type = item, name = seed_saundsrcress, amount = 4, probability = 0.25},
    {type = item, name = seed_nexeflax, amount = 4, probability = 0.125},
    {type = item, name = seed_mushredtato, amount = 4, probability = 0.125}
}

data_item_subgroup["angels-farming-swamp"].order = c_b

data_item[elendilomone].spoil_ticks = 1 * hour
data_item[elendilomone].spoil_result = spoilage
TIMSABA.void.void_organics(elendilomone)
TIMSABA.void.freezing_organics(elendilomone)
data_recipe[elendilomone].icons = THREE_D_I(seed_elendilomone, mud_angels, water_viscous_mud, elendilomone)
data_recipe[elendilomone].energy_required = 32
data_recipe[elendilomone].ingredients[1].amount = 4
data_recipe[elendilomone].ingredients[2].amount = 4
data_recipe[elendilomone].ingredients[3].amount = 60
data_recipe[elendilomone].results = {{type = item, name = elendilomone, amount = 64}}

data_item[zombieecalyptus].spoil_ticks = 1 * hour
data_item[zombieecalyptus].spoil_result = spoilage
TIMSABA.void.void_organics(zombieecalyptus)
TIMSABA.void.freezing_organics(zombieecalyptus)
data_recipe[zombieecalyptus].icons = THREE_D_I(seed_zombieecalyptus, mud_angels, water_heavy_mud, zombieecalyptus)
data_recipe[zombieecalyptus].energy_required = 32
data_recipe[zombieecalyptus].ingredients[1].amount = 4
data_recipe[zombieecalyptus].ingredients[2].amount = 4
data_recipe[zombieecalyptus].ingredients[3].amount = 60
data_recipe[zombieecalyptus].results = {{type = item, name = zombieecalyptus, amount = 64}}

data_item[saundsrcress].spoil_ticks = 2 * hour
data_item[saundsrcress].spoil_result = spoilage
TIMSABA.void.void_organics(saundsrcress)
TIMSABA.void.freezing_organics(saundsrcress)
data_recipe[saundsrcress].icons = THREE_D_I(seed_saundsrcress, mud_angels, water_concentrated_mud, saundsrcress)
data_recipe[saundsrcress].energy_required = 32
data_recipe[saundsrcress].ingredients[1].amount = 4
data_recipe[saundsrcress].ingredients[2].amount = 4
data_recipe[saundsrcress].ingredients[3].amount = 60
data_recipe[saundsrcress].results = {{type = item, name = saundsrcress, amount = 32}}

data_item[nexeflax].spoil_ticks = 4 * hour
data_item[nexeflax].spoil_result = spoilage
TIMSABA.void.void_organics(nexeflax)
TIMSABA.void.freezing_organics(nexeflax)
data_recipe[nexeflax].icons = FOUR_D_I(seed_nexeflax, mud_angels, fertilizer_angels, water_light_mud, nexeflax)
data_recipe[nexeflax].energy_required = 32
data_recipe[nexeflax].ingredients[1].amount = 4
data_recipe[nexeflax].ingredients[2].amount = 4
data_recipe[nexeflax].ingredients[3].amount = 1
data_recipe[nexeflax].ingredients[4].amount = 60
data_recipe[nexeflax].results = {{type = item, name = nexeflax, amount = 16}}

data_item[mushredtato].spoil_ticks = 4 * hour
data_item[mushredtato].spoil_result = spoilage
TIMSABA.void.void_organics(mushredtato)
TIMSABA.void.freezing_organics(mushredtato)
data_recipe[mushredtato].icons = FOUR_D_I(seed_mushredtato, mud_angels, fertilizer_angels, water_thin_mud, mushredtato)
data_recipe[mushredtato].energy_required = 32
data_recipe[mushredtato].ingredients[1].amount = 4
data_recipe[mushredtato].ingredients[2].amount = 4
data_recipe[mushredtato].ingredients[3].amount = 1
data_recipe[mushredtato].ingredients[4].amount = 60
data_recipe[mushredtato].results = {{type = item, name = mushredtato, amount = 16}}

local sorting_elendilomone = "angels-sorting-swamp-1"
data_recipe[sorting_elendilomone].subgroup = is_swamp_vegetables_processing
data_recipe[sorting_elendilomone].icons = TWO_I(elendilomone, nuts)
data_recipe[sorting_elendilomone].ingredients[1].amount = 16
data_recipe[sorting_elendilomone].reset_freshness_on_craft = true

local sorting_zombieecalyptus = "angels-sorting-swamp-2"
data_recipe[sorting_zombieecalyptus].subgroup = is_swamp_vegetables_processing
data_recipe[sorting_zombieecalyptus].icons = TWO_I(zombieecalyptus, beans)
data_recipe[sorting_zombieecalyptus].ingredients[1].amount = 16
data_recipe[sorting_zombieecalyptus].results[1].amount = 16
data_recipe[sorting_zombieecalyptus].reset_freshness_on_craft = true

local sorting_saundsrcress = "angels-sorting-swamp-3"
data_recipe[sorting_saundsrcress].subgroup = is_swamp_vegetables_processing
data_recipe[sorting_saundsrcress].icons = TWO_D_I(saundsrcress, nil, leaves, nuts)
data_recipe[sorting_saundsrcress].ingredients[1].amount = 16
data_recipe[sorting_saundsrcress].results[1].amount = 32
data_recipe[sorting_saundsrcress].results[2].amount = 8
data_recipe[sorting_saundsrcress].reset_freshness_on_craft = true

local sorting_nexeflax = "angels-sorting-swamp-4"
data_recipe[sorting_nexeflax].subgroup = is_swamp_vegetables_processing
data_recipe[sorting_nexeflax].icons = TWO_D_I(nexeflax, nil, leaves, crystal_dust)
data_recipe[sorting_nexeflax].ingredients[1].amount = 16
data_recipe[sorting_nexeflax].results[1].amount = 16
data_recipe[sorting_nexeflax].results[2].amount = 8
data_recipe[sorting_nexeflax].reset_freshness_on_craft = true

local sorting_mushredtato = "angels-sorting-swamp-5"
data_recipe[sorting_mushredtato].subgroup = is_swamp_vegetables_processing
data_recipe[sorting_mushredtato].icons = THREE_D_I(mushredtato, nil, nil, fruits, pips, alien_bacteria)
data_recipe[sorting_mushredtato].ingredients[1].amount = 16
data_recipe[sorting_mushredtato].results[2].amount = 8
data_recipe[sorting_mushredtato].reset_freshness_on_craft = true

-- DESERT GARDEN
data_item_subgroup["angels-farming-desert-seed"].order = d_a

local seed_binafran = "angels-desert-1-seed"
data_recipe[seed_binafran].icons = TWO_I(binafran, seed_binafran)
data_recipe[seed_binafran].ingredients[1].amount = 4
data_recipe[seed_binafran].results[1].amount = 8

local seed_primedeadelion = "angels-desert-2-seed"
data_recipe[seed_primedeadelion].icons = TWO_I(primedeadelion, seed_primedeadelion)
data_recipe[seed_primedeadelion].ingredients[1].amount = 4
data_recipe[seed_primedeadelion].results[1].amount = 8

local seed_nilaubergine = "angels-desert-3-seed"
data_recipe[seed_nilaubergine].icons = TWO_I(nilaubergine, seed_nilaubergine)
data_recipe[seed_nilaubergine].ingredients[1].name = nilaubergine
data_recipe[seed_nilaubergine].ingredients[1].amount = 4
data_recipe[seed_nilaubergine].results = {{type = item, name = seed_nilaubergine, amount = 8}}

local seed_zelosquash = "angels-desert-4-seed"
data_recipe[seed_zelosquash].icons = TWO_I(zelosquash, seed_zelosquash)
data_recipe[seed_zelosquash].ingredients[1].name = zelosquash
data_recipe[seed_zelosquash].ingredients[1].amount = 4
data_recipe[seed_zelosquash].results = {{type = item, name = seed_zelosquash, amount = 8}}

local seed_arumbiphila = "angels-desert-5-seed"
data_recipe[seed_arumbiphila].icons = TWO_I(arumbiphila, seed_arumbiphila)
data_recipe[seed_arumbiphila].ingredients[1].name = arumbiphila
data_recipe[seed_arumbiphila].ingredients[1].amount = 4
data_recipe[seed_arumbiphila].results = {{type = item, name = seed_arumbiphila, amount = 8}}

local garden_desert_a = "angels-desert-garden-a"
data_recipe[garden_desert_a].icons = CORNER_I(garden_swamp, seed_binafran, seed_primedeadelion, seed_nilaubergine, seed_arumbiphila, nil, seed_zelosquash, bio_token)
data_recipe[garden_desert_a].energy_required = 256
data_recipe[garden_desert_a].results =
{
    {type = item, name = bio_token, amount = 16},
    {type = item, name = seed_binafran, amount = 4, probability = 0.125},
    {type = item, name = seed_primedeadelion, amount = 4, probability = 0.125},
    {type = item, name = seed_nilaubergine, amount = 4, probability = 0.125},
    {type = item, name = seed_zelosquash, amount = 4, probability = 0.0625},
    {type = item, name = seed_arumbiphila, amount = 4, probability = 0.0625}
}

local garden_desert_b = "angels-desert-garden-b"
data_recipe[garden_desert_b].icons = CORNER_I(garden_swamp, seed_binafran, seed_primedeadelion, seed_nilaubergine, seed_arumbiphila, nil, seed_zelosquash)
data_recipe[garden_desert_b].energy_required = 256
data_recipe[garden_desert_b].results =
{
    {type = item, name = seed_binafran, amount = 4, probability = 0.25},
    {type = item, name = seed_primedeadelion, amount = 4, probability = 0.25},
    {type = item, name = seed_nilaubergine, amount = 4, probability = 0.25},
    {type = item, name = seed_zelosquash, amount = 4, probability = 0.125},
    {type = item, name = seed_arumbiphila, amount = 4, probability = 0.125}
}

data_item_subgroup["angels-farming-desert"].order = d_b

data_item[binafran].spoil_ticks = 1 * hour
data_item[binafran].spoil_result = spoilage
TIMSABA.void.void_organics(binafran)
TIMSABA.void.freezing_organics(binafran)
data_recipe[binafran].icons = THREE_D_I(seed_binafran, sand_angels, water_saline_angels, binafran)
data_recipe[binafran].energy_required = 32
data_recipe[binafran].ingredients[1].amount = 4
data_recipe[binafran].ingredients[2].amount = 4
data_recipe[binafran].ingredients[3].amount = 60
data_recipe[binafran].results = {{type = item, name = binafran, amount = 64}}

data_item[primedeadelion].spoil_ticks = 1 * hour
data_item[primedeadelion].spoil_result = spoilage
TIMSABA.void.void_organics(primedeadelion)
TIMSABA.void.freezing_organics(primedeadelion)
data_recipe[primedeadelion].icons = THREE_D_I(seed_primedeadelion, sand_angels, water_saline_angels, primedeadelion)
data_recipe[primedeadelion].energy_required = 32
data_recipe[primedeadelion].ingredients[1].amount = 4
data_recipe[primedeadelion].ingredients[2].amount = 4
data_recipe[primedeadelion].ingredients[3].amount = 60
data_recipe[primedeadelion].results = {{type = item, name = primedeadelion, amount = 64}}

data_item[nilaubergine].spoil_ticks = 2 * hour
data_item[nilaubergine].spoil_result = spoilage
TIMSABA.void.void_organics(nilaubergine)
TIMSABA.void.freezing_organics(nilaubergine)
data_recipe[nilaubergine].icons = THREE_D_I(seed_nilaubergine, sand_angels, water_saline_angels, nilaubergine)
data_recipe[nilaubergine].energy_required = 32
data_recipe[nilaubergine].ingredients[1].amount = 4
data_recipe[nilaubergine].ingredients[2].amount = 4
data_recipe[nilaubergine].ingredients[3].amount = 60
data_recipe[nilaubergine].results = {{type = item, name = nilaubergine, amount = 32}}

data_item[zelosquash].spoil_ticks = 4 * hour
data_item[zelosquash].spoil_result = spoilage
TIMSABA.void.void_organics(zelosquash)
TIMSABA.void.freezing_organics(zelosquash)
data_recipe[zelosquash].icons = FOUR_D_I(seed_zelosquash, sand_angels, fertilizer_angels, water_saline_angels, zelosquash)
data_recipe[zelosquash].energy_required = 32
data_recipe[zelosquash].ingredients[1].amount = 4
data_recipe[zelosquash].ingredients[2].amount = 4
data_recipe[zelosquash].ingredients[3].amount = 1
data_recipe[zelosquash].ingredients[4].amount = 60
data_recipe[zelosquash].results = {{type = item, name = zelosquash, amount = 16}}

data_item[arumbiphila].spoil_ticks = 4 * hour
data_item[arumbiphila].spoil_result = spoilage
TIMSABA.void.void_organics(arumbiphila)
TIMSABA.void.freezing_organics(arumbiphila)
data_recipe[arumbiphila].icons = FOUR_D_I(seed_arumbiphila, sand_angels, fertilizer_angels, water_saline_angels, arumbiphila)
data_recipe[arumbiphila].energy_required = 32
data_recipe[arumbiphila].ingredients[1].amount = 4
data_recipe[arumbiphila].ingredients[2].amount = 4
data_recipe[arumbiphila].ingredients[3].amount = 1
data_recipe[arumbiphila].ingredients[4].amount = 60
data_recipe[arumbiphila].results = {{type = item, name = arumbiphila, amount = 16}}

local sorting_binafran = "angels-sorting-desert-1"
data_recipe[sorting_binafran].subgroup = is_desert_vegetables_processing
data_recipe[sorting_binafran].icons = TWO_I(binafran, beans)
data_recipe[sorting_binafran].ingredients[1].amount = 16
data_recipe[sorting_binafran].results[1].amount = 8
data_recipe[sorting_binafran].reset_freshness_on_craft = true

local sorting_primedeadelion = "angels-sorting-desert-2"
data_recipe[sorting_primedeadelion].subgroup = is_desert_vegetables_processing
data_recipe[sorting_primedeadelion].icons = TWO_I(primedeadelion, corn)
data_recipe[sorting_primedeadelion].ingredients[1].amount = 16
data_recipe[sorting_primedeadelion].results[1].amount = 8
data_recipe[sorting_primedeadelion].reset_freshness_on_craft = true

local sorting_nilaubergine = "angels-sorting-desert-3"
data_recipe[sorting_nilaubergine].subgroup = is_desert_vegetables_processing
data_recipe[sorting_nilaubergine].icons = TWO_D_I(nilaubergine, nil, pips, crystal_dust)
data_recipe[sorting_nilaubergine].ingredients[1].amount = 16
data_recipe[sorting_nilaubergine].results[1].amount = 16
data_recipe[sorting_nilaubergine].reset_freshness_on_craft = true

local sorting_zelosquash = "angels-sorting-desert-4"
data_recipe[sorting_zelosquash].subgroup = is_desert_vegetables_processing
data_recipe[sorting_zelosquash].icons = TWO_D_I(zelosquash, nil, cellulose_fiber_angels, fruits)
data_recipe[sorting_zelosquash].ingredients[1].amount = 16
data_recipe[sorting_zelosquash].results[1].amount = 8
data_recipe[sorting_zelosquash].results[2].amount = 16
data_recipe[sorting_zelosquash].reset_freshness_on_craft = true

local sorting_arumbiphila = "angels-sorting-desert-5"
data_recipe[sorting_arumbiphila].subgroup = is_desert_vegetables_processing
data_recipe[sorting_arumbiphila].icons = THREE_D_I(arumbiphila, nil, nil, corn, nuts, crystal_dust)
data_recipe[sorting_arumbiphila].ingredients[1].amount = 16
data_recipe[sorting_arumbiphila].results[2].amount = 8
data_recipe[sorting_arumbiphila].reset_freshness_on_craft = true

-- VEGETABLES RESULTS
data_item[beans].spoil_ticks = 15 * minute
data_item[beans].spoil_result = spoilage
data_item[beans].subgroup = is_vegetables_results
TIMSABA.void.void_organics(beans)
TIMSABA.void.freezing_organics(beans)

data_item[corn].spoil_ticks = 10 * minute
data_item[corn].spoil_result = spoilage
data_item[corn].subgroup = is_vegetables_results
TIMSABA.void.void_organics(corn)
TIMSABA.void.freezing_organics(corn)

data_item[leaves].spoil_ticks = 2 * minute
data_item[leaves].spoil_result = spoilage
data_item[leaves].subgroup = is_vegetables_results
TIMSABA.void.void_organics(leaves)
TIMSABA.void.freezing_organics(leaves)

data_item[nuts].spoil_ticks = 30 * minute
data_item[nuts].spoil_result = spoilage
data_item[nuts].subgroup = is_vegetables_results
TIMSABA.void.void_organics(nuts)
TIMSABA.void.freezing_organics(nuts)

data_item[pips].spoil_ticks = 20 * minute
data_item[pips].spoil_result = spoilage
data_item[pips].subgroup = is_vegetables_results
TIMSABA.void.void_organics(pips)
TIMSABA.void.freezing_organics(pips)

data_item[fruits].spoil_ticks = 5 * minute
data_item[fruits].spoil_result = spoilage
data_item[fruits].subgroup = is_vegetables_results
TIMSABA.void.void_organics(fruits)
TIMSABA.void.freezing_organics(fruits)

data_item_subgroup["angels-bio-processor-nutrient"].order = e_a

data_fluid[nutrient_pulp].order = a
TIMSABA.barreling.add_simple_fluid(nutrient_pulp)

local nutrients_from_beans = "angels-solid-beans-nutrients"
data_recipe[nutrients_from_beans].icons = TWO_I(beans, nutrient_pulp)
data_recipe[nutrients_from_beans].order = a_a
data_recipe[nutrients_from_beans].ingredients[1].amount = 4
data_recipe[nutrients_from_beans].results[1].amount = 60

local nutrients_from_corn = "angels-solid-corn-nutrients"
data_recipe[nutrients_from_corn].icons = TWO_I(corn, nutrient_pulp)
data_recipe[nutrients_from_corn].order = a_b
data_recipe[nutrients_from_corn].ingredients[1].amount = 4
data_recipe[nutrients_from_corn].results[1].amount = 60

local nutrients_from_leaves = "angels-solid-leafs-nutrients"
data_recipe[nutrients_from_leaves].icons = TWO_I(leaves, nutrient_pulp)
data_recipe[nutrients_from_leaves].order = a_c
data_recipe[nutrients_from_leaves].ingredients[1].amount = 4
data_recipe[nutrients_from_leaves].results[1].amount = 15

local nutrients_from_nuts = "angels-solid-nuts-nutrients"
data_recipe[nutrients_from_nuts].icons = TWO_I(nuts, nutrient_pulp)
data_recipe[nutrients_from_nuts].order = a_d
data_recipe[nutrients_from_nuts].ingredients[1].amount = 4
data_recipe[nutrients_from_nuts].results[1].amount = 30

local nutrients_from_pips = "angels-solid-pips-nutrients"
data_recipe[nutrients_from_pips].icons = TWO_I(pips, nutrient_pulp)
data_recipe[nutrients_from_pips].order = a_e
data_recipe[nutrients_from_pips].ingredients[1].amount = 4
data_recipe[nutrients_from_pips].results[1].amount = 30

local nutrients_from_fruits = "angels-solid-fruit-nutrients"
data_recipe[nutrients_from_fruits].icons = TWO_I(fruits, nutrient_pulp)
data_recipe[nutrients_from_fruits].order = a_f
data_recipe[nutrients_from_fruits].ingredients[1].amount = 4

local nutrients_refining_1 = "angels-nutrients-refining-1"
data_recipe[nutrients_refining_1].category = angels_advanced_chemistry
data_recipe[nutrients_refining_1].icons = FOUR_R_I(nutrient_pulp, fuel_oil_angels, acetone_angels, synthesis_angels)
data_recipe[nutrients_refining_1].order = a_g
data_recipe[nutrients_refining_1].ingredients[1].amount = 120
data_recipe[nutrients_refining_1].results[1].amount = 60
data_recipe[nutrients_refining_1].results[2].amount = 60
data_recipe[nutrients_refining_1].results[3].amount = 30

local nutrients_refining_2 = "angels-nutrients-refining-2"
data_recipe[nutrients_refining_2].category = chemistry
data_recipe[nutrients_refining_2].icons = FOUR_R_I(nutrient_pulp, fuel_oil_angels, nil, glycerol_angels)
data_recipe[nutrients_refining_2].order = a_h
data_recipe[nutrients_refining_2].ingredients[1].amount = 120
data_recipe[nutrients_refining_2].results[2].amount = 60

local nutrients_refining_3 = "angels-nutrients-refining-3"
data_recipe[nutrients_refining_3].category = angels_advanced_chemistry
data_recipe[nutrients_refining_3].icons = FOUR_R_I(nutrient_pulp, acetone_angels, ethanol_angels, butane_angels)
data_recipe[nutrients_refining_3].order = a_i
data_recipe[nutrients_refining_3].ingredients[1].amount = 120
data_recipe[nutrients_refining_3].results[3].amount = 30

data_item_subgroup["angels-bio-processor-press-vegetables"].order = e_b

data_fluid[raw_vegetable_oil].order = a
TIMSABA.barreling.add_simple_fluid(raw_vegetable_oil)

local raw_vegetable_oil_from_beans = "angels-liquid-raw-vegetable-oil-beans"
data_recipe[raw_vegetable_oil_from_beans].icons = TWO_I(beans, raw_vegetable_oil)
data_recipe[raw_vegetable_oil_from_beans].order = a_a
data_recipe[raw_vegetable_oil_from_beans].ingredients[1].amount = 8

local raw_vegetable_oil_from_nuts = "angels-liquid-raw-vegetable-oil-nuts"
data_recipe[raw_vegetable_oil_from_nuts].icons = TWO_I(nuts, raw_vegetable_oil)
data_recipe[raw_vegetable_oil_from_nuts].order = a_b
data_recipe[raw_vegetable_oil_from_nuts].ingredients[1].amount = 8
data_recipe[raw_vegetable_oil_from_nuts].results[1].amount = 60

local raw_vegetable_oil_from_pips = "angels-liquid-raw-vegetable-oil-pips"
data_recipe[raw_vegetable_oil_from_pips].icons = TWO_I(pips, raw_vegetable_oil)
data_recipe[raw_vegetable_oil_from_pips].order = a_c
data_recipe[raw_vegetable_oil_from_pips].ingredients[1].amount = 8
data_recipe[raw_vegetable_oil_from_pips].results[1].amount = 30

data_fluid[vegetable_oil].order = b
TIMSABA.barreling.add_simple_fluid(vegetable_oil)

local vegetable_oil_filtering_1 = "angels-liquid-raw-vegetable-oil-filtering-1"
data_recipe[vegetable_oil_filtering_1].icons = TWO_D_I(raw_vegetable_oil, water_purified_angels, vegetable_oil, nutrient_pulp, number_1)
data_recipe[vegetable_oil_filtering_1].order = b_a
data_recipe[vegetable_oil_filtering_1].ingredients[1].amount = 120
data_recipe[vegetable_oil_filtering_1].ingredients[2].amount = 120
data_recipe[vegetable_oil_filtering_1].results[1].amount = 120
data_recipe[vegetable_oil_filtering_1].results[2].amount = 60

local vegetable_oil_filtering_2 = "angels-liquid-raw-vegetable-oil-filtering-2"
data_recipe[vegetable_oil_filtering_2].icons = TWO_D_I(raw_vegetable_oil, water_purified_angels, vegetable_oil, nutrient_pulp, number_2)
data_recipe[vegetable_oil_filtering_2].order = b_b
data_recipe[vegetable_oil_filtering_2].ingredients[1].amount = 120
data_recipe[vegetable_oil_filtering_2].ingredients[2].amount = 120
data_recipe[vegetable_oil_filtering_2].results[1].amount = 240
data_recipe[vegetable_oil_filtering_2].results[2].amount = 30

local vegetable_oil_refining = "angels-liquid-vegetable-oil-refining"
data_recipe[vegetable_oil_refining].icons = THREE_R_I(vegetable_oil, fuel_oil_angels, mineral_oil_angels)
data_recipe[vegetable_oil_refining].order = b_c
data_recipe[vegetable_oil_refining].ingredients[1].amount = 120
data_recipe[vegetable_oil_refining].results[1].amount = 60
data_recipe[vegetable_oil_refining].results[2].amount = 60

local is_bio_processor_fermentation = "angels-bio-processor-fermentation"
data_item_subgroup[is_bio_processor_fermentation].order = e_c

data_fluid[fermentation_fluid].order = a

local fermentation_fluid_from_corn = "angels-fermentation-corn"
data_recipe[fermentation_fluid_from_corn].icons = THREE_I(corn, water, fermentation_fluid)
data_recipe[fermentation_fluid_from_corn].order = a_a
data_recipe[fermentation_fluid_from_corn].ingredients[1].amount = 8
data_recipe[fermentation_fluid_from_corn].ingredients[2].amount = 60
data_recipe[fermentation_fluid_from_corn].results[1].amount = 60

local fermentation_fluid_from_fruits = "angels-fermentation-fruit"
data_recipe[fermentation_fluid_from_fruits].icons = THREE_I(fruits, water, fermentation_fluid)
data_recipe[fermentation_fluid_from_fruits].order = a_b
data_recipe[fermentation_fluid_from_fruits].ingredients[1].amount = 8
data_recipe[fermentation_fluid_from_fruits].ingredients[2].amount = 60
data_recipe[fermentation_fluid_from_fruits].results[1].amount = 120

data_fluid[acetic_acid].order = b
data_recipe[acetic_acid].icons = TWO_D_I(fermentation_fluid, nil, acetic_acid, compost_angels)
data_recipe[acetic_acid].order = b
data_recipe[acetic_acid].ingredients[1].amount = 120
data_recipe[acetic_acid].results[1].amount = 60
TIMSABA.barreling.add_dangerous_fluid(acetic_acid)

local acetic_acid_from_catalyst = "angels-liquid-acetic-acid-catalyst"
data_recipe[acetic_acid_from_catalyst].subgroup = is_bio_processor_fermentation
data_recipe[acetic_acid_from_catalyst].icons = THREE_I(methanol_angels, carbon_monoxide_angels, acetic_acid)
data_recipe[acetic_acid_from_catalyst].order = b_a
-- CH₄O + CO -cat/H₂O-> C₂H₄O₂
data_recipe[acetic_acid_from_catalyst].ingredients[1].amount = 120
data_recipe[acetic_acid_from_catalyst].ingredients[2].amount = 120
data_recipe[acetic_acid_from_catalyst].ingredients[3].amount = 60
data_recipe[acetic_acid_from_catalyst].results =
{
    {type = fluid, name = acetic_acid, amount = 120},
    {type = fluid, name = water_purified_angels, amount = 15, ignored_by_productivity = 15},
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1}
}

data_fluid[acetic_anhydride].order = c
TIMSABA.barreling.add_dangerous_fluid(acetic_anhydride)
data_recipe[acetic_anhydride].icons = FOUR_I(acetic_acid, methanol_angels, carbon_monoxide_angels, acetic_anhydride)
data_recipe[acetic_anhydride].order = c
-- C₂H₄O₂ + CH₄O + CO -cat-> C₄H₆O₃ + H₂O
data_recipe[acetic_anhydride].ingredients =
{
    {type = fluid, name = acetic_acid, amount = 60},
    {type = fluid, name = methanol_angels, amount = 60},
    {type = fluid, name = carbon_monoxide_angels, amount = 60},
    {type = item, name = catalyst_green, amount = 1}
}
data_recipe[acetic_anhydride].results =
{
    {type = fluid, name = acetic_anhydride, amount = 60},
    {type = fluid, name = water_purified_angels, amount = 30, ignored_by_productivity = 30, ignored_by_stats = 30}, -- 60
    {type = item, name = catalyst_carrier, amount = 1, ignored_by_productivity = 1, ignored_by_stats = 1}
}
data_recipe[acetic_anhydride].main_product = acetic_anhydride

data_fluid[ethanol_angels].localised_name = {"fluid-name.ethanol-liquid"}
data_fluid[ethanol_angels].localised_description = show_formula and {chemical_formula, "C[font=default-tiny-bold]2[/font]H[font=default-tiny-bold]5[/font]OH"} or nil
data_fluid[ethanol_angels].order = d
TIMSABA.barreling.add_dangerous_fluid(ethanol_angels)
data_recipe[ethanol_angels].icons = TWO_D_I(fermentation_fluid, nil, ethanol_angels, compost_angels)
data_recipe[ethanol_angels].order = d
data_recipe[ethanol_angels].ingredients[1].amount = 120
data_recipe[ethanol_angels].results[1].amount = 60

local ethylene_from_ethanol = "angels-ethanol-to-ethylene-synthesis"
data_recipe[ethylene_from_ethanol].category = angels_advanced_chemistry
data_recipe[ethylene_from_ethanol].icons = THREE_R_I(ethanol_angels, ethylene_angels, steam)
data_recipe[ethylene_from_ethanol].order = e_a
-- C₂H₆O -H₂SO₄-> C₂H₄ + H₂O
data_recipe[ethylene_from_ethanol].ingredients[1].amount = 60
data_recipe[ethylene_from_ethanol].ingredients[2].amount = 60
data_recipe[ethylene_from_ethanol].results =
{
    {type = fluid, name = ethylene_angels, amount = 60},
    {type = fluid, name = steam, amount = 30, ignored_by_productivity = 30, ignored_by_stats = 30},
    {type = fluid, name = sulfuric_acid, amount = 30, ignored_by_productivity = 30, ignored_by_stats = 30},
}

data_item_subgroup["angels-bio-plastic"].order = e_d

data_fluid[propionic_acid].order = c
TIMSABA.barreling.add_dangerous_fluid(propionic_acid)
data_recipe[propionic_acid].icons = FOUR_I(ethylene_angels, carbon_monoxide_angels, water_purified_angels, propionic_acid)
data_recipe[propionic_acid].order = c
data_recipe[propionic_acid].ingredients[1].amount = 60
data_recipe[propionic_acid].ingredients[2].amount = 60
data_recipe[propionic_acid].ingredients[3].amount = 60
data_recipe[propionic_acid].results[1].amount = 60

local bio_liquid_plastic_1 = "angels-liquid-plastic-bio-1"
data_recipe[bio_liquid_plastic_1].icons = THREE_I(cellulose_diacetate, acetone_angels, liquid_plastic_angels)
data_recipe[bio_liquid_plastic_1].order = d_a
data_recipe[bio_liquid_plastic_1].ingredients[1].type = item
data_recipe[bio_liquid_plastic_1].ingredients[1].name = cellulose_diacetate
data_recipe[bio_liquid_plastic_1].ingredients[1].amount = 2
data_recipe[bio_liquid_plastic_1].ingredients[2].amount = 30

local bio_liquid_plastic_2 = "angels-liquid-plastic-bio-2"
data_recipe[bio_liquid_plastic_2].icons = AR_FOUR_ALT_I(cellulose_fiber_angels, acetic_acid, propionic_acid, liquid_plastic_angels)
data_recipe[bio_liquid_plastic_2].order = d_b
data_recipe[bio_liquid_plastic_2].ingredients[1].amount = 8
data_recipe[bio_liquid_plastic_2].ingredients[2].amount = 30
data_recipe[bio_liquid_plastic_2].ingredients[3].amount = 30
data_recipe[bio_liquid_plastic_2].results[1].amount = 30

-- BUILD PARTS
data_recipe[temperate_upgrade].ingredients =
{
    {type = item, name = bio_token, amount = 16},
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = soil_angels, amount = 4},
    {type = item, name = brass_plate_bob, amount = 4}
}

data_recipe[swamp_upgrade].ingredients =
{
    {type = item, name = bio_token, amount = 16},
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = mud_angels, amount = 4},
    {type = item, name = brass_plate_bob, amount = 4}
}

data_recipe[desert_upgrade].ingredients =
{
    {type = item, name = bio_token, amount = 16},
    {type = item, name = electronic_circuit, amount = 4},
    {type = item, name = sand_angels, amount = 4},
    {type = item, name = brass_plate_bob, amount = 4}
}

bobmods.lib.recipe.update_recycling_recipe({temperate_upgrade, swamp_upgrade, desert_upgrade})