function get_capture_per_section(section_object)
  if section_object then
    local capture = section_object.CapturedItem
    if capture and capture.Name then
      return capture.Name
    end
  end
  return nil
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
