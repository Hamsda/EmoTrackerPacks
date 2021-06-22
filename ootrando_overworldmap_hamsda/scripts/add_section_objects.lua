for region, region_data in pairs(data_per_region) do
  if type(region_data.exits) == "table" then
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
          print("error! section not found:", section)
        end
      end
    end
  end
end
