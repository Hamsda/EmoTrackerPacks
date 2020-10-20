for section,info in pairs(info_per_section) do
  local section_object = get_object(section)
  if section_object then
    info.region = section_object.Owner.Parent.Name
  end
end

function update_vanilla_captures()
  for section,info in pairs(info_per_section) do
    local has_setting = has(info.setting)
    if not_like_cache(info.setting, has_setting) then
      local section_object = get_object(section)
      local item_object = get_object(info.vanilla_capture)
      if section_object and item_object then
        if has_setting then
          section_object.CapturedItem = nil
        else
          section_object.CapturedItem = item_object
        end
      end
    end
  end
end

function get_capture_per_section(section)
  local section_object = get_object(section)
  if section_object then
    local capture = section_object.CapturedItem
    if capture and capture.Name then
      return capture.Name
    end
  end
  return nil
end
function update_current_captures()
  for region,_ in pairs(origin_per_special_region) do
    origin_per_special_region[region] = ""
  end
  for section,info in pairs(info_per_section) do
    info.capture = get_capture_per_section(section)
    if info.region and info.region ~= "Special Regions"
    and info.capture and origin_per_special_region[info.capture] 
    then
      origin_per_special_region[info.capture] = info.region or ""
      if debugging then print("special ", info.capture, "at", info.region) end
    end
  end
end

function tracker_on_accessibility_updated()
  update_smallkeys()
  update_fortress()
  update_collected_capture()
  update_vanilla_captures()
  update_current_captures()
  update_free_zelda()
  build_regions()
  
  apply_queued_changes()
  get_object("dummy").Active = not get_object("dummy").Active
end