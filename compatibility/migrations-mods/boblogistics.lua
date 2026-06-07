local run_migration = require("compatibility.migrations-mods.utils")

return function()
    if not prototypes.item["bob-turbo-transport-belt"] then
        local bobs_replacements =
        {
            ["bob-turbo-transport-belt"]      = "timsaba-turbo-transport-belt",
            ["bob-turbo-underground-belt"]    = "timsaba-turbo-underground-belt",
            ["bob-turbo-splitter"]            = "timsaba-turbo-splitter",

            ["bob-stone-pipe"]                = "timsaba-stone-pipe",
            ["bob-stone-pipe-to-ground"]      = "timsaba-stone-pipe-to-ground",
            ["bob-ceramic-pipe"]              = "timsaba-ceramic-pipe",
            ["bob-ceramic-pipe-to-ground"]    = "timsaba-ceramic-pipe-to-ground",
            ["bob-nitinol-pipe"]              = "timsaba-nitinol-pipe",
            ["bob-nitinol-pipe-to-ground"]    = "timsaba-nitinol-pipe-to-ground",
        }

        run_migration(bobs_replacements)
    end
end