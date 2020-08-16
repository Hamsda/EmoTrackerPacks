local variant = Tracker.ActiveVariantUID
local has_map = variant ~= "var_minimalist" and (not variant:find("itemsonly"))
local has_keys = variant:find("keysanity")
local is_er = variant:find("entrance")



if has_map then
  if is_er then
    Tracker:AddItems("items/cap_grottos.json")
    Tracker:AddItems("items/cap_houses.json")
    Tracker:AddItems("items/cap_dungeons.json")
    Tracker:AddItems("items/cap_overworld.json")
  else
    Tracker:AddItems("items/tricks.json")
    Tracker:AddItems("items/sequences.json")
  end
end
Tracker:AddItems("items/cap_items.json")
Tracker:AddItems("items/counters.json")
Tracker:AddItems("items/options.json")
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")

ScriptHost:LoadScript("scripts/logic.lua")

if has_map then
  if is_er then
    Tracker:AddMaps("maps/maps_entrance.json")
    Tracker:AddLocations("locations/overworld_entrance.json")
  else
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLocations("locations/overworld.json")
    Tracker:AddLocations("locations/dung_reg.json")
    Tracker:AddLocations("locations/dung_mq.json")
    Tracker:AddLayouts("layouts/options.json")
  end
end

if is_er then
  ScriptHost:LoadScript("scripts/update_entrance.lua")
else
  ScriptHost:LoadScript("scripts/update.lua")
end
tracker_on_accessibility_updated()

if has_keys then
  Tracker:AddLayouts("layouts/dungeon_grids_keysanity.json")
else
  Tracker:AddLayouts("layouts/dungeon_grids.json")
end
Tracker:AddLayouts("layouts/item_grids.json")
if is_er then
  Tracker:AddLayouts("layouts/counters_entrance.json")
  Tracker:AddLayouts("layouts/layouts_entrance.json")
  Tracker:AddLayouts("layouts/capture_entrance.json")
else
  Tracker:AddLayouts("layouts/counters.json")
  Tracker:AddLayouts("layouts/layouts.json")
  Tracker:AddLayouts("layouts/capture.json")
end
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")


--change GF key counter in this variant only going to 1 because of the default settings for GF
if variant == "var_itemsonly_keysanity" then
  local gf = Tracker:FindObjectForCode("setting_gerudo")
  if gf then
    gf.CurrentStage = 0
  end
end