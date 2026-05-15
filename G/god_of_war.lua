config = {
    show_parent_path = true
}

function find_saves()
    local games = {}
    if is_windows() then
        local path = home_dir() .. "/Saved Games/God of War"
        if path_exists(path) then
                games[#games + 1] = { game_name = "Ghost of Tsushima DIRECTOR'S CUT", appid = "2215430", save_path = path }
        end
    elseif is_linux() then
        local libs = steam_library_paths()
        for _, lib in ipairs(libs) do
            local path = lib .. "/steamapps/compatdata/1593500/pfx/drive_c/users/steamuser/Saved Games/God of War"
            if path_exists(path) then
                games[#games + 1] = { game_name = "God of War", appid = "1593500", save_path = path }
            end
        end
    end
    return games
end
