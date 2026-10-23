-- beamng_ets2_core/runtime.lua
-- Runtime orchestration for a BeamNG-ETS2 prototype.

local Runtime = {}
Runtime.__index = Runtime

function Runtime.new(app)
  local self = setmetatable({}, Runtime)
  self.app = app
  self.running = false
  self.tickCount = 0
  return self
end

function Runtime:start()
  self.running = true
  print("[Runtime] BeamNG runtime started")
end

function Runtime:stop()
  self.running = false
  print("[Runtime] BeamNG runtime stopped")
end

function Runtime:update(dt)
  if not self.running then
    return
  end

  self.tickCount = self.tickCount + 1

  if self.tickCount % 10 == 0 then
    print("[Runtime] Tick " .. self.tickCount .. " | dt=" .. tostring(dt))
  end

  if self.app and self.app.hud then
    self.app.hud:renderMinimap()
  end
end

function Runtime:boot()
  self:start()
  print("[Runtime] Boot sequence complete")
end

return Runtime
