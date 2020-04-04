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


has_keys = Tracker.ActiveVariantUID:find("keysanity")


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
            location_object.CaptureItem = false
          else
            location_object.CaptureItem = true
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



skulltula_locations = {
  --overworld
  "@Know It All House/GS1 (N)",
  "@Kokiri Bean Patch/GS2",
  "@House of Twins/GS3 (N)",
  "@Lost Woods Bean Patch Near Bridge/GS4",
  "@Lost Woods Bean Patch Near Stage/GS5",
  "@Lost Woods Above Stage/GS6 (N)",
  "@Top of Maze/GS7 (N)",
  "@Field Kakariko Grotto/GS12",
  "@Field Valley Grotto/GS13",
  "@Castle Market Guard House/GS14",
  "@Hyrule Castle Tree/GS15",
  "@Castle Storms Grotto/GS16",
  "@Outside Ganon's Castle/GS17",
  "@Lon Lon Ranch Tree/GS18",
  "@Lon Lon Ranch Rain Shed/GS19 (N)",
  "@Lon Lon Ranch House Window/GS20 (N)",
  "@Lon Lon Ranch Back Wall/GS21 (N)",
  "@Kakariko Tree/GS22 (N)",
  "@Kakariko Skulltula House/GS23 (N)",
  "@Kakariko House Under Construction/GS24 (N)",
  "@Kakariko Guard's House/GS25 (N)",
  "@Kakariko Watchtower/GS26 (N)",
  "@Kakariko Above Impa's House/GS27 (N)",
  "@Graveyard Wall/GS28 (N)",
  "@Graveyard Bean Patch/GS29",
  "@Mountain Trail Bean Patch/GS30",
  "@Mountain Trail Bomb Alcove/GS31",
  "@Mountain Trail Above Dodongo's Cavern/GS32 (N)",
  "@Mountain Trail Path to Crater/GS33 (N)",
  "@Goron City Boulder Maze/GS34",
  "@Goron City Center Platform/GS35",
  "@Death Mountain Crater Crate/GS36",
  "@Mountain Crater Bean Patch/GS37",
  "@Zora River Tree/GS43",
  "@Zora River Ladder/GS44 (N)",
  "@Zora River Near Raised Grottos/GS45 (N)",
  "@Zora River Above Bridge/GS46 (N)",
  "@Frozen Waterfall/GS47 (N)",
  "@Zora's Fountain Tree/GS48",
  "@Zora's Fountain Above the Log/GS49 (N)",
  "@Zora's Fountain Hidden Cave/GS50 (N)",
  "@Lake Hylia Bean Patch/GS55",
  "@Lab Wall/GS56 (N)",
  "@Small Island/GS57 (N)",
  "@Giant Tree/GS58 (N)",
  "@Lab Underwater Crate/GS59",
  "@Gerudo Valley Small Bridge/GS86 (N)",
  "@Gerudo Valley Bean Patch/GS87",
  "@Gerudo Valley Behind Tent/GS88 (N)",
  "@Gerudo Valley Pillar/GS89 (N)",
  "@Archery Range/GS90 (N)",
  "@Top Floor/GS91 (N)",
  "@Wasteland Ruins/GS92",
  "@Desert Colossus Bean Patch/GS93",
  "@Desert Colossus Tree/GS94 (N)",
  "@Desert Colossus Hill/GS95 (N)",
  --regular dungeons
  "@Deku Tree/GS8 - Compass Room",
  "@Deku Tree/GS9 - Basement Vines",
  "@Deku Tree/GS10 - Basement Gate",
  "@Deku Tree/GS11 - Basement Back Room",
  "@Dodongos Cavern/GS38 - East Side Room",
  "@Dodongos Cavern/GS39 - Vines Above Stairs",
  "@Dodongos Cavern/GS40 - Back Room",
  "@Dodongos Cavern/GS41 - Alcove Above Stairs",
  "@Dodongos Cavern/GS42 - Scarecrow",
  "@Jabu Jabus Belly/GS51 - Water Switch Room",
  "@Jabu Jabus Belly/GS52 - Lobby Basement Lower",
  "@Jabu Jabus Belly/GS53 - Lobby Basement Upper",
  "@Jabu Jabus Belly/GS54 - Near Boss",
  "@Forest Temple/GS60 - First Room",
  "@Forest Temple/GS61 - Lobby",
  "@Forest Temple/GS62 - Outdoor East",
  "@Forest Temple/GS63 - Outdoor West",
  "@Forest Temple/GS64 - Basement",
  "@Fire Temple/GS65 - Song of Time Room",
  "@Fire Temple/GS66 - Unmarked Bomb Wall",
  "@Fire Temple/GS67 - East Tower Climb",
  "@Fire Temple/GS68 - East Tower Top",
  "@Fire Temple/GS69 - Basement",
  "@Ice Cavern/GS70 - Heart Piece Room",
  "@Ice Cavern/GS71 - Spinning Scythe Room",
  "@Ice Cavern/GS72 - Push Block Room",
  "@Water Temple/GS73 - South Basement",
  "@Water Temple/GS74 - Serpent River",
  "@Water Temple/GS75 - Central Room",
  "@Water Temple/GS76 - Falling Platform Room",
  "@Water Temple/GS77 - Near Boss Key Chest",
  "@Bottom of the Well/GS78 - Like Like Cage",
  "@Bottom of the Well/GS79 - West Inner Room",
  "@Bottom of the Well/GS80 - East Inner Room",
  "@Shadow Temple/GS81 - Like Like Room",
  "@Shadow Temple/GS82 - Crusher Room",
  "@Shadow Temple/GS83 - Single Giant Pot",
  "@Shadow Temple/GS84 - Near Ship",
  "@Shadow Temple/GS85 - Triple Giant Pot",
  "@Spirit Temple/GS96 - Metal Fence",
  "@Spirit Temple/GS97 - Bomb for Light Room",
  "@Spirit Temple/GS98 - Hall to West Iron Knuckle",
  "@Spirit Temple/GS99 - Boulder Room",
  "@Spirit Temple/GS100 - Lobby",
  --MQ dungeons
  "@Deku Tree MQ/GS8 - Lobby",
  "@Deku Tree MQ/GS9 - Compass Room",
  "@Deku Tree MQ/GS10 - Basement Ceiling",
  "@Deku Tree MQ/GS11 - Basement Back Room",
  "@Dodongos Cavern MQ/GS38 - Song of Time Block Room",
  "@Dodongos Cavern MQ/GS39 - Larva Room",
  "@Dodongos Cavern MQ/GS40 - Lizalfos Room",
  "@Dodongos Cavern MQ/GS41 - Scrub Room",
  "@Dodongos Cavern MQ/GS42 - Back Area",
  "@Jabu Jabus Belly MQ/GS51 - Boomerang Room",
  "@Jabu Jabus Belly MQ/GS52 - Tailpasaran Room",
  "@Jabu Jabus Belly MQ/GS53 - Invisible Enemies Room",
  "@Jabu Jabus Belly MQ/GS54 - Near Boss",
  "@Forest Temple MQ/GS60 - First Hallway",
  "@Forest Temple MQ/GS61 - Block Push Room",
  "@Forest Temple MQ/GS62 - Outdoor West",
  "@Forest Temple MQ/GS63 - Outdoor East",
  "@Forest Temple MQ/GS64 - Well",
  "@Fire Temple MQ/GS65 - Big Lava Room",
  "@Fire Temple MQ/GS66 - East Tower Top",
  "@Fire Temple MQ/GS67 - Fire Wall Maze Side Room",
  "@Fire Temple MQ/GS68 - Above Fire Wall Maze",
  "@Fire Temple MQ/GS69 - Fire Wall Maze Center",
  "@Ice Cavern MQ/GS70 - Red Ice",
  "@Ice Cavern MQ/GS71 - Scarecrow",
  "@Ice Cavern MQ/GS72 - Ice Block",
  "@Water Temple MQ/GS73 - South Basement",
  "@Water Temple MQ/GS74 - North Basement",
  "@Water Temple MQ/GS75 - Serpent River",
  "@Water Temple MQ/GS76 - Lizalfos Hallway",
  "@Water Temple MQ/GS77 - Before Upper Water Switch",
  "@Bottom of the Well MQ/GS78 - West Inner Room",
  "@Bottom of the Well MQ/GS79 - Basement",
  "@Bottom of the Well MQ/GS80 - Coffin Room",
  "@Shadow Temple MQ/GS81 - Crusher Room",
  "@Shadow Temple MQ/GS82 - Wind Hint Room",
  "@Shadow Temple MQ/GS83 - After Wind",
  "@Shadow Temple MQ/GS84 - After Ship",
  "@Shadow Temple MQ/GS85 - Near Boss",
  "@Spirit Temple MQ/GS96 - Sun Block Room",
  "@Spirit Temple MQ/GS97 - Lower Adult Left",
  "@Spirit Temple MQ/GS98 - Lower Adult Right",
  "@Spirit Temple MQ/GS99 - Iron Knuckle North",
  "@Spirit Temple MQ/GS100 - Iron Knuckle West",
}
function count_skulltulas()
  local total = 0
  local available = 0
  local in_logic = 0

  for _, location in ipairs(skulltula_locations) do
    local location_object = Tracker:FindObjectForCode(location)
    if location_object and location_object.AccessibilityLevel then
      --location_object.AvailableChestCount
      total = total + 1
      if location_object.AccessibilityLevel == AccessibilityLevel.SequenceBreak then
        available = available + 1
      end
      if location_object.AccessibilityLevel == AccessibilityLevel.Normal then
        available = available + 1
        in_logic = in_logic + 1
      end
    end
  end

  local available_object = Tracker:FindObjectForCode("counter_gs_available")
  local in_logic_object = Tracker:FindObjectForCode("counter_gs_logic")
  if available_object then
    available_object.AcquiredCount = available
  end
  if in_logic_object then
    in_logic_object.AcquiredCount = in_logic
  end
  print("----")
  print("total:", total)
  print("available:", available)
  print("in_logic:", in_logic)
end



function tracker_on_accessibility_updated()
  update_smallkeys()
  update_fortress()
  update_captures()
  check_capture_bottles()
  count_skulltulas()
  apply_queued_changes()
end