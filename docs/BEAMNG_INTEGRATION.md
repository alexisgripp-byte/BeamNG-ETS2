-- beamng_ets2_core/main.lua
-- Bootstraps the BeamNG-ETS2 prototype and routes the app lifecycle.

local config = require("beamng_ets2_core.config")
local State = require("beamng_ets2_core.state")
local UI = require("beamng_ets2_core.ui")
local HUD = require("beamng_ets2_core.hud")
local SpawnSystem = require("beamng_ets2_core.spawn")
local Menu = require("beamng_ets2_core.menu")

local app = {
  config = config,
  state = State.new(config),
  ui = UI.new(config),
  hud = HUD.new(config),
  spawnSystem = SpawnSystem.new(config),
  menu = Menu.new(config),
  started = false
}

function app:init()
  self.state:openMenu()
  self.state:startSession()
  self.started = true
  print("[Main] BeamNG-ETS2 prototype initialized")
end

function app:showMenu()
  self.ui:renderMainMenu()
  self.menu:render()
end

function app:selectTruck(truckId)
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
  self.hud:renderSpeedometer(64)
  self.hud:renderCargoStatus("Cargo route")

  print("[Main] Session launched: " .. selection.truck .. " / " .. selection.map)
end

function app:runDemo()
  self:init()
  self:showMenu()
  self:launchSession()
end

app:runDemo()

return app
