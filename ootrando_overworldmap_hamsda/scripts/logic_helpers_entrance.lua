function or_accessibility(...)
  local max_level = 0
  for _, data in ipairs({...}) do
    if data == AccessibilityLevel.Normal then
      return AccessibilityLevel.Normal
    end
    if ACCESS_LEVEL[data] > max_level then
      max_level = ACCESS_LEVEL[data]
    end
  end
  return ACCESS_LEVEL[max_level]
end

function and_accessibility(...)
  local min_level = 6
  for _, data in ipairs({...}) do
    if data == AccessibilityLevel.None then
      return AccessibilityLevel.None
    end
    if ACCESS_LEVEL[data] < min_level then
      min_level = ACCESS_LEVEL[data]
    end
  end
  return ACCESS_LEVEL[min_level]
end

function can_leave_forest()
  if
    has("setting_forest_open") or has("setting_forest_deku") or has("setting_age_adult") or
      has("setting_entrance_interiors_all") or
      has("setting_entrance_overworld_shuffle") or
      has("deku")
   then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function can_time_travel()
  return access_region("Beyond Door of Time", (has("setting_age_adult") and "adult" or "child"))
end

function night_gs()
  if has("setting_skulltulas_sun_off") or (has("ocarina") and has("sun")) then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.SequenceBreak
end

function hidden_grotto()
  if has("logic_grottos_without_agony") or has("agony") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.SequenceBreak
end

function hintable()
  if
    has("setting_hints_on") or (has("setting_hints_truth") and has("maskoftruth")) or
      (has("setting_hints_agony") and has("agony"))
   then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function can_open_storm_grotto()
  if has("ocarina") and has("storm") then
    return hidden_grotto()
  end
  return AccessibilityLevel.None
end

function has_bombchus()
  local bombs = Tracker:ProviderCountForCode("bombs")
  local chus = Tracker:ProviderCountForCode("bombchu")
  if has("setting_logic_chus_yes") then
    if chus > 0 then
      return AccessibilityLevel.Normal
    else
      return AccessibilityLevel.None
    end
  else
    if bombs > 0 then
      return AccessibilityLevel.Normal
    elseif chus > 0 then
      return AccessibilityLevel.SequenceBreak
    end
  end
  return AccessibilityLevel.None
end

function has_explosives()
  local bombs = Tracker:ProviderCountForCode("bombs")
  if bombs > 0 then
    return AccessibilityLevel.Normal
  end
  return has_bombchus()
end

function can_blast()
  if has("hammer") then
    return AccessibilityLevel.Normal
  end
  return has_explosives()
end

function has_projectile(age)
  local sling = has("sling")
  local rang = has("boomerang")
  local bow = has("bow")
  local hook = has("hookshot")

  if age == "child" then
    if sling or rang then
      return AccessibilityLevel.Normal
    end
  elseif age == "adult" then
    if bow or hook then
      return AccessibilityLevel.Normal
    end
  elseif age == "both" then
    if (bow or hook) and (sling or rang) then
      return AccessibilityLevel.Normal
    end
  else
    if (bow or hook) or (sling or rang) then
      return AccessibilityLevel.Normal
    end
  end

  return has_explosives()
end

function can_use_scarecrow()
  if has("ocarina") and has("scarecrow") and has("hookshot") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function has_fire()
  if has("magic") and ((has("bow") and has("firearrow")) or has("dinsfire")) then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function can_LA()
  if has("bow") and has("magic") and has("lightarrow") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function can_child_attack()
  if has("sling") or has("boomerang") or has("sticks") or has("sword1") or (has("dinsfire") and has("magic")) then
    return AccessibilityLevel.Normal
  end
  return has_explosives()
end

function can_stun_deku()
  if has("nuts") or has("shield1") then
    return AccessibilityLevel.Normal
  end
  return can_child_attack()
end

function FTR_or_goron()
  if has("logic_fewer_tunic_requirements") or has("redtunic") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.SequenceBreak
end

function FTR_or_zora()
  if has("logic_fewer_tunic_requirements") or has("bluetunic") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.SequenceBreak
end

function link_the_goron()
  local lift = has("lift1") and AccessibilityLevel.Normal or AccessibilityLevel.None
  local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
  local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
  local trick = has("logic_link_goron_dins") and AccessibilityLevel.Normal or AccessibilityLevel.SequenceBreak

  return and_accessibility(
    access_region("Goron City", "adult"),
    or_accessibility(lift, has_explosives(), bow, and_accessibility(trick, df))
  )
end

function gc_child_fire()
  local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None
  local sticks = has("sticks") and AccessibilityLevel.Normal or AccessibilityLevel.None

  return or_accessibility(
    and_accessibility(access_region("Goron City", "child"), df),
    and_accessibility(access_region("GC Darunias Chamber", "child"), sticks)
  )
end

function woods_warp_open()
  local child_gc = access_region("Goron City", "child")
  local adult_gc = access_region("Goron City", "adult")
  local child_warp = access_region("GC Woods Warp", "child")
  local adult_warp = access_region("GC Woods Warp", "adult")
  local hammer = has("hammer") and AccessibilityLevel.Normal or AccessibilityLevel.None
  local bow = has("bow") and AccessibilityLevel.Normal or AccessibilityLevel.None
  local lift = has("lift") and AccessibilityLevel.Normal or AccessibilityLevel.None
  local df = (has("dinsfire") and has("magic")) and AccessibilityLevel.Normal or AccessibilityLevel.None

  return or_accessibility(
    and_accessibility(hammer, or_accessibility(adult_gc, adult_warp)),
    and_accessibility(
      or_accessibility(has_explosives(), df),
      or_accessibility(child_gc, adult_gc, child_warp, adult_warp)
    ),
    and_accessibility(bow, adult_gc),
    and_accessibility(lift, or_accessibility(child_gc, adult_gc)),
    gc_child_fire()
  )
end

function deliver_letter()
  if has("ruto") then
    return access_region("Zoras Domain", "child")
  end
  return AccessibilityLevel.None
end

function has_bottle()
  local bottles = Tracker:ProviderCountForCode("bottle")
  local ruto = Tracker:ProviderCountForCode("ruto")
  local bigpoe = Tracker:ProviderCountForCode("bigpoe")

  local usable_bottles = bottles - ruto - bigpoe

  if usable_bottles > 0 then
    return AccessibilityLevel.Normal
  end

  local deliver = AccessibilityLevel.None
  if ruto > 0 then
    deliver = deliver_letter()
  end

  local travel = AccessibilityLevel.None
  if bigpoe > 0 then
    if has("setting_age_adult") then --access to poe dude guaranteed
      return AccessibilityLevel.Normal
    end
    travel = can_time_travel()
  end

  return or_accessibility(deliver, travel)
end

blue_fire_locations = {
  ["either"] = {
    "Ganons Castle Water Trial",
    "Ganons Castle MQ Water Trial",
    "Gerudo Training Ground MQ Stalfos Room",
    "Ice Cavern MQ Map Room"
  },
  ["adult"] = {
    "Ice Cavern"
  }
}
function has_blue_fire()
  local bottle = has_bottle()

  if bottle == AccessibilityLevel.None then
    return AccessibilityLevel.None
  end

  --TODO: shopsanity
  --if has("wallet2") then
  --  return bottle
  --end

  for age, locations in pairs(blue_fire_locations) do
    for _, location in ipairs(locations) do
      if access_region(location, age) == AccessibilityLevel.Normal then
        return bottle
      end
    end
  end

  return AccessibilityLevel.SequenceBreak
end

function drain_well()
  if has("ocarina") and has("storm") then
    return access_region("Kak Windmill", "child")
  end
  return AccessibilityLevel.None
end

function raise_water_level()
  local child_level = access_region("Water Temple Lobby", "child")
  local adult_level = access_region("Water Temple Lobby", "adult")

  local adult = AccessibilityLevel.None
  if has("hookshot") or has("hoverboots") or has("bow") then
    adult = adult_level
  end

  local child = AccessibilityLevel.None
  if has("sticks") then
    child = and_accessibility(child_level, has_projectile("child"))
  end

  local adult_df = AccessibilityLevel.None
  local child_df = AccessibilityLevel.None
  if has("dinsfire") and has("magic") then
    adult_df = and_accessibility(adult_level, has_explosives())
    child_df = and_accessibility(child_level, has_projectile("child"))
  end

  return or_accessibility(adult, child, adult_df, child_df)
end

function poes_killed()
  if has("bow") then
    return and_accessibility(
      access_region("Forest Temple Bow Region", "adult"),
      access_region("Forest Temple Falling Room", "adult")
    )
  end
  return AccessibilityLevel.None
end

function poes_killed_mq()
  if has("bow") then
    return and_accessibility(
      access_region("Forest Temple MQ Bow Region", "adult"),
      access_region("Forest Temple MQ Falling Room", "adult")
    )
  end
  return AccessibilityLevel.None
end

function can_finish_GerudoFortress(age)
  local acc = access_region("Gerudo Fortress", age)
  if has("gerudo_fortress_normal") then
    if has("th_small_keys", 4) then
      if age == "adult" then
        local kitchen = AccessibilityLevel.SequenceBreak
        if has("bow") or has("hookshot") or has("hoverboots") or has("card") or has("logic_gerudo_kitchen") then
          kitchen = AccessibilityLevel.Normal
        end
        return and_accessibility(acc, kitchen)
      elseif age == "child" then
        local weapon = AccessibilityLevel.None
        if has("sword1") then
          weapon = AccessibilityLevel.Normal
        elseif has("sticks") then
          weapon = AccessibilityLevel.SequenceBreak
        end
        local kitchen = AccessibilityLevel.SequenceBreak
        if has("card") or has("logic_gerudo_kitchen") then
          kitchen = AccessibilityLevel.Normal
        end
        return and_accessibility(acc, weapon, kitchen)
      end
    end
  elseif has("gerudo_fortress_fast") then
    if has("th_small_keys", 1) then
      if age == "adult" then
        return acc
      elseif age == "child" then
        local weapon = AccessibilityLevel.None
        if has("sword1") then
          weapon = AccessibilityLevel.Normal
        elseif has("sticks") then
          weapon = AccessibilityLevel.SequenceBreak
        end
        return and_accessibility(acc, weapon)
      end
    end
  elseif has("gerudo_fortress_open") then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function gf_gate_open()
  if has("card") then
    return access_region("Gerudo Fortress", "adult")
  end
  return AccessibilityLevel.None
end

function damage_below_quadruple()
  if has_exact("setting_damage_ohko", 0) and has_exact("setting_damage_quadruple", 0) then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function damage_below_ohko()
  if has_exact("setting_damage_ohko", 0) then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end

function damage_single_instance_quadruple()
  if damage_below_quadruple() == AccessibilityLevel.Normal or (has("nayrus") and has("magic")) then
    return AccessibilityLevel.Normal
  end
  return has_bottle()
end

function damage_single_instance_ohko()
  if damage_below_ohko() == AccessibilityLevel.Normal or (has("nayrus") and has("magic")) then
    return AccessibilityLevel.Normal
  end
  return has_bottle()
end

function can_spawn_rainbow_bridge()
  local setting_bridge_amount =
    get_object("setting_bridge_amount") and get_object("setting_bridge_amount").AcquiredCount or 0
  local stones = Tracker:ProviderCountForCode("stones")
  local medallions = Tracker:ProviderCountForCode("medallions")
  local tokens = Tracker:ProviderCountForCode("token")

  if has("setting_bridge_open") then
    return AccessibilityLevel.Normal
  elseif has("setting_bridge_vanilla") then
    if has("lightarrow") and has("lacs_meds", 2) then
      return AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_stones") then
    if stones >= setting_bridge_amount then
      return AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_medallions") then
    if medallions >= setting_bridge_amount then
      return AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_dungeons") then
    if (stones + medallions) >= setting_bridge_amount then
      return AccessibilityLevel.Normal
    end
  elseif has("setting_bridge_gs") then
    if tokens >= setting_bridge_amount then
      return AccessibilityLevel.Normal
    end
  end

  return AccessibilityLevel.None
end

function trials_barrier_dispelled()
  local trials_cleared = Tracker:ProviderCountForCode("trial_cleared")
  local setting_trials = get_object("setting_trials") and get_object("setting_trials").AcquiredCount or 0

  if setting_trials == 0 or trials_cleared >= setting_trials then
    return AccessibilityLevel.Normal
  end
  return AccessibilityLevel.None
end
