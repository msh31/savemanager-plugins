config = {
    show_parent_path = true
}

function find_saves()
    local games = {}
    if is_windows() then
        local path = documents_dir() .. "/Marvel's Spider-Man Remastered/"
        if path_exists(path) then
                games[#games + 1] = { game_name = "Marvel's Spider-Man Remastered", appid = "1817070", save_path = path }
        end
    elseif is_linux() then
        local libs = steam_library_paths()
        for _, lib in ipairs(libs) do
            local path = lib .. "/steamapps/compatdata/1817070/pfx/drive_c/users/steamuser/Documents/Marvel's Spider-Man Remastered"
            if path_exists(path) then
                games[#games + 1] = { game_name = "Marvel's Spider-Man Remastered", appid = "1817070", save_path = path }
            end
        end
    end
    return games
end
