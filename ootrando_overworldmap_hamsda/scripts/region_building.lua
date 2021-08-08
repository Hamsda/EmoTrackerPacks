special_regions = {
  ["KF Links House"] = {
    ["setting"] = "setting_entrance_interiors_all"
  },
  ["Temple of Time"] = {
    ["setting"] = "setting_entrance_interiors_all"
  },
  ["Kak Potion Shop Front"] = {
    ["setting"] = "setting_entrance_interiors_all"
  },
  ["Kak Potion Shop Back"] = {
    ["setting"] = "setting_entrance_interiors_all"
  },
  ["Kak Windmill"] = {
    ["setting"] = "setting_entrance_interiors_all"
  },
  ["Graveyard Dampes Grave"] = {
    ["setting"] = "setting_entrance_grottos_shuffle"
  }
}

access_per_region_per_age = {}
function invalidate_regions()
  access_per_region_per_age[1] = {}
  access_per_region_per_age[2] = {}
  for region, _ in pairs(data_per_region) do
    access_per_region_per_age[1][region] = AccessibilityLevel.None
    access_per_region_per_age[2][region] = AccessibilityLevel.None
  end
end
invalidate_regions()

location_access_per_age = {}
function invalidate_locations()
  location_access_per_age[1] = {}
  location_access_per_age[2] = {}
end
invalidate_locations()

function set_region_access(age, target_region, target_new_access, origin_access)
  if access_level[origin_access] < access_level[target_new_access] then
    target_new_access = origin_access
  end
  local target_old_access = access_per_region_per_age[age][target_region]
  if access_level[target_old_access] < access_level[target_new_access] then
    if ER_DEBUGGING then
      print("|  |  +--set access", age, target_new_access, target_region)
    end
    changed_access = true
    access_per_region_per_age[age][target_region] = target_new_access
  end
end

function set_location_access(age, location, target_new_access, origin_access)
  if access_level[origin_access] < access_level[target_new_access] then
    target_new_access = origin_access
  end
  local target_old_access = location_access_per_age[age][location] or AccessibilityLevel.None
  if access_level[target_old_access] < access_level[target_new_access] then
    if ER_DEBUGGING then
      print("|  |  +--location", age, target_new_access, location)
    end
    changed_access = true
    location_access_per_age[age][location] = target_new_access
  end
end

function build_regions()
  invalidate_regions()
  invalidate_locations()

  access_per_region_per_age[1]["Root"] = AccessibilityLevel.Normal
  access_per_region_per_age[2]["Root"] = AccessibilityLevel.Normal

  changed_access = true
  while changed_access do
    changed_access = false
    for age = 1, 2 do
      if ER_DEBUGGING then
        print("+--age", age)
      end
      for region, access in pairs(access_per_region_per_age[age]) do
        if access ~= AccessibilityLevel.None then
          local region_data = data_per_region[region]
          if ER_DEBUGGING then
            print("|  +--region", region)
          end
          if type(region_data.locations) == "table" then
            for location, location_data in pairs(region_data.locations) do
              local age_func = (age == 1) and "child_access" or "adult_access"
              local new_access = location_data[age_func]()

              set_location_access(age, location, new_access, access)
            end
          end
          if type(region_data.exits) == "table" then
            for exit, exit_data in pairs(region_data.exits) do
              local age_func = (age == 1) and "child_access" or "adult_access"
              local new_access = exit_data[age_func]()

              local same_scene =
                region_data.scene and data_per_region[exit] and data_per_region[exit].scene and
                region_data.scene == data_per_region[exit].scene

              if region_data.special and (not same_scene) then
                if not has(special_regions[region].setting) then
                  set_region_access(age, exit, new_access, access)
                elseif special_regions[region].origin then
                  set_region_access(age, special_regions[region].origin, access, access)
                end
              else
                if exit_data.fixed or same_scene then
                  set_region_access(age, exit, new_access, access)
                elseif not same_scene and not region_data.dungeon and not region_data.interior then
                  if exit_data.setting and not has(exit_data.setting) then
                    set_region_access(age, exit, new_access, access)
                  elseif exit_data.capture and data_per_region[exit_data.capture] then
                    set_region_access(age, exit_data.capture, new_access, access)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  if ER_DEBUGGING then
    for age = 1, 2 do
      print(age)
      for location, access in pairs(location_access_per_age[age]) do
        if access ~= AccessibilityLevel.None then
          print(location, access)
        end
      end
    end
    print("---------------")
  end
end

function access_region(region, age)
  age = age or ""
  region = region or ""

  local region_child = access_per_region_per_age[1][region]
  local region_adult = access_per_region_per_age[2][region]

  if age == "both" then
    return and_accessibility(region_child, region_adult)
  elseif age == "child" then
    return region_child
  elseif age == "adult" then
    return region_adult
  else --either
    return or_accessibility(region_child, region_adult)
  end
  return AccessibilityLevel.None
end

function access_exit(region, exit, age)
  if not region or not exit then
    return 0, AccessibilityLevel.None
  end
  age = age or ""

  local region_child = access_per_region_per_age[1][region]
  local region_adult = access_per_region_per_age[2][region]
  local exit_child =
    data_per_region[region].exits and data_per_region[region].exits[exit] and
    data_per_region[region].exits[exit].child_access()
  local exit_adult =
    data_per_region[region].exits and data_per_region[region].exits[exit] and
    data_per_region[region].exits[exit].adult_access()
  if not exit_child or not exit_adult then
    print("error! exit not found:", region, exit, age)
    return 0, AccessibilityLevel.None
  end

  local access = AccessibilityLevel.None

  if age == "both" then
    access = and_accessibility(region_child, exit_child, region_adult, exit_adult)
  elseif age == "child" then
    access = and_accessibility(region_child, exit_child)
  elseif age == "adult" then
    access = and_accessibility(region_adult, exit_adult)
  else --either
    access = or_accessibility(and_accessibility(region_child, exit_child), and_accessibility(region_adult, exit_adult))
  end

  local level = access_level[access]
  if level > 0 then
    if ER_TURN_VISITED_EXIT_RED and data_per_region[region].exits[exit].capture then
      --having a capture + inspect level = turn icon red
      --so you can't see the entrance capture anymore, unless F11/badged
      return 1, AccessibilityLevel.Inspect
    end
    return 1, access
  end
  return 0, AccessibilityLevel.None
end

function access_location(location, age)
  if not location then
    return 0, AccessibilityLevel.None
  end
  age = age or ""

  local location_child = location_access_per_age[1][location] or AccessibilityLevel.None
  local location_adult = location_access_per_age[2][location] or AccessibilityLevel.None

  local access = AccessibilityLevel.None

  if age == "both" then
    access = and_accessibility(location_child, location_adult)
  elseif age == "child" then
    access = location_child
  elseif age == "adult" then
    access = location_adult
  else --either
    access = or_accessibility(location_child, location_adult)
  end

  local level = access_level[access]
  if level > 0 then
    return 1, access
  end
  return 0, AccessibilityLevel.None
end
