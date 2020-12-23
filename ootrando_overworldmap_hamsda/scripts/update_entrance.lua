for region, region_data in pairs(data_per_region) do
  for target, target_data in pairs(region_data.exits) do
    if
      not region_data.interior and not region_data.special and not region_data.dungeon and not target_data.fixed and
        not (region_data.scene and data_per_region[target] and data_per_region[target].scene and
          region_data.scene == data_per_region[target].scene)
     then
      local section = string.format("@%s -> %s/Capture", region, target)
      local section_object = get_object(section)
      if section_object then
        target_data.section_object = section_object
      else
        print("missing section", section)
      end
    end
  end
end

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
    for target, target_data in pairs(region_data.exits) do
      if target_data.section_object then
        target_data.capture = get_capture_per_section(target_data.section_object)
        if target_data.capture and special_regions[target_data.capture] and region_data.scene ~= "Root" then
          special_regions[target_data.capture].origin = region
          if er_debugging then
            print("special:", target_data.capture, "at", region)
          end
        end
      end
    end
  end
end

function tracker_on_accessibility_updated()
  amount_cache = {}

  update_smallkeys()
  update_bridge_amount_max()
  update_fortress()
  update_collected_capture()
  update_region_captures()
  update_free_zelda()
  build_regions()

  apply_queued_changes()
  
  get_object("dummy").Active = not get_object("dummy").Active
end