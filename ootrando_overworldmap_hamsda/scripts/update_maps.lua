local max_amount_per_bridge_stage = {0, 0, 3, 6, 9, 100}
function update_bridge_amount_max()
  local setting_bridge = get_object("setting_bridge")
  local setting_bridge_amount = get_object("setting_bridge_amount")
  if setting_bridge and setting_bridge.CurrentStage and setting_bridge_amount then
    setting_bridge_amount.MaxCount = max_amount_per_bridge_stage[setting_bridge.CurrentStage + 1] or 0
  end
end

function update_gerudo_card()
  local setting_card = has("setting_shuffle_card_yes")
  local setting_open = has("gerudo_fortress_open")

  local item_card = get_object("gerudocard")
  if item_card and setting_open then
    if not setting_card then
      item_card.Active = true
    elseif
      not_like_cache("gerudo_fortress_open", setting_open) or not_like_cache("setting_shuffle_card_yes", setting_card)
     then
      item_card.Active = not setting_card
    end
  end
end

function collect_key(code)
  local key_object = get_object(code)
  if key_object then
    if string.find(code, "boss") then
      key_object.Active = true
    elseif string.find(code, "small") then
      key_object.AcquiredCount = key_object.AcquiredCount + 1
    end
  end
end
function set_first_free_bottle(newStage)
  for i = 1, 4 do
    local bottle = get_object("bottle" .. i)
    if bottle and bottle.CurrentStage == 0 then
      bottle.CurrentStage = newStage
      break
    end
  end
end
function set_kid_trade(newStage)
  local trade = get_object("kidtrade")
  if trade then
    trade.CurrentStage = newStage
  end
end
function set_adult_trade(newStage)
  local trade = get_object("adulttrade")
  if trade then
    trade.CurrentStage = newStage
  end
end
local capture_mappings = {
  ["capture_forest_small_keys"] = {
    collect_key,
    "forest_small_keys"
  },
  ["capture_forest_boss_key"] = {
    collect_key,
    "forest_boss_key"
  },
  ["capture_fire_small_keys"] = {
    collect_key,
    "fire_small_keys"
  },
  ["capture_fire_boss_key"] = {
    collect_key,
    "fire_boss_key"
  },
  ["capture_water_small_keys"] = {
    collect_key,
    "water_small_keys"
  },
  ["capture_water_boss_key"] = {
    collect_key,
    "water_boss_key"
  },
  ["capture_spirit_small_keys"] = {
    collect_key,
    "spirit_small_keys"
  },
  ["capture_spirit_boss_key"] = {
    collect_key,
    "spirit_boss_key"
  },
  ["capture_shadow_small_keys"] = {
    collect_key,
    "shadow_small_keys"
  },
  ["capture_shadow_boss_key"] = {
    collect_key,
    "shadow_boss_key"
  },
  ["capture_botw_small_keys"] = {
    collect_key,
    "botw_small_keys"
  },
  ["capture_th_small_keys"] = {
    collect_key,
    "th_small_keys"
  },
  ["capture_tcg_small_keys"] = {
    collect_key,
    "tcg_small_keys"
  },
  ["capture_gtg_small_keys"] = {
    collect_key,
    "gtg_small_keys"
  },
  ["capture_gc_small_keys"] = {
    collect_key,
    "gc_small_keys"
  },
  ["capture_gc_boss_key"] = {
    collect_key,
    "gc_boss_key"
  },
  ["capture_bottle"] = {
    set_first_free_bottle,
    1
  },
  ["capture_ruto"] = {
    set_first_free_bottle,
    2
  },
  ["capture_childegg"] = {
    set_kid_trade,
    1
  },
  ["capture_childcucco"] = {
    set_kid_trade,
    2
  },
  ["capture_letter"] = {
    set_kid_trade,
    3
  },
  ["capture_lettershown"] = {
    set_kid_trade,
    4
  },
  ["capture_keaton"] = {
    set_kid_trade,
    5
  },
  ["capture_keatonsold"] = {
    set_kid_trade,
    6
  },
  ["capture_skullmask"] = {
    set_kid_trade,
    7
  },
  ["capture_skullsold"] = {
    set_kid_trade,
    8
  },
  ["capture_spooky"] = {
    set_kid_trade,
    9
  },
  ["capture_spookysold"] = {
    set_kid_trade,
    10
  },
  ["capture_bunny"] = {
    set_kid_trade,
    11
  },
  ["capture_bunnysold"] = {
    set_kid_trade,
    12
  },
  ["capture_truth"] = {
    set_kid_trade,
    13
  },
  ["capture_adultegg"] = {
    set_adult_trade,
    1
  },
  ["capture_adultcucco"] = {
    set_adult_trade,
    2
  },
  ["capture_cojiro"] = {
    set_adult_trade,
    3
  },
  ["capture_mushroom"] = {
    set_adult_trade,
    4
  },
  ["capture_oddpotion"] = {
    set_adult_trade,
    5
  },
  ["capture_saw"] = {
    set_adult_trade,
    6
  },
  ["capture_brokensword"] = {
    set_adult_trade,
    7
  },
  ["capture_prescription"] = {
    set_adult_trade,
    8
  },
  ["capture_frog"] = {
    set_adult_trade,
    9
  },
  ["capture_eyedrops"] = {
    set_adult_trade,
    10
  },
  ["capture_claim"] = {
    set_adult_trade,
    11
  }
}
function update_collected_capture()
  for code, data in pairs(capture_mappings) do
    local capture = get_object(code)
    if capture and capture.Active then
      capture.Active = false
      data[1](data[2])
    end
  end
end

function update_minimal_bottle()
  local minimal_bottle = get_object("bottleminimal")
  if minimal_bottle then
    if has("ruto") then
      minimal_bottle.CurrentStage = 2
    elseif has("bottle") then
      minimal_bottle.CurrentStage = 1
    else
      minimal_bottle.CurrentStage = 0
    end
  end
end

function update_free_zelda()
  local kid_trade = get_object("kidtrade")
  local setting_zelda = has("setting_zelda_free")
  if kid_trade and not_like_cache("setting_zelda_free", setting_zelda) and setting_zelda then
    kid_trade.CurrentStage = 3
  end
end

local vanilla_captures = {
  ["setting_shuffle_sword1_yes"] = {
    ["@KF Kokiri Sword Chest/Dodge Boulder"] = "sword1"
  },
  ["setting_shuffle_ocarinas_yes"] = {
    ["@LW Bridge From Forest/LW Gift from Saria"] = "ocarina",
    ["@HF Ocarina of Time/HF Ocarina of Time Item"] = "ocarina"
  },
  ["setting_shuffle_egg_yes"] = {
    ["@Malon at Castle/HC Malon Egg"] = "capture_childegg"
  },
  ["setting_shuffle_card_yes"] = {
    ["@Carpenter Rescue/Hideout Gerudo Membership Card"] = "gerudocard"
  },
  ["setting_shuffle_beans_yes"] = {
    ["@ZR Magic Bean Salesman/Buy Item"] = "beans"
  }
}
function update_vanilla_captures()
  for setting, captures in pairs(vanilla_captures) do
    local has_setting = has(setting)
    if not_like_cache(setting, has_setting) then
      for location, item in pairs(captures) do
        local location_object = get_object(location)
        local item_object = get_object(item)
        if location_object then
          if item_object and not has_setting then
            location_object.CapturedItem = item_object
          else
            location_object.CapturedItem = nil
          end
        end
      end
    end
  end
end

function update_maps()
  update_bridge_amount_max()
  update_gerudo_card()
  update_collected_capture()
  update_minimal_bottle()
  update_free_zelda()
  update_vanilla_captures()
end
