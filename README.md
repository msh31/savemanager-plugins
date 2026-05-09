# SaveManager Plugins
Community plugins for [SaveManager](https://github.com/msh31/SaveManager). Plugins add support for new games without modifying the main program.

## Installation
1. Download the `.lua` file for the game you want
2. Drop it into your plugin directory:
   - **Linux:** `~/.config/savemanager/plugins/`
   - **Windows:** `%USERPROFILE%\savemanager\plugins\`
   - **macOS:** `~/Library/Application Support/savemanager/plugins/`
3. Refresh in-app (Ctrl+R) or restart

Plugins load from the plugins directory directly, ignore the folder structure in this repo, it's just for browsing.

## Plugins
| Game | File | Status | Platforms |
|------|------|--------|-----------|
| Cyberpunk 2077 | [cyberpunk2077.lua](C/cyberpunk2077.lua) | working | Linux, Windows, macOS |
| Hitman 2 | — | wanted | — |

- Working
    - Tested and stable
- Experimental
    - May have issues and needs testing
- Wanted
    - Open for contribution

## Writing a plugin
See [plugin docs](https://github.com/msh31/SaveManager/blob/main/docs/SCRIPTING.md) in the main repo.

Quick version: a plugin is a `.lua` file that defines `find_saves()` returning a table with `game_name`, `appid`, and `save_path`. 

## Contributing
Pick a `wanted` entry, write the detector, open a PR. Add your plugin to the table above with status `experimental` until others confirm it works.
