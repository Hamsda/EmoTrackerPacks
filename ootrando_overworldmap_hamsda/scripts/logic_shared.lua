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

function has_age(age)
  if not age then
    print("missing argument: age")
  end

  local travel_count, travel_level = can_time_travel()

  if age == "child" then
    if has("setting_age_child") then
      return 1, AccessibilityLevel.Normal
    end
    return travel_count, travel_level
  elseif age == "adult" then
    if has("setting_age_adult") then
      return 1, AccessibilityLevel.Normal
    end
    return travel_count, travel_level
  elseif age == "both" then
    return travel_count, travel_level
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

function mask_shop_open()
  if (has("setting_kak_open") and has("postzelda"))
  or (has("setting_kak_letter") and has("postzelda"))
  or (has("setting_kak_closed") and has("postguard"))
  then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function has_projectile(age)
  local explo = has_explosives() > 0
  local sling = has("sling")
  local rang = has("boomerang")
  local bow = has("bow")
  local hook = has("hookshot")

  local result = false

  if age == "child" then
    if explo or sling or rang then
      result = true
    end
  elseif age == "adult" then
    if explo or bow or hook then
      result = true
    end
  elseif age == "both" then
    if explo or (bow or hook) and (sling or rang) then
      result = true
    end
  else
    if explo or (bow or hook) or (sling or rang) then
      result = true
    end
  end

  if result then
    return 1, AccessibilityLevel.Normal
  else
    return 0, AccessibilityLevel.None
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
