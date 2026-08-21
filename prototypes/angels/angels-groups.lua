-- ANGELS RESOURCE REFINING
is_processing_crafting = "angels-processing-crafting"
is_ores = "angels-ores"
is_ore_processing_a = "angels-ore-processing-a"
is_ore_processing_b = "angels-ore-processing-b"
is_ore_processing_c = "angels-ore-processing-c"
is_ore_processing_d = "angels-ore-processing-d"
is_ore_sorting_T1 = "angels-ore-sorting-t1"
is_ore_sorting_T2 = "angels-ore-sorting-t2"
is_ore_sorting_T3 = "angels-ore-sorting-t3"
is_ore_sorting_T4 = "angels-ore-sorting-t4"
is_ore_sorting_advanced_1 = "angels-ore-sorting-advanced"
is_ore_sorting_advanced_2 = "is-ore-sorting-advanced-2"
is_ore_sorting_advanced_3 = "is-ore-sorting-advanced-3"
is_iron_fluid = "is-iron-fluid"
is_copper_fluid = "is-copper-fluid"
is_ore_crusher = "is-ore-crusher"
is_ore_crusher_angels = "angels-ore-crusher"
is_ore_floatation_angels = "angels-ore-floatation"
is_ore_leaching_angels = "angels-ore-leaching"
is_ore_refining = "angels-ore-refining"
is_ore_sorter = "angels-ore-sorter"
is_powderizer_angels = "angels-powderizer"
is_ore_whinning = "angels-ore-whinning"
is_filtration_unit = "is-filtration-unit"
is_crystallizer = "is-crystallizer"
TIMSABA.functions.create_subgroups("angels-resource-refining",
{
    {name = is_ore_sorting_advanced_2, order = c_f},
    {name = is_ore_sorting_advanced_3, order = c_g},
    {name = is_iron_fluid,             order = h_a},
    {name = is_copper_fluid,           order = h_b},
    {name = is_ore_crusher,            order = z},
    {name = is_filtration_unit,        order = z_i},
    {name = is_crystallizer,           order = z_j}
})

-- ANGELS METTALURGY SMELTING
ig_smelting = "angels-smelting"
is_iron_chemistry = "is-iron-chemistry"
is_steel = "is-steel"
is_copper_chemistry = "is-copper-chemistry"
is_lead = "angels-lead"
is_lead_chemistry = "is-lead-chemistry"
is_tin_chemistry = "is-tin-chemistry"
is_manganese_chemistry = "is-manganese-chemistry"
is_silicon_chemistry = "is-silicon-chemistry"
is_nickel_chemistry = "is-nickel-chemistry"
is_aluminium_chemistry = "is-aluminium-chemistry"
is_aluminium_chemistry_ether = "is-aluminium-chemistry-ether"
is_zinc_chemistry = "is-zinc-chemistry"
is_silver_chemistry = "is-silver-chemistry"
is_titanium_chemistry = "is-titanium-chemistry"
is_gold_chemistry = "is-gold-chemistry"
is_cobalt_chemistry = "is-cobalt-chemistry"
is_chromium_chemistry = "is-chromium-chemistry"
is_tungsten = "angels-tungsten"
is_tungsten_chemistry = "is-tungsten-chemistry"
is_platinum = "angels-platinum"
is_platinum_chemistry = "is-platinum-chemistry"
is_alloys = "angels-alloys"
is_stone = "angels-stone"
is_electric_blast_furnace = "is-electric-blast-furnace"
TIMSABA.functions.create_subgroups(ig_smelting,
{
    {name = is_iron_chemistry,            order = a_a},
    {name = is_steel,                     order = a_b},
    {name = is_copper_chemistry,          order = b_a},
    {name = is_lead_chemistry,            order = c_a},
    {name = is_tin_chemistry,             order = d_a},
    {name = is_manganese_chemistry,       order = e_a},
    {name = is_silicon_chemistry,         order = g_a},
    {name = is_nickel_chemistry,          order = h_a},
    {name = is_aluminium_chemistry,       order = i_a},
    {name = is_aluminium_chemistry_ether, order = i_b},
    {name = is_zinc_chemistry,            order = j_a},
    {name = is_silver_chemistry,          order = k_a},
    {name = is_titanium_chemistry,        order = l_a},
    {name = is_gold_chemistry,            order = m_a},
    {name = is_cobalt_chemistry,          order = n_a},
    {name = is_chromium_chemistry,        order = o_a},
    {name = is_tungsten_chemistry,        order = p_a},
    {name = is_platinum_chemistry,        order = q_a},
    {name = is_electric_blast_furnace,    order = z_f}
})

-- ANGELS METTALURGY CASTING
ig_casting = "angels-casting"
is_titanium_casting = "angels-titanium-casting"
is_tungsten_casting = "angels-tungsten-casting"
is_stone_casting = "angels-stone-casting"
is_bricks_casting = "is-bricks-casting"
is_alloys_casting_2 = "is-alloys-casting-2"
is_alloys_casting_3 = "is-alloys-casting-3"
is_alloys_casting_4 = "is-alloys-casting-4"
is_alloys_casting_5 = "is-alloys-casting-5"
is_alloys_casting_6 = "is-alloys-casting-6"
is_sintering_oven = "angels-sintering-oven"
TIMSABA.functions.create_subgroups(ig_casting,
{
    {name = is_bricks_casting,   order = w_a},
    {name = is_alloys_casting_2, order = y_a},
    {name = is_alloys_casting_3, order = y_b},
    {name = is_alloys_casting_4, order = y_c},
    {name = is_alloys_casting_5, order = y_d},
    {name = is_alloys_casting_6, order = y_e}
})

-- ANGELS WATER TREATMENT
is_water_cleaning_fluid = "angels-water-cleaning-fluid"
is_water_cleaning = "angels-water-cleaning"
is_water_treatment_building = "angels-water-treatment-building"
is_washing_building = "angels-washing-building"
is_hydro_building = "is-hydro-building"
is_salination_building = "is-salination-building"
is_boiler_building = "angels-boiler-building"
is_others_WT_building = "is-others-wt-building"
TIMSABA.functions.create_subgroups("angels-water-treatment",
{
    {name = is_hydro_building,      order = z_a},
    {name = is_salination_building, order = z_c},
    {name = is_others_WT_building,  order = z_z}
})

-- ANGELS PETROCHEM REFINING
ig_petrochem_refining = "angels-petrochem-refining"
is_basic_fluids = "angels-petrochem-basic-fluids"
is_coal = "angels-petrochem-coal"
is_carbon_fluids_1 = "is-carbon-fluids-1"
is_nitrogen = "angels-petrochem-nitrogen"
is_nitrogen_fluids = "angels-petrochem-nitrogen-fluids"
is_fluorine_fluids = "is-fluorine-fluids"
is_sodium = "angels-petrochem-sodium"
is_sodium_fluids = "is-sodium-fluids"
is_sulfur = "angels-petrochem-sulfur"
is_sulfur_fluids = "angels-petrochem-sulfur-fluids"
is_chlorine_fluids = "angels-petrochem-chlorine-fluids"
is_calcium = "is-calcium"
is_calcium_fluids = "is-calcium-fluids"
is_others = "is-others"
is_others_fluids = "is-others-fluids"
is_natural_gas = "is-natural-gas"
is_multi_phase_oil = "is-multi-phase-oil"
is_synthesis_gas = "is-synthesis-gas"
is_methane = "is-methane"
is_ethane = "is-ethane"
is_butane = "is-butane"
is_carbon_fluids_2 = "angels-petrochem-carbon-fluids"
is_plastic = "is-plastic"
is_resin = "is-resin"
is_rubber = "is-rubber"
is_explosives = "is-explosives"
is_buildings_electrolyser = "angels-petrochem-buildings-electrolyser" -- z
is_buildings_air_filter = "is-buildings-air-filter" -- z_a
is_buildings_liquefier = "is-buildings-liquefier" -- z_b
is_buildings_chemical_plant = "angels-petrochem-buildings-chemical-plant" -- z_c
is_buildings_advanced_chemical_plant = "is-buildings-advanced-chemical-plant" -- z_d
is_buildings_gas_refinery = "angels-petrochem-buildings-gas-refinery" -- z_e
is_buildings_advanced_gas_refinery = "is-buildings-advanced-gas-refinery" -- z_f
is_buildings_oil_refinery = "angels-petrochem-buildings-oil-refinery" -- z_g
is_buildings_oil_gas_separator = "is-buildings-oil-gas-separator" -- z_h
is_buildings_steam = "angels-petrochem-buildings-steam" -- z_i
is_buildings_petrochem_others = "is-buildings-petrochem-others" -- z_j
TIMSABA.functions.create_subgroups(ig_petrochem_refining,
{
    {name = is_carbon_fluids_1,                   order = b_a},
    {name = is_fluorine_fluids,                   order = d},
    {name = is_sodium_fluids,                     order = e_a},
    {name = is_calcium,                           order = h},
    {name = is_calcium_fluids,                    order = h_a},
    {name = is_others,                            order = i},
    {name = is_others_fluids,                     order = i_a},
    {name = is_natural_gas,                       order = j},
    {name = is_multi_phase_oil,                   order = k},
    {name = is_synthesis_gas,                     order = l},
    {name = is_methane,                           order = n},
    {name = is_ethane,                            order = n_a},
    {name = is_butane,                            order = n_b},
    {name = is_plastic,                           order = o},
    {name = is_resin,                             order = p},
    {name = is_rubber,                            order = q},
    {name = is_explosives,                        order = r},
    {name = is_buildings_air_filter,              order = z_a},
    {name = is_buildings_liquefier,               order = z_b},
    {name = is_buildings_advanced_chemical_plant, order = z_d},
    {name = is_buildings_advanced_gas_refinery,   order = z_f},
    {name = is_buildings_oil_gas_separator,       order = z_h},
    {name = is_buildings_petrochem_others,        order = z_j}
})


-- BARRELING AND FLUID CONTROL
is_pump = "is-pump"
is_storage_tanks_2x = "is-storage-tanks-2x"
is_storage_tanks_4x = "is-storage-tanks-4x"
is_barreling = "is-barreling"
is_barrel = "is-barrel"
is_barrel_empty = "is-barrel-empty"
is_canister = "is-canister"
is_canister_empty = "is-canister-empty"
is_bottle = "is-bottle"
is_bottle_empty = "is-bottle-empty"
TIMSABA.functions.create_subgroups("angels-fluid-control",
{
    {name = is_pump,             order = c},
    {name = is_storage_tanks_2x, order = d},
    {name = is_storage_tanks_4x, order = e},
    {name = is_barreling,        order = f},
    {name = is_barrel,           order = x},
    {name = is_barrel_empty,     order = x_a},
    {name = is_canister,         order = y},
    {name = is_canister_empty,   order = y_a},
    {name = is_bottle,           order = z},
    {name = is_bottle_empty,     order = z_a}
})


-- ANGELS BIOPROCESSING NAUVIS
ig_bio_processing_nauvis = "angels-bio-processing-nauvis"
is_bio_green = "angels-bio-processing-green"
is_bio_processing_wood = "angels-bio-processing-wood"
is_bio_processing_paste = "angels-bio-processing-paste"
is_bio_processing_alien_pre = "angels-bio-processing-alien-pre"
is_bio_processing_alien_small_recipe = "bio-processing-alien-small-recipe"
is_bio_processing_alien_large_recipe = "bio-processing-alien-large-recipe"
is_bio_generator_temperate = "is-bio-generator-temperate"
is_bio_generator_swamp = "is-bio-generator-swamp"
is_bio_generator_desert = "is-bio-generator-desert"
is_bio_arboretum = "is-bio-arboretum"
TIMSABA.functions.create_subgroups(ig_bio_processing_nauvis,
{
    {name = is_bio_processing_alien_small_recipe, order = n_a},
    {name = is_bio_processing_alien_large_recipe, order = o_a},
    {name = is_bio_generator_temperate,           order = z_a},
    {name = is_bio_generator_swamp,               order = z_b},
    {name = is_bio_generator_desert,              order = z_c},
    {name = is_bio_arboretum,                     order = z_d}
})


-- ANGELS BIOPROCESSING VEGETABLES
is_temperate_vegetables_processing = "is-temperate-vegetables-processing"
is_swamp_vegetables_processing = "is-swamp-vegetables-processing"
is_desert_vegetables_processing = "is-desert-vegetables-processing"
is_vegetables_results = "is-vegetables-results"
is_bio_plastic = "angels-bio-plastic"
is_basic_farm = "is-basic-farm"
is_temperate_farm = "is-temperate-farm"
is_swamp_farm = "is-swamp-farm"
is_desert_farm = "is-desert-farm"
is_seed_extractor = "is-seed-extractor"
is_composter = "is-composter"
is_bio_processor = "is-bio-processor"
is_bio_press = "is-bio-press"
is_nutrient_extractor = "is-nutrient-extractor"
TIMSABA.functions.create_subgroups("angels-bio-processing-vegetables",
{
    {name = is_temperate_vegetables_processing, order = b_c},
    {name = is_swamp_vegetables_processing,     order = c_c},
    {name = is_desert_vegetables_processing,    order = d_c},
    {name = is_vegetables_results,              order = e},
    {name = is_basic_farm,                      order = z_a},
    {name = is_temperate_farm,                  order = z_b},
    {name = is_swamp_farm,                      order = z_c},
    {name = is_desert_farm,                     order = z_d},
    {name = is_seed_extractor,                  order = z_e},
    {name = is_composter,                       order = z_f},
    {name = is_bio_processor,                   order = z_g},
    {name = is_bio_press,                       order = z_h},
    {name = is_nutrient_extractor,              order = z_i}
})

-- ANGELS BIOPROCESSING ANIMALIS
local bio_processing_alien = "angels-bio-processing-alien"
is_bio_fish_petting = "is-bio-fish-petting"
is_bio_puffer_breeding = "is-bio-puffer-breeding"
is_puffer_puffing = "is-puffer-puffing"
is_biter_2 = "is-biter-2"
is_biter_3 = "is-biter-3"
is_bio_processing_intermediate = "is-bio-processing-intermediate"
is_crystals_splinter_1 = "is-crystals-splinter-1"
is_crystals_splinter_2 = "is-crystals-splinter-2"
is_crystals_splinter_3 = "is-crystals-splinter-3"
is_crystals_splinter_powder = "is-crystals-splinter-powder"
is_crystals_shard_1 = "is-crystals-shard-1"
is_crystals_shard_2 = "is-crystals-shard-2"
is_crystals_shard_3 = "is-crystals-shard-3"
is_crystals_shard_powder = "is-crystals-shard-powder"
is_crystals_full_1 = "is-crystals-full-1"
is_crystals_full_2 = "is-crystals-full-2"
is_crystals_full_3 = "is-crystals-full-3"
is_crystals_full_powder = "is-crystals-full-powder"
is_crystals_powders = "is-crystals-powders"
is_fish_refugium = "is-fish-refugium"
is_butchery = "is-butchery"
is_hatchery = "is-hatchery"
is_puffer_refugium = "is-puffer-refugium"
is_biter_refugium = "is-biter-refugium"
TIMSABA.functions.create_subgroups(bio_processing_alien,
{
    {name = is_bio_fish_petting,            order = b_a},
    {name = is_bio_puffer_breeding,         order = c},
    {name = is_puffer_puffing,              order = d_b},
    {name = is_biter_2,                     order = e_a},
    {name = is_biter_3,                     order = e_b},
    {name = is_bio_processing_intermediate, order = f_a},
    {name = is_crystals_splinter_1,         order = g},
    {name = is_crystals_splinter_2,         order = g_a},
    {name = is_crystals_splinter_3,         order = g_b},
    {name = is_crystals_splinter_powder,    order = g_c},
    {name = is_crystals_shard_1,            order = h},
    {name = is_crystals_shard_2,            order = h_a},
    {name = is_crystals_shard_3,            order = h_b},
    {name = is_crystals_shard_powder,       order = h_c},
    {name = is_crystals_full_1,             order = i},
    {name = is_crystals_full_2,             order = i_a},
    {name = is_crystals_full_3,             order = i_b},
    {name = is_crystals_full_powder,        order = i_c},
    {name = is_crystals_powders,            order = j},
    {name = is_fish_refugium,               order = z_a},
    {name = is_butchery,                    order = z_b},
    {name = is_hatchery,                    order = z_c},
    {name = is_puffer_refugium,             order = z_d},
    {name = is_biter_refugium,              order = z_e}
})