dungeons = {
  "forest",
  "fire",
  "water",
  "spirit",
  "shadow",
  "botw",
  "gtg",
  "gc"
}
key_counts = {
  vanilla = {
    forest = 5,
    fire = 8,
    water = 6,
    spirit = 5,
    shadow = 5,
    botw = 3,
    gtg = 9,
    gc = 2,
  },
  mq = {
    forest = 6,
    fire = 5,
    water = 2,
    spirit = 7,
    shadow = 6,
    botw = 2,
    gtg = 3,
    gc = 3,
  }
}
function update_smallkeys()
  for _,dungeon in ipairs(dungeons) do
    local key_object = Tracker:FindObjectForCode(dungeon.."_small_keys")
    if key_object then
      if has(dungeon.."_reg") then
        key_object.MaxCount = key_counts["vanilla"][dungeon]
      else
        key_object.MaxCount = key_counts["mq"][dungeon]
      end
    end
  end

  --gerudo fortress special case depends on setting
  local gf_keys = Tracker:FindObjectForCode("gf_small_keys")
  if has("gerudo_fortress_normal") then
    gf_keys.MaxCount = 4
  elseif has("gerudo_fortress_fast") then
    gf_keys.MaxCount = 1
  else
    gf_keys.MaxCount = 0
  end
end



vanilla_captures = {
  ["setting_shuffle_sword1_yes"] = {
    ["@Kokiri Sword Chest/Dodge Boulder"] = "sword1"
  },
  ["setting_shuffle_ocarinas_yes"] = {
    ["@Lost Woods Bridge/Gift from Saria"] = "ocarina",
    ["@Ocarina of Time/Item"] = "ocarina"
  },
  ["setting_shuffle_egg_yes"] = {
    ["@Malon at Castle/Talk to her"] = "childegg"
  },
  ["setting_shuffle_card_yes"] = {
    ["@Carpenter Rescue/Free the carpenters"] = "gerudocard"
  }
}
settings_cache = {}
function update_captures()
  for setting,captures in pairs(vanilla_captures) do
    local has_setting = has(setting)
    if not settings_cache[setting] or settings_cache[setting] ~= has_setting then
      settings_cache[setting] = has_setting
      for location,item in pairs(captures) do
        local location_object = Tracker:FindObjectForCode(location)
        local item_object = Tracker:FindObjectForCode(item)
        if location_object and item_object then
          if has_setting then
            location_object.CapturedItem = nil
          else
            location_object.CapturedItem = item_object
          end
        end
      end
    end
  end
end



capture_bottle_mapping = {
  ["bottlecapture"] = 1,
  ["rutocapture"] = 2
}
function find_first_free_bottle()
  for i=1,4 do
    local bottle = Tracker:FindObjectForCode("bottle"..i)
    if bottle and bottle.CurrentStage == 0 then
      return bottle
    end
  end
  return nil
end
function check_capture_bottles()
  for code,stage in pairs(capture_bottle_mapping) do
    local capture = Tracker:FindObjectForCode(code)
    if capture and capture.Active then
      capture.Active = false
      local bottle = find_first_free_bottle()
      if bottle then
        bottle.CurrentStage = stage
      end
    end
  end
end



function tracker_on_accessibility_updated()
  update_smallkeys()
  update_captures()
  check_capture_bottles()
end