for region, region_data in pairs(data_per_region) do
  if type(region_data.exits) == "table" then
    local is_interior =
      (region_data.pool == ER_POOL_TYPES.GROTTO or region_data.pool == ER_POOL_TYPES.INTERIOR or
      region_data.pool == ER_POOL_TYPES.DUNGEON)
    for exit, exit_data in pairs(region_data.exits) do
      local is_same_scene = data_per_region[exit].scene == region_data.scene
      if not is_interior and not exit_data.fixed and not is_same_scene then
        local location = string.format("@%s -> %s", region, exit)
        exit_data.location_object = get_object(location)
        local section = string.format("%s/Capture", location)
        exit_data.section_object = get_object(section)
      end
    end
  end
end
