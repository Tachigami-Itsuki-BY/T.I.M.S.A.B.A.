if mods [angelspetrochem] >= "2.0.2" then
    data:extend
    ({
        {
            localised_name = {"fluid-name.sulfuric-acid"},
            localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]SO[font=default-tiny-bold]4[/font]"} or nil,
            type = fluid,
            name = sulfuric_acid_angels,
            subgroup = is_sulfur_fluids,
            icon = "__TIMSABA__/graphics/icons/angels/petrochem/sulfur/angels-liquid-sulfuric-acid.png",
            order = f,
            default_temperature = 0,
            heat_capacity = "0.1kJ",
            base_color = angelsmods.functions.fluid_color("H2SO4"),
            flow_color = angelsmods.functions.flow_color("H2SO4"),
            max_temperature = 0,
            auto_barrel = false
        },
        -- RECIPE
        {
            type = recipe,
            name = coke_purification_2,
            category = angels_liquifying,
            subgroup = is_coal,
            icon = data_item[carbon_angels].icon,
            order = d_a,
            enabled = false,
            auto_recycle = false,
            allow_productivity = false,
            allow_quality = false,
            allow_decomposition = false,
            energy_required = 4,
            ingredients =
            {
                {type = item, name = coke_angels, amount = 4},
                {type = fluid, name = water_purified_angels, amount = 60}
            },
            results =
            {
                {type = item, name = carbon_angels, amount = 4},
                {type = fluid, name = water_yellow_waste, amount = 60}
            },
            main_product = carbon_angels
        }
    })
    if not data_technology[tech_coal_processing_3] then
        data:extend
        ({
            {

                localised_name = {"technology-name.angels-coal-processing"},
                localised_description = {"technology-description.angels-coal-processing"},
                type = technology,
                name = tech_coal_processing_3,
                icons = TIMSABA.functions.create_gas_tech_icon("CcCcCc"),
                prerequisites = {tech_coal_processing_2, tech_chlorine_processing_1, tech_nitrogen_processing_1},
                effects = {{type = unlock_recipe, recipe = coke_purification_2}},
                unit =
                {
                    count = 100,
                    ingredients =
                    {
                        {automation_science_pack, 1},
                        {logistic_science_pack, 1}
                    },
                    time = 15
                }
            }
        })
    end
end