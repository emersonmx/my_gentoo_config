-- Standard awesome library
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")

home = os.getenv("HOME")
awesome_directory = home .. "/.config/awesome"

dofile(awesome_directory .. "/error.lua")
dofile(awesome_directory .. "/variables.lua")
dofile(awesome_directory .. "/tags.lua")
dofile(awesome_directory .. "/menu.lua")
dofile(awesome_directory .. "/wibox.lua")
dofile(awesome_directory .. "/mouse.lua")
dofile(awesome_directory .. "/key.lua")
dofile(awesome_directory .. "/rules.lua")
dofile(awesome_directory .. "/signals.lua")
