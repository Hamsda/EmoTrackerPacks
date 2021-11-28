function can_time_travel()
  if has("setting_door_open") or (has("ocarina") and has("time")) then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function has_age(age)
  if not age then
    print("error! has_age - missing age")
  end

  if age == "child" then
    if has("setting_age_child") then
      return 1, AccessibilityLevel.Normal
    end
    return can_time_travel()
  elseif age == "adult" then
    if has("setting_age_adult") then
      return 1, AccessibilityLevel.Normal
    end
    return can_time_travel()
  elseif age == "both" then
    return can_time_travel()
  else
    print("error! has_age - invalid age:", age)
  end

  return 0, AccessibilityLevel.None
end

function spawn_access(region, age)
  region = region or ""
  age = age or ""

  if has_age(age) == 0 then
    return 0, AccessibilityLevel.None
  end

  local spawn_object = nil

  if age == "child" then
    spawn_object = get_object("@Child Spawn -> KF Links House/Capture")
  elseif age == "adult" then
    spawn_object = get_object("@Adult Spawn -> Temple of Time/Capture")
  else
    print("error! spawn_access invalid age:", age)
    return 0, AccessibilityLevel.None
  end

  if
    spawn_object and spawn_object.CapturedItem and spawn_object.CapturedItem.Name and
      spawn_object.CapturedItem.Name == region
   then
    return 1, AccessibilityLevel.Normal
  end

  return 0, AccessibilityLevel.None
end

function night_gs()
  if has("setting_skulltulas_sun_off") or (has("ocarina") and has("sun")) then
    return 1, AccessibilityLevel.Normal
  end
  return 1, AccessibilityLevel.SequenceBreak
end

function hidden_grotto()
  if has("logic_grottos_without_agony") or has("agony") then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function hintable()
  if
    has("setting_hints_on") or has("setting_hints_truth") and has("maskoftruth") or
      has("setting_hints_agony") and has("agony")
   then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function bean_planting(state)
  if state == "yes" then
    if BEAN_PLANTING then
      return 1, AccessibilityLevel.Normal
    end
  elseif state == "no" then
    if not BEAN_PLANTING then
      return 1, AccessibilityLevel.Normal
    end
  else
    print("error! bean_planting - invalid state")
  end
  return 0, AccessibilityLevel.None
end

function has_bombchus()
  local bombs = Tracker:ProviderCountForCode("bombs")
  local chus = Tracker:ProviderCountForCode("bombchu")
  if has("setting_logic_chus_yes") then
    if chus > 0 then
      return chus, AccessibilityLevel.Normal
    else
      return 0, AccessibilityLevel.None
    end
  else
    if bombs > 0 then
      return bombs, AccessibilityLevel.Normal
    elseif chus > 0 then
      return chus, AccessibilityLevel.SequenceBreak
    end
  end
  return 0, AccessibilityLevel.None
end

function has_explosives()
  local bombs = Tracker:ProviderCountForCode("bombs")
  local chus_count, chus_level = has_bombchus()
  if bombs > 0 then
    return bombs, AccessibilityLevel.Normal
  elseif chus_count > 0 then
    return chus_count, chus_level
  else
    return 0, AccessibilityLevel.None
  end
end

function can_blast()
  if has_age("adult") == 1 and has("hammer") then
    return 1, AccessibilityLevel.Normal
  else
    return has_explosives()
  end
end

function has_projectile(age)
  local sling = has("sling")
  local rang = has("boomerang")
  local bow = has("bow")
  local hook = has("hookshot")

  if age == "child" then
    if sling or rang then
      return 1, AccessibilityLevel.Normal
    end
  elseif age == "adult" then
    if bow or hook then
      return 1, AccessibilityLevel.Normal
    end
  elseif age == "both" then
    if (bow or hook) and (sling or rang) then
      return 1, AccessibilityLevel.Normal
    end
  else
    if (bow or hook) or (sling or rang) then
      return 1, AccessibilityLevel.Normal
    end
  end

  return has_explosives()
end

function can_child_attack()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("sling") or has("boomerang") or has("sticks") or has("sword1") or (has("dinsfire") and has("magic")) then
    return 1, AccessibilityLevel.Normal
  else
    return has_explosives()
  end
end

function can_stun_deku()
  if has_age("adult") == 1 or has("nuts") or has("shield1") then
    return 1, AccessibilityLevel.Normal
  else
    return can_child_attack()
  end
end

function can_use_lens()
  if has("lens") and has("magic") then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function can_LA()
  if has_age("adult") == 1 and has("magic") and has("bow") and has("lightarrow") then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function has_fire()
  if has_age("adult") == 1 and has("magic") and has("bow") and has("firearrow") or has("dinsfire") and has("magic") then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function can_leave_forest()
  if has("setting_forest_open") or has("setting_forest_deku") or has("setting_age_adult") then
    return 1, AccessibilityLevel.Normal
  end

  if has("shield1") and has("sword1") then
    if has("sling") or has("logic_deku_b1_skip") then
      return 1, AccessibilityLevel.Normal
    end
    return 1, AccessibilityLevel.SequenceBreak
  end

  if has("deku") then
    return 1, AccessibilityLevel.SequenceBreak
  end

  return 0, AccessibilityLevel.None
end

function mask_shop_open()
  if
    (has("setting_kak_open") and has("postzelda")) or (has("setting_kak_letter") and has("postzelda")) or
      (has("setting_kak_closed") and has("postguard"))
   then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function beyond_mido()
  if
    (has("ocarina") and (has("saria") or has("minuet"))) or has("logic_mido_backflip") or
      spawn_access("Sacred Forest Meadow", "adult") > 0
   then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function gerudo_card()
  if has("card") then
    return 1, AccessibilityLevel.Normal
  end
  if has("setting_shuffle_card_yes") then
    return 0, AccessibilityLevel.None
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function _gerudo_bridge()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end
  if
    has("longshot") or has("ocarina") and has("epona") or has("gerudo_fortress_open") or
      (has("setting_shuffle_card_no") and has("card")) or
      spawn_access("Gerudo Fortress", "adult") > 0
   then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function _quicksand()
  if has("longshot") or has("hoverboots") or has("logic_wasteland_crossing") then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function _wasteland_forward()
  if has("logic_lens_wasteland") or has("lens") and has("magic") then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function _wasteland_reverse()
  if has("logic_reverse_wasteland") then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function gerudo_valley_far_side()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end

  if _gerudo_bridge() > 0 then
    return 1, AccessibilityLevel.Normal
  end

  if has("ocarina") and has("requiem") then
    local _, reverse_level = _wasteland_reverse()
    local _, quicksand_level = _quicksand()

    if reverse_level == AccessibilityLevel.SequenceBreak or quicksand_level == AccessibilityLevel.SequenceBreak then
      return 1, AccessibilityLevel.SequenceBreak
    else
      return 1, AccessibilityLevel.Normal
    end
  end

  return 0, AccessibilityLevel.None
end

function wasteland()
  local forward_count = 0
  local forward_level = AccessibilityLevel.Normal

  local bridge_count = _gerudo_bridge()
  local card_count, card_level = gerudo_card()
  local _, quicksand_level = _quicksand()

  if bridge_count > 0 and card_count > 0 then
    forward_count = 1

    if card_level == AccessibilityLevel.SequenceBreak or quicksand_level == AccessibilityLevel.SequenceBreak then
      forward_level = AccessibilityLevel.SequenceBreak
    else
      return 1, AccessibilityLevel.Normal
    end
  end

  if has("ocarina") and has("requiem") then
    return _wasteland_reverse()
  end

  return forward_count, forward_level
end

function child_colossus()
  if has("ocarina") and has("requiem") and has_age("child") == 1 then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function adult_colossus()
  if has("ocarina") and has("requiem") then
    return 1, AccessibilityLevel.Normal
  end

  local bridge_count = _gerudo_bridge()
  if bridge_count == 0 then
    return 0, AccessibilityLevel.None
  end

  local card_count, card_level = gerudo_card()
  if card_count == 0 then
    return 0, AccessibilityLevel.None
  end
  local level = card_level

  local _, quicksand_level = _quicksand()
  local _, forward_level = _wasteland_forward()
  if quicksand_level == AccessibilityLevel.SequenceBreak or forward_level == AccessibilityLevel.SequenceBreak then
    level = AccessibilityLevel.SequenceBreak
  end

  return 1, level
end

function child_death_mountain()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if
    has("setting_kak_open") or (has("setting_kak_letter") and has("postzelda")) or
      (has("setting_kak_closed") and has("postguard")) or
      (has("dinsfire") and has("magic"))
   then
    return 1, AccessibilityLevel.Normal
  end

  if has_age("adult") > 0 and (has("lift1") or has("bow") or has("hammer")) then
    return 1, AccessibilityLevel.Normal
  end

  if
    spawn_access("DMC Lower", "child") > 0 or spawn_access("Death Mountain Summit", "child") > 0 or
      spawn_access("DMC Fairy", "child") > 0 or
      spawn_access("DMT Fairy", "child") > 0
   then
    return 1, AccessibilityLevel.Normal
  end

  return has_explosives()
end

function link_the_goron()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("lift1") or has("bow") then
    return 1, AccessibilityLevel.Normal
  end

  local count = 0
  local level = AccessibilityLevel.None

  if has("dinsfire") and has("magic") then
    if has("logic_link_goron_dins") then
      return 1, AccessibilityLevel.Normal
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end

  local explo_count, explo_level = has_explosives()
  if explo_count > 0 then
    return explo_count, explo_level
  end

  return count, level
end

function goron_tunic()
  if has("redtunic") then
    return 1, AccessibilityLevel.Normal
  elseif has("wallet") then
    if has("setting_shopsanity_yes") then
      return 1, AccessibilityLevel.SequenceBreak
    end
    if spawn_access("GC Shop", "adult") > 0 then
      return 1, AccessibilityLevel.Normal
    end
    return link_the_goron()
  end
  return 0, AccessibilityLevel.None
end

function FTR_or_goron()
  if has("logic_fewer_tunic_requirements") then
    return 1, AccessibilityLevel.Normal
  else
    local goron_count, goron_level = goron_tunic()
    if goron_count > 0 then
      return goron_count, goron_level
    end
  end
  return 1, AccessibilityLevel.SequenceBreak
end

function _dmt_climb()
  if spawn_access("Death Mountain Summit", "adult") > 0 or spawn_access("DMT Fairy", "adult") > 0 then
    return 1, AccessibilityLevel.Normal
  end

  if has_age("both") > 0 and has("lift1") and (has("bean_trail_yes") or (has("beans") and not BEAN_PLANTING)) then
    return 1, AccessibilityLevel.Normal
  end

  local count = 0
  local level = AccessibilityLevel.None

  if has_age("adult") > 0 and has("hoverboots") then
    if has("logic_dmt_climb_hovers") then
      return 1, AccessibilityLevel.Normal
    end
    count = 1
    level = AccessibilityLevel.SequenceBreak
  end

  local blast_count, blast_level = can_blast()
  if blast_count > 0 then
    return blast_count, blast_level
  end

  return count, level
end

function _dmc_upper_to_lower()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end
  if has("hoverboots") then
    return 1, AccessibilityLevel.Normal
  end
  if has("hammer") then
    if has("logic_crater_upper_to_lower") then
      return 1, AccessibilityLevel.Normal
    end
    return 1, AccessibilityLevel.SequenceBreak
  end
  return 0, AccessibilityLevel.None
end

function _dmc_upper_to_central()
  if has_age("adult") > 0 and has("redtunic") and has("longshot") and damage_single_instance_quadruple() > 0 then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function _dmc_lower_to_central()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end
  if has("hoverboots") or has("hookshot") then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function _dmc_central_to_lower()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end
  if has("hoverboots") or has("hookshot") or (has_age("both") > 0 and has("ocarina") and has("bolero") and has("beans")) then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function dmc_upper()
  if
    spawn_access("DMC Lower", "adult") > 0 or spawn_access("Death Mountain Summit", "adult") > 0 or
      spawn_access("DMC Fairy", "adult") > 0 or
      spawn_access("DMT Fairy", "adult") > 0
   then
    return 1, AccessibilityLevel.Normal
  end

  if has("ocarina") and has("bolero") and _dmc_central_to_lower() > 0 then
    return 1, AccessibilityLevel.Normal
  end

  local climb_count, climb_level = _dmt_climb()
  local goron_count, goron_level = link_the_goron()

  if climb_count > 0 or goron_count > 0 then
    if climb_level == AccessibilityLevel.Normal or goron_level == AccessibilityLevel.Normal then
      return 1, AccessibilityLevel.Normal
    end
    return 1, AccessibilityLevel.SequenceBreak
  end
  return 0, AccessibilityLevel.None
end

function dmc_lower()
  if spawn_access("DMC Lower", "adult") > 0 or spawn_access("DMC Fairy", "adult") > 0 then
    return 1, AccessibilityLevel.Normal
  end

  if has("ocarina") and has("bolero") and _dmc_central_to_lower() > 0 then
    return 1, AccessibilityLevel.Normal
  end

  local count = 0
  local level = AccessibilityLevel.None

  local goron_count, goron_level = link_the_goron()
  if goron_count > 0 then
    if goron_level == AccessibilityLevel.Normal then
      return 1, AccessibilityLevel.Normal
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end

  local climb_count, climb_level = _dmt_climb()
  local upper_to_lower_count, upper_to_lower_level = _dmc_upper_to_lower()
  local upper_to_central_count, upper_to_central_level = _dmc_upper_to_central()
  if climb_count > 0 and (upper_to_lower_count > 0 or upper_to_central_count > 0) then
    if
      climb_level == AccessibilityLevel.Normal and
        (upper_to_lower_level == AccessibilityLevel.Normal or upper_to_central_level == AccessibilityLevel.Normal)
     then
      return 1, AccessibilityLevel.Normal
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end

  return count, level
end

function dmc_central()
  if has("ocarina") and has("bolero") then
    return 1, AccessibilityLevel.Normal
  end

  local count = 0
  local level = AccessibilityLevel.None

  local goron_count, goron_level = link_the_goron()
  if spawn_access("DMC Lower", "adult") > 0 or spawn_access("DMC Fairy", "adult") > 0 then
    goron_count, goron_level = 1, AccessibilityLevel.Normal
  end
  local lower_to_central_count, lower_to_central_level = _dmc_lower_to_central()
  if goron_count > 0 and lower_to_central_count > 0 then
    if goron_level == AccessibilityLevel.Normal and lower_to_central_level == AccessibilityLevel.Normal then
      return 1, AccessibilityLevel.Normal
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end

  local climb_count, climb_level = _dmt_climb()
  local upper_to_lower_count, upper_to_lower_level = _dmc_upper_to_lower()
  local upper_to_central_count, upper_to_central_level = _dmc_upper_to_central()
  if climb_count > 0 and ((upper_to_lower_count > 0 and lower_to_central_count > 0) or upper_to_central_count > 0) then
    if
      climb_level == AccessibilityLevel.Normal and
        ((upper_to_lower_level == AccessibilityLevel.Normal and lower_to_central_level == AccessibilityLevel.Normal) or
          upper_to_central_level == AccessibilityLevel.Normal)
     then
      return 1, AccessibilityLevel.Normal
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end

  return count, level
end

function child_river()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("scale1") or spawn_access("Zora River", "child") > 0 or spawn_access("Zoras Domain", "child") > 0 then
    return 1, AccessibilityLevel.Normal
  end

  return has_explosives()
end

function child_domain()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("scale1") or spawn_access("Zoras Domain", "child") > 0 then
    return 1, AccessibilityLevel.Normal
  end

  local river_count, river_level = child_river()
  if river_count > 0 then
    if (has("ocarina") and has("lullaby")) or has("logic_zora_with_cucco") then
      return river_count, river_level
    end
    return 1, AccessibilityLevel.SequenceBreak
  end

  return 0, AccessibilityLevel.None
end

function child_fountain()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has_exact("ruto", 0) and has_exact("setting_fountain_open", 0) then
    return 0, AccessibilityLevel.None
  end

  return child_domain()
end

function adult_domain()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end

  if
    (has("ocarina") and has("lullaby")) or spawn_access("Zoras Domain", "adult") > 0 or
      spawn_access("ZD Shop", "adult") > 0
   then
    return 1, AccessibilityLevel.Normal
  elseif has("hoverboots") then
    if has("logic_zora_with_hovers") then
      return 1, AccessibilityLevel.Normal
    end
    return 1, AccessibilityLevel.SequenceBreak
  end

  return 0, AccessibilityLevel.None
end

function adult_fountain()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end

  local domain, level = adult_domain()
  if domain == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("setting_fountain_open") or has("setting_fountain_adult") then
    return 1, level
  end

  --handing in letter
  local child_count, child_level = child_fountain()
  if child_count > 0 and child_level == AccessibilityLevel.Normal then
    return 1, level
  end

  --KZ skip
  if has("logic_king_zora_skip") then
    return 1, level
  end
  return 1, AccessibilityLevel.SequenceBreak
end

function has_bottle()
  local bottles = Tracker:ProviderCountForCode("bottle")
  local ruto = Tracker:ProviderCountForCode("ruto")
  local bigpoe = Tracker:ProviderCountForCode("bigpoe")
  local kz_count, kz_level = child_fountain()
  local level = AccessibilityLevel.Normal

  local usable_bottles = bottles - ruto - bigpoe

  if has_age("adult") == 1 then
    usable_bottles = usable_bottles + bigpoe
  end

  if kz_count > 0 and ruto > 0 then
    if usable_bottles == 0 then
      level = kz_level
    end
    usable_bottles = usable_bottles + ruto
  end

  return usable_bottles, level
end

blue_fire_locations = {
  "@Ganons Castle/Water Trial Chests",
  "@Ganons Castle MQ/Water Trial Chest",
  "@Gerudo Training Ground MQ/Before Heavy Block Chest"
}
function has_blue_fire()
  local bottle_count, bottle_level = has_bottle()

  if bottle_count == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("wallet2") then
    return 1, bottle_level
  end

  local zf_count, zf_level = adult_fountain()
  if zf_count > 0 and zf_level == AccessibilityLevel.Normal then
    return 1, bottle_level
  end

  for _, location in ipairs(blue_fire_locations) do
    local location_object = get_object(location)
    if
      location_object and location_object.AccessibilityLevel and
        location_object.AccessibilityLevel == AccessibilityLevel.Normal
     then
      --TODO: trigger dummy update
      return 1, bottle_level
    end
  end

  return 1, AccessibilityLevel.SequenceBreak
end

function zora_tunic()
  if has("bluetunic") then
    return 1, AccessibilityLevel.Normal
  elseif has("wallet2") then
    if has("setting_shopsanity_yes") then
      return 1, AccessibilityLevel.SequenceBreak
    end
    if spawn_access("ZD Shop", "adult") > 0 then
      return 1, AccessibilityLevel.Normal
    end
    local bottle_count, bottle_level = has_bottle()
    local domain_count, domain_level = adult_domain()
    if bottle_count > 0 and domain_count > 0 then
      if bottle_level == AccessibilityLevel.SequenceBreak or domain_level == AccessibilityLevel.SequenceBreak then
        return 1, AccessibilityLevel.SequenceBreak
      else
        return 1, AccessibilityLevel.Normal
      end
    end
  end
  return 0, AccessibilityLevel.None
end

function FTR_or_zora()
  if has("logic_fewer_tunic_requirements") then
    return 1, AccessibilityLevel.Normal
  else
    local zora_count, zora_level = zora_tunic()
    if zora_count > 0 then
      return zora_count, zora_level
    end
  end
  return 1, AccessibilityLevel.SequenceBreak
end

function damage_below_quadruple()
  if has_exact("setting_damage_ohko", 0) and has_exact("setting_damage_quadruple", 0) then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function damage_below_ohko()
  if has_exact("setting_damage_ohko", 0) then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function damage_single_instance_quadruple()
  if damage_below_quadruple() > 0 or has("nayrus") and has("magic") then
    return 1, AccessibilityLevel.Normal
  else
    return has_bottle()
  end
end

function damage_single_instance_ohko()
  if damage_below_ohko() > 0 or has("nayrus") and has("magic") then
    return 1, AccessibilityLevel.Normal
  else
    return has_bottle()
  end
end

function can_spawn_rainbow_bridge()
  local setting_bridge_amount =
    get_object("setting_bridge_amount") and get_object("setting_bridge_amount").AcquiredCount or 0
  local stones = Tracker:ProviderCountForCode("stones")
  local medallions = Tracker:ProviderCountForCode("medallions")
  local tokens = Tracker:ProviderCountForCode("token")

  if has("setting_bridge_open") then
    return 1, AccessibilityLevel.Normal
  elseif has("setting_bridge_vanilla") then
    if has("lightarrow") and Tracker:ProviderCountForCode("lacs_meds") >= 2 then
      return 1, AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_stones") then
    if stones >= setting_bridge_amount then
      return 1, AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_medallions") then
    if medallions >= setting_bridge_amount then
      return 1, AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_dungeons") then
    if (stones + medallions) >= setting_bridge_amount then
      return 1, AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_gs") then
    if tokens >= setting_bridge_amount then
      return 1, AccessibilityLevel.Normal
    end
  end

  return 0, AccessibilityLevel.None
end

function trials_barrier_dispelled()
  local trials_cleared = Tracker:ProviderCountForCode("trial_cleared")
  local setting_trials = get_object("setting_trials") and get_object("setting_trials").AcquiredCount or 0

  if setting_trials == 0 or trials_cleared >= setting_trials then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end
