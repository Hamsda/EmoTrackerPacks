if HAS_MAP then
  if HAS_ER then
    Tracker:AddItems("items/capture_entrance.json")
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
ScriptHost:LoadScript("scripts/custom_song_item.lua")
for i = 1, 12 do
  SongItem(i)
end

ScriptHost:LoadScript("scripts/custom_dungeon_reward.lua")
for i = 1, 9 do
  DungeonReward(i)
end

ScriptHost:LoadScript("scripts/user_presets.lua")
ScriptHost:LoadScript("scripts/custom_presets.lua")
PresetLoader()
