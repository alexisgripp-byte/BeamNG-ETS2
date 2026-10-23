-- beamng_ets2_core/hud.lua
-- A minimap and HUD-like overlay prototype for the BeamNG-ETS2 concept.

local HUD = {}
HUD.__index = HUD

function HUD.new(config)
  local self = setmetatable({}, HUD)
  self.config = config.minimap
  self.playerX = 0
  self.playerY = 0
  self.routePoints = self.config.routePoints or {}
  self.visible = true
  return self
end

function HUD:setPlayerPosition(x, y)
  self.playerX = x
  self.playerY = y
end

function HUD:worldToHud(x, y)
  local worldWidth = 300
  local worldHeight = 300

  local mapX = ((x / worldWidth) * (self.config.width - 20)) + 10
  local mapY = ((y / worldHeight) * (self.config.height - 20)) + 10
  return mapX, mapY
end

function HUD:renderMinimap()
  if not self.visible then
    return
  end

  local hudX, hudY = self:worldToHud(self.playerX, self.playerY)
  print("[HUD] Minimap: " .. self.config.width .. "x" .. self.config.height)
  print("[HUD] Player marker: " .. hudX .. ", " .. hudY)

  for index, point in ipairs(self.routePoints) do
    local routeX, routeY = self:worldToHud(point.x, point.y)
    print("[HUD] Route marker " .. index .. ": " .. routeX .. ", " .. routeY)
  end
end

function HUD:renderSpeedometer(speed)
  print("[HUD] Speed: " .. tostring(speed) .. " km/h")
end

function HUD:renderCargoStatus(cargo)
  print("[HUD] Cargo: " .. tostring(cargo or "none"))
end

return HUD
