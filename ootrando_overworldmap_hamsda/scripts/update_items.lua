local dungeons_with_keys = {
  ["forest"] = {5, 6},
  ["fire"] = {8, 5},
  ["water"] = {6, 2},
  ["spirit"] = {5, 7},
  ["shadow"] = {5, 6},
  ["botw"] = {3, 2},
  ["gtg"] = {9, 3},
  ["gc"] = {2, 3}
}
if not HAS_KEYS then
  for dungeon,_ in pairs(dungeons_with_keys) do
    local bk = get_object(dungeon .. "_boss_key")
    if bk then
      bk.Active = true
    end
  end
end
function update_keycounts()
  for dungeon, keycounts in pairs(dungeons_with_keys) do
    local key_object = get_object(dungeon .. "_small_keys")
    if key_object then
      local reg = has(dungeon .. "_reg")
      local reg_changed = not_like_cache(dungeon .. "_reg", reg)
      local mq = has(dungeon .. "_mq")
      local mq_changed = not_like_cache(dungeon .. "_mq", mq)

      if reg and reg_changed then
        key_object.MaxCount = keycounts[1]
      elseif mq and mq_changed then
        key_object.MaxCount = keycounts[2]
      elseif reg_changed or mq_changed then
        key_object.MaxCount = math.max(keycounts[1], keycounts[2])
      end

      if not HAS_KEYS and (reg_changed or mq_changed) then
        key_object.AcquiredCount = key_object.MaxCount
      end
    end
  end
end

function update_items()
  update_keycounts()
end
