-- beamng_ets2_core/main.lua
-- Main entry point for the BeamNG-ETS2 prototype.

local config = require("beamng_ets2_core.config")
local Menu = require("beamng_ets2_core.menu")
local Minimap = require("beamng_ets2_core.minimap")

local app = {
  config = config,
  menu = Menu.new(config),
  minimap = Minimap.new(config),
  gameRunning = false
}

function app:start()
  self.menu:open()
  self.gameRunning = true

  print("BeamNG-ETS2 prototype started")
  print("Selected truck: " .. self.menu.selectedTruck)
  print("Selected map: " .. self.menu.selectedMap)
end

function app:selectVehicle(truckId)
  self.menu:selectTruck(truckId)
end

function app:selectMap(mapId)
  self.menu:selectMap(mapId)
end

function app:spawnVehicle()
  local selection = self.menu:getSelection()
  print("Spawning vehicle: " .. selection.truck .. " into map " .. selection.map)
  self.minimap:setPlayerPosition(120, 120)
  self.minimap:drawRoute()
  self.minimap:render()
end

function app:runPrototype()
  self:start()
  self:spawnVehicle()
end

-- Example usage
app:runPrototype()

return app
