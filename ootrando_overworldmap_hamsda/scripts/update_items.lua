local dungeons_with_keys = {
  "forest",
  "fire",
  "water",
  "spirit",
  "shadow",
  "botw",
  "gtg",
  "gc"
}
local key_counts = {
  vanilla = {
    forest = 5,
    fire = 8,
    water = 6,
    spirit = 5,
    shadow = 5,
    botw = 3,
    gtg = 9,
    gc = 2
  },
  mq = {
    forest = 6,
    fire = 5,
    water = 2,
    spirit = 7,
    shadow = 6,
    botw = 2,
    gtg = 3,
    gc = 3
  }
}
function update_keycounts()
  for _, dungeon in ipairs(dungeons_with_keys) do
    local key_object = get_object(dungeon .. "_small_keys")
    if key_object then
      if has(dungeon .. "_reg") then
        key_object.MaxCount = key_counts["vanilla"][dungeon]
      elseif has(dungeon .. "_mq") then
        key_object.MaxCount = key_counts["mq"][dungeon]
      else
        key_object.MaxCount = math.max(key_counts["vanilla"][dungeon], key_counts["mq"][dungeon])
      end
      if not HAS_KEYS then
        key_object.AcquiredCount = key_object.MaxCount
        local bk = get_object(dungeon .. "_boss_key")
        if bk then
          bk.Active = true
        end
      end
    end
  end
end

function update_items()
  update_keycounts()
end
