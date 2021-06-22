if HAS_MAP then
  if HAS_ER then
    ScriptHost:LoadScript("scripts/data_per_region.lua")
    ScriptHost:LoadScript("scripts/region_building.lua")
    ScriptHost:LoadScript("scripts/logic_helpers_entrance.lua")

    Tracker:AddMaps("maps/maps_entrance.json")

    Tracker:AddLocations("locations/overworld_entrance.json")
    Tracker:AddLocations("locations/exits_entrance.json")
    Tracker:AddLocations("locations/dungeons_entrance.json")

    ScriptHost:LoadScript("scripts/add_section_objects.lua")
  else
    ScriptHost:LoadScript("scripts/logic_helpers.lua")

    Tracker:AddMaps("maps/maps.json")

    Tracker:AddLocations("locations/overworld.json")
    Tracker:AddLocations("locations/dungeons.json")
  end
end
