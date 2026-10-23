-- beamng_ets2_core/config.lua
-- Basic project config for a BeamNG + ETS2 inspired prototype.

local config = {
  modName = "BeamNG-ETS2",
  version = "0.1.0",
  defaultMap = "smallgrid",
  defaultTruck = "et2_truck_prototype",

  trucks = {
    {
      id = "et2_truck_prototype",
      name = "ETS2 Prototype Truck",
      type = "tractor",
      color = "white",
      description = "Starter truck for early prototype testing."
    },
    {
      id = "et2_box_truck",
      name = "ETS2 Box Truck",
      type = "box",
      color = "red",
      description = "A heavier cargo-focused vehicle variant."
    },
    {
      id = "et2_van",
      name = "ETS2 Utility Van",
      type = "van",
      color = "blue",
      description = "A compact utility option for quick testing."
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
    routeColor = "#38bdf8"
  }
}

return config
