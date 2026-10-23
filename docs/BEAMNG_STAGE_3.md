# BeamNG Stage 3 integration guide

This document is for moving the project from prototype scaffolding into a real local BeamNG mod integration workflow.

## Goal

Stage 3 is the transition from “code structure” into “game runtime integration.”

The goal is to connect:
- truck selection
- map selection
- vehicle spawn
- HUD/minimap updates
- app state

with the actual BeamNG engine APIs and local mod files.

## Folder layout to target

Example local layout:

```text
BeamNG.drive/
  mods/
    beamng_ets2/
      lua/
        beamng_ets2_core/
          bootstrap.lua
          config.lua
          state.lua
          ui.lua
          hud.lua
          spawn.lua
          menu.lua
          runtime.lua
          loader.lua
          modInfo.lua
          main.lua
          stage3.lua
      ui/
      vehicles/
      levels/
```

If your local setup uses a different custom script folder, keep the same module naming pattern and load path structure.

## Startup pattern

The entrypoint should look like this conceptually:

```lua
local loader = require("beamng_ets2_core.loader")
loader.initialize()
```

Then, in the main mod update loop:

```lua
local loader = require("beamng_ets2_core.loader")
loader.onUpdate(dt)
```

## Actual integration targets

The `stage3.lua` file is the bridge between the prototype and the real BeamNG runtime. It should eventually be responsible for:
- loading the selected map
- spawning the selected truck
- setting the player vehicle state
- reading position and rotation
- updating the minimap based on live world data
- updating the HUD with speed, cargo, and world info

## Required replacements from placeholder code

The current prototype uses print-based simulation placeholders. These must be replaced with actual BeamNG calls such as:

- `beamng.loadLevel(mapId)`
- `beamng.spawnVehicle(truckId, spawnPosition)`
- camera setup calls
- player info access
- UI overlays or HUD rendering

## Required mod assets

Before you can fully test Stage 3 in-game, the following are needed:
- a truck model or placeholder vehicle definition
- a map or compatible world file
- minimap texture or route overlay assets
- any UI texture files for your menu and HUD

## Validation checklist

Use this checklist before considering the project Stage 3 complete:

- [ ] files are copied into the local BeamNG mod workspace
- [ ] loader entrypoint runs without errors
- [ ] selected map loads
- [ ] selected truck spawns
- [ ] minimap receives live position data
- [ ] HUD updates with speed and route info
- [ ] project runs without Lua errors in the local BeamNG environment

## Realistic expectation

This is still not a commercial game conversion. It is a proper integration step between a prototype and a real BeamNG mod. The actual path to gameplay still depends on real BeamNG vehicle assets and the engine’s Lua APIs.
