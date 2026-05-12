for name in pairs(data.raw.item) do
    if string.find(name, "barrel") and name ~= "barrel" and name ~= "angels-barreling-pump" then
        data.raw.item[name] = nil
    end
end

for name in pairs(data.raw.recipe) do
    if string.find(name, "barrel") and name ~= "barrel" and name ~= "angels-barreling-pump" then
        data.raw.recipe[name] = nil
    end
end

require("prototypes-final-fix.recipe-barreling")
require("prototypes-final-fix.recipe-voids")

require("prototypes-final-fix.duplicate-items-and-fluids.base")
require("prototypes-final-fix.duplicate-items-and-fluids.bobs")
require("prototypes-final-fix.duplicate-items-and-fluids.angels")
require("prototypes-final-fix.duplicate-items-and-fluids.space-age")
require("prototypes-final-fix.duplicate-items-and-fluids.arig")
require("prototypes-final-fix.duplicate-items-and-fluids.castra")
require("prototypes-final-fix.duplicate-items-and-fluids.corrundum")
--require("prototypes-final-fix.duplicate-items-and-fluids.cubium")
require("prototypes-final-fix.duplicate-items-and-fluids.frozeta")
require("prototypes-final-fix.duplicate-items-and-fluids.hyarion")
require("prototypes-final-fix.duplicate-items-and-fluids.maraxsis")
require("prototypes-final-fix.duplicate-items-and-fluids.moshine")
require("prototypes-final-fix.duplicate-items-and-fluids.muluna")
--require("prototypes-final-fix.duplicate-items-and-fluids.nexus")
require("prototypes-final-fix.duplicate-items-and-fluids.paracelsin")
require("prototypes-final-fix.duplicate-items-and-fluids.shattered")
require("prototypes-final-fix.duplicate-items-and-fluids.shchierbin")
require("prototypes-final-fix.duplicate-items-and-fluids.vesta")
require("prototypes-final-fix.duplicate-items-and-fluids.clowns")
require("prototypes-final-fix.duplicate-items-and-fluids.mods")

require("prototypes-final-fix.final-fix-mods")

require("prototypes-final-fix.recipe-barreling-mods")

require("prototypes-final-fix.final-fix-weights")
require("prototypes-final-fix.final-fix-entities-yelds")
require("prototypes-final-fix.final-fix-recycling")
require("prototypes-final-fix.final-fix-recipe")
require("prototypes-final-fix.final-fix-technology")
require("prototypes-final-fix.final-fix-module")
require("prototypes-final-fix.final-fix-settings")
require("prototypes-final-fix.final-fix-autoplace-controls")
require("prototypes-final-fix.final-fix-simulation")
require("prototypes-final-fix.final-fix-pipe")

require("prototypes-final-fix.mods-final-fix.flare-stack")

local map_settings = data.raw["map-settings"]["map-settings"]
map_settings.pollution.enabled = true
map_settings.enemy_evolution.enabled = true
map_settings.enemy_expansion.enabled = true