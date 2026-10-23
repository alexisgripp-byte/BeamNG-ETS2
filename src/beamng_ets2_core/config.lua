-- beamng_ets2_core/config.lua
-- Main configuration for the BeamNG-ETS2 prototype.

local config = {
  modName = "BeamNG-ETS2",
  version = "0.2.0",
  defaultMap = "smallgrid",
  defaultTruck = "et2_prototype_truck",

  trucks = {
    {
      id = "et2_prototype_truck",
      name = "Prototype Truck",
      type = "tractor",
      color = "white",
      description = "Starter truck for the first concept build."
    },
    {
      id = "et2_box_truck",
      name = "Box Truck",
      type = "box",
      color = "red",
      description = "A cargo-focused variant."
    },
    {
      id = "et2_van",
      name = "Utility Van",
      type = "van",
      color = "blue",
      description = "A smaller vehicle for quick tests."
    }
  },

  maps = {
    { id = "smallgrid", name = "Small Grid" },
    { id = "industrial", name = "Industrial Test Map" },
    { id = "city", name = "City Route" }
  },

  minimap = {
    width = 240,
    height = 240,
    scale = 1.0,
    backgroundColor = "#091522",
    borderColor = "#34d399",
    playerColor = "#fbbf24",
    routeColor = "#38bdf8",
    routePoints = {
      { x = 60, y = 40 },
      { x = 120, y = 120 },
      { x = 170, y = 190 }
    }
  }
}

return config
