local map_settings = data.raw["map-settings"]["map-settings"]
map_settings.pollution.enabled = true
map_settings.enemy_evolution.enabled = true
map_settings.enemy_expansion.enabled = true

require("prototypes-final-fix.duplicate-items-and-fluids.base")
require("prototypes-final-fix.duplicate-items-and-fluids.bobs")
require("prototypes-final-fix.duplicate-items-and-fluids.angels")
require("prototypes-final-fix.duplicate-items-and-fluids.space-age")

-- FIRST CIRCLE PLANETS
-- nauvis
-- vulcanus
-- gleba
-- fulgora

-- SECOND CIRCLE PLANETS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.moshine")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.arig")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.hyarion")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.tellus")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.corrundum")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.castra")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.shchierbin")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.muria")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.pelagos")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.apia-carnova")

-- THIRD CIRCLE PLANETS
-- aquilo
require("prototypes-final-fix.duplicate-items-and-fluids.planet.paracelsin")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.maraxsis")

-- FOURTH CIRCLE PLANETS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.vesta")

-- MOONS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.muluna")
-- panglia
require("prototypes-final-fix.duplicate-items-and-fluids.planet.frozeta")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.terrapalus")
require("prototypes-final-fix.duplicate-items-and-fluids.planet.lignumis")

-- FINAL CIRCLE PLANETS
require("prototypes-final-fix.duplicate-items-and-fluids.planet.shattered")

-- ???
require("prototypes-final-fix.duplicate-items-and-fluids.planet.foliax")
-- obsidiax
-- crucible
require("prototypes-final-fix.duplicate-items-and-fluids.planet.ribbonia")
-- rubia
-- cubium
require("prototypes-final-fix.duplicate-items-and-fluids.planet.nexus")

require("prototypes-final-fix.duplicate-items-and-fluids.clowns")
require("prototypes-final-fix.duplicate-items-and-fluids.mods")

require("prototypes-final-fix.mods-final-fix.flare-stack")
require("prototypes-final-fix.mods-final-fix.rocket-silo-construction")
require("prototypes-final-fix.mods-final-fix.bobs-new")
require("prototypes-final-fix.mods-final-fix.mods-update-icons")

require("prototypes-final-fix.final-fix-recipe-barreling")
require("prototypes-final-fix.final-fix-recipe-voids")
require("prototypes-final-fix.final-fix-mods")
require("prototypes-final-fix.final-fix-weights")
require("prototypes-final-fix.final-fix-entities-yelds")
require("prototypes-final-fix.final-fix-recycling")
require("prototypes-final-fix.final-fix-recipe")
require("prototypes-final-fix.final-fix-technology")
require("prototypes-final-fix.final-fix-horogon-balance")
require("prototypes-final-fix.final-fix-module")
require("prototypes-final-fix.final-fix-settings")
require("prototypes-final-fix.final-fix-autoplace-controls")
require("prototypes-final-fix.final-fix-simulation")
require("prototypes-final-fix.final-fix-entities")
require("prototypes-final-fix.final-fix-fuel-categories")
require("prototypes-final-fix.final-fix-prototypes-deleted")

require("prototypes-final-fix.multi-building.scripting")
require("prototypes-final-fix.multi-building.entities")

require("prototypes-final-fix.tips-and-tricks.tips-and-tricks")
require("prototypes-final-fix.tips-and-tricks.final-fix-tips-and-tricks")