for region, region_data in pairs(data_per_region) do
  if type(region_data.exits) == "table" then
    for target, target_data in pairs(region_data.exits) do
      if
        not region_data.interior and not region_data.special and not region_data.dungeon and not target_data.fixed and
          not (region_data.scene and data_per_region[target] and data_per_region[target].scene and
            region_data.scene == data_per_region[target].scene)
      then
        local location = string.format("@%s -> %s", region, target)
        target_data.location_object = get_object(location)
        if not target_data.location_object then
          print("error! location not found:", location)
        end
        local section = string.format("%s/Capture", location)
        target_data.section_object = get_object(section)
        if not target_data.section_object then
          print("error! section not found:", section)
        end
      end
    end
  end
end
