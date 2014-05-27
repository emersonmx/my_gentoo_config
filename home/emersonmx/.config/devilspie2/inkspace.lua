if get_window_class() == "Inkscape" then
    if string.find(get_window_name(), ".* - Inkscape") then
        maximize()
    end
end
