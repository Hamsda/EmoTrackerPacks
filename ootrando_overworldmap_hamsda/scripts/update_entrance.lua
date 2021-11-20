function get_capture_per_section(section_object)
  local capture = section_object.CapturedItem
  if capture and capture.Name then
    return capture.Name
  end
  return nil
end

local badge_cache = {}
function add_location_badge(location_object, section_object)
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

local new_capture_layouts = {}
local capture_layout_info = {
  {
    ["pool"] = ER_POOL_TYPES.OW,
    ["shuffle_setting"] = "setting_entrance_overworld_shuffle",
    ["mixed_setting"] = "setting_entrance_mixed_all",
    ["default_capture"] = "tracker_capture_ow",
    ["current_capture"] = "tracker_capture_ow_grotto_interior_dungeon"
  },
  {
    ["pool"] = ER_POOL_TYPES.GROTTO,
    ["shuffle_setting"] = "setting_entrance_grottos_shuffle",
    ["mixed_setting"] = "setting_entrance_mixed_indoor",
    ["default_capture"] = "tracker_capture_grotto",
    ["current_capture"] = "tracker_capture_ow_grotto_interior_dungeon"
  },
  {
    ["pool"] = ER_POOL_TYPES.INTERIOR,
    ["shuffle_setting"] = "setting_entrance_interiors_simple",
    ["mixed_setting"] = "setting_entrance_mixed_indoor",
    ["default_capture"] = "tracker_capture_interior",
    ["current_capture"] = "tracker_capture_ow_grotto_interior_dungeon"
  },
  {
    ["pool"] = ER_POOL_TYPES.DUNGEON,
    ["shuffle_setting"] = "setting_entrance_dungeons_shuffle",
    ["mixed_setting"] = "setting_entrance_mixed_indoor",
    ["default_capture"] = "tracker_capture_dungeon",
    ["current_capture"] = "tracker_capture_ow_grotto_interior_dungeon"
  }
}
function set_new_capture_layout(exit_name, section_object)
  local pool = data_per_region[exit_name].pool
  if new_capture_layouts[pool] then
    section_object.ItemCaptureLayout = new_capture_layouts[pool]
  end
end

function update_capture_layouts()
  local mixed_capture = "tracker_capture"
  for _, data in ipairs(capture_layout_info) do
    if has(data.mixed_setting) and has(data.shuffle_setting) then
      mixed_capture = mixed_capture .. "_" .. data.pool
    end
  end

  for _, data in ipairs(capture_layout_info) do
    local new_layout = has(data.mixed_setting) and mixed_capture or data.default_capture
    if new_layout ~= data.current_capture then
      new_capture_layouts[data.pool] = new_layout
      data.current_capture = new_layout
    end
  end
end

function update_region_captures()
  for _, data in pairs(special_regions) do
    data.origin = nil
  end
  for region, region_data in pairs(data_per_region) do
    if type(region_data.exits) == "table" then
      for exit, exit_data in pairs(region_data.exits) do
        if exit_data.section_object then
          exit_data.capture = get_capture_per_section(exit_data.section_object)
          if region_data.pool ~= ER_POOL_TYPES.ROOT then
            set_new_capture_layout(exit, exit_data.section_object)
          end
          if ER_BADGE_EXITS then
            add_location_badge(exit_data.location_object, exit_data.section_object)
          end
          if exit_data.capture and special_regions[exit_data.capture] and region_data.scene ~= "Root" then
            special_regions[exit_data.capture].origin = region
            if ER_DEBUGGING then
              print("special:", exit_data.capture, "at", region)
            end
          end
        end
      end
    end
  end
  new_capture_layouts = {}
end

function update_version_specific()
  update_capture_layouts()
  update_region_captures()
  update_region_connections()
end
