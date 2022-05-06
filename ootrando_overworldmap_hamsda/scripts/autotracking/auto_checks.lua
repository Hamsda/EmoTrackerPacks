--[[
==================
===== CHECKS =====
==================

This file handles most of the checks in the game: chests, items on the ground, scrubs, cows, etc.

]]

local function has_value (tab, val)
  for index, value in ipairs(tab) do
    if value == val then
      return true
    end
  end

  return false
end

local function updatePlantedBeanFromDataAndFlags(data, code, flags)
  local plantedStage = 1

  for i = 1, #flags do
    local bitmask = 0x1 << flags[i]

    if data & bitmask == 0 then -- any missing flag means it's not planted
      plantedStage = 0
    end
  end
  
  -- only do the following if we are going from unplanted to planted
  if plantedStage ~= 0 and not has_value(BEANS_USED, code) then
    -- store in cache that we planted this bean
    table.insert(BEANS_USED, code)

    -- if bean plant is set to NOT
    if not BEAN_PLANTING then
      autotracker_debug('bean planting set to NOT', DBG_DETAIL)
      -- live read held beans
      local held = LiveReadU8(0x8011A66A)
      -- add held + used and update tracker count
      local used = #BEANS_USED
      local count = held + used
      autotracker_debug(string.format("%d beans used, %d held", used, held))

      local item = Tracker:FindObjectForCode('beans')
      if item then
        if item.AcquiredCount ~= count then
          
        end

        item.AcquiredCount = count
      else
        autotracker_debug(string.format('Unable to find item by code: %s', 'beans'), DBG_ERROR)
      end
    end

  end

  -- update 'plant bean' check, if one exists for this spot
  local item = Tracker:FindObjectForCode(code)
  if code ~= '' and item then
    if item.CurrentStage < plantedStage then
      autotracker_debug(string.format('Y %s', item.Name))
      item.CurrentStage = plantedStage
    end
  end
end

local function updateDungeonPrizeFromDataAndFlags(data, code, flags)
  local item = Tracker:FindObjectForCode(code)
  if item then
    local won = true

    for i = 1, #flags do
      local bitmask = 0x1 << flags[i]
  
      if data & bitmask == 0 then -- any missing flag means it's not acquired
        won = false
      end
    end

    local isActive = item:Get("active")

    if isActive ~= won then
      if won then autotracker_debug(string.format('Y %s', item.Name))
      else        autotracker_debug(string.format('N %s', item.Name))
      end

      item:Set("active", won)
    end
  else
    autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
  end
end

function updateScarecrow(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_ITEM_TRACKING then
    return true
  end

  if not isInGame() then
    return false
  end

  autotracker_debug("read scarecrow data", DBG_DETAIL)

  local item = Tracker:FindObjectForCode("scarecrow")
  if item then
    local value = ReadU8(segment, 0x80400CBC)
    local newSetting = (value ~= 0)
    if item.Active ~= newSetting then
      if newSetting then autotracker_debug(string.format("Y %s", item.Name))
      else               autotracker_debug(string.format("N %s", item.Name))
      end
      item.Active = newSetting
    end
  else
    autotracker_debug(string.format('Unable to find item by code: %s', 'scarecrow'), DBG_ERROR)
  end
end

local function updateUsedKeysFromDataAndFlags(data, code, flags)
  local item = Tracker:FindObjectForCode(code)
  if item then
    local cache = KEY_CACHE[code]
    local keysUsed = 0
    
    -- get count of keys used
    for i = 1, #flags do
      local bitmask = 0x1 << flags[i]

      if data & bitmask ~= 0 then
        keysUsed = keysUsed + 1
      end
    end

    -- always live update the held keys here
    -- we are about to add held+used, and this callback might be running before
    -- the held count is updated from the other callback
    local heldAddress = 0
    if     code == 'forestsmall' then heldAddress = 0x8011A68F
    elseif code == 'firesmall'   then heldAddress = 0x8011A690
    elseif code == 'watersmall'  then heldAddress = 0x8011A691
    elseif code == 'spiritsmall' then heldAddress = 0x8011A692
    elseif code == 'shadowsmall' then heldAddress = 0x8011A693
    elseif code == 'botwsmall'   then heldAddress = 0x8011A694
    elseif code == 'gtgsmall'    then heldAddress = 0x8011A697
    elseif code == 'thsmall'     then heldAddress = 0x8011A698
    elseif code == 'gcsmall'     then heldAddress = 0x8011A699
    end

    local heldKeys = LiveReadU8(heldAddress)

    -- FF is used to hide the key display in dungeons, and is equivalent to zero
    if heldKeys == 0xFF then
      heldKeys = 0
    end

    -- always update this one since it's a live read
    cache['held'] = heldKeys

    -- only update this one if it incremented, since it's read from cache
    if keysUsed > cache['used'] then
      cache['used'] = keysUsed
      autotracker_debug(string.format('%s keys: %d held, %d used', code, heldKeys, keysUsed))
    end

    -- always update the tracker
    -- hamsda expects us to add held and used keys together
    item.AcquiredCount = cache['held'] + cache['used']
  end
end

-- not local, this is also used in event handling
function updateCheckFromDataAndFlags(data, code, flags, allowPartial)
  if not HAS_MAP then return end
  local location = Tracker:FindObjectForCode(code)
  local numCleared = 0

  if not location then
    autotracker_debug(string.format('Unable to find location by code: %s', code), DBG_ERROR)
    return
  end

  -- Don't change this location if user modified it
  -- Nothing to do here if it's already marked off
  if location.Owner.ModifiedByUser or location.AvailableChestCount == 0 then
    return
  end

  for i = 1, #flags do
    local bitmask = 0x1 << flags[i]

    if data & bitmask ~= 0 then
      numCleared = numCleared + 1
    end
  end

  local fullCleared = (numCleared == location.ChestCount)
  local numAvailable = location.ChestCount - numCleared

  -- if we need to mark anything off
  --[[ we do it this way because we don't want to unmark any locations during occasional
     disagreements between the save context and the global context ]]
  if numAvailable < location.AvailableChestCount then
    if fullCleared or allowPartial then
      location.AvailableChestCount = numAvailable
      autotracker_debug(string.format('Checked %s', code))
    else
      -- not all chests are open, and the tracker doesn't allow partial completion for this location. do nothing
    end
  end
end

-- Offsets for scenes can be found here
-- https://wiki.cloudmodding.com/oot/Scene_Table/NTSC_1.0
-- Each scene is 0x1c bits long, chests at 0x0, switches at 0x4, collectibles at 0xc
local function updateSceneFromSaveContext(segment, scene_index)
  local checks = scenes[scene_index]
  if not checks then
    return
  end

  local sceneOffset = ADDR_SCENE_FLAGS + (SCENE_SIZE * scene_index)

  local chestData       = ReadU32(segment, sceneOffset + 0x00)
  local switchData      = ReadU32(segment, sceneOffset + 0x04)
  local collectibleData = ReadU32(segment, sceneOffset + 0x0C)
  local scrubData       = ReadU32(segment, sceneOffset + 0x10)

  for i = 1, #checks do
    local check = checks[i]
    local type  = check['type']
    local code  = check['code']
    local flags = check['flags']
    if     type == 'chest'  then updateCheckFromDataAndFlags(chestData      , code, flags, false)
    elseif type == 'ground' then updateCheckFromDataAndFlags(collectibleData, code, flags, false)
    elseif type == 'cow'    then updateCheckFromDataAndFlags(collectibleData, code, flags, false)
    elseif type == 'magic'  then updateCheckFromDataAndFlags(switchData     , code, flags, false)
    elseif type == 'prize'  then updateDungeonPrizeFromDataAndFlags(collectibleData, code, flags)
    elseif type == 'plant'  then updatePlantedBeanFromDataAndFlags(switchData, code, flags, false)
    elseif type == 'keys' -- keys are only tracked when keysanity variant is used
        and HAS_KEYS then
      updateUsedKeysFromDataAndFlags(switchData  , code, flags)
    elseif type == 'scrub' -- scrubs are only stored here when scrubsanity is turned on
        and has('setting_scrub_shuffle_yes') then
      updateCheckFromDataAndFlags(scrubData      , code, flags, true )
    elseif type == 'bean' -- bean salesman check is only stored here when bean shuffle is turned on
        and has('setting_shuffle_beans_yes') then
      updateCheckFromDataAndFlags(collectibleData, code, flags, false)
    end
  end
end

local function updateSceneTypeFromGlobalContext(data, checks, updateType)
  -- the calling function is providing the flag data, so we only want
  -- to update checks that match the type represented by this data
  for i = 1, #checks do
    local check = checks[i]
    local type  = check['type']
    local code  = check['code']
    local flags = check['flags']
    if type == updateType then
      if     type == 'chest'  then updateCheckFromDataAndFlags(data, code, flags, false)
      elseif type == 'ground' then updateCheckFromDataAndFlags(data, code, flags, false)
      elseif type == 'cow'    then updateCheckFromDataAndFlags(data, code, flags, false)
      elseif type == 'magic'  then updateCheckFromDataAndFlags(data, code, flags, false)
      elseif type == 'plant'  then updatePlantedBeanFromDataAndFlags(data, code, flags)
      elseif type == 'keys' -- keys are only tracked when keysanity variant is used
          and HAS_KEYS then
        updateUsedKeysFromDataAndFlags(data, code, flags)
      elseif type == 'scrub' -- scrubs are only stored here when scrubsanity is turned on
          and has('setting_scrub_shuffle_yes') then
        updateCheckFromDataAndFlags(data, code, flags, true )
      elseif type == 'bean' -- bean salesman check is only stored here when bean shuffle is turned on
          and has('setting_shuffle_beans_yes') then
        updateCheckFromDataAndFlags(data, code, flags, false)
      end
    end
  end
end

-- Left shelf bit masks are:
-- 0x8    0x2
-- 0x4    0x1
local function updateShopCheck(segment, code, shop_offset, item_offset)
  local local_shop_offset = ADDR_SHOP_CONTEXT;
  local data = ReadU32(segment, local_shop_offset)
  local flag = 4 * shop_offset + item_offset

  updateCheckFromDataAndFlags(data, code, {flag}, false)
end

local function updateTriforceCountFromData(segment, code)
  local item = Tracker:FindObjectForCode(code)
  if item then
    local value = ReadU32(segment, ADDR_TRIFORCE_PIECES)

    if item.AcquiredCount ~= value then
      autotracker_debug(string.format("%d %s", value, item.Name))
    end

    item.AcquiredCount = value
  else
    autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
  end
end

-- read only the specified range of scenes
-- used to avoid having to read all scenes every time one of them changes
local function updateFromSaveContextWithLimits(segment, minIndex, maxIndex)
  autotracker_debug(string.format("read check data from save context (%x:%x)", minIndex, maxIndex), DBG_DETAIL)

  InvalidateReadCaches()

  for i = 1, #orderedSceneIndices do
    local sceneIndex = orderedSceneIndices[i]
    if sceneIndex >= minIndex and sceneIndex < maxIndex then
      local scene = scenes[sceneIndex]
      updateSceneFromSaveContext(segment, sceneIndex)
    end
  end
end

-- ==================
-- == MEMORY WATCH ==
-- ==================

function updateFromSaveContextDungeon1(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  local minIndex = 0x00
  local maxIndex = 0x03

  updateFromSaveContextWithLimits(segment, minIndex, maxIndex)
end

function updateFromSaveContextDungeon2(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  local minIndex = 0x03
  local maxIndex = 0x06

  updateFromSaveContextWithLimits(segment, minIndex, maxIndex)
end

function updateFromSaveContextDungeon3(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  local minIndex = 0x06
  local maxIndex = 0x09

  updateFromSaveContextWithLimits(segment, minIndex, maxIndex)
end

function updateFromSaveContextDungeon4(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  local minIndex = 0x09
  local maxIndex = 0x0C

  updateFromSaveContextWithLimits(segment, minIndex, maxIndex)
end

function updateFromSaveContextDungeon5(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  local minIndex = 0x0C
  local maxIndex = 0x2C

  updateFromSaveContextWithLimits(segment, minIndex, maxIndex)
end

function updateFromSaveContextOverworld1(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  local minIndex = 0x34
  local maxIndex = 0x4D

  updateFromSaveContextWithLimits(segment, minIndex, maxIndex)

  -- triforce count is stored in scene 0x48
  updateTriforceCountFromData(segment, 'triforce')
end

function updateFromSaveContextOverworld2(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  local minIndex = 0x4D
  local maxIndex = 0x65

  updateFromSaveContextWithLimits(segment, minIndex, maxIndex)
end

function updateShopsFromSaveContext(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  autotracker_debug("read shops from save context", DBG_DETAIL)
  
  InvalidateReadCaches()

  updateShopCheck(segment, '@Market Bombchu Shop/Item 1', 0x1, 0x0)
  updateShopCheck(segment, '@Market Bombchu Shop/Item 2', 0x1, 0x1)
  updateShopCheck(segment, '@Market Bombchu Shop/Item 3', 0x1, 0x2)
  updateShopCheck(segment, '@Market Bombchu Shop/Item 4', 0x1, 0x3)
  updateShopCheck(segment, '@ZD Shop/Item 1'            , 0x2, 0x0)
  updateShopCheck(segment, '@ZD Shop/Item 2'            , 0x2, 0x1)
  updateShopCheck(segment, '@ZD Shop/Item 3'            , 0x2, 0x2)
  updateShopCheck(segment, '@ZD Shop/Item 4'            , 0x2, 0x3)
  updateShopCheck(segment, '@Kak Potion Shop/Item 1'    , 0x3, 0x0)
  updateShopCheck(segment, '@Kak Potion Shop/Item 2'    , 0x3, 0x1)
  updateShopCheck(segment, '@Kak Potion Shop/Item 3'    , 0x3, 0x2)
  updateShopCheck(segment, '@Kak Potion Shop/Item 4'    , 0x3, 0x3)
  updateShopCheck(segment, '@Market Bazaar/Item 1'      , 0x4, 0x0)
  updateShopCheck(segment, '@Market Bazaar/Item 2'      , 0x4, 0x1)
  updateShopCheck(segment, '@Market Bazaar/Item 3'      , 0x4, 0x2)
  updateShopCheck(segment, '@Market Bazaar/Item 4'      , 0x4, 0x3)
  updateShopCheck(segment, '@GC Shop/Item 1'            , 0x5, 0x0)
  updateShopCheck(segment, '@GC Shop/Item 2'            , 0x5, 0x1)
  updateShopCheck(segment, '@GC Shop/Item 3'            , 0x5, 0x2)
  updateShopCheck(segment, '@GC Shop/Item 4'            , 0x5, 0x3)
  updateShopCheck(segment, '@KF Kokiri Shop/Item 1'     , 0x6, 0x0)
  updateShopCheck(segment, '@KF Kokiri Shop/Item 2'     , 0x6, 0x1)
  updateShopCheck(segment, '@KF Kokiri Shop/Item 3'     , 0x6, 0x2)
  updateShopCheck(segment, '@KF Kokiri Shop/Item 4'     , 0x6, 0x3)
  updateShopCheck(segment, '@Kak Bazaar/Item 1'         , 0x7, 0x0)
  updateShopCheck(segment, '@Kak Bazaar/Item 2'         , 0x7, 0x1)
  updateShopCheck(segment, '@Kak Bazaar/Item 3'         , 0x7, 0x2)
  updateShopCheck(segment, '@Kak Bazaar/Item 4'         , 0x7, 0x3)
  updateShopCheck(segment, '@Market Potion Shop/Item 1' , 0x8, 0x0)
  updateShopCheck(segment, '@Market Potion Shop/Item 2' , 0x8, 0x1)
  updateShopCheck(segment, '@Market Potion Shop/Item 3' , 0x8, 0x2)
  updateShopCheck(segment, '@Market Potion Shop/Item 4' , 0x8, 0x3)
end

function updateChestsFromGlobalContext(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  --[[
      when changing scenes, the current scene index updates about half a second before
      the flags do. if we read either of them during this interval, they will not match up.
      if transition flags are set, abort the read since we might be in this time frame.
      TODO: these flags seem to be wrong sometimes in wasteland and zora's domain
    ]]

  local transition_data = LiveReadU32(0x0801DA668)
  if transition_data ~= 0x01010100 then
    autotracker_debug('abort read of live data due to scene transition', DBG_DETAIL)
    return true
  end

  local scene_index = LiveReadU16(ADDR_CURRENT_SCENE_INDEX)
  local scene_data  = LiveReadU32(ADDR_CURRENT_CHEST_FLAGS)

  local checks = scenes[scene_index]
  if checks then
    autotracker_debug(string.format("read live chest data for scene %x: %x", scene_index, scene_data), DBG_DETAIL)
    updateSceneTypeFromGlobalContext(scene_data, checks, 'chest')
  end
end

function updateCollectionsFromGlobalContext(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  -- see chest function for more details on this
  local transition_data = LiveReadU32(0x0801DA668)
  if transition_data ~= 0x01010100 then
    autotracker_debug('abort read of live data due to scene transition', DBG_DETAIL)
    return true
  end

  local scene_index = LiveReadU16(ADDR_CURRENT_SCENE_INDEX)
  local scene_data  = LiveReadU32(ADDR_CURRENT_COLLECTION_FLAGS)

  local checks = scenes[scene_index]
  if checks then
    autotracker_debug(string.format("read live collection data for scene %x: %x", scene_index, scene_data), DBG_DETAIL)
    updateSceneTypeFromGlobalContext(scene_data, checks, 'ground')
    updateSceneTypeFromGlobalContext(scene_data, checks, 'cow')
    updateSceneTypeFromGlobalContext(scene_data, checks, 'bean')
  end
end

function updateSwitchesFromGlobalContext(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  -- see chest function for more details on this
  local transition_data = LiveReadU32(0x0801DA668)
  if transition_data ~= 0x01010100 then
    autotracker_debug('abort read of live data due to scene transition', DBG_DETAIL)
    return true
  end

  local scene_index = LiveReadU16(ADDR_CURRENT_SCENE_INDEX)
  local scene_data  = LiveReadU32(ADDR_CURRENT_SWITCH_FLAGS)

  local checks = scenes[scene_index]
  if checks then
    autotracker_debug(string.format("read live switch data for scene %x: %x", scene_index, scene_data), DBG_DETAIL)
    updateSceneTypeFromGlobalContext(scene_data, checks, 'magic')
    updateSceneTypeFromGlobalContext(scene_data, checks, 'card')
    updateSceneTypeFromGlobalContext(scene_data, checks, 'keys')
    updateSceneTypeFromGlobalContext(scene_data, checks, 'plant')
  end
end

-- export locals for testing
if _G._TEST then
  _G._updatePlantedBeanFromDataAndFlags = updatePlantedBeanFromDataAndFlags
end
