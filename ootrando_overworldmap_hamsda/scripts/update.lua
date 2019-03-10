local dungeons = {
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

function tracker_on_accessibility_updated()
  update_smallkeys()
end