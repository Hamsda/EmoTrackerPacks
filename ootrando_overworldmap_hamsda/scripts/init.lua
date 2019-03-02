Tracker:AddItems("items/options.json")
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")
Tracker:AddItems("items/sequences.json")

ScriptHost:LoadScript("scripts/logic.lua")

Tracker:AddMaps("maps/maps.json")

Tracker:AddLocations("locations/overworld.json")
Tracker:AddLocations("locations/dung_reg.json")
Tracker:AddLocations("locations/dung_reg_keys.json")
Tracker:AddLocations("locations/dung_mq.json")
Tracker:AddLocations("locations/dung_mq_keys.json")

Tracker:AddLayouts("layouts/shared.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/capture.json")
Tracker:AddLayouts("layouts/broadcast.json")