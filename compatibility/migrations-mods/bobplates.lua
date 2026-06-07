local run_migration = require("compatibility.migrations-mods.utils")

return function()
    if not prototypes.item["bob-ceramic-bearing-ball"] then
        local bobs_replacements =
        {
            ["bob-ceramic-bearing-ball"] = "timsaba-ceramic-bearing-ball",
            ["bob-ceramic-bearing"] = "timsaba-ceramic-bearing",
            ["bob-tungsten-plate"] = "timsaba-tungsten-plate",
            ["bob-tungsten-carbide"] = "timsaba-tungsten-carbide",
            ["bob-lithium"] = "timsaba-lithium"
        }
        run_migration(bobs_replacements)
    end
end