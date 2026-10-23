# BeamNG-ETS2

A project to combine BeamNG driving gameplay with ETS2-inspired vehicle selection, UI, and world flow.

This repository is a starter foundation for building a prototype where:
- the player launches from the BeamNG menu
- a custom vehicle selection screen appears
- a truck is spawned into the map
- the player drives around the world
- a minimap is shown in an ETS2-inspired style

## Goals

- Create a playable prototype with BeamNG as the simulation engine
- Add ETS2-inspired truck selection and menu flow
- Build a custom minimap overlay
- Keep everything modular so it can grow into a larger mod project

## Important note

This is a starter project and a concept framework. BeamNG modding depends on the game's Lua API, vehicle definitions, and asset pipeline. The exact code will need to be adapted to your BeamNG installation and mod structure.

Also, do not re-use copyrighted ETS2 assets or game data without permission or a valid license. This project should use original or legally acquired content, or an ETS2-inspired visual style instead of direct game asset cloning.

## Repository structure

```text
README.md
.gitignore
src/
  beamng_ets2_core/
    main.lua
    config.lua
    menu.lua
    spawn.lua
    minimap.lua
docs/
  ROADMAP.md
```

## Starter flow

1. Launch BeamNG
2. Load the mod or script bundle
3. Select a truck from the menu
4. Choose a map
5. Spawn the truck into the world
6. Drive and observe the custom minimap overlay

## Current status

This repository currently contains a starter codebase for the project foundation, including:
- a sample truck config
- menu system scaffold
- spawn logic
- minimap overlay prototype
- roadmap and next steps

## Next steps

- add actual BeamNG-compatible Lua integration
- create custom vehicle definitions
- add map and route markers
- improve the UI styling to feel more like ETS2
- add cargo, journey, and navigation systems

## License

This project is intended as a development starter for personal or learning use. Add your own license if you plan to publish or share it publicly.
