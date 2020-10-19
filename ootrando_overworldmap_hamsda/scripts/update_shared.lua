function update_smallkeys()
  for _,dungeon in ipairs(dungeons) do
    local key_object = get_object(dungeon.."_small_keys")
    if key_object then
      if has(dungeon.."_reg") then
        key_object.MaxCount = key_counts["vanilla"][dungeon]
      else
        key_object.MaxCount = key_counts["mq"][dungeon]
      end
      if not has_keys then
        key_object.AcquiredCount = key_object.MaxCount
        local bk = get_object(dungeon.."_boss_key")
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
  
  local item_card = get_object("gerudocard")
  local item_gf_keys = get_object("gf_small_keys")

  if item_gf_keys then
    if setting_open then
      item_gf_keys.MaxCount = 0
    elseif setting_fast then
      item_gf_keys.MaxCount = 1
    elseif setting_normal then
      item_gf_keys.MaxCount = 4
    end
    if not has_keys then
      item_gf_keys.AcquiredCount = item_gf_keys.MaxCount
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



function get_first_free_bottle()
  for i=1,4 do
    local bottle = get_object("bottle"..i)
    if bottle and bottle.CurrentStage == 0 then
      return bottle
    end
  end
  return nil
end
function get_kid_trade()
  local trade = get_object("kidtrade")
  if trade then
    return trade
  end
  return nil
end
function get_adult_trade()
  local trade = get_object("adulttrade")
  if trade then
    return trade
  end
  return nil
end
capture_mappings = {
  ["capture_bottle"] = {
    1, 
    get_first_free_bottle
  },
  ["capture_ruto"] = {
    2,
    get_first_free_bottle
  },
  ["capture_childegg"] = {
    1,
    get_kid_trade
  },
  ["capture_childcucco"] = {
    2,
    get_kid_trade
  },
  ["capture_letter"] = {
    3,
    get_kid_trade
  },
  ["capture_lettershown"] = {
    4,
    get_kid_trade
  },
  ["capture_keaton"] = {
    5,
    get_kid_trade
  },
  ["capture_keatonsold"] = {
    6,
    get_kid_trade
  },
  ["capture_skullmask"] = {
    7,
    get_kid_trade
  },
  ["capture_skullsold"] = {
    8,
    get_kid_trade
  },
  ["capture_spooky"] = {
    9,
    get_kid_trade
  },
  ["capture_spookysold"] = {
    10,
    get_kid_trade
  },
  ["capture_bunny"] = {
    11,
    get_kid_trade
  },
  ["capture_bunnysold"] = {
    12,
    get_kid_trade
  },
  ["capture_truth"] = {
    13,
    get_kid_trade
  },
  ["capture_adultegg"] = {
    1,
    get_adult_trade
  },
  ["capture_adultcucco"] = {
    2,
    get_adult_trade
  },
  ["capture_cojiro"] = {
    3,
    get_adult_trade
  },
  ["capture_mushroom"] = {
    4,
    get_adult_trade
  },
  ["capture_oddpotion"] = {
    5,
    get_adult_trade
  },
  ["capture_saw"] = {
    6,
    get_adult_trade
  },
  ["capture_brokensword"] = {
    7,
    get_adult_trade
  },
  ["capture_prescription"] = {
    8,
    get_adult_trade
  },
  ["capture_frog"] = {
    9,
    get_adult_trade
  },
  ["capture_eyedrops"] = {
    10,
    get_adult_trade
  },
  ["capture_claim"] = {
    11,
    get_adult_trade
  }
}
function update_collected_capture()
  for code,data in pairs(capture_mappings) do
    local capture = get_object(code)
    if capture and capture.Active then
      capture.Active = false
      local item = data[2]()
      if item then
        item.CurrentStage = data[1]
      end
    end
  end
end