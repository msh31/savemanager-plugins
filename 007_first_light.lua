config = {
    show_parent_path = true
}
function find_saves()
    local games = {}
    -- if is_windows() then
    --     local path = home_dir() .. "/Saved Games/"
    --     if path_exists(path) then
    --             games[#games + 1] = { game_name = "007 First Light", appid = "3768760", save_path = path }
    --     end
    -- else
    if is_linux() then
        local libs = steam_library_paths() --this is linux only which kinda hinders the windows vesion since thats stored here -> <Steam-folder>\userdata\<user-id>\3768760\ oh wait, its easy to add but fuck that
        for _, lib in ipairs(libs) do
            local path = lib .. "/steamapps/compatdata/3768760/pfx/drive_c/users/steamuser/Program Files (x86)/Steam/userdata/"
            if path_exists(path) then
                games[#games + 1] = { game_name = "007 First Light", appid = "3768760", save_path = path }
            end
        end
    end
    return games
end
