function can_leave_forest()
  if has("setting_forest_open")
  or has("setting_forest_deku")
  or has("setting_age_adult")
  or has("setting_entrance_interiors_all")
  or has("setting_entrance_overworld_shuffle")
  or has("deku")
  then
    return 1, AccessibilityLevel.Normal
  end
  return 0, AccessibilityLevel.None
end

function can_time_travel()
  if has("setting_door_open")
  or (has("ocarina") and has("time"))
  then
    local starting_age = has("setting_age_adult") and "adult" or "child"
    local tot_count, tot_level = access("Temple of Time", starting_age)
    if tot_count > 0 then
      return 1, tot_level
    end
  end
  return 0, AccessibilityLevel.None
end

function can_blast()
  if has("hammer") then
    return 1, AccessibilityLevel.Normal
  else
    return has_explosives()
  end
end

function link_the_goron()
  local access_count, access_level = access("Goron City", "adult")
  if access_count == 0 then
    return 0, AccessibilityLevel.None
  end

  if has("lift1")
  or has("bow")
  then
    return 1, access_level
  end

  local count = 0
  local level = AccessibilityLevel.None

  if has("dinsfire") and has("magic") then
    if has("logic_link_goron_dins") then
      return 1, access_level
    else
      count = 1
      level = AccessibilityLevel.SequenceBreak
    end
  end

  local explo_count, explo_level = has_explosives()
  if explo_count > 0 then
    if access_level == AccessibilityLevel.SequenceBreak
    or explo_level == AccessibilityLevel.SequenceBreak
    then
      return 1, AccessibilityLevel.SequenceBreak
    else
      return 1, AccessibilityLevel.Normal
    end
  end 

  return count, level
end

function gc_child_fire()
  local child_gc_count, child_gc_level = access("Goron City", "child")
  local child_daru_count, child_daru_level = access("GC Darunias Chamber", "child")

  local level = AccessibilityLevel.None

  if has("dinsfire") and has("magic") then
    if child_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = child_gc_level
    end
  end

  if has("sticks") then
    if child_daru_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = child_daru_level
    end
  end

  if level == AccessibilityLevel.None then
    return 0, AccessibilityLevel.None
  end
  return 1, level
end

function woods_warp_open()
  local child_gc_count, child_gc_level = access("Goron City", "child")
  local adult_gc_count, adult_gc_level = access("Goron City", "adult")
  local child_warp_count, child_warp_level = access("GC Woods Warp", "child")
  local adult_warp_count, adult_warp_level = access("GC Woods Warp", "adult")
  local child_fire_count, child_fire_level = gc_child_fire()
  local explo_count, explo_level = has_explosives()

  local level = AccessibilityLevel.None

  if has("hammer") then
    if adult_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = adult_gc_level
    end
    if adult_warp_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = adult_warp_level
    end
  end

  if explo_count > 0 then
    if child_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = (explo_level == AccessibilityLevel.Normal) and child_gc_level or AccessibilityLevel.SequenceBreak
    end
    if child_warp_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = (explo_level == AccessibilityLevel.Normal) and child_warp_level or AccessibilityLevel.SequenceBreak
    end
    if adult_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = (explo_level == AccessibilityLevel.Normal) and adult_gc_level or AccessibilityLevel.SequenceBreak
    end
    if adult_warp_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = (explo_level == AccessibilityLevel.Normal) and adult_warp_level or AccessibilityLevel.SequenceBreak
    end
  end
  
  if has("dinsfire") and has("magic") then
    if child_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = child_gc_level
    end
    if child_warp_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = child_warp_level
    end
    if adult_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = adult_gc_level
    end
    if adult_warp_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = adult_warp_level
    end
  end

  if has("bow")
  and adult_gc_count > 0
  and level ~= AccessibilityLevel.Normal then
    level = adult_gc_level
  end

  if has("lift") then
    if child_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = child_gc_level
    end
    if adult_gc_count > 0
    and level ~= AccessibilityLevel.Normal then
      level = adult_gc_level
    end
  end

  if child_fire_count > 0 
  and level ~= AccessibilityLevel.Normal then
    level = child_fire_level
  end

  if level == AccessibilityLevel.None then
    return 0, AccessibilityLevel.None
  end
  return 1, level
end

function deliver_letter()
  if has("ruto") then
    local zd_count, zd_level = access("Zoras Domain", "child")
    return zd_count, zd_level
  end
  return 0, AccessibilityLevel.None
end

function has_bottle()
  local bottles = Tracker:ProviderCountForCode("bottle")
  local ruto = Tracker:ProviderCountForCode("ruto")
  local bigpoe = Tracker:ProviderCountForCode("bigpoe")
  local kz_count, kz_level = deliver_letter()
  local level = AccessibilityLevel.Normal

  local usable_bottles = bottles - ruto - bigpoe

  if has_age("adult") >= 1 then
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

function drain_well()
  if has("ocarina") and has("storm") then
    local windmill_count, windmill_level = access("Kak Windmill", "child")
    return windmill_count, windmill_level
  end
  return 0, AccessibilityLevel.None
end
