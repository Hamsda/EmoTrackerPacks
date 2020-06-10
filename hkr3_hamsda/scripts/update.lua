function tracker_on_accessibility_updated()
  build_areas()
  if Tracker:ProviderCountForCode("dummy") > 0 then
    Tracker:FindObjectForCode("dummy").Active = false
  else
      Tracker:FindObjectForCode("dummy").Active = true
  end
end
