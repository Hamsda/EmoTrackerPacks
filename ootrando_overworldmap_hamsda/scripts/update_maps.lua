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

function get_first_free_bottle()
  for i = 1, 4 do
    local bottle = get_object("bottle" .. i)
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
local capture_mappings = {
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
  for code, data in pairs(capture_mappings) do
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
  local kid_trade = get_kid_trade()
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
