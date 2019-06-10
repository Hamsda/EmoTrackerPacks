local variant = Tracker.ActiveVariantUID
local has_map = variant ~= "var_minimalist" and (not variant:find("itemsonly"))
local has_keys = variant:find("keysanity")
local is_er = variant:find("entrance")
--print("map", has_map)
--print("keys", has_keys)
--print("er", is_er)


if has_map then
  if is_er then
    Tracker:AddItems("items/options_entrance.json")
    Tracker:AddItems("items/cap_grottos.json")
    Tracker:AddItems("items/cap_houses.json")
    Tracker:AddItems("items/cap_dungeons.json")
    Tracker:AddItems("items/cap_overworld.json")
    Tracker:AddItems("items/counters.json")
  else
    Tracker:AddItems("items/options.json")
    Tracker:AddItems("items/sequences.json")
  end
end
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")

ScriptHost:LoadScript("scripts/logic.lua")
if is_er then
  ScriptHost:LoadScript("scripts/update_entrance.lua")
else
  ScriptHost:LoadScript("scripts/update.lua")
end

if has_map then
  Tracker:AddMaps("maps/maps.json")
  if is_er then
    Tracker:AddLocations("locations/overworld_entrance.json")
    Tracker:AddLayouts("layouts/options_entrance.json")
  else
    Tracker:AddLocations("locations/overworld.json")
    Tracker:AddLocations("locations/dung_reg.json")
    Tracker:AddLocations("locations/dung_reg_keys.json")
    Tracker:AddLocations("locations/dung_mq.json")
    Tracker:AddLocations("locations/dung_mq_keys.json")
    Tracker:AddLayouts("layouts/options.json")
  end
end
if has_keys then
  Tracker:AddLayouts("layouts/dungeon_grids_keysanity.json")
else
  Tracker:AddLayouts("layouts/dungeon_grids.json")
end
Tracker:AddLayouts("layouts/item_grids.json")
if is_er then
  Tracker:AddLayouts("layouts/counters.json")
  Tracker:AddLayouts("layouts/layouts_entrance.json")
  Tracker:AddLayouts("layouts/capture_entrance.json")
else
  Tracker:AddLayouts("layouts/layouts.json")
  Tracker:AddLayouts("layouts/capture.json")
end
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")


--fix GF key counter in this variant only going to 1 because of the default settings for GF
if variant == "var_itemsonly_keysanity" then
  local gf = Tracker:FindObjectForCode("setting_gerudo")
  if gf then
    gf.CurrentStage = 0
  end
end