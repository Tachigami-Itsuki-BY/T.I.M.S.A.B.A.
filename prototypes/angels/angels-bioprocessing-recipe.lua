-- ANGELS BIOPROCESSING NAUVIS
TIMSABA.functions.create_recipes
({
    {
        name = iodine_gas,
        category = angels_blast_smelting_4,
        subgroup = "angels-bio-processing-brown",
        icons = TWO_I(algae_brown, iodine_gas),
        order = c,
        energy_required = 8,
        ingredients = {{type = item, name = algae_brown, amount = 16}},
        results = {{type = fluid, name = iodine_gas, amount = 120}},
        main_product = iodine_gas
    }
})

-- ANGELS BIOPROCESSING VEGETABLES
TIMSABA.functions.create_recipes
({
    {
        name = cellulose_triacetate,
        category = angels_advanced_chemistry,
        subgroup = is_bio_plastic,
        icons = THREE_I(cellulose_fiber_angels, acetic_anhydride, cellulose_triacetate),
        order = a,
        -- (C₆H₁₀O₅)n + C₄H₆O₃ -H₂SO₄/C₂H₄O₂-> (C₁₂H₁₆O₈)n
        ingredients =
        {
            {type = item, name = cellulose_fiber_angels, amount = 4},
            {type = fluid, name = acetic_anhydride, amount = 60},
            {type = fluid, name = acetic_acid, amount = 60},
            {type = fluid, name = sulfuric_acid, amount = 60}
        },
        results =
        {
            {type = item, name = cellulose_triacetate, amount = 4},
            {type = fluid, name = acetic_acid, amount = 30}, -- 60
            {type = fluid, name = sulfuric_acid, amount = 30} -- 60
        },
        main_product = cellulose_triacetate
    },
    {
        name = cellulose_diacetate,
        category = chemistry,
        subgroup = is_bio_plastic,
        icons = TWO_D_I(cellulose_triacetate, water_purified_angels, cellulose_diacetate, acetic_acid),
        order = b,
        -- (C₁₂H₁₆O₈)n + H₂O --> (C₁₀H₁₄O₇)n + C₂H₄O₂
        ingredients =
        {
            {type = item, name = cellulose_triacetate, amount = 4},
            {type = fluid, name = water_purified_angels, amount = 60}
        },
        results =
        {
            {type = item, name = cellulose_diacetate, amount = 4},
            {type = fluid, name = acetic_acid, amount = 30}, -- 60
        },
        main_product = cellulose_diacetate
    }
})

-- ANGELS BIOPROCESSING ANIMALIS
TIMSABA.functions.create_recipes
({
    {
        localised_name = {"recipe-name.raw-fish"},
        name = factorian_fish,
        category = "angels-bio-refugium-fish",
        subgroup = "angels-bio-fish",
        icons = {{icon = "__angelsbioprocessinggraphics__/graphics/icons/breeding.png", icon_size = 32}, {icon = "__base__/graphics/icons/fish.png", icon_size = 64}},
        order = a,
        allow_productivity = true,
        energy_requred = 64,
        ingredients =
        {
            {type = item, name = factorian_fish, amount = 2, ignored_by_stats = 2},
            {type = fluid, name = nutrient_pulp, amount = 30},
            {type = fluid, name = water_for_fish, amount = 120}
        },
        results =
        {
            {type = item, name = factorian_fish, amount_min = 2, amount_max = 4, ignored_by_productivity = 2, ignored_by_stats = 2},
            {type = fluid, name = polluted_water_for_fish, amount = 120}
        },
        main_product = factorian_fish
    },
    {
        name = polluted_water_for_fish,
        category = angels_liquifying,
        subgroup = "angels-bio-fish-breeding",
        icons = THREE_I(raw_meat, water_for_fish, polluted_water_for_fish),
        order = b,
        energy_required = 16,
        ingredients =
        {
            {type = item, name = raw_meat, amount = 32},
            {type = fluid, name = water_for_fish, amount = 120}
        },
        results = {{type = fluid, name = polluted_water_for_fish, amount = 120}},
        main_product = polluted_water_for_fish
    },
    {
        name = crystal_splinter_blue_cut,
        category = crafting,
        subgroup = is_crystals_splinter_2,
        icons = THREE_R_I(crystal_splinter, crystal_splinter_blue_cut, crystal_powder),
        order = a,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_splinter, amount = 1}},
        results =
        {
            {type = item, name = crystal_splinter_blue_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_splinter_blue_cut
    },
    {
        name = crystal_splinter_green_cut,
        category = crafting,
        subgroup = is_crystals_splinter_2,
        icons = THREE_R_I(crystal_splinter, crystal_splinter_green_cut, crystal_powder),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_splinter, amount = 1}},
        results =
        {
            {type = item, name = crystal_splinter_green_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_splinter_green_cut
    },
    {
        type = recipe,
        name = crystal_splinter_red_cut,
        category = crafting,
        subgroup = is_crystals_splinter_2,
        icons = THREE_R_I(crystal_splinter, crystal_splinter_red_cut, crystal_powder),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_splinter, amount = 1}},
        results =
        {
            {type = item, name = crystal_splinter_red_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_splinter_red_cut
    },
    {
        name = crystal_shard_blue_cut,
        category = crafting,
        subgroup = is_crystals_shard_2,
        icons = THREE_R_I(crystal_shard, crystal_shard_blue_cut, crystal_powder),
        order = a,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_shard, amount = 1}},
        results =
        {
            {type = item, name = crystal_shard_blue_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_shard_blue_cut
    },
    {
        name = crystal_shard_green_cut,
        category = crafting,
        subgroup = is_crystals_shard_2,
        icons = THREE_R_I(crystal_shard, crystal_shard_green_cut, crystal_powder),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_shard, amount = 1}},
        results =
        {
            {type = item, name = crystal_shard_green_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_shard_green_cut
    },
    {
        name = crystal_shard_red_cut,
        category = crafting,
        subgroup = is_crystals_shard_2,
        icons = THREE_R_I(crystal_shard, crystal_shard_red_cut, crystal_powder),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_shard, amount = 1}},
        results =
        {
            {type = item, name = crystal_shard_red_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_shard_red_cut
    },
    {
        name = crystal_full_blue_cut,
        category = crafting,
        subgroup = is_crystals_full_2,
        icons = THREE_R_I(crystal_full, crystal_full_blue_cut, crystal_powder),
        order = a,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_full, amount = 1}},
        results =
        {
            {type = item, name = crystal_full_blue_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_full_blue_cut
    },
    {
        name = crystal_full_green_cut,
        category = crafting,
        subgroup = is_crystals_full_2,
        icons = THREE_R_I(crystal_full, crystal_full_green_cut, crystal_powder),
        order = b,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_full, amount = 1}},
        results =
        {
            {type = item, name = crystal_full_green_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_full_green_cut
    },
    {
        name = crystal_full_red_cut,
        category = crafting,
        subgroup = is_crystals_full_2,
        icons = THREE_R_I(crystal_full, crystal_full_red_cut, crystal_powder),
        order = c,
        energy_required = 2,
        ingredients = {{type = item, name = crystal_full, amount = 1}},
        results =
        {
            {type = item, name = crystal_full_red_cut, amount = 1},
            {type = item, name = crystal_powder, amount = 2}
        },
        main_product = crystal_full_red_cut
    }
})