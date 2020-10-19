vanilla_captures = {
  ["setting_shuffle_sword1_yes"] = {
    ["@KF Kokiri Sword Chest/Dodge Boulder"] = "sword1"
  },
  ["setting_shuffle_ocarinas_yes"] = {
    ["@LW Bridge/LW Gift from Saria"] = "ocarina",
    ["@HF Ocarina of Time/HF Ocarina of Time Item"] = "ocarina"
  },
  ["setting_shuffle_egg_yes"] = {
    ["@Malon at Castle/HC Malon Egg"] = "capture_childegg"
  },
  ["setting_shuffle_card_yes"] = {
    ["@Carpenter Rescue/Gerudo Membership Card"] = "gerudocard"
  },
  ["setting_shuffle_beans_yes"] = {
    ["@ZR Magic Bean Salesman/Buy Item"] = "beans"
  }
}
function update_vanilla_captures()
  for setting,captures in pairs(vanilla_captures) do
    local has_setting = has(setting)
    if not_like_cache(setting, has_setting) then
      for location,item in pairs(captures) do
        local location_object = get_object(location)
        local item_object = get_object(item)
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



skulltula_locations = {
  --overworld
  "@KF Know It All House/KF GS Know It All House (N)",
  "@KF Bean Patch/KF GS Bean Patch",
  "@KF House of Twins/KF GS House of Twins (N)",
  "@LW Bean Patch Near Bridge/LW GS Bean Patch Near Bridge",
  "@LW Bean Patch Near Theater/LW GS Bean Patch Near Theater",
  "@LW Above Theater/LW GS Above Theater (N)",
  "@SFM Maze/SFM GS (N)",
  "@HF Near Kak Grotto/HF GS Near Kak Grotto",
  "@HF Cow Grotto/HF GS Cow Grotto",
  "@LH Lab/LH GS Lab Crate",
  "@LH Bean Patch/LH GS Bean Patch",
  "@LH Lab Wall/LH GS Lab Wall (N)",
  "@LH Small Island/LH GS Small Island (N)",
  "@LH Tree/LH GS Tree (N)",
  "@LLR Tree/LLR GS Tree",
  "@LLR Rain Shed/LLR GS Rain Shed (N)",
  "@LLR House Window/LLR GS House Window (N)",
  "@LLR Back Wall/LLR GS Back Wall (N)",
  "@Kak Above Impas House/Kak GS Above Impas House (N)",
  "@Kak Tree/Kak GS Tree (N)",
  "@Kak Skulltula House/Kak GS Skulltula House (N)",
  "@Kak House Under Construction/Kak GS House Under Construction (N)",
  "@Kak Guards House/Kak GS Guards House (N)",
  "@Kak Watchtower/Kak GS Watchtower (N)",
  "@Graveyard Wall/Graveyard GS Wall (N)",
  "@Graveyard Bean Patch/Graveyard GS Bean Patch",
  "@GC Maze/GC GS Boulder Maze",
  "@GC Center Platform/GC GS Center Platform",
  "@DMT Above Dodongos Cavern/DMT GS Above Dodongos Cavern (N)",
  "@DMT Falling Rocks Path/DMT GS Falling Rocks Path (N)",
  "@DMT Bean Patch/DMT GS Bean Patch",
  "@DMT Near Kak/DMT GS Near Kak",
  "@DMC Crate/DMC GS Crate",
  "@DMC Bean Patch/DMC GS Bean Patch",
  "@Market Guard House/Market GS Guard House",
  "@HC Tree/HC GS Tree",
  "@HC Storms Grotto/HC GS Storms Grotto",
  "@OGC/OGC GS",
  "@ZR Tree/ZR GS Tree",
  "@ZR Ladder/ZR GS Ladder (N)",
  "@ZR Near Raised Grottos/ZR GS Near Raised Grottos (N)",
  "@ZR Above Bridge/ZR GS Above Bridge (N)",
  "@ZD Frozen Waterfall/ZD GS Frozen Waterfall (N)",
  "@ZF Hidden Cave/ZF GS Hidden Cave (N)",
  "@ZF Tree/ZF GS Tree",
  "@ZF Above the Log/ZF GS Above the Log (N)",
  "@GV Small Bridge/GV GS Small Bridge (N)",
  "@GV Bean Patch/GV GS Bean Patch",
  "@GV Behind Tent/GV GS Behind Tent (N)",
  "@GV Pillar/GV GS Pillar (N)",
  "@GF Archery Range/GF GS Archery Range (N)",
  "@GF Top Floor/GF GS Top Floor (N)",
  "@Wasteland Structure/Wasteland GS",
  "@Colossus Bean Patch/Colossus GS Bean Patch",
  "@Colossus Tree/Colossus GS Tree (N)",
  "@Colossus Hill/Colossus GS Hill (N)",
  --regular dungeons
  "@Deku Tree/GS Compass Room",
  "@Deku Tree/GS Basement Vines",
  "@Deku Tree/GS Basement Gate",
  "@Deku Tree/GS Basement Back Room",
  "@Dodongos Cavern/GS Side Room Near Lower Lizalfos",
  "@Dodongos Cavern/GS Scarecrow",
  "@Dodongos Cavern/GS Alcove Above Stairs",
  "@Dodongos Cavern/GS Vines Above Stairs",
  "@Dodongos Cavern/GS Back Room",
  "@Jabu Jabus Belly/GS Water Switch Room",
  "@Jabu Jabus Belly/GS Lobby Basement Lower",
  "@Jabu Jabus Belly/GS Lobby Basement Upper",
  "@Jabu Jabus Belly/GS Near Boss",
  "@Ice Cavern/GS Spinning Scythe Room",
  "@Ice Cavern/GS Heart Piece Room",
  "@Ice Cavern/GS Push Block Room",
  "@Forest Temple/GS First Room",
  "@Forest Temple/GS Lobby",
  "@Forest Temple/GS Raised Island Courtyard",
  "@Forest Temple/GS Level Island Courtyard",
  "@Forest Temple/GS Basement",
  "@Fire Temple/GS Boss Key Loop",
  "@Fire Temple/GS Song of Time Room",
  "@Fire Temple/GS Boulder Maze",
  "@Fire Temple/GS Scarecrow Climb",
  "@Fire Temple/GS Scarecrow Top",
  "@Water Temple/GS Behind Gate",
  "@Water Temple/GS Central Pillar",
  "@Water Temple/GS Falling Platform Room",
  "@Water Temple/GS River",
  "@Water Temple/GS Near Boss Key Chest",
  "@Shadow Temple/GS Like Like Room",
  "@Shadow Temple/GS Falling Spikes Room",
  "@Shadow Temple/GS Single Giant Pot",
  "@Shadow Temple/GS Near Ship",
  "@Shadow Temple/GS Triple Giant Pot",
  "@Spirit Temple/GS Metal Fence",
  "@Spirit Temple/GS Sun on Floor Room",
  "@Spirit Temple/GS Hall After Sun Block Room",
  "@Spirit Temple/GS Lobby",
  "@Spirit Temple/GS Boulder Room",
  "@Bottom of the Well/GS West Inner Room",
  "@Bottom of the Well/GS East Inner Room",
  "@Bottom of the Well/GS Like Like Cage",
  --MQ dungeons
  "@Deku Tree MQ/GS Lobby",
  "@Deku Tree MQ/GS Compass Room",
  "@Deku Tree MQ/GS Basement Graves Room",
  "@Deku Tree MQ/GS Basement Back Room",
  "@Dodongos Cavern MQ/GS Scrub Room",
  "@Dodongos Cavern MQ/GS Lizalfos Room",
  "@Dodongos Cavern MQ/GS Larvae Room",
  "@Dodongos Cavern MQ/GS Song of Time Block Room",
  "@Dodongos Cavern MQ/GS Back Area",
  "@Jabu Jabus Belly MQ/GS Boomerang Chest Room",
  "@Jabu Jabus Belly MQ/GS Tailpasaran Room",
  "@Jabu Jabus Belly MQ/GS Invisible Enemies Room",
  "@Jabu Jabus Belly MQ/GS Near Boss",
  "@Ice Cavern MQ/GS Red Ice",
  "@Ice Cavern MQ/GS Scarecrow",
  "@Ice Cavern MQ/GS Ice Block",
  "@Forest Temple MQ/GS First Hallway",
  "@Forest Temple MQ/GS Raised Island Courtyard",
  "@Forest Temple MQ/GS Well",
  "@Forest Temple MQ/GS Level Island Courtyard",
  "@Forest Temple MQ/GS Block Push Room",
  "@Fire Temple MQ/GS Big Lava Room Open Door",
  "@Fire Temple MQ/GS Skull On Fire",
  "@Fire Temple MQ/GS Fire Wall Maze Side Room",
  "@Fire Temple MQ/GS Fire Wall Maze Center",
  "@Fire Temple MQ/GS Above Fire Wall Maze",
  "@Water Temple MQ/GS Lizalfos Hallway",
  "@Water Temple MQ/GS Before Upper Water Switch",
  "@Water Temple MQ/GS River",
  "@Water Temple MQ/GS Freestanding Key Area",
  "@Water Temple MQ/GS Triple Wall Torch",
  "@Shadow Temple MQ/GS Falling Spikes Room",
  "@Shadow Temple MQ/GS Wind Hint Room",
  "@Shadow Temple MQ/GS After Wind",
  "@Shadow Temple MQ/GS After Ship",
  "@Shadow Temple MQ/GS Near Boss",
  "@Spirit Temple MQ/GS Sun Block Room",
  "@Spirit Temple MQ/GS Leever Room",
  "@Spirit Temple MQ/GS Symphony Room",
  "@Spirit Temple MQ/GS Nine Thrones Room North",
  "@Spirit Temple MQ/GS Nine Thrones Room West",
  "@Bottom of the Well MQ/GS West Inner Room",
  "@Bottom of the Well MQ/GS Basement",
  "@Bottom of the Well MQ/GS Coffin Room",
}
function count_skulltulas()
  local total = 0
  local available = 0
  local in_logic = 0

  for _, location in ipairs(skulltula_locations) do
    local location_object = get_object(location)
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

  local available_object = get_object("counter_gs_available")
  local in_logic_object = get_object("counter_gs_logic")
  if available_object then
    available_object.AcquiredCount = available
  end
  if in_logic_object then
    in_logic_object.AcquiredCount = in_logic
  end
end



function tracker_on_accessibility_updated()
  update_smallkeys()
  update_bridge_amount_max()
  update_fortress()
  update_collected_capture()
  update_vanilla_captures()
  count_skulltulas()

  apply_queued_changes()
end