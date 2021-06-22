ScriptHost:LoadScript("scripts/update_items.lua")
if HAS_MAP then
  ScriptHost:LoadScript("scripts/update_maps.lua")
  if HAS_ER then
    ScriptHost:LoadScript("scripts/update_entrance.lua")
  else
    ScriptHost:LoadScript("scripts/update.lua")
  end
end

loading_save_file = false
function tracker_on_begin_loading_save_file()
  loading_save_file = true
end

function tracker_on_finish_loading_save_file()
  loading_save_file = false
end

function tracker_on_accessibility_updated()
  if not loading_save_file then
    clear_amount_cache()

    if update_items then
      update_items()
    end
    if update_maps then
      update_maps()
    end
    if update_version_specific then
      update_version_specific()
    end

    apply_queued_changes()

    get_object("dummy").Active = not get_object("dummy").Active
  end
end

tracker_on_accessibility_updated()
