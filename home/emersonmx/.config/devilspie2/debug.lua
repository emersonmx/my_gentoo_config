SHOW_DEBUG_INFO = false

if SHOW_DEBUG_INFO then
    debug_print("--------------------------------------------------")
    debug_print("Window XID: " .. get_window_xid())
    debug_print("Window Name: " .. get_window_name())
    debug_print("Application name: " .. get_application_name())
    debug_print("Window class: " .. get_window_class())
    debug_print("Window type:" .. get_window_type())
    debug_print("Window class instance: " .. get_class_instance_name())
end