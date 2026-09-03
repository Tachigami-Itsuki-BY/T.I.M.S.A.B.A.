# Functions that can be used if you write mods based on **Project T.I.M.S.A.B.A.**:
```Lua
TIMSABA.functions.create_subgroups(group_var,
{
    {
        type = item_subgroup,
        name = subgroup.name,
        group = group_var,
        order = subgroup.order
    }
})

TIMSABA.functions.create_items
({
    {
        localised_name = items.localised_name,
        localised_description = items.localised_description, -- localised_description = show_formula and {chemical_formula, "HoF[font=default-tiny-bold]3[/font]"} or nil,
        name = items.name,
        subgroup = items.subgroup,
        icon = items.icon or error_png, -- if not sting "icon" then used "error_png" == "__TIMSABA__/graphics/icons/error.png"
        icon_size = items.icon_size or 64,

        pictures = items.pictures,

        order = items.order,
        stack_size = items.stack_size or 200,
        weight = items.weight or 5000,

        place_result = items.place_result,

        drop_sound = items.drop_sound,
        inventory_move_sound = items.inventory_move_sound,
        pick_sound = items.pick_sound,

        fuel_category = items.fuel_category,
        fuel_value = items.fuel_value,

        consumption_glow_alternative_tint = items.consumption_glow_alternative_tint,
        fuel_glow_color = items.fuel_glow_color
    }
})

TIMSABA.functions.create_fluids
({
    {
        localised_name = fluids.localised_name,
        localised_description = fluids.localised_description, -- localised_description = show_formula and {chemical_formula, "HoCl[font=default-tiny-bold]3(aq)[/font]"} or nil,
        name = fluids.name,
        subgroup = fluids.subgroup,
        order = fluids.order,
        icon = fluids.icon or error_png, -- if not sting "icon" then used "error_png" == "__TIMSABA__/graphics/icons/error.png"
        icon_size = items.icon_size or 64,

        default_temperature = fluids.default_temperature or 0,
        max_temperature = fluids.max_temperature or 0,
        heat_capacity = fluids.heat_capacity or "0.1kJ",

        base_color = fluids.base_color, -- TIMSABA.functions.fluid_color("HoCl3Wp"), -- or -- base_color = {r =  / 255, g =  / 255, b =  / 255}
        flow_color = fluids.flow_color, -- TIMSABA.functions.flow_color("HoCl3Wp"), -- or -- flow_color = {r =  / 255, g =  / 255, b =  / 255}

        auto_barrel = false
    }
})

TIMSABA.functions.create_recipes
({
    {
        localised_name = recipes.localised_name,
        localised_description = recipes.localised_description,
        name = recipes.name,
        category = recipes.category,
        additional_categories = recipes.additional_categories,
        subgroup = recipes.subgroup,
        icons = recipes.icons,
        order = recipes.order,
        enabled = recipes.enabled or false,
        auto_recycle = recipes.auto_recycle or false,
        allow_productivity = recipes.allow_productivity or false,
        allow_quality = recipes.allow_quality or false,
        allow_decomposition = recipes.allow_decomposition or false,
        energy_required = recipes.energy_required or 4,
        ingredients = recipes.ingredients,
        results = recipes.results,
        main_product = recipes.main_product,
        surface_conditions = recipes.surface_conditions
    }
})

TIMSABA.functions.create_buildings -- ONLY ELECTRIC TYPE
({
    {
        name = buildings.name,
        subgroup = buildings.subgroup,
        icons = buildings.icons,
        order = buildings.order or d,
        place_result = buildings.name,
        stack_size = buildings.stack_size or 32,
        weight = buildings.weight or 31250
    },
    {
        name = buildings.name,
        category = crafting,
        subgroup = buildings.subgroup,
        icons = buildings.icons,
        order = buildings.order or d,
        enabled = false,
        auto_recycle = true,
        allow_productivity = false,
        allow_quality = true,
        allow_decomposition = true,
        energy_required = buildings.energy_required or 4,
        ingredients = buildings.ingredients,
        results = {{type = item, name = buildings.name, amount = 1}},
        main_product = buildings.name,
        surface_conditions = buildings.surface_conditions
    },
    util.merge
    ({
        buildings.base_prototype,
        {
            localised_name = buildings.localised_name,
            localised_description = buildings.localised_description,
            name = buildings.name,
            subgroup = buildings.subgroup,
            icons = buildings.icons,
            order = buildings.order or d,
            minable = {result = buildings.name},
            module_slots = buildings.module_slots or 4,
            crafting_speed = buildings.crafting_speed or 4,
            energy_source =
            {
                type = electric,
                usage_priority = secondary_input,
                emissions_per_minute = {pollution = buildings.pollution or 4},
                drain = buildings.drain or (60 .. kW)
            },
            energy_usage = buildings.energy_usage or (420 .. kW),
            max_health = buildings.max_health,
            heating_energy = buildings.heating_energy
        }
    })
})

TIMSABA.barreling.add_simple_fluid("name-fluid")
TIMSABA.barreling.add_dangerous_fluid("name-fluid")
TIMSABA.barreling.add_gas("name-fluid")
TIMSABA.void.void_fluids("name-fluid") -- Used list from TIMSABA.barreling.add_simple_fluid and TIMSABA.barreling.add_dangerous_fluid
TIMSABA.void.void_gases("name-fluid") -- Used list from TIMSABA.barreling.add_gas
TIMSABA.void.void_organics("name-item")
TIMSABA.void.freezing_organics("name-item")
-- If you only need to specify disposal, use TIMSABA.void.void_fluids("name-fluid") or TIMSABA.void.void_gases("name-fluid")

-- Function for replacing duplicates.
local list_name = {[duplicate_proto] = single_proto}
TIMSABA.functions.replace_duplicate_prototypes(list_name)

-- Function for removing prototypes.
local list_name = {delete_proto} -- item/fluid/recipe/technology
TIMSABA.functions.delete_the_replaced_prototypes(list_name)

-- This segment is needed for functions related to the creation of fluids. From it, take the letters of the elements you need.
local table_of_chemical_elements =
{
    H  = {{255, 255, 255}, {243, 243, 243}, {242, 242, 242}}, -- Hydrogen
    D  = {{255, 255, 192}, {206, 206, 173}, {196, 196, 156}}, -- Deuterium
    T  = {{234, 255, 192}, {195, 206, 173}, {183, 196, 156}}, -- Tritium
    He = {{217, 255, 255}, {197, 232, 232}, {173, 203, 203}}, -- Helium
    Li = {{121, 239, 232}, {109, 215, 209}, {098, 194, 188}}, -- Lithium
    --Be = {{, , }, {, , }, {, , }}, -- Beryllium ?
    B  = {{254, 181, 181}, {233, 164, 164}, {209, 143, 143}}, -- Boron
    C  = {{044, 044, 044}, {064, 064, 064}, {090, 090, 090}}, -- Carbon
    N  = {{048, 080, 248}, {045, 076, 175}, {038, 063, 150}}, -- Nitrogen
    O  = {{255, 013, 013}, {214, 012, 012}, {198, 011, 011}}, -- Oxygen
    F  = {{181, 208, 000}, {163, 187, 000}, {147, 168, 000}}, -- Fluorine
    Ne = {{179, 227, 245}, {159, 202, 218}, {139, 176, 190}}, -- Neon
    Na = {{143, 064, 212}, {129, 058, 191}, {116, 052, 172}}, -- Sodium
    Mg = {{216, 181, 237}, {194, 163, 213}, {175, 147, 192}}, -- Magnesium
    Al = {{173, 162, 084}, {156, 146, 076}, {140, 131, 068}}, -- Aluminium
    Si = {{211, 211, 211}, {190, 190, 190}, {171, 171, 171}}, -- Silicon
    P  = {{255, 128, 000}, {212, 107, 000}, {172, 086, 000}}, -- Phosphorus
    S  = {{255, 255, 048}, {216, 196, 017}, {210, 187, 012}}, -- Sulfur
    Cl = {{031, 240, 031}, {057, 211, 040}, {075, 195, 045}}, -- Chlorine
    Ar = {{128, 209, 227}, {115, 186, 202}, {100, 161, 175}}, -- Argon
    K  = {{204, 153, 255}, {184, 138, 230}, {163, 122, 204}}, -- Potassium
    Ca = {{255, 069, 000}, {230, 062, 000}, {207, 056, 000}}, -- Calcium
    --Sc = {{, , }, {, , }, {, , }}, -- Scandium
    Ti = {{120, 093, 117}, {108, 084, 105}, {097, 076, 095}}, -- Titanium
    V  = {{104, 104, 104}, {090, 090, 090}, {080, 080, 080}}, -- Vanadium
    Cr = {{198, 185, 243}, {178, 167, 219}, {160, 150, 197}}, -- Chromium
    Mn = {{212, 087, 087}, {191, 078, 078}, {172, 070, 070}}, -- Manganese
    Fe = {{119, 138, 153}, {107, 124, 138}, {096, 112, 124}}, -- Iron
    Co = {{049, 071, 106}, {044, 064, 095}, {040, 058, 086}}, -- Cobalt
    Ni = {{059, 123, 117}, {053, 111, 105}, {048, 100, 095}}, -- Nickel
    Cu = {{149, 098, 083}, {134, 088, 075}, {121, 079, 068}}, -- Copper
    Zn = {{098, 180, 174}, {088, 162, 157}, {079, 146, 141}}, -- Zinc
    Ga = {{160, 120, 120}, {140, 100, 100}, {120, 080, 080}}, -- Galium
    Ge = {{100, 140, 140}, {085, 120, 120}, {070, 100, 100}}, -- Germanium
    --As = {{, , }, {, , }, {, , }}, -- Arsenic ?
    --Se = {{, , }, {, , }, {, , }}, -- Selenium ?
    --Br = {{, , }, {, , }, {, , }}, -- Bromine
    Kr = {{092, 184, 209}, {082, 164, 186}, {072, 144, 163}}, -- Krypton
    --Rb = {{, , }, {, , }, {, , }}, -- Rubidium
    --Sr = {{, , }, {, , }, {, , }}, -- Strontium
    --Y  = {{, , }, {, , }, {, , }}, -- Yttrium
    --Zr = {{, , }, {, , }, {, , }}, -- Zirconium
    Nb = {{120, 163, 169}, {106, 143, 148}, {091, 124, 128}}, -- Niobium
    Mo = {{070, 085, 105}, {059, 071, 088}, {048, 058, 072}}, -- Molybdenum
    --Tc = {{, , }, {, , }, {, , }}, -- Technetium
    --Ru = {{, , }, {, , }, {, , }}, -- Ruthenium
    --Rh = {{, , }, {, , }, {, , }}, -- Rhodium
    --Pd = {{, , }, {, , }, {, , }}, -- Palladium
    Ag = {{152, 172, 186}, {137, 155, 167}, {123, 140, 150}}, -- Silver
    --Cd = {{, , }, {, , }, {, , }}, -- Cadmium
    --In = {{, , }, {, , }, {, , }}, -- Indium
    Sn = {{085, 127, 094}, {076, 114, 085}, {068, 103, 076}}, -- Tin
    Sb = {{103, 181, 236}, {088, 156, 205}, {077, 136, 178}}, -- Antimony
    --Te = {{, , }, {, , }, {, , }}, -- Tellurium
    I  = {{148, 000, 148}, {133, 000, 133}, {120, 000, 120}}, -- Iodine
    Xe = {{066, 158, 176}, {057, 136, 151}, {048, 114, 127}}, -- Xenon
    --Cs = {{, , }, {, , }, {, , }}, -- Cesium
    --Ba = {{, , }, {, , }, {, , }}, -- Barium
    --La = {{, , }, {, , }, {, , }}, -- Lanthanum
    Ce = {{195, 195, 150}, {175, 175, 135}, {155, 155, 120}}, -- Cerium
    --Pr = {{, , }, {, , }, {, , }}, -- Praseodymium
    Nd = {{134, 150, 150}, {117, 131, 131}, {102, 115, 115}}, -- Neodymium
    Pm = {{136, 022, 049}, {118, 019, 042}, {102, 012, 037}}, -- Promethium
    --Sm = {{, , }, {, , }, {, , }}, -- Samarium
    --Eu = {{, , }, {, , }, {, , }}, -- Europium
    --Gd = {{, , }, {, , }, {, , }}, -- Gadolinium
    --Tb = {{, , }, {, , }, {, , }}, -- Terbium
    --Dy = {{, , }, {, , }, {, , }}, -- Dysprosium
    Ho = {{194, 139, 167}, {167, 112, 140}, {139, 091, 115}}, -- Holmium
    --Er = {{, , }, {, , }, {, , }}, -- Erbium
    --Tm = {{, , }, {, , }, {, , }}, -- Thulium
    --Yb = {{, , }, {, , }, {, , }}, -- Ytterbium
    --Lu = {{, , }, {, , }, {, , }}, -- Lutetium
    --Hf = {{, , }, {, , }, {, , }}, -- Hafnium
    --Ta = {{, , }, {, , }, {, , }}, -- Tantalum
    W  = {{138, 096, 063}, {124, 086, 057}, {112, 077, 051}}, -- Tungsten
    Re = {{126, 090, 102}, {110, 079, 089}, {094, 067, 076}}, -- Rhenium
    --Os = {{, , }, {, , }, {, , }}, -- Osmium
    --Ir = {{, , }, {, , }, {, , }}, -- Iridium ?
    Pt = {{241, 212, 193}, {217, 191, 174}, {195, 172, 157}}, -- Platinum
    Au = {{231, 186, 028}, {208, 167, 025}, {187, 150, 023}}, -- Gold
    --Hg = {{, , }, {, , }, {, , }}, -- Mercury
    --Tl = {{, , }, {, , }, {, , }}, -- Thallium
    Pb = {{076, 077, 088}, {068, 069, 079}, {061, 062, 071}}, -- Lead
    --Bi = {{, , }, {, , }, {, , }}, -- Bismuth
    --Po = {{, , }, {, , }, {, , }}, -- Polonium
    --At = {{, , }, {, , }, {, , }}, -- Astatine
    --Rn = {{, , }, {, , }, {, , }}, -- Radon
    --Fr = {{, , }, {, , }, {, , }}, -- Francium
    --Ra = {{, , }, {, , }, {, , }}, -- Radium
    --Ac = {{, , }, {, , }, {, , }}, -- Actinium
    --Th = {{, , }, {, , }, {, , }}, -- Thorium 2.1?
    --Pa = {{, , }, {, , }, {, , }}, -- Protactinium
    --U  = {{, , }, {, , }, {, , }}, -- Uranium 2.1?
    --Np = {{, , }, {, , }, {, , }}, -- Neptunium 2.1?
    --Pu = {{, , }, {, , }, {, , }}, -- Plutonium 2.1?
    --Am = {{, , }, {, , }, {, , }}, -- Americium 2.1?
    --Cm = {{, , }, {, , }, {, , }}, -- Curium 2.1?
    --Bk = {{, , }, {, , }, {, , }}, -- Berkelium 2.1?
    --Cf = {{, , }, {, , }, {, , }}, -- Californium 2.1?
    --Es = {{, , }, {, , }, {, , }}, -- Einsteinium
    --Fm = {{, , }, {, , }, {, , }}, -- Fermium
    --Md = {{, , }, {, , }, {, , }}, -- Mendelevium
    --No = {{, , }, {, , }, {, , }}, -- Nobelium
    --Lr = {{, , }, {, , }, {, , }}, -- Lawrencium
    --Rf = {{, , }, {, , }, {, , }}, -- Rutherfordium
    --Db = {{, , }, {, , }, {, , }}, -- Dubnium
    --Sg = {{, , }, {, , }, {, , }}, -- Seaborgium
    --Bh = {{, , }, {, , }, {, , }}, -- Bohrium
    --Hs = {{, , }, {, , }, {, , }}, -- Hassium
    --Mt = {{, , }, {, , }, {, , }}, -- Meitnerium
    --Ds = {{, , }, {, , }, {, , }}, -- Darmstadtium
    --Rg = {{, , }, {, , }, {, , }}, -- Roentgenium
    --Cn = {{, , }, {, , }, {, , }}, -- Copernicium
    --Nh = {{, , }, {, , }, {, , }}, -- Nihonium
    --Fl = {{, , }, {, , }, {, , }}, -- Flerovium
    --Mc = {{, , }, {, , }, {, , }}, -- Moscovium
    --Lv = {{, , }, {, , }, {, , }}, -- Livermorium
    --Ts = {{, , }, {, , }, {, , }}, -- Tennessine
    --Og = {{, , }, {, , }, {, , }}, -- Oganesson
    -- OTHERS
    Cc = {{069, 069, 069}, {054, 054, 054}, {036, 036, 036}}, -- Crude Oil
    Sa = {{255, 220, 189}, {199, 163, 133}, {170, 142, 119}}, -- Sand Fluid
    -- SOLUTIONS
    Wp = {{090, 106, 164}, {090, 106, 164}, {090, 106, 164}}, -- Water purified
    De = {{187, 174, 174}, {187, 174, 174}, {187, 174, 174}}, -- Diethyl ether
    Ec = {{170, 114, 114}, {170, 114, 114}, {170, 114, 114}}, -- Ethylene carbonate
    To = {{150, 150, 150}, {150, 150, 150}, {150, 150, 150}}, -- Toluene
    Dk = {{065, 065, 065}, {065, 065, 065}, {065, 065, 065}}, -- Dark
}
```
# You can also use global variables from my mod. You can find them in TIMSABA/prototypes/global-name/
-------------------------------------------------------------------------------------------------------------------------------------------------
# 🌌**Project T.I.M.S.A.B.A.**
**Welcome to the Project T.I.M.S.A.B.A.** - an ambitious project that merges the classic depth of **Angel's & Bob's** mods with the innovative mechanics of the **Space Age** expansion.
This is more than just a modpack; it’s a complete "from scratch" overhaul designed for those seeking ultimate challenge and logical consistency across all production chains.
# ✨**Key Features:**
* **Unified Balance:** Recipes, buildings, and items from the base game, Space Age, and core Bob's/Angel's** mods have been completely reworked to function as a single, cohesive system.
* **Energy Management:** Power generation and consumption parameters are fully redesigned. Building an efficient power grid now requires deep strategic planning.
* **Exclusive Content:** Added unique intermediate items, fluids, recipes, and technologies bridge the gap between Space Age tech and Angel's/Bob's production lines.
* **New Building Tiers:** Added new levels for Bob's and Angel's structures.
* **Visual Overhaul:** Updated icons for 95% of recipes and fluids, along with many items.
# 🪐**Custom Planet Compatibility:**
* **Deep Adaptation:** The modpack supports popular community-made custom planets, ensuring seamless gameplay.
* **Scaling Production Chains:** The unique resources of the new planets do not replace, but rather organically complement, the Angel's and Bob's mods.
* **Expanded Content:** Each planet has received new items, fluids, recipes, entities and technologies to varying degrees.
* **Currently fully supported and expanded:**
> * **[🌐Muluna, Moon of Nauvis](https://mods.factorio.com/mod/planet-muluna)**
> * **[🌐Moshine](https://mods.factorio.com/mod/Moshine)**
> * **[🌐Panglia](https://mods.factorio.com/mod/panglia_planet)**
> * **[🌐Planetaris: Arig](https://mods.factorio.com/mod/planetaris-arig)**
> * **[🌐Planetaris: Hyarion](https://mods.factorio.com/mod/planetaris-hyarion)**
> * **[🌐Planetaris: Tellus](https://mods.factorio.com/mod/planetaris-tellus)**
> * **[🌐Paracelsin](https://mods.factorio.com/mod/Paracelsin)**
> * **[🌐Corrundum](https://mods.factorio.com/mod/corrundum)**
> * **[🌐Secretas&Frozeta](https://mods.factorio.com/mod/secretas)**
> * **[🌐Terra Palus](https://mods.factorio.com/mod/terrapalus)**
> * **[🌐Castra Prime](https://mods.factorio.com/mod/castra-prime)**
> * **[🌐Shchierbin](https://mods.factorio.com/mod/shchierbin)**
> * **[🌐Maraxsis](https://mods.factorio.com/mod/maraxsis)**
> * **[🌐Vesta](https://mods.factorio.com/mod/skewer_planet_vesta)**
> * **[🌐Muria](https://mods.factorio.com/mod/Muria)**
> * **[🌐Pelagos](https://mods.factorio.com/mod/pelagos)**
> * **[🌐Apia-Carnova planet system](https://mods.factorio.com/mod/apia)**
> * **[🌐Lignumis](https://mods.factorio.com/mod/lignumis)**
* *(More planets coming soon! Feel free to suggest a planet in our Telegram or Discord Server)*.
# ⚙️**Optimization & Polish:**
* **UPS Focused:** Maximum optimization for stable performance on large factories.
* **Clean UI:** All unused prototypes are removed to keep the interface and search menus clutter-free.
# 📜 **Credits and Resources:**
* This project was made possible thanks to the hard work of amazing authors from the Factorio community. Special thanks to:
> * **Authors of Bob's & Angel's mods** - for the monumental foundation, graphic assets, and inspiration.
> * **Authors of Periodic Madness & Scrap Industry mods** - for the graphic assets.
> * **Kirazy** - for the Reskins mod series.
> * **Horogon** - for creating unique mod settings.
> * **Vesper Wayfarer** - for icons for the "Flow Control (New)" addon.
# ⚠️**ATTENTION:** The modpack is under active development. Your feedback and bug reports are vital!
* **Languages:**
> * **English**
> * **Russian** (Translation temporarily paused)
* **Compatibility:** With most mods.
* **My Contacts:** TGC: https://t.me/+fbP66l3k50U0NDIy.
# **Note: This description will be updated as the project evolves.**
-------------------------------------------------------------------------------------------------------------------------------------------------
**Q: Is TIMSABA compatible with other mods?**
**A:** Currently, stable performance is only guaranteed within the modpack itself. The list of compatible mods will be gradually expanded in future updates.

**Q: I found a bug or an error, where should I report it?**
**A:** You can report issues in two ways:
- **1.** Send me a direct message via Discord or Telegram (links are available on the mod page).
- **2.** Use the "Discussion" tab on this website, which is specifically designed for feedback and bug reports.

**Q: Do I need to start a new game to play TIMSABA?**
**A:** Yes, it is mandatory. The modpack introduces deep changes to balance and recipes that will not work correctly in existing save files.

**Q: Can my computer run this modpack?**
**A:** If you can run vanilla Factorio smoothly, TIMSABA will work just as well. There are no additional system requirements.

**Q: What exactly does this modpack change?**
**A:** It is a large-scale rebalance of existing game values along with the addition of new content:
- **Recipes:** All standard recipes have been reworked to varying degrees of complexity.
- **New Content:** Added new items, fluids, and unique production recipes.
- **Value Balancing:** Changed item weight parameters, stack sizes, building energy consumption, and energy generation methods.
- **Visual Tweaks:** Updated icons for all fluids, most recipes, and some items for better navigation.
- **Technology Economy:** Adjusted to match the overall modpack balance.

**Q: Can I use TIMSABA features for my own mods based on it?**
**A:** Yes, of course! You can find a full description of available functions and development guides in the README file of the development branch on GitHub.