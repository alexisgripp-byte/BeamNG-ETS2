-- beamng_ets2_core/config.lua
-- Realistic project configuration for a BeamNG + ETS2 inspired prototype.

local config = {
  modName = "BeamNG-ETS2",
  version = "0.3.0",
  defaultMap = "smallgrid",
  defaultTruck = "et2_prototype_truck",

  ui = {
    menuTitle = "BeamNG-ETS2",
    menuSubtitle = "Truck Selection",
    mapTitle = "Map Selection",
    minimapTitle = "Navigation",
    backgroundColor = "#0b1220",
    accentColor = "#38bdf8",
    borderColor = "#34d399",
    textColor = "#e2e8f0"
  },

  trucks = {
    {
      id = "et2_prototype_truck",
      name = "Prototype Truck",
      type = "tractor",
      color = "white",
      description = "Starter truck for early concept testing.",
      spawnPosition = { x = 0, y = 0, z = 2 }
    },
    {
      id = "et2_box_truck",
      name = "Box Truck",
      type = "box",
      color = "red",
      description = "Cargo-focused variant for route simulation.",
      spawnPosition = { x = 5, y = 2, z = 2 }
    },
    {
      id = "et2_van",
      name = "Utility Van",
      type = "van",
      color = "blue",
      description = "Compact delivery vehicle for quick testing.",
      spawnPosition = { x = 10, y = 5, z = 2 }
    }
  },

  maps = {
    { id = "smallgrid", name = "Small Grid", worldSize = 300 },
    { id = "industrial", name = "Industrial Test Map", worldSize = 600 },
    { id = "city", name = "City Route", worldSize = 900 }
  },

  minimap = {
    width = 240,
    height = 240,
    scale = 1.0,
    backgroundColor = "#091522",
    borderColor = "#34d399",
    playerColor = "#fbbf24",
    routeColor = "#38bdf8",
    worldPadding = 30,
    routePoints = {
      { x = 60, y = 40 },
      { x = 120, y = 110 },
      { x = 170, y = 200 }
    }
  }
}

return config
