-- ANGELS RESOURCE REFINING
local resource_refining = "angels-resource-refining"
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
data:extend
({
    {
        type = item_subgroup,
        name = is_ore_sorting_advanced_2,
        group = resource_refining,
        order = c_f
    },
    {
        type = item_subgroup,
        name = is_ore_sorting_advanced_3,
        group = resource_refining,
        order = c_g
    },
    {
        type = item_subgroup,
        name = is_iron_fluid,
        group = resource_refining,
        order = h_a
    },
    {
        type = item_subgroup,
        name = is_copper_fluid,
        group = resource_refining,
        order = h_b
    },
    {
        type = item_subgroup,
        name = is_ore_crusher,
        group = resource_refining,
        order = z
    },
    {
        type = item_subgroup,
        name = is_filtration_unit,
        group = resource_refining,
        order = z_i
    },
    {
        type = item_subgroup,
        name = is_crystallizer,
        group = resource_refining,
        order = z_j
    }
})

-- ANGELS METTALURGY SMELTING
local smelting = "angels-smelting"
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
is_platinum_chemistry = "is-platinum-chemistry"
is_alloys = "angels-alloys"
is_stone = "angels-stone"
data:extend
({
    {
        type = item_subgroup,
        name = is_iron_chemistry,
        group = smelting,
        order = a_a
    },
    {
        type = item_subgroup,
        name = is_steel,
        group = smelting,
        order = a_b
    },
    {
        type = item_subgroup,
        name = is_copper_chemistry,
        group = smelting,
        order = b_a
    },
    {
        type = item_subgroup,
        name = is_lead_chemistry,
        group = smelting,
        order = c_a
    },
    {
        type = item_subgroup,
        name = is_tin_chemistry,
        group = smelting,
        order = d_a
    },
    {
        type = item_subgroup,
        name = is_manganese_chemistry,
        group = smelting,
        order = e_a
    },
    {
        type = item_subgroup,
        name = is_silicon_chemistry,
        group = smelting,
        order = g_a
    },
    {
        type = item_subgroup,
        name = is_nickel_chemistry,
        group = smelting,
        order = h_a
    },
    {
        type = item_subgroup,
        name = is_aluminium_chemistry,
        group = smelting,
        order = i_a
    },
    {
        type = item_subgroup,
        name = is_aluminium_chemistry_ether,
        group = smelting,
        order = i_b
    },
    {
        type = item_subgroup,
        name = is_zinc_chemistry,
        group = smelting,
        order = j_a
    },
    {
        type = item_subgroup,
        name = is_silver_chemistry,
        group = smelting,
        order = k_a
    },
    {
        type = item_subgroup,
        name = is_titanium_chemistry,
        group = smelting,
        order = l_a
    },
    {
        type = item_subgroup,
        name = is_gold_chemistry,
        group = smelting,
        order = m_a
    },
    {
        type = item_subgroup,
        name = is_cobalt_chemistry,
        group = smelting,
        order = n_a
    },
    {
        type = item_subgroup,
        name = is_chromium_chemistry,
        group = smelting,
        order = o_a
    },
    {
        type = item_subgroup,
        name = is_tungsten_chemistry,
        group = smelting,
        order = p_a
    },
    {
        type = item_subgroup,
        name = is_platinum_chemistry,
        group = smelting,
        order = q_a
    }
})

-- ANGELS METTALURGY CASTING
local casting = "angels-casting"
is_titanium_casting = "angels-titanium-casting"
is_stone_casting = "angels-stone-casting"
is_bricks_casting = "is-bricks-casting"
is_alloys_casting_2 = "is-alloys-casting-2"
is_alloys_casting_3 = "is-alloys-casting-3"
is_alloys_casting_4 = "is-alloys-casting-4"
is_alloys_casting_5 = "is-alloys-casting-5"
is_alloys_casting_6 = "is-alloys-casting-6"
is_sintering_oven = "angels-sintering-oven"
data:extend
({
    {
        type = item_subgroup,
        name = is_bricks_casting,
        group = casting,
        order = w_a
    },
    {
        type = item_subgroup,
        name = is_alloys_casting_2,
        group = casting,
        order = y_a
    },
    {
        type = item_subgroup,
        name = is_alloys_casting_3,
        group = casting,
        order = y_b
    },
    {
        type = item_subgroup,
        name = is_alloys_casting_4,
        group = casting,
        order = y_c
    },
    {
        type = item_subgroup,
        name = is_alloys_casting_5,
        group = casting,
        order = y_d
    },
    {
        type = item_subgroup,
        name = is_alloys_casting_6,
        group = casting,
        order = y_e
    }
})

-- ANGELS WATER TREATMENT
local water_treatment = "angels-water-treatment"
is_water_cleaning_fluid = "angels-water-cleaning-fluid"
is_water_cleaning = "angels-water-cleaning"
is_water_treatment_building = "angels-water-treatment-building"
is_washing_building = "angels-washing-building"
is_hydro_building = "is-hydro-building"
is_salination_building = "is-salination-building"
is_boiler_building = "angels-boiler-building"
is_others_WT_building = "is-others-wt-building"
data:extend
({
    {
        type = item_subgroup,
        name = is_hydro_building,
        group = water_treatment,
        order = z_a
    },
    {
        type = item_subgroup,
        name = is_salination_building,
        group = water_treatment,
        order = z_c
    },
    {
        type = item_subgroup,
        name = is_others_WT_building,
        group = water_treatment,
        order = z_z
    }
})

-- ANGELS PETROCHEM REFINING
local petrochem_refining = "angels-petrochem-refining"
is_basic_fluids = "angels-petrochem-basic-fluids"
is_coal = "angels-petrochem-coal"
is_carbon_fluids_1 = "is-carbon-fluids-1"
is_nitrogen_fluids = "angels-petrochem-nitrogen-fluids"
is_fluorine_fluids = "is-fluorine-fluids"
is_sodium = "angels-petrochem-sodium"
is_sodium_fluids = "is-sodium-fluids"
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
data:extend
({
    {
        type = item_subgroup,
        name = is_carbon_fluids_1,
        group = petrochem_refining,
        order = b_a
    },
    {
        type = item_subgroup,
        name = is_fluorine_fluids,
        group = petrochem_refining,
        order = d
    },
    {
        type = item_subgroup,
        name = is_sodium_fluids,
        group = petrochem_refining,
        order = e_a
    },
    {
        type = item_subgroup,
        name = is_calcium,
        group = petrochem_refining,
        order = h
    },
    {
        type = item_subgroup,
        name = is_calcium_fluids,
        group = petrochem_refining,
        order = h_a
    },
    {
        type = item_subgroup,
        name = is_others,
        group = petrochem_refining,
        order = i
    },
    {
        type = item_subgroup,
        name = is_others_fluids,
        group = petrochem_refining,
        order = i_a
    },
    {
        type = item_subgroup,
        name = is_natural_gas,
        group = petrochem_refining,
        order = j
    },
    {
        type = item_subgroup,
        name = is_multi_phase_oil,
        group = petrochem_refining,
        order = k
    },
    {
        type = item_subgroup,
        name = is_synthesis_gas,
        group = petrochem_refining,
        order = l
    },
    {
        type = item_subgroup,
        name = is_methane,
        group = petrochem_refining,
        order = n
    },
    {
        type = item_subgroup,
        name = is_ethane,
        group = petrochem_refining,
        order = n_a
    },
    {
        type = item_subgroup,
        name = is_butane,
        group = petrochem_refining,
        order = n_b
    },
    {
        type = item_subgroup,
        name = is_plastic,
        group = petrochem_refining,
        order = o
    },
    {
        type = item_subgroup,
        name = is_resin,
        group = petrochem_refining,
        order = p
    },
    {
        type = item_subgroup,
        name = is_rubber,
        group = petrochem_refining,
        order = q
    },
    {
        type = item_subgroup,
        name = is_explosives,
        group = petrochem_refining,
        order = r
    },
    {
        type = item_subgroup,
        name = is_buildings_air_filter,
        group = petrochem_refining,
        order = z_a
    },
    {
        type = item_subgroup,
        name = is_buildings_liquefier,
        group = petrochem_refining,
        order = z_b
    },
    {
        type = item_subgroup,
        name = is_buildings_advanced_chemical_plant,
        group = petrochem_refining,
        order = z_d
    },
    {
        type = item_subgroup,
        name = is_buildings_advanced_gas_refinery,
        group = petrochem_refining,
        order = z_f
    },
    {
        type = item_subgroup,
        name = is_buildings_oil_gas_separator,
        group = petrochem_refining,
        order = z_h
    },
    {
        type = item_subgroup,
        name = is_buildings_petrochem_others,
        group = petrochem_refining,
        order = z_j
    }
})

-- BARRELING AND FLUID CONTROL
local fluid_control = "angels-fluid-control"
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
data:extend
({
    {
        type = item_subgroup,
        name = is_pump,
        group = fluid_control,
        order = c
    },
    {
        type = item_subgroup,
        name = is_storage_tanks_2x,
        group = fluid_control,
        order = d
    },
    {
        type = item_subgroup,
        name = is_storage_tanks_4x,
        group = fluid_control,
        order = e
    },
    {
        type = item_subgroup,
        name = is_barreling,
        group = fluid_control,
        order = f
    },
    {
        type = item_subgroup,
        name = is_barrel,
        group = fluid_control,
        order = x
    },
    {
        type = item_subgroup,
        name = is_barrel_empty,
        group = fluid_control,
        order = x_a
    },
    {
        type = item_subgroup,
        name = is_canister,
        group = fluid_control,
        order = y
    },
    {
        type = item_subgroup,
        name = is_canister_empty,
        group = fluid_control,
        order = y_a
    },
    {
        type = item_subgroup,
        name = is_bottle,
        group = fluid_control,
        order = z
    },
    {
        type = item_subgroup,
        name = is_bottle_empty,
        group = fluid_control,
        order = z_a
    }
})

-- ANGELS BIOPROCESSING NAUVIS
ig_bio_processing_nauvis = "angels-bio-processing-nauvis"
is_bio_green = "angels-bio-processing-green"
is_bio_processing_wood = "angels-bio-processing-wood"
is_bio_processing_paste = "angels-bio-processing-paste"
is_bio_processing_alien_pre = "angels-bio-processing-alien-pre"
is_bio_processing_alien_small_recipe = "bio-processing-alien-small-recipe"
is_bio_processing_alien_large_recipe = "bio-processing-alien-large-recipe"
data:extend
({
    {
        type = item_subgroup,
        name = is_bio_processing_alien_small_recipe,
        group = ig_bio_processing_nauvis,
        order = n_a
    },
    {
        type = item_subgroup,
        name = is_bio_processing_alien_large_recipe,
        group = ig_bio_processing_nauvis,
        order = o_a
    }
})

-- ANGELS BIOPROCESSING VEGETABLES
local bio_processing_vegetables = "angels-bio-processing-vegetables"
is_temperate_vegetables_processing = "is-temperate-vegetables-processing"
is_swamp_vegetables_processing = "is-swamp-vegetables-processing"
is_desert_vegetables_processing = "is-desert-vegetables-processing"
is_vegetables_results = "is-vegetables-results"
is_bio_plastic = "angels-bio-plastic"
data:extend
({
    {
        type = item_subgroup,
        name = is_temperate_vegetables_processing,
        group = bio_processing_vegetables,
        order = b_c
    },
    {
        type = item_subgroup,
        name = is_swamp_vegetables_processing,
        group = bio_processing_vegetables,
        order = c_c
    },
    {
        type = item_subgroup,
        name = is_desert_vegetables_processing,
        group = bio_processing_vegetables,
        order = d_c
    },
    {
        type = item_subgroup,
        name = is_vegetables_results,
        group = bio_processing_vegetables,
        order = e
    }
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
data:extend
({
    {
        type = item_subgroup,
        name = is_bio_fish_petting,
        group = bio_processing_alien,
        order = b_a
    },
    {
        type = item_subgroup,
        name = is_bio_puffer_breeding,
        group = bio_processing_alien,
        order = c
    },
    {
        type = item_subgroup,
        name = is_puffer_puffing,
        group = bio_processing_alien,
        order = d_b
    },
    {
        type = item_subgroup,
        name = is_biter_2,
        group = bio_processing_alien,
        order = e_a
    },
    {
        type = item_subgroup,
        name = is_biter_3,
        group = bio_processing_alien,
        order = e_b
    },
    {
        type = item_subgroup,
        name = is_bio_processing_intermediate,
        group = bio_processing_alien,
        order = f_a
    },
    {
        type = item_subgroup,
        name = is_crystals_splinter_1,
        group = bio_processing_alien,
        order = g
    },
    {
        type = item_subgroup,
        name = is_crystals_splinter_2,
        group = bio_processing_alien,
        order = g_a
    },
    {
        type = item_subgroup,
        name = is_crystals_splinter_3,
        group = bio_processing_alien,
        order = g_b
    },
    {
        type = item_subgroup,
        name = is_crystals_splinter_powder,
        group = bio_processing_alien,
        order = g_c
    },
    {
        type = item_subgroup,
        name = is_crystals_shard_1,
        group = bio_processing_alien,
        order = h
    },
    {
        type = item_subgroup,
        name = is_crystals_shard_2,
        group = bio_processing_alien,
        order = h_a
    },
    {
        type = item_subgroup,
        name = is_crystals_shard_3,
        group = bio_processing_alien,
        order = h_b
    },
    {
        type = item_subgroup,
        name = is_crystals_shard_powder,
        group = bio_processing_alien,
        order = h_c
    },
    {
        type = item_subgroup,
        name = is_crystals_full_1,
        group = bio_processing_alien,
        order = i
    },
    {
        type = item_subgroup,
        name = is_crystals_full_2,
        group = bio_processing_alien,
        order = i_a
    },
    {
        type = item_subgroup,
        name = is_crystals_full_3,
        group = bio_processing_alien,
        order = i_b
    },
    {
        type = item_subgroup,
        name = is_crystals_full_powder,
        group = bio_processing_alien,
        order = i_c
    },
    {
        type = item_subgroup,
        name = is_crystals_powders,
        group = bio_processing_alien,
        order = j
    }
})