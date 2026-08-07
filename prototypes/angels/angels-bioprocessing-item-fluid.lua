-- ANGELS BIOPROCESSING NAUVIS
-- FLUID
iodine_gas = "iodine-gas"
TIMSABA.functions.create_fluids
({
    {
        localised_description = show_formula and {chemical_formula, "I[font=default-tiny-bold]2[/font]"} or nil,
        name = iodine_gas,
        subgroup = "angels-bio-processing-brown",
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/iodine/iodine-gas.png",
        order = c,
        base_color = TIMSABA.functions.fluid_color("III"),
        flow_color = TIMSABA.functions.flow_color("III")
    }
})
TIMSABA.barreling.add_gas(iodine_gas)

-- ANGELS BIOPROCESSING VEGETABLES
-- ITEM
cellulose_triacetate = "cellulose-triacetate"
cellulose_diacetate = "cellulose-diacetate"
TIMSABA.functions.create_items
({
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]12[/font]H[font=default-tiny-bold]16[/font]O[font=default-tiny-bold]8[/font])[font=default-tiny-bold]n[/font]"} or nil,
        name = cellulose_triacetate,
        subgroup = is_bio_plastic,
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/cellulose-triacetate.png",
        icon_size = 32,
        order = a
    },
    {
        localised_description = show_formula and {chemical_formula, "(C[font=default-tiny-bold]10[/font]H[font=default-tiny-bold]14[/font]O[font=default-tiny-bold]7[/font])[font=default-tiny-bold]n[/font]"} or nil,
        name = cellulose_diacetate,
        subgroup = is_bio_plastic,
        icon = "__TIMSABA__/graphics/icons/angels/bioprocessing/cellulose-diacetate.png",
        icon_size = 32,
        order = b
    }
})