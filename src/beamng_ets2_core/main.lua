-- beamng_ets2_core/minimap.lua
-- A lightweight minimap prototype for ETS2-inspired HUD behavior.

local Minimap = {}
Minimap.__index = Minimap

function Minimap.new(config)
  local self = setmetatable({}, Minimap)
  self.config = config.minimap
  self.visible = true
  self.playerX = 0
  self.playerY = 0
  self.routePoints = {
    { x = 100, y = 60 },
    { x = 140, y = 110 },
    { x = 180, y = 160 }
  }
  return self
end

function Minimap:setPlayerPosition(x, y)
  self.playerX = x
  self.playerY = y
end

function Minimap:render()
  if not self.visible then
    return
  end

  -- This is a conceptual render layer.
  -- In BeamNG, this would typically be a UI element or screen overlay.
  print("Rendering minimap...")
  print("Player position: " .. self.playerX .. ", " .. self.playerY)
  print("Map size: " .. self.config.width .. "x" .. self.config.height)
end

function Minimap:drawRoute()
  for _, point in ipairs(self.routePoints) do
    print("Route point: " .. point.x .. ", " .. point.y)
  end
end

return Minimap
