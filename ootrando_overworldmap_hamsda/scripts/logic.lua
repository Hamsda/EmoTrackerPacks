function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
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
  if has("sword2") and has("hammer") then
    return 1 
  else
    return has_explosives()
  end
end

function can_child_attack()
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
  if has("sword2")
  or has("nuts")
  or has("shield1")
  then
    return 1
  else
    return can_child_attack()
  end
end

function can_LA()
  if has("sword2")
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
  if has("sword2")
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

function can_see_with_lens()
  if has("setting_lens_wasteland") 
  or has("lens") 
  and has("magic") then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function has_goron_tunic()
  if has("setting_fewer_tunics_yes") 
  or has("redtunic") 
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function has_zora_tunic()
  if has("setting_fewer_tunics_yes") 
  or has("bluetunic") 
  then
    return 1
  else
    return 1, AccessibilityLevel.SequenceBreak
  end
end

function can_leave_forest()
  if has("open_forest")
  or 
  has("sling")
  and has("sword1") 
  then
    return 1
  else
    return 0
  end
end

function colossus()
  if has("ocarina")
  and has("requiem")
  then
    return 1
  elseif has("sword2", 0) then
    return 0
  elseif has("carpenter_rescue_yes", 0)
  and has("gerudo_fortress_open", 0)
  then
    return 0
  else
    if has("hoverboots", 0)
    and has("longshot", 0)
    then
      return 1, AccessibilityLevel.SequenceBreak
    end

    if has("setting_lens_chest", 0) 
    and (has("lens", 0) 
    or has("magic", 0)) 
    then
      return 1, AccessibilityLevel.SequenceBreak
    end

    return 1
  end
end

function child_fountain()
  if has("ruto", 0) 
  and has("open_fountain", 0) 
  then
    return 0
  else
    local level = AccessibilityLevel.Normal
    if has("king_zora_moved_yes", 0) 
    and has("open_fountain", 0) 
    then
      level = AccessibilityLevel.SequenceBreak
    end
    if has("scale1") then
      return 1, level
    else
      local explo_count, explo_level = has_explosives()
      if explo_count == 0 then
        return 0
      else
        if explo_level == AccessibilityLevel.SequenceBreak then
          level = AccessibilityLevel.SequenceBreak
        end
        if has("ocarina", 0)
        or has("lullaby", 0)
        then
          level = AccessibilityLevel.SequenceBreak
        end
        return 1, level
      end
    end
  end
end

function adult_fountain()
  if has("sword2", 0) then
    return 0
  else
    local child_count, level = child_fountain()
    if child_count == 0 then
      return 0
    else
      if has("ocarina", 0)
      or has("lullaby", 0)
      then
        if has("hoverboots") then
          return 1, AccessibilityLevel.SequenceBreak
        else
          return 0
        end
      end
      return 1, level
    end
  end
end

function has_bottle()
  local bottles = Tracker:ProviderCountForCode("bottle")
  local ruto = Tracker:ProviderCountForCode("ruto")
  local bigpoe = Tracker:ProviderCountForCode("bigpoe")
  local kz_count, kz_level = child_fountain()
  local level = AccessibilityLevel.Normal
  
  local usable_bottles = bottles - ruto - bigpoe

  if has("sword2") then
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

function update_smallkeys()
  local dungeons = {
    "forest",
    "fire",
    "water",
    "spirit",
    "shadow",
    "botw",
    "gtg",
    "gc"
  }
  local key_counts = {
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
  for _,dungeon in ipairs(dungeons) do
    local key_object = Tracker:FindObjectForCode(dungeon.."_small_keys")
    if has(dungeon.."_reg") then
      key_object.MaxCount = key_counts["vanilla"][dungeon]
    else
      key_object.MaxCount = key_counts["mq"][dungeon]
    end
  end

  --gerudo fortress special case depends on setting
  local gf_keys = Tracker:FindObjectForCode("gf_small_keys")
  if has("gerudo_fortress_normal") then
    gf_keys.MaxCount = 4
  elseif has("gerudo_fortress_fast") then
    gf_keys.MaxCount = 1
  else
    gf_keys.MaxCount = 0
  end
end

function tracker_on_accessibility_updated()
  update_smallkeys()
end