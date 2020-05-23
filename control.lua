require "util"

script.on_init(function() On_Init() end)
script.on_configuration_changed(function() On_Change() end)

function On_Init()
	local settings = settings.global
	game.surfaces[1].always_day=settings["always-day"]["value"]
end

function On_Change()	
	local settings = settings.global
	game.surfaces[1].always_day=settings["always-day"]["value"]
end

script.on_event(defines.events.on_runtime_mod_setting_changed,function ()
    local settings = settings.global
	game.surfaces[1].always_day=settings["always-day"]["value"]
end)