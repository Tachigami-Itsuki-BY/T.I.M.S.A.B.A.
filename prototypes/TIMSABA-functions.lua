TIMSABA = TIMSABA or {}

TIMSABA.functions = TIMSABA.functions or {}

local function unify_tint(tint)
    if tint then
        local unified_tint = {}
        unified_tint.r = tint.r or tint[1] or 0
        unified_tint.g = tint.g or tint[2] or 0
        unified_tint.b = tint.b or tint[3] or 0
        if unified_tint.r > 1 or unified_tint.g > 1 or unified_tint.b > 1 then
            unified_tint.r = (unified_tint.r <= 255 and unified_tint.r or 255) / 255
            unified_tint.g = (unified_tint.g <= 255 and unified_tint.g or 255) / 255
            unified_tint.b = (unified_tint.b <= 255 and unified_tint.b or 255) / 255
        end
        unified_tint.a = tint.a or tint[4] or 1
        unified_tint.a = unified_tint.a > 1 and unified_tint.a / 255 or unified_tint.a
        return unified_tint
    else
        return nil
    end
end

-----------------------
-- CHEMICAL ELEMENTS --
-----------------------
local table_of_chemical_elements =
{
    H  = {{255, 255, 255}, {243, 243, 243}, {242, 242, 242}}, -- Hydrogen
    D  = {{255, 255, 192}, {206, 206, 173}, {196, 196, 156}}, -- Deuterium
    T  = {{255, 255, 128}, {206, 206, 115}, {196, 196, 098}}, -- Tritium
    --He = {{, , }, {, , }, {, , }}, -- Helium
    Li = {{121, 239, 232}, {109, 215, 209}, {098, 194, 188}}, -- Lithium
    --Be = {{, , }, {, , }, {, , }}, -- Beryllium
    B  = {{254, 181, 181}, {233, 164, 164}, {209, 143, 143}}, -- Bor
    C  = {{044, 044, 044}, {064, 064, 064}, {090, 090, 090}}, -- Carbon
    N  = {{048, 080, 248}, {045, 076, 175}, {038, 063, 150}}, -- Nitrogen
    O  = {{255, 013, 013}, {214, 012, 012}, {198, 011, 011}}, -- Oxygen
    F  = {{181, 208, 000}, {163, 187, 000}, {147, 168, 000}}, -- Fluorine
    --Ne = {{, , }, {, , }, {, , }}, -- Neon
    Na = {{143, 064, 212}, {129, 058, 191}, {116, 052, 172}}, -- Sodium
    Mg = {{216, 181, 237}, {194, 163, 213}, {175, 147, 192}}, -- Magnesium
    Al = {{173, 162, 084}, {156, 146, 076}, {140, 131, 068}}, -- Aluminium
    Si = {{211, 211, 211}, {190, 190, 190}, {171, 171, 171}}, -- Silicon
    P  = {{255, 128, 000}, {212, 150, 000}, {172, 121, 000}}, -- Phosphorus
    S  = {{255, 255, 048}, {216, 196, 017}, {210, 187, 030}}, -- Sulfur
    Cl = {{031, 240, 031}, {057, 211, 040}, {075, 195, 045}}, -- Chlorine
    --Ar = {{, , }, {, , }, {, , }}, -- Argon
    K  = {{204, 153, 255}, {184, 138, 230}, {163, 122, 204}}, -- Potassium
    Ca = {{255, 069, 000}, {230, 062, 000}, {207, 056, 000}}, -- Calcium
    --Sc = {{, , }, {, , }, {, , }},
    Ti = {{120, 093, 117}, {108, 084, 105}, {097, 076, 095}}, -- Titanium
    --V  = {{, , }, {, , }, {, , }}, -- Vanadium
    Cr = {{198, 185, 243}, {178, 167, 219}, {160, 150, 197}}, -- Chrome
    Mn = {{212, 087, 087}, {191, 078, 078}, {172, 070, 070}}, -- Manganese
    Fe = {{119, 138, 153}, {107, 124, 138}, {096, 112, 124}}, -- Iron
    Co = {{049, 071, 106}, {044, 064, 095}, {040, 058, 086}}, -- Cobalt
    Ni = {{059, 123, 117}, {053, 111, 105}, {048, 100, 095}}, -- Nickel
    Cu = {{149, 098, 083}, {134, 088, 075}, {121, 079, 068}}, -- Copper
    Zn = {{098, 180, 174}, {088, 162, 157}, {079, 146, 141}}, -- Zinc
    --Ga = {{, , }, {, , }, {, , }},
    --Ge = {{, , }, {, , }, {, , }},
    --As = {{, , }, {, , }, {, , }},
    --Se = {{, , }, {, , }, {, , }},
    --Br = {{, , }, {, , }, {, , }},
    --Kr = {{, , }, {, , }, {, , }},
    --Rb = {{, , }, {, , }, {, , }},
    --Sr = {{, , }, {, , }, {, , }},
    --Y  = {{, , }, {, , }, {, , }},
    --Zr = {{, , }, {, , }, {, , }},
    --Nb = {{, , }, {, , }, {, , }},
    --Mo = {{, , }, {, , }, {, , }},
    --Tc = {{, , }, {, , }, {, , }},
    --Ru = {{, , }, {, , }, {, , }},
    --Rh = {{, , }, {, , }, {, , }},
    --Pd = {{, , }, {, , }, {, , }},
    Ag = {{152, 172, 186}, {137, 155, 167}, {123, 140, 150}}, -- Silver
    --Cd = {{, , }, {, , }, {, , }},
    --In = {{, , }, {, , }, {, , }},
    Sn = {{085, 127, 094}, {076, 114, 085}, {068, 103, 076}}, -- Tin
    Sb = {{103, 181, 236}, {088, 156, 205}, {077, 136, 178}}, -- Antimony
    --Te = {{, , }, {, , }, {, , }},
    I  = {{148, 000, 148}, {133, 000, 133}, {120, 000, 120}}, -- Iodine
    --Xe = {{, , }, {, , }, {, , }},
    --Cs = {{, , }, {, , }, {, , }},
    --Ba = {{, , }, {, , }, {, , }},
    --La = {{, , }, {, , }, {, , }},
    --Ce = {{, , }, {, , }, {, , }},
    --Pr = {{, , }, {, , }, {, , }},
    --Nd = {{, , }, {, , }, {, , }},
    --Pm = {{, , }, {, , }, {, , }},
    --Sm = {{, , }, {, , }, {, , }},
    --Eu = {{, , }, {, , }, {, , }},
    --Gd = {{, , }, {, , }, {, , }},
    --Tb = {{, , }, {, , }, {, , }},
    --Dy = {{, , }, {, , }, {, , }},
    Ho = {{194, 139, 167}, {167, 112, 140}, {139, 091, 115}}, -- Holmium
    --Er = {{, , }, {, , }, {, , }},
    --Tm = {{, , }, {, , }, {, , }},
    --Yb = {{, , }, {, , }, {, , }},
    --Lu = {{, , }, {, , }, {, , }},
    --Hf = {{, , }, {, , }, {, , }},
    --Ta = {{, , }, {, , }, {, , }},
    W  = {{138, 096, 063}, {124, 086, 057}, {112, 077, 051}}, -- Tungsten
    --Re = {{, , }, {, , }, {, , }},
    --Os = {{, , }, {, , }, {, , }},
    --Ir = {{, , }, {, , }, {, , }},
    Pt = {{241, 212, 193}, {217, 191, 174}, {195, 172, 157}}, -- Platinum
    Au = {{231, 186, 028}, {208, 167, 025}, {187, 150, 023}}, -- Gold
    --Hg = {{, , }, {, , }, {, , }},
    --Tl = {{, , }, {, , }, {, , }},
    Pb = {{076, 077, 088}, {068, 069, 079}, {061, 062, 071}}, -- Lead
    --Bi = {{, , }, {, , }, {, , }},
    --Po = {{, , }, {, , }, {, , }},
    --At = {{, , }, {, , }, {, , }},
    --Rn = {{, , }, {, , }, {, , }},
    --Fr = {{, , }, {, , }, {, , }},
    --Ra = {{, , }, {, , }, {, , }},
    --Ac = {{, , }, {, , }, {, , }},
    --Th = {{, , }, {, , }, {, , }},
    --Pa = {{, , }, {, , }, {, , }},
    --U  = {{, , }, {, , }, {, , }},
    --Np = {{, , }, {, , }, {, , }},
    --Pu = {{, , }, {, , }, {, , }},
    --Am = {{, , }, {, , }, {, , }},
    --Cm = {{, , }, {, , }, {, , }},
    --Bk = {{, , }, {, , }, {, , }},
    --Cf = {{, , }, {, , }, {, , }},
    --Es = {{, , }, {, , }, {, , }},
    --Fm = {{, , }, {, , }, {, , }},
    --Md = {{, , }, {, , }, {, , }},
    --No = {{, , }, {, , }, {, , }},
    --Lr = {{, , }, {, , }, {, , }},
    --Rf = {{, , }, {, , }, {, , }},
    --Db = {{, , }, {, , }, {, , }},
    --Sg = {{, , }, {, , }, {, , }},
    --Bh = {{, , }, {, , }, {, , }},
    --Hs = {{, , }, {, , }, {, , }},
    --Mt = {{, , }, {, , }, {, , }},
    --Ds = {{, , }, {, , }, {, , }},
    --Rg = {{, , }, {, , }, {, , }},
    --Cn = {{, , }, {, , }, {, , }},
    --Nh = {{, , }, {, , }, {, , }},
    --Fl = {{, , }, {, , }, {, , }},
    --Mc = {{, , }, {, , }, {, , }},
    --Lv = {{, , }, {, , }, {, , }},
    --Ts = {{, , }, {, , }, {, , }},
    --Og = {{, , }, {, , }, {, , }},
    Cc = {{069, 069, 069}, {054, 054, 054}, {036, 036, 036}}, -- Coal / Coke / Carbon
    -- SOLUTIONS
    Wp = {{090, 106, 164}, {090, 106, 164}, {090, 106, 164}}, -- Water purified
    De = {{187, 174, 174}, {187, 174, 174}, {187, 174, 174}}, -- Diethyl ether
    Dk = {{065, 065, 065}, {065, 065, 065}, {065, 065, 065}}, -- Dark
    Ec = {{170, 114, 114}, {170, 114, 114}, {170, 114, 114}}, -- Ethylene carbonate
}
local function get_molecule_codes(molec_formula)
    local orig = molec_formula
    local string_codes = {}
    while string.len(molec_formula) > 0 do
        local symbol, amount_str, last
        local f2n, l2n = string.find(molec_formula, "^%u%l%d+")
        local f2, l2 = string.find(molec_formula, "^%u%l")
        local f1n, l1n = string.find(molec_formula, "^%u%d+")
        local f1, l1 = string.find(molec_formula, "^%u")
        if f2n then
            symbol, amount_str, last = string.sub(molec_formula, 1, 2), string.sub(molec_formula, 3, l2n), l2n
        elseif f2 then
            symbol, amount_str, last = string.sub(molec_formula, 1, 2), "1", l2
        elseif f1n then
            symbol, amount_str, last = string.sub(molec_formula, 1, 1), string.sub(molec_formula, 2, l1n), l1n
        elseif f1 then
            symbol, amount_str, last = string.sub(molec_formula, 1, 1), "1", l1
        else
            error("Unable to parse the formula: '" .. molec_formula .. "' in " .. orig)
        end
        table.insert(string_codes,
        {
            form = symbol,
            amount = tonumber(amount_str) or 1
        })
        molec_formula = string.sub(molec_formula, last + 1)
    end
    return string_codes
end

local function rgb_fetch(chemical_formula)
    local rgb = {}
    local codes = get_molecule_codes(chemical_formula)
    for i = 1, #codes do
        local tint_table = table_of_chemical_elements[codes[i].form]
        if tint_table then
            local color_index = math.min(i, #tint_table)
            rgb[i] = tint_table[color_index]
        else
            rgb[i] = {0, 0, 0}
        end
    end
    return rgb
end

local function RGBtoHSV(color)
    local r, g, b = color.r, color.g, color.b
    local max, min = math.max(r, g, b), math.min(r, g, b)
    local range = max - min
    local h = 0
    if range > 0 then
        if max == r then h = (g - b) / range * 60
        elseif max == g then h = (2 + (b - r) / range) * 60
        elseif max == b then h = (4 + (r - g) / range) * 60 end
    end
    if h < 0 then h = h + 360 end
    return { h = h, s = (max == 0 and 0 or range / max), v = max, a = color.a or 1 }
end

local function HSVtoRGB(color)
    local h, s, v = color.h, color.s, color.v
    local function f(n)
        local k = (n + h / 60) % 6
        return v - v * s * math.max(math.min(k, 4 - k, 1), 0)
    end
    return { r = f(5), g = f(3), b = f(1), a = color.a or 1 }
end

function TIMSABA.functions.fluid_color(chemical_formula)
    chemical_formula = chemical_formula:gsub("%s+", "") -- ???
    local codes = get_molecule_codes(chemical_formula)
    local rgb = rgb_fetch(chemical_formula)
    local red, green, blue, comb = 0, 0, 0, 0
    for i, colour in ipairs(rgb) do
        local amt = codes[i].amount
        local alpha = colour[4] or 1
        red = red + ((colour[1] / 255) ^ 2 * amt * alpha)
        green = green + ((colour[2] / 255) ^ 2 * amt * alpha)
        blue = blue + ((colour[3] / 255) ^ 2 * amt * alpha)
        comb = comb + (amt * alpha)
    end
    local res = { r = math.sqrt(red / comb), g = math.sqrt(green / comb), b = math.sqrt(blue / comb) }
    local hsv = RGBtoHSV(res)
    if hsv.s > 0.02 then
        hsv.v = 0.8 * hsv.v
        hsv.s = 1 - 0.60 * (1 - hsv.s)
    else
        hsv.v = hsv.v * 0.95
        hsv.s = 0
    end
    return HSVtoRGB(hsv)
end

local function total_shade(chemical_formula)
    local change = 0
    local array = get_molecule_codes(chemical_formula)
    for i = 1, #array do
        change = change + array[i].amount
    end
    return change
end

function TIMSABA.functions.flow_color(chemical_formula)
    local change = math.ceil(total_shade(chemical_formula) * 1.2)
    local new_formula = chemical_formula .. "H" .. change
    return TIMSABA.functions.fluid_color(new_formula)
end

function TIMSABA.functions.create_gas_tech_icon(tints)
    if tints then
        if type(tints) ~= "table" then
            local reference = get_molecule_codes(tints)
            tints =
            {
                top = unify_tint(table_of_chemical_elements[(reference[1] or {form = "unknown"}).form][1] or {}),
                mid = unify_tint(table_of_chemical_elements[(reference[2] or {form = "unknown"}).form][2] or {}),
                bot = unify_tint(table_of_chemical_elements[(reference[3] or {form = "unknown"}).form][3] or {}),
            }
        else
            tints.top = unify_tint(tints.top or tints[1] or nil)
            tints.mid = unify_tint(tints.mid or tints[2] or nil)
            tints.bot = unify_tint(tints.bot or tints[3] or nil)
        end
    else
        tints = {}
    end
    return
    {
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-base.png",
            icon_size = 604,
            scale = 32 / 604,
            tint = {r = 0.25, g = 0.25, b = 0.25, a = 0.7}
        },
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-top.png",
            icon_size = 604,
            scale = 32 / 604,
            tint = tints.top
        },
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-mid.png",
            icon_size = 604,
            scale = 32 / 604,
            tint = tints.mid
        },
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-gas/gas-tech-bot.png",
            icon_size = 604,
            scale = 32 / 604,
            tint = tints.bot
        }
    }
end

function TIMSABA.functions.create_liquid_fluid_icon(molecule_icon, tints)
    if molecule_icon then
        if type(molecule_icon) ~= "table" then
            molecule_icon =
            {
                icon = molecule_icon,
                icon_size = 64
            }
        else
            molecule_icon.icon = molecule_icon.icon or molecule_icon[1] or nil
            if molecule_icon.icon then
                molecule_icon.icon_size = molecule_icon.icon_size or molecule_icon[2] or 64
            else
                molecule_icon.icon = "__angelsrefininggraphics__/graphics/icons/void.png"
                molecule_icon.icon_size = 32
            end
        end
        molecule_icon.shift = molecule_icon.shift or molecule_icon[3] or { -10, -10 }
        molecule_icon.scale = molecule_icon.scale or molecule_icon[4] or 15 / molecule_icon.icon_size
        molecule_icon.tint = molecule_icon.tint or molecule_icon[5] or nil
        molecule_icon[1] = nil
        molecule_icon[2] = nil
        molecule_icon[3] = nil
        molecule_icon[4] = nil
        molecule_icon[5] = nil
    else
        molecule_icon = nil
    end
    if tints then
        if type(tints) ~= "table" then
            local reference = get_molecule_codes(tints)
            tints =
            {
                top = unify_tint(table_of_chemical_elements[(reference[1] or {form = "unknown"}).form][1] or {}),
                mid = unify_tint(table_of_chemical_elements[(reference[2] or {form = "unknown"}).form][2] or {}),
                bot = unify_tint(table_of_chemical_elements[(reference[3] or {form = "unknown"}).form][3] or {}),
            }
        else
            tints.top = unify_tint(tints.top or tints[1] or nil)
            tints.mid = unify_tint(tints.mid or tints[2] or nil)
            tints.bot = unify_tint(tints.bot or tints[3] or nil)
        end
    else
        tints = {}
    end
    return
    {
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-base.png",
            icon_size = 330,
            scale = 32 / 330,
            tint = {r = 0.25, g = 0.25, b = 0.25, a = 0.7},
            shift = molecule_icon and {3.5, 0} or nil
        },
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-top.png",
            icon_size = 330,
            scale = 32 / 330,
            tint = tints.top,
            shift = molecule_icon and {3.5, 0} or nil
        },
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-mid.png",
            icon_size = 330,
            scale = 32 / 330,
            tint = tints.mid,
            shift = molecule_icon and {3.5, 0} or nil
        },
        {
            icon = "__angelsrefininggraphics__/graphics/icons/angels-liquid/liquid-item-bot.png",
            icon_size = 330,
            scale = 32 / 330,
            tint = tints.bot,
            shift = molecule_icon and {3.5, 0} or nil
        },
        molecule_icon
    }
end