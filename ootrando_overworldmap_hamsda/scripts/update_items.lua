local dungeons_with_small_keys = {
  ["forest"] = {5, 6},
  ["fire"] = {8, 5},
  ["water"] = {6, 2},
  ["spirit"] = {5, 7},
  ["shadow"] = {5, 6},
  ["botw"] = {3, 2},
  ["gtg"] = {9, 3},
  ["gc"] = {2, 3}
}
local dungeons_with_boss_keys = {
  ["forest"] = true,
  ["fire"] = true,
  ["water"] = true,
  ["spirit"] = true,
  ["shadow"] = true
}
local hideout_keycounts = {
  ["gerudo_fortress_normal"] = 4,
  ["gerudo_fortress_fast"] = 1,
  ["gerudo_fortress_open"] = 0
}
local fix_non_map_hideout = true
local keys_settings = {
  ["setting_shuffle_smallkeys"] = 0,
  ["setting_shuffle_hideoutkeys"] = 0,
  ["setting_shuffle_bosskeys"] = 0,
  ["setting_shuffle_ganon_bosskey"] = 0
}

function update_keys_settings()
  if not HAS_KEYS then
    for setting, value in pairs(keys_settings) do
      local setting_object = get_object(setting)
      if setting_object then
        setting_object.CurrentStage = value
      end
    end
  end
end

function update_max_small_keys()
  for dungeon, keycounts in pairs(dungeons_with_small_keys) do
    local key_object = get_object(dungeon .. "_small_keys")
    if key_object then
      local reg = dungeon .. "_reg"
      local mq = dungeon .. "_mq"
      local reg_changed = not_like_cache(reg, has(reg))
      local mq_changed = not_like_cache(mq, has(mq))

      if reg_changed or mq_changed then
        if has(reg) then
          key_object.MaxCount = keycounts[1]
        elseif has(mq) then
          key_object.MaxCount = keycounts[2]
        else
          key_object.MaxCount = math.max(keycounts[1], keycounts[2])
        end
      end
    end
  end

  local key_object = get_object("th_small_keys")
  if key_object then
    if not HAS_MAP then
      if fix_non_map_hideout then
        key_object.MaxCount = hideout_keycounts["gerudo_fortress_normal"]
        fix_non_map_hideout = false
      end
    else
      for setting, keycount in pairs(hideout_keycounts) do
        if not_like_cache(setting, has(setting)) and has(setting) then
          key_object.MaxCount = keycount
        end
      end
    end
  end
end

local stored_keycounts = {}
local stored_hideout = nil
local stored_bks = {}
local stored_ganon = nil
function update_shuffled_keys()
  if has("setting_shuffle_smallkeys_no") then
    for dungeon, keycounts in pairs(dungeons_with_small_keys) do
      local key_object = get_object(dungeon .. "_small_keys")
      if key_object then
        if stored_keycounts[dungeon] == nil then
          stored_keycounts[dungeon] = key_object.AcquiredCount
        end
        key_object.AcquiredCount = key_object.MaxCount
      end
    end
  elseif has("setting_shuffle_smallkeys_yes") then
    for dungeon, stored_count in pairs(stored_keycounts) do
      local key_object = get_object(dungeon .. "_small_keys")
      if key_object then
        key_object.AcquiredCount = stored_count
      end
    end
    stored_keycounts = {}
  end

  if has("setting_shuffle_hideoutkeys_no") then
    local key_object = get_object("th_small_keys")
    if key_object then
      if stored_hideout == nil then
        stored_hideout = key_object.AcquiredCount
      end
      key_object.AcquiredCount = key_object.MaxCount
    end
  elseif has("setting_shuffle_hideoutkeys_yes") then
    if stored_hideout ~= nil then
      local key_object = get_object("th_small_keys")
      if key_object then
        key_object.AcquiredCount = stored_hideout
      end
      stored_hideout = nil
    end
  end

  if has("setting_shuffle_bosskeys_no") then
    for dungeon, stored_active in pairs(dungeons_with_boss_keys) do
      local key_object = get_object(dungeon .. "_boss_key")
      if key_object then
        if stored_bks[dungeon] == nil then
          stored_bks[dungeon] = key_object.Active
        end
        key_object.Active = true
      end
    end
  elseif has("setting_shuffle_bosskeys_yes") then
    for dungeon, stored_active in pairs(stored_bks) do
      local key_object = get_object(dungeon .. "_boss_key")
      if key_object then
        key_object.Active = stored_active
      end
    end
    stored_bks = {}
  end

  if has("setting_shuffle_ganon_bosskey_no") then
    local key_object = get_object("gc_boss_key")
    if key_object then
      if stored_ganon == nil then
        stored_ganon = key_object.Active
      end
      key_object.Active = true
    end
  elseif has("setting_shuffle_ganon_bosskey_yes") then
    if stored_ganon ~= nil then
      local key_object = get_object("gc_boss_key")
      if key_object then
        key_object.Active = stored_ganon
      end
      stored_ganon = nil
    end
  end
end

function update_items()
  update_keys_settings()
  update_max_small_keys()
  update_shuffled_keys()
end
