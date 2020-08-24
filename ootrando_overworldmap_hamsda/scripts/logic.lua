function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function get_highest_accessibility(...)
  local args = {...}
  local count = 0
  local level = AccessibilityLevel.None

  for _,data in ipairs(args) do
    if data[1] >= count then
      count = data[1]
      if level ~= AccessibilityLevel.Normal
      and data[2] == AccessibilityLevel.Normal 
      then
        level = AccessibilityLevel.Normal
      elseif level ~= AccessibilityLevel.SequenceBreak
      and data[2] == AccessibilityLevel.SequenceBreak
      then
        level = AccessibilityLevel.SequenceBreak
      end
    end
  end
  return count, level
end

function can_time_travel()
  if has("setting_door_open")
  or (has("ocarina") and has("time"))
  then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function has_age(age)
  if not age then
    print("missing argument: age")
  end

  local time_travel = can_time_travel() > 0

  if age == "child" then
    return (time_travel or has("setting_age_child")) and 1 or 0
  elseif age == "adult" then
    return (time_travel or has("setting_age_adult")) and 1 or 0
  elseif age == "both" then
    return time_travel and 1 or 0
  else
    print("wrong argument: age")
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

function can_child_attack()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("sling")
  or has("boomerang")
  or has("sticks")
  or has("sword1")
  or (has("dinsfire") and has("magic")) 
  then
    return 1, AccessibilityLevel.Normal
  else
    return has_explosives()
  end
end

function can_stun_deku()
  if has_age("adult") == 1
  or has("nuts")
  or has("shield1")
  then
    return 1, AccessibilityLevel.Normal
  else
    return can_child_attack()
  end
end

function can_LA()
  if has_age("adult") == 1
  and has("magic")
  and has("bow")
  and has("lightarrow")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function has_fire()
  if has_age("adult") == 1
  and has("magic")
  and has("bow")
  and has("firearrow")
  or 
  has("dinsfire") 
  and has("magic")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function night_gs()
  if has("setting_skulltulas_sun_on")
  and (has("ocarina", 0) or has("sun", 0))
  then
    return 1, AccessibilityLevel.SequenceBreak
  end
  return 1, AccessibilityLevel.Normal
end

function can_use_lens()
  if has("lens") and has("magic") then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function FTR_or_goron()
  if has("logic_fewer_tunic_requirements") 
  or has("redtunic") 
  then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function FTR_or_zora()
  if has("logic_fewer_tunic_requirements") 
  or has("bluetunic") 
  then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function hidden_grotto()
  if has("logic_grottos_without_agony")
  or has("agony")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function can_leave_forest()
  if has("setting_forest_open")
  or has("setting_forest_deku")
  --or has_age("adult")
  then
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

function beyond_mido()
  if has("ocarina") and (has("saria") or has("minuet"))
  or has("logic_mido_backflip")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function gerudo_card()
  local card = has("card")
  if has("setting_shuffle_card_yes") then
    local count = card and 1 or 0
    local level = card and AccessibilityLevel.Normal or AccessibilityLevel.None
    return count, level
  else
    local level = card and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
    return 1, level
  end
end

function gerudo_bridge()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end
  if has("longshot")
  or has("ocarina") and has("epona")
  or has("gerudo_fortress_open")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function quicksand()
  if has("longshot")
  or has("hoverboots")
  or has("logic_wasteland_crossing")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function wasteland_forward()
  if has("logic_lens_wasteland")
  or has("lens") and has("magic")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function wasteland_reverse()
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

  if gerudo_bridge() > 0 then
    return 1, AccessibilityLevel.Normal
  end

  if has("ocarina") and has("requiem") then
    local _, reverse_level = wasteland_reverse()
    local _, quicksand_level = quicksand()

    if reverse_level == AccessibilityLevel.SequenceBreak
    or quicksand_level == AccessibilityLevel.SequenceBreak
    then
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
  
  local bridge_count = gerudo_bridge()
  local card_count, card_level = gerudo_card()
  local _, quicksand_level = quicksand()

  if bridge_count > 0
  and card_count > 0
  then
    forward_count = 1

    if card_level == AccessibilityLevel.SequenceBreak
    or quicksand_level == AccessibilityLevel.SequenceBreak
    then
      forward_level = AccessibilityLevel.SequenceBreak
    else
      return 1, AccessibilityLevel.Normal
    end
  end

  if has("ocarina") and has("requiem") then
    return wasteland_reverse()
  end

  return forward_count, forward_level
end

function child_colossus()
  if has("ocarina")
  and has("requiem")
  and has_age("child") == 1
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function adult_colossus()
  if has("ocarina") and has("requiem") then
    return 1, AccessibilityLevel.Normal
  end
    
  local bridge_count = gerudo_bridge()
  if bridge_count == 0 then
    return 0, AccessibilityLevel.None
  end
  
  local card_count, card_level = gerudo_card()
  if card_count == 0 then
    return 0, AccessibilityLevel.None
  end
  local level = card_level
  
  local _, quicksand_level = quicksand()
  local _, forward_level = wasteland_forward()
  if quicksand_level == AccessibilityLevel.SequenceBreak
  or forward_level == AccessibilityLevel.SequenceBreak
  then
    level = AccessibilityLevel.SequenceBreak
  end
  
  return 1, level
end

function child_death_mountain()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("postzelda")
  or (has("dinsfire") and has("magic"))
  then
    return 1, AccessibilityLevel.Normal
  end

  if has_age("adult") > 0
  and (has("lift1") or has("bow") or has("hammer"))
  then
    return 1, AccessibilityLevel.Normal
  end

  return has_explosives()
end

function link_the_goron()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("lift1")
  or has("bow")
  then
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

function dmt_climb()
  if has_age("both") > 0
  and has("beans")
  and has("lift1")
  then
    return 1, AccessibilityLevel.Normal
  else
    return can_blast()
  end
end

function dmc_upper_to_lower()
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

function dmc_upper_to_central()
  if has_age("adult") > 0
  and has("redtunic")
  and has("longshot")
  and damage_single_instance_quadruple() > 0
  then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function dmc_lower_to_central()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end
  if has("hoverboots")
  or has("hookshot")
  then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function dmc_central_to_lower()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end
  if has("hoverboots")
  or has("hookshot")
  or (has_age("both") > 0
  and has("ocarina")
  and has("bolero")
  and has("beans"))
  then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function dmc_upper()
  if has("ocarina") and has("bolero")
  and dmc_central_to_lower() > 0
  then
    return 1, AccessibilityLevel.Normal
  end

  local climb = {dmt_climb()}
  local goron = {link_the_goron()}

  return get_highest_accessibility(climb, goron)
end

function dmc_lower()
  if has("ocarina") and has("bolero")
  and dmc_central_to_lower() > 0
  then
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

  local climb_count, climb_level = dmt_climb()
  local upper_to_lower_count, upper_to_lower_level = dmc_upper_to_lower()
  local upper_to_central_count, upper_to_central_level = dmc_upper_to_central()
  if climb_count > 0 
  and (
    upper_to_lower_count > 0
    or upper_to_central_count > 0
  ) then
    if climb_level == AccessibilityLevel.Normal
    and (
      upper_to_lower_level == AccessibilityLevel.Normal
      or upper_to_central_level == AccessibilityLevel.Normal
    ) then
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
  local lower_to_central_count, lower_to_central_level = dmc_lower_to_central()
  if goron_count > 0 
  and lower_to_central_count > 0 
  then
    if goron_level == AccessibilityLevel.Normal 
    and lower_to_central_level == AccessibilityLevel.Normal 
    then
      return 1, AccessibilityLevel.Normal
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end

  local climb_count, climb_level = dmt_climb()
  local upper_to_lower_count, upper_to_lower_level = dmc_upper_to_lower()
  local upper_to_central_count, upper_to_central_level = dmc_upper_to_central()
  if climb_count > 0 
  and (
    (
      upper_to_lower_count > 0
      and lower_to_central_count > 0 
    )
    or upper_to_central_count > 0
  ) then
    if climb_level == AccessibilityLevel.Normal
    and (
      (
        upper_to_lower_level == AccessibilityLevel.Normal
        and lower_to_central_level == AccessibilityLevel.Normal 
      )
      or upper_to_central_level == AccessibilityLevel.Normal
    ) then
      return 1, AccessibilityLevel.Normal
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end
  
  return count, level  
end

function child_fountain()
  if has_age("child") == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("ruto", 0) 
  and has("setting_fountain_open", 0) 
  then
    return 0, AccessibilityLevel.None
  end

  local level = AccessibilityLevel.Normal

  if has("king_zora_moved_yes", 0) 
  and has("setting_fountain_open", 0) 
  then
    level = AccessibilityLevel.SequenceBreak
  end

  if has("scale1") then
    return 1, level
  end

  local explo_count, explo_level = has_explosives()
  if explo_count == 0 then
    return 0, AccessibilityLevel.None
  end

  if explo_level == AccessibilityLevel.SequenceBreak then
    level = AccessibilityLevel.SequenceBreak
  end
  
  if has("logic_zora_with_cucco", 0)
  and (has("ocarina", 0) or has("lullaby", 0))
  then
    level = AccessibilityLevel.SequenceBreak
  end

  return 1, level
end

function adult_fountain()
  if has_age("adult") == 0 then
    return 0, AccessibilityLevel.None
  end

  local level = AccessibilityLevel.Normal

  if has("ocarina", 0)
  or has("lullaby", 0)
  then
    if has("hoverboots", 0) then
      return 0, AccessibilityLevel.None
    elseif has("logic_zora_with_hovers", 0) then
      level = AccessibilityLevel.SequenceBreak
    end
  end

  if has("setting_fountain_open") 
  or has("setting_fountain_adult")
  then
    return 1, level
  end

  local child_count, child_level = child_fountain()
  if child_count == 0 then
    return 0, AccessibilityLevel.None
  end
  if child_level == AccessibilityLevel.SequenceBreak then
    level = AccessibilityLevel.SequenceBreak
  end
  return 1, level
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

  if kz_count > 0
  and ruto > 0 then
    if usable_bottles == 0 then  
      level = kz_level
    end
    usable_bottles = usable_bottles + ruto
  end
  
  return usable_bottles, level
end

function has_projectile(age)
  local explo = has_explosives() > 0
  local sling = has("sling")
  local rang = has("boomerang")
  local bow = has("bow")
  local hook = has("hookshot")

  if age == "child" then
    return explo or sling or rang
  elseif age == "adult" then
    return explo or bow or hook
  elseif age == "both" then
    return explo or (bow or hook) and (sling or rang)
  else
    return explo or (bow or hook) or (sling or rang)
  end
end

function damage_below_quadruple()
  if has("setting_damage_ohko", 0) 
  and has("setting_damage_quadruple", 0) 
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function damage_below_ohko()
  if has("setting_damage_ohko", 0) 
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function damage_single_instance_quadruple()
  if damage_below_quadruple() > 0
  or has("nayrus") and has("magic")
  then
    return 1, AccessibilityLevel.Normal
  else
    return has_bottle()
  end
end

function damage_single_instance_ohko()
  if damage_below_ohko() > 0
  or has("nayrus") and has("magic")
  then
    return 1, AccessibilityLevel.Normal
  else
    return has_bottle()
  end
end

function hintable()
  if 
  has("setting_hints_on")
  or
  has("setting_hints_truth") and has("maskoftruth")
  or
  has("setting_hints_agony") and has("agony")
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end

function trials_barrier_dispelled()
  local trials_cleared = Tracker:ProviderCountForCode("trial_cleared")
  local setting_trials = Tracker:FindObjectForCode("setting_trials").AcquiredCount
  
  if setting_trials == 0
  or trials_cleared >= setting_trials 
  then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
  end
end