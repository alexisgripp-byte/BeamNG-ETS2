-- beamng_ets2_core/main.lua
-- Main entry point for the BeamNG-ETS2 prototype.

local config = require("beamng_ets2_core.config")
local Menu = require("beamng_ets2_core.menu")
local SpawnSystem = require("beamng_ets2_core.spawn")
local Minimap = require("beamng_ets2_core.minimap")

local app = {
  config = config,
  menu = Menu.new(config),
  spawnSystem = SpawnSystem.new(config),
  minimap = Minimap.new(config),
  started = false
}

function app:start()
  self.menu:open()
  self.started = true
  print("BeamNG-ETS2 prototype started")
  print("Default truck: " .. self.config.defaultTruck)
  print("Default map: " .. self.config.defaultMap)
end

function app:selectVehicle(truckId)
  self.menu:selectTruck(truckId)
end

function app:selectMap(mapId)
  self.menu:selectMap(mapId)
end

function app:launchMission()
  local selection = self.menu:getSelection()
  self.spawnSystem:spawnTruck(selection.truck, selection.map)
  self.minimap:setPlayerPosition(120, 120)
  self.minimap:drawRoute()
  self.minimap:render()
end

function app:runDemo()
  self:start()
  self:launchMission()
end

return app
