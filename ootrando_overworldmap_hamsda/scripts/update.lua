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
  for setting,value in pairs(queued_changes) do
    settings_cache[setting] = value
  end
  queued_changes = {}
end



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
has_keys = Tracker.ActiveVariantUID:find("keysanity")
function update_smallkeys()
  for _,dungeon in ipairs(dungeons) do
    local key_object = Tracker:FindObjectForCode(dungeon.."_small_keys")
    if key_object then
      if has(dungeon.."_reg") then
        key_object.MaxCount = key_counts["vanilla"][dungeon]
      else
        key_object.MaxCount = key_counts["mq"][dungeon]
      end
      if not has_keys then
        key_object.AcquiredCount = key_object.MaxCount
        local bk = Tracker:FindObjectForCode(dungeon.."_boss_key")
        if bk then
          bk.Active = true
        end
      end
    end
  end
end



function update_fortress()
  local setting_card = has("setting_shuffle_card_yes")
  local setting_normal = has("gerudo_fortress_normal")
  local setting_fast = has("gerudo_fortress_fast")
  local setting_open = has("gerudo_fortress_open")
  
  local item_carpenters = Tracker:FindObjectForCode("carpenter_rescue")
  local item_card = Tracker:FindObjectForCode("gerudocard")
  local item_gf_keys = Tracker:FindObjectForCode("gf_small_keys")

  if item_gf_keys then
    if setting_open then
      item_gf_keys.MaxCount = 0
    elseif setting_fast then
      item_gf_keys.MaxCount = 1
    elseif setting_normal then
      item_gf_keys.MaxCount = 4
    end
  end

  if item_carpenters then
    if setting_open then
      item_carpenters.Active = true
    elseif not_like_cache("gerudo_fortress_open", setting_open) then
      item_carpenters.Active = false
    end
  end

  if item_card and setting_open then
    if not setting_card then
      item_card.Active = true
    elseif not_like_cache("gerudo_fortress_open", setting_open) 
    or not_like_cache("setting_shuffle_card_yes", setting_card) then
      item_card.Active = not setting_card
    end
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
  },
  ["setting_shuffle_beans_yes"] = {
    ["@Magic Bean Salesman/Buy Item"] = "beans"
  }
}
function update_captures()
  for setting,captures in pairs(vanilla_captures) do
    local has_setting = has(setting)
    if not_like_cache(setting, has_setting) then
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
  update_fortress()
  update_captures()
  check_capture_bottles()
  apply_queued_changes()
end