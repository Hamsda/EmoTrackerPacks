function update_smallkeys()
  for _,dungeon in ipairs(dungeons) do
    local key_object = get_object(dungeon.."_small_keys")
    if key_object then
      if has(dungeon.."_reg") then
        key_object.MaxCount = key_counts["vanilla"][dungeon]
      else
        key_object.MaxCount = key_counts["mq"][dungeon]
      end
    end
  end

  local gf_keys = get_object("gf_small_keys")
  if gf_keys then
    gf_keys.MaxCount = 4
  end
end



vanilla_captures = {
  ["setting_entrance_grottos_shuffle"] = {
    ["@Kokiri Forest -> KF Storms Grotto/Grotto"] = "entrance_grotto_generic",
    ["@Lost Woods -> LW Near Shortcuts Grotto/Grotto"] = "entrance_grotto_generic",
    ["@LW Beyond Mido -> Deku Theater/Grotto"] = "entrance_grotto_theater",
    ["@LW Beyond Mido -> LW Scrubs Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Sacred Forest Meadow -> SFM Fairy Grotto/Grotto"] = "entrance_grotto_fairy",
    ["@Sacred Forest Meadow -> SFM Storms Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@SFM Entryway -> SFM Wolfos Grotto/Grotto"] = "entrance_grotto_enemy",
    ["@Hyrule Field -> HF Fairy Grotto/Grotto"] = "entrance_grotto_fairy",
    ["@Hyrule Field -> HF Near Kak Grotto/Grotto"] = "entrance_grotto_field_kak",
    ["@Hyrule Field -> HF Inside Fence Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Hyrule Field -> HF Open Grotto/Grotto"] = "entrance_grotto_generic",
    ["@Hyrule Field -> HF Tektite Grotto/Grotto"] = "entrance_grotto_tektite",
    ["@Hyrule Field -> HF Cow Grotto/Grotto"] = "entrance_grotto_field_valley",
    ["@Hyrule Field -> HF Near Market Grotto/Grotto"] = "entrance_grotto_generic",
    ["@Hyrule Field -> HF Southeast Grotto/Grotto"] = "entrance_grotto_generic",
    ["@Lon Lon Ranch -> LLR Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Kakariko Village -> Kak Redead Grotto/Grotto"] = "entrance_grotto_enemy",
    ["@Kak Backyard -> Kak Open Grotto/Grotto"] = "entrance_grotto_generic",
    ["@Graveyard -> Graveyard Composers Grave/Grotto"] = "entrance_grotto_comp",
    ["@Graveyard -> Graveyard Dampes Grave/Grotto"] = "entrance_grotto_dampe",
    ["@Graveyard -> Graveyard Heart Piece Grave/Grotto"] = "entrance_grotto_hp",
    ["@Graveyard -> Graveyard Shield Grave/Grotto"] = "", --TODO: new captures?
    ["@Hyrule Castle Grounds -> HC Storms Grotto/Grotto"] = "entrance_grotto_castle_storms",
    ["@Death Mountain Summit -> DMT Cow Grotto/Grotto"] = "entrance_grotto_cow",
    ["@Death Mountain -> DMT Storms Grotto/Grotto"] = "entrance_grotto_generic",
    ["@DMC Upper Nearby -> DMC Upper Grotto/Grotto"] = "entrance_grotto_generic",
    ["@DMC Lower Nearby -> DMC Hammer Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Goron City -> GC Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Lake Hylia -> LH Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Zora River -> ZR Fairy Grotto/Grotto"] = "entrance_grotto_fairy",
    ["@Zora River -> ZR Open Grotto/Grotto"] = "entrance_grotto_generic",
    ["@Zora River -> ZR Storms Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Zoras Domain -> ZD Storms Grotto/Grotto"] = "entrance_grotto_fairy",
    ["@Gerudo Valley -> GV Octorok Grotto/Grotto"] = "", --visibility_rules to hide
    ["@GV Fortress Side -> GV Storms Grotto/Grotto"] = "entrance_grotto_scrub",
    ["@Gerudo Fortress -> GF Storms Grotto/Grotto"] = "entrance_grotto_fairy",
    ["@Desert Colossus -> Colossus Grotto/Grotto"] = "entrance_grotto_scrub",
  },
  ["setting_entrance_interiors_simple"] = {
    ["@Kokiri Forest -> KF House of Twins/House"] = "", --visibility_rules to hide
    ["@Kokiri Forest -> KF Know It All House/House"] = "", --visibility_rules to hide
    ["@Kokiri Forest -> KF Kokiri Shop/House"] = "entrance_house_shop",
    ["@Kokiri Forest -> KF Midos House/House"] = "", --TODO: new captures?
    ["@Kokiri Forest -> KF Sarias House/House"] = "", --visibility_rules to hide
    ["@Lon Lon Ranch -> LLR Stables/House"] = "entrance_house_cow",
    ["@Lon Lon Ranch -> LLR Tower/House"] = "entrance_house_cow",
    ["@Lon Lon Ranch -> LLR Talons House/House"] = "entrance_house_talon_child",
    ["@Kakariko Village -> Kak Carpenter Boss House/House"] = "entrance_house_talon_adult",
    ["@Kakariko Village -> Kak House of Skulltula/House"] = "entrance_house_skull",
    ["@Kakariko Village -> Kak Impas House/House"] = "entrance_house_cow",
    ["@Kak Impas Ledge -> Kak Impas House Back/House"] = "entrance_house_cow",
    ["@Kakariko Village -> Kak Bazaar/House"] = "entrance_house_shop",
    ["@Kakariko Village -> Kak Shooting Gallery/House"] = "entrance_house_shoot_adult",
    ["@Kak Backyard -> Kak Odd Medicine Building/House"] = "entrance_house_hag",
    ["@Graveyard -> Graveyard Dampes House/House"] = "", --visibility_rules to hide
    ["@Market -> Market Bazaar/House"] = "entrance_house_shop",
    ["@Market -> Market Bombchu Bowling/House"] = "entrance_house_bowling",
    ["@Market -> Market Bombchu Shop/House"] = "entrance_house_shop",
    ["@Market -> Market Man in Green House/House"] = "", --visibility_rules to hide
    ["@Market -> Market Mask Shop/House"] = "entrance_house_masks",
    ["@Market -> Market Potion Shop/House"] = "entrance_house_shop",
    ["@Market -> Market Shooting Gallery/House"] = "entrance_house_shoot_child",
    ["@Market -> Market Treasure Chest Game/House"] = "entrance_house_chest",
    ["@Market Entrance -> Market Guard House/House"] = "entrance_house_pot",
    ["@Ganons Castle Grounds -> OGC Great Fairy Fountain/House"] = "entrance_house_fairy",
    ["@Hyrule Castle Grounds -> HC Great Fairy Fountain/House"] = "entrance_house_fairy",
    ["@Death Mountain Summit -> DMT Great Fairy Fountain/House"] = "entrance_house_fairy",
    ["@DMC Lower Nearby -> DMC Great Fairy Fountain/House"] = "entrance_house_fairy",
    ["@Goron City -> GC Shop/House"] = "entrance_house_shop",
    ["@Lake Hylia -> LH Fishing Hole/House"] = "entrance_house_fishing",
    ["@Lake Hylia -> LH Lab/House"] = "entrance_house_lab",
    ["@Zoras Domain -> ZD Shop/House"] = "entrance_house_shop",
    ["@Zoras Fountain -> ZF Great Fairy Fountain/House"] = "entrance_house_fairy",
    ["@GV Fortress Side -> GV Carpenter Tent/House"] = "", --visibility_rules to hide
    ["@Desert Colossus -> Colossus Great Fairy Fountain/House"] = "entrance_house_fairy",
  },
  ["setting_entrance_interiors_all"] = {
    ["@Kokiri Forest -> KF Links House/House"] = "entrance_house_link",
    ["@Kakariko Village -> Kak Potion Shop Front/House"] = "entrance_house_shop",
    ["@Kakariko Village -> Kak Windmill/House"] = "entrance_house_windmill",
    ["@Kak Backyard -> Kak Potion Shop Back/House"] = "entrance_house_shop",
    ["@ToT Entrance -> Temple of Time/House"] = "entrance_house_tot",
  },
  ["setting_entrance_dungeons_shuffle"] = {
    ["@KF Outside Deku Tree -> Deku Tree Lobby/Dungeon"] = "entrance_dungeon_deku",
    ["@Sacred Forest Meadow -> Forest Temple Lobby/Dungeon"] = "entrance_dungeon_forest",
    ["@Kakariko Village -> Bottom of the Well/Dungeon"] = "entrance_dungeon_botw",
    ["@Graveyard Warp Pad Region -> Shadow Temple Entryway/Dungeon"] = "entrance_dungeon_shadow",
    ["@Dodongos Cavern Entryway -> Dodongos Cavern Beginning/Dungeon"] = "entrance_dungeon_dodongo",
    ["@Fire Temple Entrance -> Fire Temple Lower/Dungeon"] = "entrance_dungeon_fire",
    ["@Lake Hylia -> Water Temple Lobby/Dungeon"] = "entrance_dungeon_water",
    ["@Zoras Fountain -> Jabu Jabus Belly Beginning/Dungeon"] = "entrance_dungeon_jabu",
    ["@Zoras Fountain -> Ice Cavern Beginning/Dungeon"] = "entrance_dungeon_ice",
    ["@Gerudo Fortress -> Gerudo Training Grounds Lobby/Dungeon"] = "entrance_dungeon_gtg",
    ["@Desert Colossus -> Spirit Temple Lobby/Dungeon"] = "entrance_dungeon_spirit",
  },
  ["Overworld"] = {
    ["@Kokiri Forest -> Lost Woods/Overworld"] = "entrance_overworld_lw",
    ["@Kokiri Forest -> LW Bridge From Forest/Overworld"] = "entrance_overworld_bridge",
    ["@Lost Woods -> GC Woods Warp/Overworld"] = "entrance_overworld_gc",
    ["@Lost Woods -> Zora River/Overworld"] = "entrance_overworld_zr",
    ["@LW Beyond Mido -> SFM Entryway/Overworld"] = "entrance_overworld_sfm",
    ["@LW Forest Exit -> Kokiri Forest/Overworld"] = "entrance_overworld_kf",
    ["@LW Bridge -> Kokiri Forest/Overworld"] = "entrance_overworld_kf",
    ["@LW Bridge -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@SFM Entryway -> LW Beyond Mido/Overworld"] = "entrance_overworld_lw",
    ["@Hyrule Field -> Market Entrance/Overworld"] = "entrance_overworld_cte",
    ["@Hyrule Field -> Gerudo Valley/Overworld"] = "entrance_overworld_gv",
    ["@Hyrule Field -> Kakariko Village/Overworld"] = "entrance_overworld_kak",
    ["@Hyrule Field -> Lake Hylia/Overworld"] = "entrance_overworld_lh",
    ["@Hyrule Field -> Lon Lon Ranch/Overworld"] = "entrance_overworld_llr",
    ["@Hyrule Field -> LW Bridge/Overworld"] = "entrance_overworld_bridge",
    ["@Hyrule Field -> ZR Front/Overworld"] = "entrance_overworld_zr",
    ["@Lon Lon Ranch -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@Kakariko Village -> Graveyard/Overworld"] = "entrance_overworld_gy",
    ["@Kakariko Village -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@Kak Behind Gate -> Death Mountain/Overworld"] = "entrance_overworld_dmt",
    ["@Graveyard -> Kakariko Village/Overworld"] = "entrance_overworld_kak",
    ["@Market -> Castle Grounds/Overworld"] = "entrance_overworld_cg",
    ["@Market -> Market Entrance/Overworld"] = "entrance_overworld_cte",
    ["@Market -> ToT Entrance/Overworld"] = "entrance_overworld_tot",
    ["@Market Entrance -> Market/Overworld"] = "entrance_overworld_ct",
    ["@Market Entrance -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@ToT Entrance -> Market/Overworld"] = "entrance_overworld_ct",
    ["@Castle Grounds -> Market/Overworld"] = "entrance_overworld_ct",
    ["@Death Mountain -> Goron City/Overworld"] = "entrance_overworld_gc",
    ["@Death Mountain -> Kak Behind Gate/Overworld"] = "entrance_overworld_kak",
    ["@Death Mountain Summit -> DMC Upper Local/Overworld"] = "entrance_overworld_dmc",
    ["@DMT Owl Flight -> Kak Impas Ledge/Overworld"] = "entrance_overworld_kak",
    ["@DMC Lower Nearby -> GC Darunias Chamber/Overworld"] = "entrance_overworld_gc",
    ["@DMC Upper Nearby -> Death Mountain Summit/Overworld"] = "entrance_overworld_dmt",
    ["@GC Darunias Chamber -> DMC Lower Local/Overworld"] = "entrance_overworld_dmc",
    ["@Goron City -> Death Mountain/Overworld"] = "entrance_overworld_dmt",
    ["@GC Woods Warp -> Lost Woods/Overworld"] = "entrance_overworld_lw",
    ["@Lake Hylia -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@Lake Hylia -> Zoras Domain/Overworld"] = "entrance_overworld_zd",
    ["@LH Owl Flight -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@Zora River -> Lost Woods/Overworld"] = "entrance_overworld_lw",
    ["@ZR Behind Waterfall -> Zoras Domain/Overworld"] = "entrance_overworld_zd",
    ["@ZR Front -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@Zoras Domain -> Lake Hylia/Overworld"] = "entrance_overworld_lh",
    ["@Zoras Domain -> ZR Behind Waterfall/Overworld"] = "entrance_overworld_zr",
    ["@ZD Behind King Zora -> Zoras Fountain/Overworld"] = "entrance_overworld_zf",
    ["@Zoras Fountain -> ZD Behind King Zora/Overworld"] = "entrance_overworld_zd",
    ["@Gerudo Valley -> Hyrule Field/Overworld"] = "entrance_overworld_hf",
    ["@GV Fortress Side -> Gerudo Fortress/Overworld"] = "entrance_overworld_gf",
    ["@Gerudo Fortress -> GV Fortress Side/Overworld"] = "entrance_overworld_gv",
    ["@GF Outside Gate -> Wasteland Near Fortress/Overworld"] = "entrance_overworld_wl",
    ["@Wasteland Near Colossus -> Desert Colossus/Overworld"] = "entrance_overworld_col",
    ["@Wasteland Near Fortress -> GF Outside Gate/Overworld"] = "entrance_overworld_gf",
    ["@Desert Colossus -> Wasteland Near Colossus/Overworld"] = "entrance_overworld_wl",
  }
}
function update_vanilla_captures()
  for setting,captures in pairs(vanilla_captures) do
    if setting ~= "Overworld" then
      local has_setting = has(setting)
      if not_like_cache(setting, has_setting) then
        for location,item in pairs(captures) do
          local location_object = get_object(location)
          local item_object = get_object(item)
          if location_object and item_object then
            if has_setting then
              location_object.CapturedItem = nil
            else
              location_object.CapturedItem = item_object
            end
          end
        end
      end
    end
  end
end



capture_badge_locations = {}
capture_badge_cache = {}
function badge_locations()
  for location,section in pairs(capture_badge_locations) do
    local target = get_object(location)
    local source = get_object(section)
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
  update_vanilla_captures()
  --badge_locations()
  
  apply_queued_changes()
end