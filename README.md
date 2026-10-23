# BeamNG-ETS2

A BeamNG mod prototype focused on an ETS2-inspired trucking experience.

## Project status

This project is now moving into Stage 3: BeamNG local mod integration.

Stage 1: concept and repository setup
Stage 2: prototype architecture and runtime scaffolding
Stage 3: local BeamNG integration and real game wiring
Stage 4: playable in-engine test and validation
Stage 5: expansion and polish

At this stage, the repo is no longer just idea-level scaffolding. It includes:
- config for trucks and maps
- menu flow
- HUD/minimap prototype
- app state
- runtime/bootstrap structure
- local BeamNG integration checklist

## Important note

This repo is still a prototype foundation. It is not yet a final in-game mod and cannot be launched directly in BeamNG from GitHub alone. The code must be moved into a local BeamNG mod workspace and wired to the actual BeamNG Lua API and assets.

## Repository structure

```text
README.md
assets/
  .gitkeep
docs/
  BEAMNG_LOCAL_INSTALL.md
  BEAMNG_MOD_SETUP.md
  BEAMNG_SETUP.md
  BEAMNG_INTEGRATION.md
  BEAMNG_STAGE_3.md
  ROADMAP.md
src/
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
```

## Stage 3 goals

The focus now is to connect the prototype to a real BeamNG local setup:
- place the module into a BeamNG mod folder
- add a real startup entrypoint
- call BeamNG runtime APIs for map loading and vehicle spawn
- bind HUD/minimap updates to live player data
- validate the project in a local BeamNG environment

## BeamNG local setup

Use the project files as a local mod scaffold and place them alongside a BeamNG installation in a custom mod directory or your local project workspace. The exact path depends on your BeamNG setup, but it should follow the general pattern:

```text
BeamNG.drive/
  mods/
    beamng_ets2/
      lua/
        beamng_ets2_core/
      ui/
      vehicles/
      levels/
```

or a custom script workspace that your local mod loader can access.

## Stage 3 checklist

- [ ] copy the `src/beamng_ets2_core` files into the local BeamNG mod workspace
- [ ] add a startup script that calls the loader
- [ ] replace placeholder print statements with real BeamNG API calls
- [ ] confirm the selected truck spawns into the world
- [ ] confirm the chosen map loads correctly
- [ ] confirm minimap coordinates follow the vehicle position
- [ ] confirm the HUD updates live while driving

## Next step

The next step is to implement the actual BeamNG runtime hooks in a local BeamNG environment, using stage3.lua as the integration bridge between the prototype state and the real BeamNG engine.
