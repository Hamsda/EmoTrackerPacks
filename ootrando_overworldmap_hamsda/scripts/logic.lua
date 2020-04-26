function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function has_age(age)
  if not age then
    print("missing argument: age")
  end

  if age == "child" then
    return (has("time_travel") or has("setting_age_child")) and 1 or 0
  elseif age == "adult" then
    return (has("time_travel") or has("setting_age_adult")) and 1 or 0
  elseif age == "both" then
    return has("time_travel") and 1 or 0
  else
    print("wrong argument: age")
  end

  return 0
end

function has_bombchus()
  if has("setting_logic_chus_yes") then
    return Tracker:ProviderCountForCode("bombchu")
  else
    return Tracker:ProviderCountForCode("bombs")
  end
end

function has_explosives()
  local bombs = Tracker:ProviderCountForCode("bombs")
  local has_bombchus = has_bombchus()
  local chus = Tracker:ProviderCountForCode("bombchu")
  if bombs > 0 then
    return bombs
  elseif has_bombchus > 0 then
    return has_bombchus
  elseif chus > 0 then
    return chus, AccessibilityLevel.SequenceBreak
  else
    return 0
  end
end

function can_blast()
  if has_age("adult") == 1 and has("hammer") then
    return 1 
  else
    return has_explosives()
  end
end

function can_child_attack()
  if has_age("child") == 0 then
    return 0
  end

  if has("sling")
  or has("boomerang")
  or has("sticks")
  or has("sword1")
  or (has("dinsfire") and has("magic")) 
  then
    return 1
  else
    return has_explosives()
  end
end

function can_stun_deku()
  if has_age("adult") == 1
  or has("nuts")
  or has("shield1")
  then
    return 1
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
    return 1
  else
    return 0
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
    return 1
  else
    return 0
  end
end

function night_gs()
  if has("setting_skulltulas_sun_on")
  and (has("ocarina", 0) or has("sun", 0))
  then
    return 1, AccessibilityLevel.SequenceBreak
  end
  return 1
end

function can_see_with_lens()
  if has("setting_lens_wasteland") 
  or has("lens") 
  and has("magic") then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function FTR_or_goron()
  if has("logic_fewer_tunic_requirements") 
  or has("redtunic") 
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function FTR_or_zora()
  if has("logic_fewer_tunic_requirements") 
  or has("bluetunic") 
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function hidden_grotto()
  if has("logic_grottos_without_agony")
  or has("agony")
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function can_leave_forest()
  if has("open_forest")
  or has("closed_deku")
  or has("sling") and has("sword1") 
  then
    return 1
  else
    return 0
  end
end

function gerudo_card()
  local card = has("card")
  if has("setting_shuffle_card_yes") then
    return card and 1 or 0
  else
    local level = card and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak
    return 1, level
  end
end

function gerudo_bridge()
  if has_age("adult") == 0 then
    return 0
  elseif has("longshot")
  or has("ocarina") and has("epona")
  or has("gerudo_fortress_open")
  then
    return 1, AccessibilityLevel.Normal
  elseif has("ocarina") 
  and has("requiem") 
  then
    return 1, AccessibilityLevel.SequenceBreak
  else
    return 0
  end
end

function wasteland()
  local count = 0
  local level = AccessibilityLevel.Normal
  
  local bridge_count, bridge_level = gerudo_bridge()
  local card_count, card_level = gerudo_card()

  if bridge_count > 0
  and card_count > 0
  then
    count = 1

    if bridge_level == AccessibilityLevel.SequenceBreak
    or card_level == AccessibilityLevel.SequenceBreak
    or has("hoverboots", 0) and has("longshot", 0)
    then
      level = AccessibilityLevel.SequenceBreak
    end
  end

  if count == 0
  and has("ocarina")
  and has("requiem")
  then
    return 1, AccessibilityLevel.SequenceBreak
  end

  return count, level
end

function child_colossus()
  if has("ocarina")
  and has("requiem")
  and has_age("child") == 1
  then
    return 1
  else
    return 0
  end
end

function adult_colossus()
  if has("ocarina")
  and has("requiem")
  then
    return 1
  end
  
  local level = AccessibilityLevel.Normal

  local bridge = gerudo_bridge()
  if bridge == 0 then
    return 0
  end

  local card_count, card_level = gerudo_card()
  if card_count == 0 then
    return 0
  end
  level = card_level

  if has("hoverboots", 0)
  and has("longshot", 0)
  then
    level = AccessibilityLevel.SequenceBreak
  end

  if has("setting_lens_chest", 0) 
  and (has("lens", 0) 
  or has("magic", 0)) 
  then
    level = AccessibilityLevel.SequenceBreak
  end

  return 1, level
end

function link_the_goron()
  if has_age("adult") == 0 then
    return 0
  end

  if has("lift1")
  or has("bow")
  then
    return 1, AccessibilityLevel.Normal
  end

  local explo_count, explo_level = has_explosives()
  if explo_count > 0 then
    return explo_count, explo_level
  end 

  if has("dinsfire") and has("magic") then
    return 1, AccessibilityLevel.SequenceBreak
  end

  return 0
end

function dmc_central()
  if has_age("adult") == 0 then
    return 0
  end

  if has("ocarina") and has("bolero") then
    return 1, AccessibilityLevel.Normal
  end

  local goron_count, goron_level = link_the_goron()
  if has("hoverboots") then
    if has("hammer") then
      return 1, AccessibilityLevel.Normal
    else
      return goron_count, goron_level
    end
  end
  if has("hookshot") then
    if goron_count > 0 then
      return goron_count, goron_level
    elseif has("hammer") then
      return 1, AccessibilityLevel.SequenceBreak
    end
  end

  return 0
end

function child_fountain()
  if has_age("child") == 0 then
    return 0
  end

  if has("ruto", 0) 
  and has("setting_fountain_open", 0) 
  then
    return 0
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
    return 0
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
    return 0
  end

  local level = AccessibilityLevel.Normal

  if has("ocarina", 0)
  or has("lullaby", 0)
  then
    if has("hoverboots", 0) then
      return 0
    else
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
    return 0
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

function spirit_wall()
  if has("longshot")
  or 
  has("bombchu")
  or 
  (
    (
      has("bombs")
      or 
      has("nuts")
      or 
      (
        has("dinsfire")
        and 
        has("magic")
      )
    )
    and 
    (
      has("bow")
      or 
      has("hookshot")
      or 
      has("hammer")
    )
  )
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function damage_below_quadruple()
  if has("setting_damage_ohko", 0) 
  and has("setting_damage_quadruple", 0) 
  then
    return 1
  else
    return 0
  end
end

function damage_below_ohko()
  if has("setting_damage_ohko", 0) 
  then
    return 1
  else
    return 0
  end
end

function damage_single_instance()
  if has("setting_damage_ohko", 0) 
  or has("nayrus") and has("magic")
  then
    return 1
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
    return 1
  else
    return 0
  end
end

function trials_barrier_dispelled()
  local trials_cleared = Tracker:ProviderCountForCode("trial_cleared")
  local setting_trials = Tracker:FindObjectForCode("setting_trials").AcquiredCount
  
  if setting_trials == 0
  or trials_cleared >= setting_trials 
  then
    return 1
  else
    return 0
  end
end