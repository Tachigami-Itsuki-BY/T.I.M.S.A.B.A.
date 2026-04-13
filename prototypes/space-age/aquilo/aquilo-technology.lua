local technology = "technology"
antimony_smelting_1 = "antimony-smelting-1"
antimony_smelting_2 = "antimony-smelting-2"
antimony_smelting_3 = "antimony-smelting-3"
local tech_antimony_smelting = "__TIMSABA__/graphics/icons/space-age/aquilo/smelting-antimony-tech.png"
planet_discovery_aquilo = "planet-discovery-aquilo"
data:extend
({
    {
        type = technology,
        name = antimony_smelting_1,
        icon = tech_antimony_smelting,
        icon_size = 256,
        prerequisites = {planet_discovery_aquilo},
        effects =
        {
            {type = unlock_recipe, recipe = antimony_chloride_III},
            {type = unlock_recipe, recipe = antimony_chloride_V_liquid},
            {type = unlock_recipe, recipe = antimony_ingot},
            {type = unlock_recipe, recipe = antimony_powder},
            {type = unlock_recipe, recipe = antimony_molten}
        },
        unit =
        {
            count = 350,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = antimony_smelting_2,
        icon = tech_antimony_smelting,
        icon_size = 256,
        prerequisites = {antimony_smelting_1, cryogenic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = antimony_processed},
            {type = unlock_recipe, recipe = antimony_chloride_V_liquid_2},
            {type = unlock_recipe, recipe = antimony_acid},
            {type = unlock_recipe, recipe = antimony_oxide},
            {type = unlock_recipe, recipe = antimony_ingot_2}
        },
        unit =
        {
            count = 400,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = antimony_smelting_3,
        icon = tech_antimony_smelting,
        icon_size = 256,
        prerequisites = {antimony_smelting_2, promethium_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = antimony_pellet},
            {type = unlock_recipe, recipe = antimony_chloride_V_liquid_3},
            {type = unlock_recipe, recipe = hexachloroantimonic_acid},
            {type = unlock_recipe, recipe = antimony_ingot_3},
            {type = unlock_recipe, recipe = molten_antimony}
        },
        unit =
        {
            count = 450,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1},
                {electromagnetic_science_pack, 1},
                {metallurgic_science_pack, 1},
                {agricultural_science_pack, 1},
                {cryogenic_science_pack, 1},
                {promethium_science_pack, 1}
            },
            time = 30
        }
    }
})