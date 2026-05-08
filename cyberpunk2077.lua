config = {
    show_parent_path = true
}
function find_saves()
    local games = {}
    if is_windows() then
        local path = home_dir() .. "/Saved Games/CD Projekt Red/Cyberpunk 2077"
        if path_exists(path) then
            games[#games + 1] = { game_name = "Cyberpunk 2077", appid = "1091500", save_path = path }
        end
    elseif is_linux() then
        local libs = steam_library_paths()
        for _, lib in ipairs(libs) do
            local path = lib .. "/steamapps/compatdata/1091500/pfx/drive_c/users/steamuser/Saved Games/CD Projekt Red/Cyberpunk 2077"
            if path_exists(path) then
                games[#games + 1] = { game_name = "Cyberpunk 2077", appid = "1091500", save_path = path }
            end
        end
    elseif is_macos() then
        local path = home_dir() .. "/Library/Application Support/CD Projekt Red/Cyberpunk 2077/saves"
        if path_exists(path) then
            games[#games + 1] = { game_name = "Cyberpunk 2077", appid = "1091500", save_path = path }
        end
    end
    return games
end
