local technology = "technology"
--holmium_smelting_1 = "holmium-smelting-1"
holmium_smelting_2 = "holmium-smelting-2"
holmium_smelting_3 = "holmium-smelting-3"
local tech_holmium_smelting = "__TIMSABA__/graphics/icons/space-age/fulgora/smelting-holmium-tech.png"
planet_discovery_fulgora = "planet-discovery-fulgora"
holmium_processing = "holmium-processing"
data:extend
({
    --[[{
        type = technology,
        name = holmium_smelting_1,
        icon = tech_holmium_smelting,
        icon_size = 256,
        prerequisites = {planet_discovery_fulgora},
        effects = {{type = unlock_recipe, recipe = }},
        unit =
        {
            count = 300,
            ingredients =
            {
                {automation_science_pack, 1},
                {logistic_science_pack, 1},
                {chemical_science_pack, 1},
                {production_science_pack, 1},
                {utility_science_pack, 1},
                {space_science_pack, 1}
            },
            time = 30
        }
    },]]
    {
        type = technology,
        name = holmium_smelting_2,
        icon = tech_holmium_smelting,
        icon_size = 256,
        prerequisites = {holmium_processing, --[[holmium_smelting_1,]] electromagnetic_science_pack},
        effects =
        {
            {type = unlock_recipe, recipe = holmium_processed},
            {type = unlock_recipe, recipe = holmium_nitrate_solution},
            {type = unlock_recipe, recipe = holmium_oxide},
            {type = unlock_recipe, recipe = holmium_fluoride_from_holmium_oxide},
            {type = unlock_recipe, recipe = holmium_roll_2}
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
                {electromagnetic_science_pack, 1}
            },
            time = 30
        }
    },
    {
        type = technology,
        name = holmium_smelting_3,
        icon = tech_holmium_smelting,
        icon_size = 256,
        prerequisites = {holmium_smelting_2, cryogenic_science_pack, "vulcanus-metallurgic"},
        effects =
        {
            {type = unlock_recipe, recipe = holmium_fluoride_2},
            {type = unlock_recipe, recipe = molten_holmium},
            {type = unlock_recipe, recipe = casting_holmium}
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
                {cryogenic_science_pack, 1}
            },
            time = 30
        }
    }
})