local gleba = "gleba"
is_bacteria_ore = "is-bacteria-ore"
is_bacteria_cultivation = "is-bacteria-cultivation"
is_spoilage = "is-spoilage"
is_nutrients = "is-nutrients"
is_jellynut = "is-jellynut"
is_yumako = "is-yumako"
is_pentapod_egg_and_bioflux = "is-pentapod-egg-and-bioflux"
is_gleba_recipe = "is-gleba-recipe"
is_gleba_logistics = "is-gleba-logistics"
is_gleba_building = "is-gleba-building"
is_gleba_war = "is-gleba-war"
data:extend
({
    {
        type = item_group,
        name = gleba,
        order = y,
        icon = "__TIMSABA__/graphics/icons/space-age/gleba/gleba-planet.png",
        icon_size = 128,
    },
    {
        type = item_subgroup,
        name = is_bacteria_ore,
        group = gleba,
        order = a
    },
    {
        type = item_subgroup,
        name = is_bacteria_cultivation,
        group = gleba,
        order = b
    },
    {
        type = item_subgroup,
        name = is_spoilage,
        group = gleba,
        order = c
    },
    {
        type = item_subgroup,
        name = is_nutrients,
        group = gleba,
        order = d
    },
    {
        type = item_subgroup,
        name = is_jellynut,
        group = gleba,
        order = e
    },
    {
        type = item_subgroup,
        name = is_yumako,
        group = gleba,
        order = f
    },
    {
        type = item_subgroup,
        name = is_pentapod_egg_and_bioflux,
        group = gleba,
        order = g
    },
    {
        type = item_subgroup,
        name = is_gleba_recipe,
        group = gleba,
        order = h
    },
    {
        type = item_subgroup,
        name = is_gleba_logistics,
        group = gleba,
        order = i
    },
    {
        type = item_subgroup,
        name = is_gleba_building,
        group = gleba,
        order = j
    },
    {
        type = item_subgroup,
        name = is_gleba_war,
        group = gleba,
        order = k
    }
})

if mods [NoTimedSpoilage] then
    is_bacteria_fermentation = "is-bacteria-fermentation"
    data:extend
    ({
        {
            type = item_subgroup,
            name = is_bacteria_fermentation,
            group = gleba,
            order = b_a
        }
    })
end