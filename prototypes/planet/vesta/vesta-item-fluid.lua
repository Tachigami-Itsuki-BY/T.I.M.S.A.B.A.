if mods [vesta_mods] then
    iridium_ore = "iridium-ore"
    iridium_processed = "iridium-processed"
    iridium_pellet = "iridium-pellet"
    iridium_powder = "iridium-powder"
    sodium_hexachloroiridate_IV = "sodium-hexachloroiridate-IV"
    ammonium_hexachloroiridate_IV = "ammonium-hexachloroiridate-IV"
    sodium_iridate_IV = "sodium-iridate-IV"
    iridium_fluoride_VI = "iridium-fluoride-VI"
    iridium_hydroxide_IV = "iridium-hydroxide-IV"
    hexachloroiridic_acid = "hexachloroiridic-acid"
    TIMSABA.functions.create_items
    ({
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_ore,
            subgroup = is_iridium,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-ore.png",
            pictures =
            {
                {filename = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-ore-1.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-ore-2.png", width = 64, height = 64, scale = 0.5},
                {filename = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-ore-3.png", width = 64, height = 64, scale = 0.5}
            },
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_processed,
            subgroup = is_iridium,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-processed.png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_pellet,
            subgroup = is_iridium,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-pellet.png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir"} or nil,
            name = iridium_powder,
            subgroup = is_iridium,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-powder.png",
            order = d
        },
        -- CHEMISTRY
        {
            localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]IrCl[font=default-tiny-bold]6[/font]"} or nil,
            name = sodium_hexachloroiridate_IV,
            subgroup = is_iridium_chemistry,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/sodium-hexachloroiridate-IV.png",
            order = a
        },
        {
            localised_description = show_formula and {chemical_formula, "(NH[font=default-tiny-bold]4[/font])[font=default-tiny-bold]2[/font]IrCl[font=default-tiny-bold]6[/font]"} or nil,
            name = ammonium_hexachloroiridate_IV,
            subgroup = is_iridium_chemistry,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/ammonium-hexachloroiridate-IV.png",
            order = b
        },
        {
            localised_description = show_formula and {chemical_formula, "Na[font=default-tiny-bold]2[/font]IrO[font=default-tiny-bold]3[/font]"} or nil,
            name = sodium_iridate_IV,
            subgroup = is_iridium_chemistry,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/sodium-iridate-IV.png",
            order = c
        },
        {
            localised_description = show_formula and {chemical_formula, "IrF[font=default-tiny-bold]6[/font]"} or nil,
            name = iridium_fluoride_VI,
            subgroup = is_iridium_chemistry,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-fluoride-VI.png",
            order = d
        },
        {
            localised_description = show_formula and {chemical_formula, "Ir(OH)[font=default-tiny-bold]4[/font]"} or nil,
            name = iridium_hydroxide_IV,
            subgroup = is_iridium_chemistry,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/iridium-hydroxide-IV.png",
            order = e
        },
        {
            localised_description = show_formula and {chemical_formula, "H[font=default-tiny-bold]2[/font]IrCl[font=default-tiny-bold]6[/font]"} or nil,
            name = hexachloroiridic_acid,
            subgroup = is_iridium_chemistry,
            icon = "__TIMSABA__/graphics/icons/vesta/iridium/hexachloroiridic-acid.png",
            order = f
        }
    })
end