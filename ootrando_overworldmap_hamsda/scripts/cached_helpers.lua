object_cache = {}
function get_object(name)
  if object_cache[name] then
    return object_cache[name]
  end
  local object = Tracker:FindObjectForCode(name)
  if object then
    object_cache[name] = object
    return object
  end
  print("error! get_object - not found:", name)
  return nil
end

amount_cache = {}
function clear_amount_cache()
  amount_cache = {}
end
function has(item, amount)
  if not amount_cache[item] then
    amount_cache[item] = Tracker:ProviderCountForCode(item)
  end
  local count = amount_cache[item] or 0
  amount = tonumber(amount)
  if not amount then
    amount = 1
  end
  return count >= amount
end
function has_exact(item, amount)
  if not amount_cache[item] then
    amount_cache[item] = Tracker:ProviderCountForCode(item)
  end
  local count = amount_cache[item] or 0
  amount = tonumber(amount)
  if not amount then
    print("error! has_exact - missing amount for item:", item)
    return false
  end
  return count == amount
end

settings_cache = {}
queued_changes = {}
function not_like_cache(setting, current)
  if settings_cache[setting] == nil or settings_cache[setting] ~= current then
    queued_changes[setting] = current
    return true
  end
  return false
end
function apply_queued_changes()
  for setting, value in pairs(queued_changes) do
    settings_cache[setting] = value
  end
  queued_changes = {}
end
