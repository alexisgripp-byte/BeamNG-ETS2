# BeamNG-ETS2

A BeamNG mod prototype focused on a trucking experience inspired by ETS2.

This project is designed to evolve into a custom BeamNG experience with:
- a startup menu
- truck and map selection
- spawn flow
- minimap and HUD updates
- runtime state tracking

## Current prototype stage

This repository now includes a fuller architecture for a BeamNG-style project:
- config layer for trucks and maps
- session state management
- UI/menu rendering
- HUD/minimap logic
- spawning abstraction
- bootstrap and runtime orchestration

## Folder structure

```text
README.md
assets/
  .gitkeep
docs/
  BEAMNG_MOD_SETUP.md
  BEAMNG_SETUP.md
  BEAMNG_INTEGRATION.md
  ROADMAP.md
src/
  beamng_ets2_core/
    config.lua
    state.lua
    ui.lua
    hud.lua
    spawn.lua
    menu.lua
    runtime.lua
    bootstrap.lua
    main.lua
```

## What this stage adds

This version introduces:
- a runtime layer to simulate the main BeamNG execution cycle
- a bootstrap system for startup orchestration
- a clearer structure for connecting to actual BeamNG APIs later
- a better separation between config, UI, runtime, and session state

## Important note

This is still a concept prototype, not a complete in-game BeamNG mod.
It should still be treated as a foundation that will require actual BeamNG assets and runtime integration.

## Next use

1. Copy the `src/beamng_ets2_core` folder into your BeamNG mod or testing workspace.
2. Add real truck files and map assets.
3. Hook the bootstrap/runtime modules into BeamNG's Lua API.
4. Replace simulation layers with real BeamNG calls when your mod environment is ready.

## License

For personal development and learning. Add a license if you plan to publish or share the project.
