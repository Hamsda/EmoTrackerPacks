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
    end
  end

  local gf_keys = Tracker:FindObjectForCode("gf_small_keys")
  if gf_keys then
    gf_keys.MaxCount = 4
  end
end



--outdated names
capture_badge_locations = {
  ["@Death Mountain -> Mountain Bombable Grotto"] = "@Death Mountain -> Mountain Bombable Grotto/Grotto",
  ["@Death Mountain -> Mountain Storms Grotto"] = "@Death Mountain -> Mountain Storms Grotto/Grotto",
  ["@Death Mountain Crater Lower -> DMC Hammer Grotto"] = "@Death Mountain Crater Lower -> DMC Hammer Grotto/Grotto",
  ["@Death Mountain Crater Upper -> Top of Crater Grotto"] = "@Death Mountain Crater Upper -> Top of Crater Grotto/Grotto",
  ["@Desert Colossus -> Desert Colossus Grotto"] = "@Desert Colossus -> Desert Colossus Grotto/Grotto",
  ["@Gerudo Fortress -> Gerudo Fortress Storms Grotto"] = "@Gerudo Fortress -> Gerudo Fortress Storms Grotto/Grotto",
  ["@Gerudo Valley -> Gerudo Valley Octorok Grotto"] = "@Gerudo Valley -> Gerudo Valley Octorok Grotto/Grotto",
  ["@Gerudo Valley Far Side -> Gerudo Valley Storms Grotto"] = "@Gerudo Valley Far Side -> Gerudo Valley Storms Grotto/Grotto",
  ["@Goron City -> Goron City Grotto"] = "@Goron City -> Goron City Grotto/Grotto",
  ["@Hyrule Castle Grounds -> Castle Storms Grotto"] = "@Hyrule Castle Grounds -> Castle Storms Grotto/Grotto",
  ["@Hyrule Field -> Field Far West Castle Town Grotto"] = "@Hyrule Field -> Field Far West Castle Town Grotto/Grotto",
  ["@Hyrule Field -> Field Kakariko Grotto"] = "@Hyrule Field -> Field Kakariko Grotto/Grotto",
  ["@Hyrule Field -> Field Near Lake Inside Fence Grotto"] = "@Hyrule Field -> Field Near Lake Inside Fence Grotto/Grotto",
  ["@Hyrule Field -> Field Near Lake Outside Fence Grotto"] = "@Hyrule Field -> Field Near Lake Outside Fence Grotto/Grotto",
  ["@Hyrule Field -> Field North Lon Lon Grotto"] = "@Hyrule Field -> Field North Lon Lon Grotto/Grotto",
  ["@Hyrule Field -> Field Valley Grotto"] = "@Hyrule Field -> Field Valley Grotto/Grotto",
  ["@Hyrule Field -> Field West Castle Town Grotto"] = "@Hyrule Field -> Field West Castle Town Grotto/Grotto",
  ["@Hyrule Field -> Remote Southern Grotto"] = "@Hyrule Field -> Remote Southern Grotto/Grotto",
  ["@Kakariko Village -> Kakariko Back Grotto"] = "@Kakariko Village -> Kakariko Back Grotto/Grotto",
  ["@Kakariko Village -> Kakariko Bombable Grotto"] = "@Kakariko Village -> Kakariko Bombable Grotto/Grotto",
  ["@Kokiri Forest -> Kokiri Forest Storms Grotto"] = "@Kokiri Forest -> Kokiri Forest Storms Grotto/Grotto",
  ["@Lake Hylia -> Lake Hylia Grotto"] = "@Lake Hylia -> Lake Hylia Grotto/Grotto",
  ["@Lon Lon Ranch -> Lon Lon Grotto"] = "@Lon Lon Ranch -> Lon Lon Grotto/Grotto",
  ["@Lost Woods -> Lost Woods Generic Grotto"] = "@Lost Woods -> Lost Woods Generic Grotto/Grotto",
  ["@Lost Woods Beyond Mido -> Deku Theater"] = "@Lost Woods Beyond Mido -> Deku Theater/Grotto",
  ["@Lost Woods Beyond Mido -> Lost Woods Sales Grotto"] = "@Lost Woods Beyond Mido -> Lost Woods Sales Grotto/Grotto",
  ["@Sacred Forest Meadow -> Meadow Fairy Grotto"] = "@Sacred Forest Meadow -> Meadow Fairy Grotto/Grotto",
  ["@Sacred Forest Meadow -> Meadow Storms Grotto"] = "@Sacred Forest Meadow -> Meadow Storms Grotto/Grotto",
  ["@Sacred Forest Meadow Entryway -> Front of Meadow Grotto"] = "@Sacred Forest Meadow Entryway -> Front of Meadow Grotto/Grotto",
  ["@Zora River -> Zora River Plateau Bombable Grotto"] = "@Zora River -> Zora River Plateau Bombable Grotto/Grotto",
  ["@Zora River -> Zora River Plateau Open Grotto"] = "@Zora River -> Zora River Plateau Open Grotto/Grotto",
  ["@Zora River -> Zora River Storms Grotto"] = "@Zora River -> Zora River Storms Grotto/Grotto",
  ["@Zoras Domain -> Zoras Domain Storms Grotto"] = "@Zoras Domain -> Zoras Domain Storms Grotto/Grotto",
  ["@Castle Town -> Castle Town Bazaar"] = "@Castle Town -> Castle Town Bazaar/House",
  ["@Castle Town -> Castle Town Bombchu Bowling"] = "@Castle Town -> Castle Town Bombchu Bowling/House",
  ["@Castle Town -> Castle Town Bombchu Shop"] = "@Castle Town -> Castle Town Bombchu Shop/House",
  ["@Castle Town -> Castle Town Man in Green House"] = "@Castle Town -> Castle Town Man in Green House/House",
  ["@Castle Town -> Castle Town Mask Shop"] = "@Castle Town -> Castle Town Mask Shop/House",
  ["@Castle Town -> Castle Town Potion Shop"] = "@Castle Town -> Castle Town Potion Shop/House",
  ["@Castle Town -> Castle Town Shooting Gallery"] = "@Castle Town -> Castle Town Shooting Gallery/House",
  ["@Castle Town -> Castle Town Treasure Chest Game"] = "@Castle Town -> Castle Town Treasure Chest Game/House",
  ["@Castle Town Entrance -> Castle Town Rupee Room"] = "@Castle Town Entrance -> Castle Town Rupee Room/House",
  ["@Death Mountain Crater Lower -> Crater Fairy"] = "@Death Mountain Crater Lower -> Crater Fairy/House",
  ["@Death Mountain Summit -> Mountain Summit Fairy"] = "@Death Mountain Summit -> Mountain Summit Fairy/House",
  ["@Desert Colossus -> Colossus Fairy"] = "@Desert Colossus -> Colossus Fairy/House",
  ["@Ganons Castle Grounds -> Ganons Castle Fairy"] = "@Ganons Castle Grounds -> Ganons Castle Fairy/House",
  ["@Gerudo Valley Far Side -> Carpenter Tent"] = "@Gerudo Valley Far Side -> Carpenter Tent/House",
  ["@Goron City -> Goron Shop"] = "@Goron City -> Goron Shop/House",
  ["@Graveyard -> Dampes House"] = "@Graveyard -> Dampes House/House",
  ["@Hyrule Castle Grounds -> Hyrule Castle Fairy"] = "@Hyrule Castle Grounds -> Hyrule Castle Fairy/House",
  ["@Kakariko Village -> Carpenter Boss House"] = "@Kakariko Village -> Carpenter Boss House/House",
  ["@Kakariko Village -> House of Skulltula"] = "@Kakariko Village -> House of Skulltula/House",
  ["@Kakariko Village -> Impas House"] = "@Kakariko Village -> Impas House/House",
  ["@Kakariko Village -> Impas House Back"] = "@Kakariko Village -> Impas House Back/House",
  ["@Kakariko Village -> Kakariko Bazaar"] = "@Kakariko Village -> Kakariko Bazaar/House",
  ["@Kakariko Village -> Kakariko Shooting Gallery"] = "@Kakariko Village -> Kakariko Shooting Gallery/House",
  ["@Kakariko Village -> Odd Medicine Building"] = "@Kakariko Village -> Odd Medicine Building/House",
  ["@Kakariko Village -> Windmill"] = "@Kakariko Village -> Windmill/House",
  ["@Kokiri Forest -> House of Twins"] = "@Kokiri Forest -> House of Twins/House",
  ["@Kokiri Forest -> Know It All House"] = "@Kokiri Forest -> Know It All House/House",
  ["@Kokiri Forest -> Kokiri Shop"] = "@Kokiri Forest -> Kokiri Shop/House",
  ["@Kokiri Forest -> Links House"] = "@Kokiri Forest -> Links House/House",
  ["@Kokiri Forest -> Mido House"] = "@Kokiri Forest -> Mido House/House",
  ["@Kokiri Forest -> Saria House"] = "@Kokiri Forest -> Saria House/House",
  ["@Lake Hylia -> Fishing Hole"] = "@Lake Hylia -> Fishing Hole/House",
  ["@Lake Hylia -> Lake Hylia Lab"] = "@Lake Hylia -> Lake Hylia Lab/House",
  ["@Lon Lon Ranch -> Ingo Barn"] = "@Lon Lon Ranch -> Ingo Barn/House",
  ["@Lon Lon Ranch -> Lon Lon Corner Tower"] = "@Lon Lon Ranch -> Lon Lon Corner Tower/House",
  ["@Lon Lon Ranch -> Talon House"] = "@Lon Lon Ranch -> Talon House/House",
  ["@Zoras Domain -> Zora Shop"] = "@Zoras Domain -> Zora Shop/House",
  ["@Zoras Fountain -> Zoras Fountain Fairy"] = "@Zoras Fountain -> Zoras Fountain Fairy/House",
  ["@Death Mountain Crater Central -> Fire Temple Lower"] = "@Death Mountain Crater Central -> Fire Temple Lower/Dungeon",
  ["@Desert Colossus -> Spirit Temple Lobby"] = "@Desert Colossus -> Spirit Temple Lobby/Dungeon",
  ["@Dodongos Cavern Entryway -> Dodongos Cavern Beginning"] = "@Dodongos Cavern Entryway -> Dodongos Cavern Beginning/Dungeon",
  ["@Gerudo Fortress -> Gerudo Training Grounds Lobby"] = "@Gerudo Fortress -> Gerudo Training Grounds Lobby/Dungeon",
  ["@Kakariko Village -> Bottom of the Well"] = "@Kakariko Village -> Bottom of the Well/Dungeon",
  ["@Lake Hylia -> Water Temple Lobby"] = "@Lake Hylia -> Water Temple Lobby/Dungeon",
  ["@Outside Deku Tree -> Deku Tree Lobby"] = "@Outside Deku Tree -> Deku Tree Lobby/Dungeon",
  ["@Sacred Forest Meadow -> Forest Temple Lobby"] = "@Sacred Forest Meadow -> Forest Temple Lobby/Dungeon",
  ["@Shadow Temple Warp Region -> Shadow Temple Entryway"] = "@Shadow Temple Warp Region -> Shadow Temple Entryway/Dungeon",
  ["@Zoras Fountain -> Ice Cavern Beginning"] = "@Zoras Fountain -> Ice Cavern Beginning/Dungeon",
  ["@Zoras Fountain -> Jabu Jabus Belly Beginning"] = "@Zoras Fountain -> Jabu Jabus Belly Beginning/Dungeon",
  ["@Castle Grounds -> Castle Town"] = "@Castle Grounds -> Castle Town/Overworld",
  ["@Castle Town -> Castle Grounds"] = "@Castle Town -> Castle Grounds/Overworld",
  ["@Castle Town -> Castle Town Entrance"] = "@Castle Town -> Castle Town Entrance/Overworld",
  ["@Castle Town -> Temple of Time Exterior"] = "@Castle Town -> Temple of Time Exterior/Overworld",
  ["@Castle Town Entrance -> Castle Town"] = "@Castle Town Entrance -> Castle Town/Overworld",
  ["@Castle Town Entrance -> Hyrule Field"] = "@Castle Town Entrance -> Hyrule Field/Overworld",
  ["@Darunias Chamber -> Death Mountain Crater Lower"] = "@Darunias Chamber -> Death Mountain Crater Lower/Overworld",
  ["@Death Mountain -> Goron City"] = "@Death Mountain -> Goron City/Overworld",
  ["@Death Mountain -> Kakariko Village Behind Gate"] = "@Death Mountain -> Kakariko Village Behind Gate/Overworld",
  ["@Death Mountain Crater Lower -> Darunias Chamber"] = "@Death Mountain Crater Lower -> Darunias Chamber/Overworld",
  ["@Death Mountain Crater Upper -> Death Mountain Summit"] = "@Death Mountain Crater Upper -> Death Mountain Summit/Overworld",
  ["@Death Mountain Summit -> Death Mountain Crater Upper"] = "@Death Mountain Summit -> Death Mountain Crater Upper/Overworld",
  ["@Desert Colossus -> Haunted Wasteland Near Colossus"] = "@Desert Colossus -> Haunted Wasteland Near Colossus/Overworld",
  ["@Gerudo Fortress -> Gerudo Valley Far Side"] = "@Gerudo Fortress -> Gerudo Valley Far Side/Overworld",
  ["@Gerudo Fortress Outside Gate -> Haunted Wasteland Near Fortress"] = "@Gerudo Fortress Outside Gate -> Haunted Wasteland Near Fortress/Overworld",
  ["@Gerudo Valley -> Hyrule Field"] = "@Gerudo Valley -> Hyrule Field/Overworld",
  ["@Gerudo Valley Far Side -> Gerudo Fortress"] = "@Gerudo Valley Far Side -> Gerudo Fortress/Overworld",
  ["@Goron City -> Death Mountain"] = "@Goron City -> Death Mountain/Overworld",
  ["@Goron City Woods Warp -> Lost Woods"] = "@Goron City Woods Warp -> Lost Woods/Overworld",
  ["@Graveyard -> Kakariko Village"] = "@Graveyard -> Kakariko Village/Overworld",
  ["@Haunted Wasteland Near Colossus -> Desert Colossus"] = "@Haunted Wasteland Near Colossus -> Desert Colossus/Overworld",
  ["@Haunted Wasteland Near Fortress -> Gerudo Fortress Outside Gate"] = "@Haunted Wasteland Near Fortress -> Gerudo Fortress Outside Gate/Overworld",
  ["@Hyrule Field -> Castle Town Entrance"] = "@Hyrule Field -> Castle Town Entrance/Overworld",
  ["@Hyrule Field -> Gerudo Valley"] = "@Hyrule Field -> Gerudo Valley/Overworld",
  ["@Hyrule Field -> Kakariko Village"] = "@Hyrule Field -> Kakariko Village/Overworld",
  ["@Hyrule Field -> Lake Hylia"] = "@Hyrule Field -> Lake Hylia/Overworld",
  ["@Hyrule Field -> Lon Lon Ranch"] = "@Hyrule Field -> Lon Lon Ranch/Overworld",
  ["@Hyrule Field -> Lost Woods Bridge"] = "@Hyrule Field -> Lost Woods Bridge/Overworld",
  ["@Hyrule Field -> Zora River Front"] = "@Hyrule Field -> Zora River Front/Overworld",
  ["@Kakariko Village -> Graveyard"] = "@Kakariko Village -> Graveyard/Overworld",
  ["@Kakariko Village -> Hyrule Field"] = "@Kakariko Village -> Hyrule Field/Overworld",
  ["@Kakariko Village Behind Gate -> Death Mountain"] = "@Kakariko Village Behind Gate -> Death Mountain/Overworld",
  ["@Kokiri Forest -> Lost Woods"] = "@Kokiri Forest -> Lost Woods/Overworld",
  ["@Kokiri Forest -> Lost Woods Bridge From Forest"] = "@Kokiri Forest -> Lost Woods Bridge From Forest/Overworld",
  ["@Lake Hylia -> Hyrule Field"] = "@Lake Hylia -> Hyrule Field/Overworld",
  ["@Lake Hylia -> Zoras Domain"] = "@Lake Hylia -> Zoras Domain/Overworld",
  ["@Lon Lon Ranch -> Hyrule Field"] = "@Lon Lon Ranch -> Hyrule Field/Overworld",
  ["@Lost Woods -> Goron City Woods Warp"] = "@Lost Woods -> Goron City Woods Warp/Overworld",
  ["@Lost Woods -> Zora River"] = "@Lost Woods -> Zora River/Overworld",
  ["@Lost Woods Beyond Mido -> Sacred Forest Meadow Entryway"] = "@Lost Woods Beyond Mido -> Sacred Forest Meadow Entryway/Overworld",
  ["@Lost Woods Bridge -> Hyrule Field"] = "@Lost Woods Bridge -> Hyrule Field/Overworld",
  ["@Lost Woods Bridge -> Kokiri Forest"] = "@Lost Woods Bridge -> Kokiri Forest/Overworld",
  ["@Lost Woods Forest Exit -> Kokiri Forest"] = "@Lost Woods Forest Exit -> Kokiri Forest/Overworld",
  ["@Sacred Forest Meadow Entryway -> Lost Woods Beyond Mido"] = "@Sacred Forest Meadow Entryway -> Lost Woods Beyond Mido/Overworld",
  ["@Zora River -> Lost Woods"] = "@Zora River -> Lost Woods/Overworld",
  ["@Zora River Behind Waterfall -> Zoras Domain"] = "@Zora River Behind Waterfall -> Zoras Domain/Overworld",
  ["@Zora River Front -> Hyrule Field"] = "@Zora River Front -> Hyrule Field/Overworld",
  ["@Zoras Domain -> Lake Hylia"] = "@Zoras Domain -> Lake Hylia/Overworld",
  ["@Zoras Domain -> Zora River Behind Waterfall"] = "@Zoras Domain -> Zora River Behind Waterfall/Overworld",
  ["@Zoras Domain Behind King Zora -> Zoras Fountain"] = "@Zoras Domain Behind King Zora -> Zoras Fountain/Overworld",
  ["@Zoras Fountain -> Zoras Domain Behind King Zora"] = "@Zoras Fountain -> Zoras Domain Behind King Zora/Overworld",
  ["@Death Mountain Summit Owl Flight -> Kakariko Village"] = "@Death Mountain Summit Owl Flight -> Kakariko Village/Overworld",
  ["@Lake Hylia Owl Flight -> Hyrule Field"] = "@Lake Hylia Owl Flight -> Hyrule Field/Overworld",
}
capture_badge_cache = {}
function badge_locations()
  for location,section in pairs(capture_badge_locations) do
    local target = Tracker:FindObjectForCode(location)
    local source = Tracker:FindObjectForCode(section)
    if target and source then
      -- Has the captured item changed since last update
      if source.CapturedItem ~= capture_badge_cache[source] then
        -- Does the target location have a badge, if it does remove it
        if capture_badge_cache[target] then
          target:RemoveBadge(capture_badge_cache[target])
          capture_badge_cache[target] = nil
          capture_badge_cache[source] = nil
        end
        -- Check if a captured item exists, add it as badge
        if source.CapturedItem then
          capture_badge_cache[target] = target:AddBadge(source.CapturedItem.PotentialIcon)
          capture_badge_cache[source] = source.CapturedItem
        end
      end
    end
  end
end



function tracker_on_accessibility_updated()
  update_smallkeys()
  --badge_locations()
end