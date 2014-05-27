PIDGIN_USE_WORKSPACE = 2

if get_workspace_count() >= PIDGIN_USE_WORKSPACE then
    if get_window_class() == "Pidgin" then
        change_workspace(PIDGIN_USE_WORKSPACE)
        set_window_workspace(PIDGIN_USE_WORKSPACE)
    end
end
