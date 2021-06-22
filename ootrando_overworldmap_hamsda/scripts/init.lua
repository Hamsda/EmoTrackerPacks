object_cache = {}
function get_object(name)
  if object_cache[name] then
    return object_cache[name]
  end
  local object = Tracker:FindObjectForCode(name)
  if object then
    object_cache[name] = object
    return object
  end
end

amount_cache = {}
function clear_amount_cache()
  amount_cache = {}
end
function has(item, amount)
  if not amount_cache[item] then
    amount_cache[item] = Tracker:ProviderCountForCode(item)
  end
  local count = amount_cache[item] or 0
  amount = tonumber(amount)
  if not amount then
    amount = 1
  end
  return count >= amount
end
function has_exact(item, amount)
  if not amount_cache[item] then
    amount_cache[item] = Tracker:ProviderCountForCode(item)
  end
  local count = amount_cache[item] or 0
  amount = tonumber(amount)
  if not amount then
    print("error! has_exact - missing amount for item:", item)
    return false
  end
  return count == amount
end

settings_cache = {}
queued_changes = {}
function not_like_cache(setting, current)
  if settings_cache[setting] == nil or settings_cache[setting] ~= current then
    queued_changes[setting] = current
    return true
  end
  return false
end
function apply_queued_changes()
  for setting, value in pairs(queued_changes) do
    settings_cache[setting] = value
  end
  queued_changes = {}
end

variant = Tracker.ActiveVariantUID
has_map = variant ~= "var_minimalist" and (not variant:find("itemsonly"))
is_keys = variant:find("keysanity")
is_er = variant:find("entrance")

ScriptHost:LoadScript("scripts/sdk/class.lua")
ScriptHost:LoadScript("scripts/sdk/custom_item.lua")

if has_map then
  if is_er then
    Tracker:AddItems("items/capture_entrance.json")
    Tracker:AddItems("items/options_entrance.json")
  else
    Tracker:AddItems("items/capture_spawns.json")
  end
  Tracker:AddItems("items/sequences.json")
  Tracker:AddItems("items/capture_items.json")
  Tracker:AddItems("items/tricks.json")
  Tracker:AddItems("items/options.json")
end
Tracker:AddItems("items/counters.json")
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")

ScriptHost:LoadScript("scripts/custom_prog_badge.lua")
local song_badges = {"images/overlay_song_zelda.png", "images/overlay_song_epona.png", "images/overlay_song_saria.png", "images/overlay_song_sun.png", "images/overlay_song_time.png", "images/overlay_song_storms.png", "images/overlay_song_minuet.png", "images/overlay_song_bolero.png", "images/overlay_song_serenade.png", "images/overlay_song_requiem.png", "images/overlay_song_nocturne.png", "images/overlay_song_prelude.png"}
ProgBadgeItem("Zelda's Lullaby", "lullaby", "images/song_zelda.png", song_badges)
ProgBadgeItem("Epona's Song", "epona", "images/song_epona.png", song_badges)
ProgBadgeItem("Saria's Song", "saria", "images/song_saria.png", song_badges)
ProgBadgeItem("Sun's Song", "sun", "images/song_sun.png", song_badges)
ProgBadgeItem("Song of Time", "time", "images/song_time.png", song_badges)
ProgBadgeItem("Song of Storms", "storm", "images/song_storms.png", song_badges)
ProgBadgeItem("Minuet of Forest", "minuet", "images/song_minuet.png", song_badges)
ProgBadgeItem("Bolero of Fire", "bolero", "images/song_bolero.png", song_badges)
ProgBadgeItem("Serenade of Water", "serenade", "images/song_serenade.png", song_badges)
ProgBadgeItem("Requiem of Spirit", "requiem", "images/song_requiem.png", song_badges)
ProgBadgeItem("Nocturne of Shadow", "nocturne", "images/song_nocturne.png", song_badges)
ProgBadgeItem("Prelude of Light", "prelude", "images/song_prelude.png", song_badges)

if is_er then
  ScriptHost:LoadScript("scripts/regions.lua")
  ScriptHost:LoadScript("scripts/logic_entrance.lua")
else
  ScriptHost:LoadScript("scripts/logic.lua")
end

if has_map then
  Tracker:AddLayouts("layouts/tricks.json")
  if is_er then
    Tracker:AddMaps("maps/maps_entrance.json")
    Tracker:AddLocations("locations/overworld_entrance.json")
    Tracker:AddLocations("locations/exits_entrance.json")
    Tracker:AddLocations("locations/dungeons_entrance.json")
    Tracker:AddLayouts("layouts/options_entrance.json")
  else
    Tracker:AddMaps("maps/maps.json")
    Tracker:AddLocations("locations/overworld.json")
    Tracker:AddLocations("locations/dungeons.json")
    Tracker:AddLayouts("layouts/options.json")
  end

  ScriptHost:LoadScript("scripts/update_shared.lua")
  if is_er then
    ScriptHost:LoadScript("scripts/update_entrance.lua")
  else
    ScriptHost:LoadScript("scripts/update.lua")
  end
  tracker_on_accessibility_updated()
end

if is_keys then
  Tracker:AddLayouts("layouts/dungeon_grids_keysanity.json")
else
  Tracker:AddLayouts("layouts/dungeon_grids.json")
end
Tracker:AddLayouts("layouts/item_grids.json")
if has_map then
  if is_er then
    Tracker:AddLayouts("layouts/counters_entrance.json")
    Tracker:AddLayouts("layouts/layouts_entrance.json")
    Tracker:AddLayouts("layouts/capture_entrance.json")
  else
    Tracker:AddLayouts("layouts/counters.json")
    Tracker:AddLayouts("layouts/layouts.json")
    Tracker:AddLayouts("layouts/capture_spawns.json")
  end
end
Tracker:AddLayouts("layouts/capture.json")
Tracker:AddLayouts("layouts/tracker.json")
Tracker:AddLayouts("layouts/broadcast.json")

--change GF key counter in this variant only going to 1 because of the default settings for GF
if variant == "var_itemsonly_keysanity" then
  local gf = get_object("setting_gerudo")
  if gf then
    gf.CurrentStage = 0
  end
end
