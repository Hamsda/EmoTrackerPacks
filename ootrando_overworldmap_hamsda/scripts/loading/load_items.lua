if HAS_MAP then
  if HAS_ER then
    Tracker:AddItems("items/capture_entrance.json")
    Tracker:AddItems("items/options_entrance.json")
  else
    Tracker:AddItems("items/capture_spawns.json")
  end
  Tracker:AddItems("items/sequences.json")
  Tracker:AddItems("items/capture_items.json")
  Tracker:AddItems("items/tricks.json")
  Tracker:AddItems("items/options.json")
  Tracker:AddItems("items/counters.json")
end
Tracker:AddItems("items/quest.json")
Tracker:AddItems("items/equipment.json")
Tracker:AddItems("items/items.json")
Tracker:AddItems("items/dungeons.json")

--CUSTOM ITEMS
ScriptHost:LoadScript("scripts/sdk/class.lua")
ScriptHost:LoadScript("scripts/sdk/custom_item.lua")
ScriptHost:LoadScript("scripts/custom_prog_badge.lua")

local badge_images =
  USE_SONG_CHECKMARK_ONLY and {"images/check.png"} or
  {
    "images/overlay_song_zelda.png",
    "images/overlay_song_epona.png",
    "images/overlay_song_saria.png",
    "images/overlay_song_sun.png",
    "images/overlay_song_time.png",
    "images/overlay_song_storms.png",
    "images/overlay_song_minuet.png",
    "images/overlay_song_bolero.png",
    "images/overlay_song_serenade.png",
    "images/overlay_song_requiem.png",
    "images/overlay_song_nocturne.png",
    "images/overlay_song_prelude.png"
  }

ProgBadgeItem("Zelda's Lullaby", "lullaby", "images/song_zelda.png", badge_images)
ProgBadgeItem("Epona's Song", "epona", "images/song_epona.png", badge_images)
ProgBadgeItem("Saria's Song", "saria", "images/song_saria.png", badge_images)
ProgBadgeItem("Sun's Song", "sun", "images/song_sun.png", badge_images)
ProgBadgeItem("Song of Time", "time", "images/song_time.png", badge_images)
ProgBadgeItem("Song of Storms", "storm", "images/song_storms.png", badge_images)
ProgBadgeItem("Minuet of Forest", "minuet", "images/song_minuet.png", badge_images)
ProgBadgeItem("Bolero of Fire", "bolero", "images/song_bolero.png", badge_images)
ProgBadgeItem("Serenade of Water", "serenade", "images/song_serenade.png", badge_images)
ProgBadgeItem("Requiem of Spirit", "requiem", "images/song_requiem.png", badge_images)
ProgBadgeItem("Nocturne of Shadow", "nocturne", "images/song_nocturne.png", badge_images)
ProgBadgeItem("Prelude of Light", "prelude", "images/song_prelude.png", badge_images)
