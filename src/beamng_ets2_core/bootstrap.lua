-- beamng_ets2_core/bootstrap.lua
-- System bootstrap for the BeamNG-ETS2 prototype.

local config = require("beamng_ets2_core.config")
local State = require("beamng_ets2_core.state")
local UI = require("beamng_ets2_core.ui")
local HUD = require("beamng_ets2_core.hud")
local SpawnSystem = require("beamng_ets2_core.spawn")
local Menu = require("beamng_ets2_core.menu")
local Runtime = require("beamng_ets2_core.runtime")

local app = {
  config = config,
  state = State.new(config),
  ui = UI.new(config),
  hud = HUD.new(config),
  spawnSystem = SpawnSystem.new(config),
  menu = Menu.new(config),
  runtime = nil
}

function app:init()
  self.state:openMenu()
  self.state:startSession()
  self.runtime = Runtime.new(self)
  self.runtime:boot()
  print("[Bootstrap] Application initialized")
end

function app:renderMenu()
  self.ui:renderMainMenu()
  self.menu:render()
end

function app:selectVehicle(truckId)
  self.state:selectTruck(truckId)
  self.menu:selectTruck(truckId)
end

function app:selectMap(mapId)
  self.state:selectMap(mapId)
  self.menu:selectMap(mapId)
end

function app:launchSession()
  local selection = self.menu:getSelection()
  self.state:selectTruck(selection.truck)
  self.state:selectMap(selection.map)

  self.spawnSystem:spawnTruck(selection.truck, selection.map)
  self.hud:setPlayerPosition(120, 120)
  self.hud:renderMinimap()
  self.hud:renderSpeedometer(62)
  self.hud:renderCargoStatus("Cargo route")

  print("[Bootstrap] Session launched: " .. selection.truck .. " / " .. selection.map)
end

function app:run()
  self:init()
  self:renderMenu()
  self:launchSession()
  self.runtime:update(0.016)
end

return app
