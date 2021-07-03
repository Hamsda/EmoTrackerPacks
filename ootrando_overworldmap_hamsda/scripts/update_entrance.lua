function get_capture_per_section(section_object)
  local capture = section_object.CapturedItem
  if capture and capture.Name then
    return capture.Name
  end
  return nil
end

badge_cache = {}
function badge_location(location_object, section_object)
  local capture = section_object.CapturedItem
  if capture ~= badge_cache[section_object] then
    if badge_cache[location_object] then
      location_object:RemoveBadge(badge_cache[location_object])
      badge_cache[location_object] = nil
      badge_cache[section_object] = nil
    end
    if capture then
      badge_cache[location_object] = location_object:AddBadge(capture.PotentialIcon)
      badge_cache[section_object] = capture
    end
  end
end

function update_region_captures()
  for region, data in pairs(special_regions) do
    data.origin = nil
  end
  for region, region_data in pairs(data_per_region) do
    if type(region_data.exits) == "table" then
      for target, target_data in pairs(region_data.exits) do
        if target_data.section_object then
          target_data.capture = get_capture_per_section(target_data.section_object)
          if ER_BADGE_EXITS then
            badge_location(target_data.location_object, target_data.section_object)
          end
          if target_data.capture and special_regions[target_data.capture] and region_data.scene ~= "Root" then
            special_regions[target_data.capture].origin = region
            if ER_DEBUGGING then
              print("special:", target_data.capture, "at", region)
            end
          end
        end
      end
    end
  end
end

function update_version_specific()
  update_region_captures()
  build_regions()
end
