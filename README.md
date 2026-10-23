# BeamNG-ETS2

A Windows-friendly BeamNG mod prototype designed around an ETS2-inspired menu, truck selection, map flow, and minimap HUD.

This project is a practical foundation for a custom driving experience where:
- the player opens a selection menu
- a truck is chosen
- a map is selected
- the truck is spawned into the scene
- a minimap displays position and route info in an ETS2-inspired style

## Project goal

The long-term goal is to combine BeamNG's driving simulation with a more structured, trucking-focused user experience inspired by ETS2.

## Current status

This repository contains a more advanced prototype foundation than the original scaffold:
- central app state management
- truck and map selection modules
- minimap/hud logic
- integration-ready startup flow
- project documentation for BeamNG use

## Repository structure

```text
README.md
assets/
  .gitkeep
docs/
  ROADMAP.md
  BEAMNG_SETUP.md
  BEAMNG_INTEGRATION.md
src/
  beamng_ets2_core/
    config.lua
    state.lua
    ui.lua
    hud.lua
    spawn.lua
    menu.lua
    main.lua
```

## How to use it

1. Copy the `src/beamng_ets2_core` folder into your BeamNG mod directory or script workspace.
2. Adjust the truck and map lists in `config.lua`.
3. Hook the `main.lua` entrypoint into your BeamNG startup flow.
4. Replace the placeholder logic with actual BeamNG mod API calls when you have your vehicle and map files ready.

## Important note

This repo is still a prototype and not a complete commercial conversion. It is intended as a mod foundation for your project, to be expanded with actual BeamNG assets and API integration.

## License

This project is for personal development and learning. Add a license if you plan to publish or share it publicly.
