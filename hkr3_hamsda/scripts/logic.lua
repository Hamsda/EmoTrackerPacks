function has(item, amount)
  local count = Tracker:ProviderCountForCode(item)
  amount = tonumber(amount)
  if not amount then
    return count > 0
  else
    return count == amount
  end
end

function baldurs()
  if 
  has("fireball")
  or
  has("quake")
  or
  has("elegy")
  or
  has("glowing_womb")
  or
  has("dash") and has("dash_slash")
  or
  has("mild_skips") and (has("weaversong") or has("spore_shroom"))
  or
  (has("mark_of_pride") or has("cyclone_slash")) and has("spicy_skips")
  then
    return 1
  end
  return 0
end

function airstall()
  if
  has("fireball_skips")
  and
  (
    has("fireball")
    or
    has("scream")
  )
  then
    return 1
  end
  return 0
end

function skipacid()
  if
  has("claw")
  and
  has("dash")
  and
  has("superdash")
  and
  has("acid_skips")
  then
    return 1
  end
  return 0
end

function infected()
  if
  has("dreamer")
  and
  has("spicy_skips")
  then
    return 1
  end
  return 0
end

function tunnel()
  if
  has("spike_tunnels")
  and
  has("dash")
  and
  (
    has("dashmaster")
    or
    has("fireball")
    or
    has("scream")
  )
  then
    return 1
  end
  return 0
end
