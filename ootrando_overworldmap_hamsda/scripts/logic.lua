function has_bombchus()
  if Tracker:ProviderCountForCode("logic_chus_no") > 0 then
    return Tracker:ProviderCountForCode("bombs")
  elseif Tracker:ProviderCountForCode("logic_chus_yes") > 0 then
    return Tracker:ProviderCountForCode("bombchu")
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
  if Tracker:ProviderCountForCode("sword2") > 0 and Tracker:ProviderCountForCode("hammer") > 0 then
    return 1 
  else
    return has_explosives()
  end
end

function can_child_attack()
  if Tracker:ProviderCountForCode("sling") > 0
  or Tracker:ProviderCountForCode("boomerang") > 0
  or Tracker:ProviderCountForCode("sticks") > 0
  or Tracker:ProviderCountForCode("sword1") > 0
  or (Tracker:ProviderCountForCode("dinsfire") > 0 and Tracker:ProviderCountForCode("magic") > 0) 
  then
    return 1
  else
    return has_explosives()
  end
end

function can_stun_deku()
  if Tracker:ProviderCountForCode("sword2") > 0
  or Tracker:ProviderCountForCode("nuts") > 0
  or Tracker:ProviderCountForCode("shield1") > 0
  then
    return 1
  else
    return can_child_attack()
  end
end

function can_LA()
  if Tracker:ProviderCountForCode("sword2") > 0
  and Tracker:ProviderCountForCode("magic") > 0
  and Tracker:ProviderCountForCode("bow") > 0
  and Tracker:ProviderCountForCode("lightarrow") > 0
  then
    return 1
  else
    return 0
  end
end

function has_fire()
  if Tracker:ProviderCountForCode("sword2") > 0
  and Tracker:ProviderCountForCode("magic") > 0
  and Tracker:ProviderCountForCode("bow") > 0
  and Tracker:ProviderCountForCode("firearrow") > 0
  or 
  Tracker:ProviderCountForCode("dinsfire") > 0 
  and Tracker:ProviderCountForCode("magic") > 0
  then
    return 1
  else
    return 0
  end
end

function can_see_with_lens()
  if Tracker:ProviderCountForCode("lens_wasteland") > 0 
  or Tracker:ProviderCountForCode("lens") > 0 
  and Tracker:ProviderCountForCode("magic") > 0 then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function has_goron_tunic()
  if Tracker:ProviderCountForCode("fewer_tunics_yes") > 0 
  or Tracker:ProviderCountForCode("redtunic") > 0 
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function has_zora_tunic()
  if Tracker:ProviderCountForCode("fewer_tunics_yes") > 0 
  or Tracker:ProviderCountForCode("bluetunic") > 0 
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function can_leave_forest()
  if Tracker:ProviderCountForCode("open_forest") > 0
  or 
  Tracker:ProviderCountForCode("sling") > 0
  and Tracker:ProviderCountForCode("sword1") > 0 
  then
    return 1
  else
    return 0
  end
end

function colossus()
  if Tracker:ProviderCountForCode("ocarina") > 0
  and Tracker:ProviderCountForCode("requiem") > 0
  then
    return 1
  elseif Tracker:ProviderCountForCode("sword2") == 0 then
    return 0
  elseif Tracker:ProviderCountForCode("carpenter_rescue_yes") == 0
  and Tracker:ProviderCountForCode("gerudo_fortress_open") == 0
  then
    return 0
  else
    if Tracker:ProviderCountForCode("hoverboots") == 0
    and Tracker:ProviderCountForCode("longshot") == 0
    then
      return 1, AccessibilityLevel.SequenceBreak
    end

    if Tracker:ProviderCountForCode("lens_chest") == 0 
    and (Tracker:ProviderCountForCode("lens") == 0 
    or Tracker:ProviderCountForCode("magic") == 0) 
    then
      return 1, AccessibilityLevel.SequenceBreak
    end

    return 1
  end
end

function child_fountain()
  if Tracker:ProviderCountForCode("ruto") == 0 then
    return 0
  else
    local level = AccessibilityLevel.Normal
    if Tracker:ProviderCountForCode("king_zora_moved_yes") == 0 then
      level = AccessibilityLevel.SequenceBreak
    end
    if Tracker:ProviderCountForCode("scale1") > 0 then
      return 1, level
    else
      local explo_count, explo_level = has_explosives()
      if explo_count == 0 then
        return 0
      else
        if explo_level == AccessibilityLevel.SequenceBreak then
          level = AccessibilityLevel.SequenceBreak
        end
        if Tracker:ProviderCountForCode("ocarina") == 0
        or Tracker:ProviderCountForCode("lullaby") == 0
        then
          level = AccessibilityLevel.SequenceBreak
        end
        return 1, level
      end
    end
  end
end

function adult_fountain()
  if Tracker:ProviderCountForCode("sword2") == 0 then
    return 0
  else
    local child_count, level = child_fountain()
    if child_count == 0 then
      return 0
    else
      if Tracker:ProviderCountForCode("ocarina") == 0
      or Tracker:ProviderCountForCode("lullaby") == 0
      then
        if Tracker:ProviderCountForCode("hoverboots") > 0 then
          return 1, AccessibilityLevel.SequenceBreak
        else
          return 0
        end
      end
      return 1, level
    end
  end
end