if mods[shchierbin_mods] then
    planet_discovery_shchierbin = "planet-discovery-shchierbin"
    tech_calcium_processing = "calcium-processing"
    tech_vanadium_smelting_1 = "tech-vanadium-smelting-1"
    local tech_vanadium_smelting_2 = "tech-vanadium-smelting-2"
    tech_vanadium_smelting_3 = "tech-vanadium-smelting-3"
    tech_titanium_aluminium_vanadium_processing = "titanium-aluminium-vanadium-processing"
    data:extend
    ({
        -- VANADIUM
        {
            localised_name = {"technology-name.vanadium-smelting-1"},
            localised_description = {"technology-description.vanadium-smelting-1"},
            type = technology,
            name = tech_vanadium_smelting_1,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/technology/smelting-vanadium-tech.png",
            icon_size = 256,
            prerequisites = {planet_discovery_shchierbin, tech_calcium_processing},
            effects =
            {
                {type = unlock_recipe, recipe = vanadium_oxide_V},
                {type = unlock_recipe, recipe = vanadium_ingot},
                {type = unlock_recipe, recipe = vanadium_molten},
                {type = unlock_recipe, recipe = vanadium_plate},
                {type = unlock_recipe, recipe = vanadium_powder}
            },
            research_trigger =
            {
                type = craft_item,
                item = vanadium_ore,
                count = 256
            }
        },
        {
            localised_name = {"technology-name.vanadium-smelting-2"},
            localised_description = {"technology-description.vanadium-smelting-2"},
            type = technology,
            name = tech_vanadium_smelting_2,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/technology/smelting-vanadium-tech.png",
            icon_size = 256,
            prerequisites = {tech_vanadium_smelting_1, vanadium_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = vanadium_processed},
                {type = unlock_recipe, recipe = dioxovanadium_nitrate_V},
                {type = unlock_recipe, recipe = vanadium_oxide_V_2}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {agricultural_science_pack, 1}
                },
                time = 30
            }
        },
        {
            localised_name = {"technology-name.vanadium-smelting-3"},
            localised_description = {"technology-description.vanadium-smelting-3"},
            type = technology,
            name = tech_vanadium_smelting_3,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/technology/smelting-vanadium-tech.png",
            icon_size = 256,
            prerequisites = {tech_vanadium_smelting_2, cryogenic_science_pack},
            effects =
            {
                {type = unlock_recipe, recipe = vanadium_pellet},
                {type = unlock_recipe, recipe = vanadium_sulfate_IV_solution},
                {type = unlock_recipe, recipe = ammonium_metavanadate},
                {type = unlock_recipe, recipe = vanadium_oxide_V_3}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {agricultural_science_pack, 1},
                    {electromagnetic_science_pack, 1},
                    {cryogenic_science_pack, 1}
                },
                time = 30
            }
        },
        -- Ti-Al-V
        {
            type = technology,
            name = tech_titanium_aluminium_vanadium_processing,
            icon = "__TIMSABA__/graphics/icons/shchierbin/vanadium/technology/titanium-aluminium-vanadium-processing.png",
            icon_size = 256,
            prerequisites = {tech_vanadium_smelting_1, vanadium_science_pack, tech_vulcanus_metallurgic},
            effects =
            {
                {type = unlock_recipe, recipe = titanium_aluminium_vanadium_molten},
                {type = unlock_recipe, recipe = titanium_aluminium_vanadium_plate}
            },
            unit =
            {
                count = 200,
                ingredients =
                {
                    {automation_science_pack, 1},
                    {logistic_science_pack, 1},
                    {military_science_pack, 1},
                    {chemical_science_pack, 1},
                    {production_science_pack, 1},
                    {utility_science_pack, 1},
                    {space_science_pack, 1},
                    {metallurgic_science_pack, 1},
                    {agricultural_science_pack, 1}
                },
                time = 30
            }
        }
    })
end