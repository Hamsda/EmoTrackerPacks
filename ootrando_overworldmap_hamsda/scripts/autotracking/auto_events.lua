--[[
==================
===== EVENTS =====
==================

This file deals mostly with things stored in the event tables:
https://wiki.cloudmodding.com/oot/Save_Format#event_chk_inf

]]

local function updateEventCheck(segment, code, major_offset, flag)
  -- shifting over to the next 4 hex digits
  local event_address = ADDR_EVENT_CONTEXT + 0x2 * major_offset;
  local data = ReadU16(segment, event_address)

  updateCheckFromDataAndFlags(data, code, {flag}, false)
end

--Used by the game to track some non-quest item event flags
local function updateItemGetInfoCheck(segment, code, check_offset, flag)
  local local_offset = ADDR_ITEM_GET_INF + check_offset;
  local data = ReadU8(segment, local_offset)
  
  updateCheckFromDataAndFlags(data, code, {flag}, false)
end

--Used by the game to track lots of misc information (Talking to people, getting items, etc.)
local function updateInfoTableCheck(segment, code, check_offset, flag)
  local local_offset = ADDR_INF_TABLE + check_offset;
  local data = ReadU8(segment, local_offset)

  updateCheckFromDataAndFlags(data, code, {flag}, false)
end

--NOTE: Getting the big poe bottle isn't flagged directly, instead only the points on the card are saved
--      and checked on each big poe turn in.
local function updateBigPoeBottleCheck(segment, code)
  if not HAS_MAP then return end
  local location = Tracker:FindObjectForCode(code)
  if location then
    -- Don't change this location if user modified it
    -- Nothing to do here if it's already marked off
    if location.Owner.ModifiedByUser or location.AvailableChestCount == 0 then
      return
    end

    local setting_poes_amount =
  get_object("setting_poes_amount") and get_object("setting_poes_amount").AcquiredCount or 10

    local pointsRequired = 100 * setting_poes_amount
    
    local pointsEarned = ReadU32(segment, ADDR_BIGPOE_POINTS)

    if pointsEarned >= pointsRequired then
      location.AvailableChestCount = 0
      autotracker_debug(string.format('Checked %s', code))
    end
  end
end

-- The fishing records are intricate and in their own memory area
--NOTE: Fishing in rando is patched and getting the adult reward first doesn't result in the "Golden scale glitch"
local function updateFishingCheck(segment, code, flag)
  local data = ReadU32(segment, ADDR_FISHING_CONTEXT)

  updateCheckFromDataAndFlags(data, code, {flag}, false)
end

-- rescuing all four carpenters to receive the item from the gerudo boss
local function updateHideoutCardCheck(segment, code)
  local location = Tracker:FindObjectForCode(code)
  if location then
    -- Don't change this location if user modified it
    -- Nothing to do here if it's already marked off
    if location.Owner.ModifiedByUser or location.AvailableChestCount == 0 then
      return
    end

    local event_address = ADDR_EVENT_CONTEXT + 0x2 * 0x9;
    local data = ReadU16(segment, event_address)
    local flags = {0x0, 0x1, 0x2, 0x3}
    local completed = true

    for i = 1, #flags do
      local bitmask = 0x1 << flags[i]
      completed = completed and (data & bitmask ~= 0)
    end

    if completed then
      location.AvailableChestCount = 0
      autotracker_debug(string.format('Checked %s', code))
    end
  else
    autotracker_debug(string.format('Unable to find location by code: %s', code), DBG_ERROR)
  end
end

local function updateDungeonPrizeFromEventData(segment, code, major_offset, flag)
  local item = Tracker:FindObjectForCode(code)
  if item then
    local event_address = ADDR_EVENT_CONTEXT + 0x2 * major_offset;
    local data = ReadU16(segment, event_address)
    local bitmask = 0x1 << flag

    local won = (data & bitmask ~= 0)

    if item.Active ~= won then
      if won then autotracker_debug(string.format('Y %s', item.Name))
      else        autotracker_debug(string.format('N %s', item.Name))
      end

      item.Active = won
    end
  else
    autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
  end
end

local function updateTalonFromEventData(segment, code, major_offset, flag)
  local item = Tracker:FindObjectForCode(code)
  if item then
    -- if this check still needs to be updated
    if not CHICKEN_SHOWN_TO_TALON then
      local event_address = ADDR_EVENT_CONTEXT + 0x2 * major_offset;
      local data = ReadU16(segment, event_address)
      CHICKEN_SHOWN_TO_TALON = (data & (0x1 << flag)) ~= 0

      -- if this update should advance kidtrade item
      if CHICKEN_SHOWN_TO_TALON and item.CurrentStage < 2 then
        autotracker_debug('Talon just left the castle', DBG_DETAIL)
        -- get held item value
        local value = LiveReadU8(0x8011A65B)
        -- calculate item stage
        updateChildTradeSequence(item, value)
      end
    end
  else
    autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
  end
end

local function updateKakGuardFromEventData(segment, code, check_offset, flag)
  local item = Tracker:FindObjectForCode(code)
  if item then
    if not LETTER_SHOWN_TO_GUARD then
      local guard_offset = ADDR_INF_TABLE + check_offset;
      local data = ReadU8(segment, guard_offset)
      LETTER_SHOWN_TO_GUARD = (data & (0x1 << flag)) ~= 0

      if LETTER_SHOWN_TO_GUARD and item.CurrentStage < 4 then
        autotracker_debug('Kak guard was shown the letter', DBG_DETAIL)
        -- get held item value
        local value = LiveReadU8(0x8011A65B)
        -- calculate item stage
        updateChildTradeSequence(item, value)
      end
    end
  else
    autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
  end
end

function updateChildTradeCacheFromByte(data)
  SOLD_MASK_KEATON     = SOLD_MASK_KEATON     or (data & 0x1  ~= 0)
  SOLD_MASK_SKULL      = SOLD_MASK_SKULL      or (data & 0x2  ~= 0)
  SOLD_MASK_SPOOKY     = SOLD_MASK_SPOOKY     or (data & 0x4  ~= 0)
  SOLD_MASK_BUNNY      = SOLD_MASK_BUNNY      or (data & 0x8  ~= 0)
  EARNED_MASK_OF_TRUTH = EARNED_MASK_OF_TRUTH or (data & 0x80 ~= 0)
end

-- ==================
-- == MEMORY WATCH ==
-- ==================

function updateEventsFromMemorySegment(segment)
  if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_LOCATION_TRACKING or not isInGame() then
    return true
  end

  autotracker_debug("read events from save context", DBG_DETAIL)

  InvalidateReadCaches()

  updateBigPoeBottleCheck(segment, '@Market Guard House/Market 10 Big Poes')

  updateFishingCheck(segment, '@LH Child Fishing/Bite pls', 0xA)
  updateFishingCheck(segment, '@LH Adult Fishing/Bite pls', 0xB)

  
  updateDungeonPrizeFromEventData(segment, 'deku'                                 , 0x0, 0x7)
  -- only mark her off if egg is shuffled
  if has('setting_shuffle_egg_yes') then
    updateEventCheck(segment, '@Malon at Castle/HC Malon Egg'                   , 0x1, 0x2)
  end
  -- event for talon fleeing the castle, updates kidtrade item stage
  updateTalonFromEventData(segment, 'kidtrade'                                    , 0x1, 0x4)
  updateDungeonPrizeFromEventData(segment, 'dodongo'                              , 0x2, 0x5)
  updateEventCheck(segment, '@LH Underwater Item/Dive down'                       , 0x3, 0x1)
  updateEventCheck(segment, '@GC Darunias Joy/Play Sarias Song'                   , 0x3, 0x6)
  updateDungeonPrizeFromEventData(segment, 'jabu'                                 , 0x3, 0x7)
  updateEventCheck(segment, '@ZD Diving Minigame/Dive down'                       , 0x3, 0x8)
  updateEventCheck(segment, '@HC Garden/HC Zeldas Letter'                         , 0x4, 0x0)
  updateEventCheck(segment, '@HF Ocarina of Time/HF Ocarina of Time Item'         , 0x4, 0x3)
  updateDungeonPrizeFromEventData(segment, 'forest'                               , 0x4, 0x8)
  updateDungeonPrizeFromEventData(segment, 'fire'                                 , 0x4, 0x9)
  updateDungeonPrizeFromEventData(segment, 'water'                                , 0x4, 0xA)
  updateEventCheck(segment, '@Sheik in Forest/Song'                               , 0x5, 0x0)
  updateEventCheck(segment, '@Sheik in Crater/Song'                               , 0x5, 0x1)
  updateEventCheck(segment, '@Ice Cavern/Sheik in Ice Cavern'                     , 0x5, 0x2)
  updateEventCheck(segment, '@Sheik in Kakariko/Song'                             , 0x5, 0x4)
  updateEventCheck(segment, '@Temple of Time/Sheik at Temple'                     , 0x5, 0x5)
  updateEventCheck(segment, '@Saria/Song from Saria'                              , 0x5, 0x7)
  updateEventCheck(segment, '@Malon at Ranch/Song from Malon'                     , 0x5, 0x8)
  updateEventCheck(segment, '@HC Garden/Song from Impa'                           , 0x5, 0x9)
  updateEventCheck(segment, '@Graveyard Composers Grave/Song from Composers Grave', 0x5, 0xA)
  updateEventCheck(segment, '@Kak Windmill/Song from Windmill'                    , 0x5, 0xB)
  updateHideoutCardCheck(segment, '@Carpenter Rescue/Gerudo Membership Card') -- 0x9, 0x0 thru 0x3
  updateEventCheck(segment, '@HF Ocarina of Time/Song from Ocarina of Time'       , 0xA, 0x9)
  updateEventCheck(segment, '@Sheik at Colossus/Song'                             , 0xA, 0xC)
  updateEventCheck(segment, '@LW Bridge From Forest/LW Gift from Saria'           , 0xC, 0x1)
  updateEventCheck(segment, '@Temple of Time/ToT Light Arrows Cutscene'           , 0xC, 0x4)
  updateDungeonPrizeFromEventData(segment, 'spirit'                               , 0xC, 0x8)
  updateEventCheck(segment, '@ZR Frogs/ZR Frogs Ocarina Game'                     , 0xD, 0x0)
  updateEventCheck(segment, '@ZR Frogs/ZR Frogs in the Rain'                      , 0xD, 0x6)
  updateEventCheck(segment, '@Kak House of Skulltula/Kak 10 Gold Skulltula Reward', 0xD, 0xA)
  updateEventCheck(segment, '@Kak House of Skulltula/Kak 20 Gold Skulltula Reward', 0xD, 0xB)
  updateEventCheck(segment, '@Kak House of Skulltula/Kak 30 Gold Skulltula Reward', 0xD, 0xC)
  updateEventCheck(segment, '@Kak House of Skulltula/Kak 40 Gold Skulltula Reward', 0xD, 0xD)
  updateEventCheck(segment, '@Kak House of Skulltula/Kak 50 Gold Skulltula Reward', 0xD, 0xE)

  -- this is stored here when scrubs are not shuffled
  if has('setting_scrub_shuffle_no') then
    updateItemGetInfoCheck(segment, '@HF Inside Fence Grotto/HF Deku Scrub Grotto'             , 0x0, 0x3)
  end

  updateItemGetInfoCheck(segment, '@Kak Anju as Child/Chickens'                                  , 0x0, 0x4)
  updateItemGetInfoCheck(segment, '@Market Shooting Gallery/Market Shooting Gallery Reward'      , 0x0, 0x5)
  updateItemGetInfoCheck(segment, '@Kak Shooting Gallery/Kak Shooting Gallery Reward'            , 0x0, 0x6)
  updateItemGetInfoCheck(segment, '@GF HBA/1500 Points'                                          , 0x0, 0x7)
  updateItemGetInfoCheck(segment, '@LLR Talons House/LLR Talons Chickens'                        , 0x1, 0x2)
  updateItemGetInfoCheck(segment, '@ZF Great Fairy Fountain/ZF Great Fairy Reward'               , 0x2, 0x0)
  updateItemGetInfoCheck(segment, '@HC Great Fairy Fountain/HC Great Fairy Reward'               , 0x2, 0x1)
  updateItemGetInfoCheck(segment, '@Colossus Great Fairy Fountain/Colossus Great Fairy Reward'   , 0x2, 0x2)
  updateItemGetInfoCheck(segment, '@Market Treasure Chest Game/Market Treasure Chest Game Reward', 0x2, 0x3)
  updateItemGetInfoCheck(segment, '@LW Target in Woods/Shoot it'                                 , 0x2, 0x5)
  updateItemGetInfoCheck(segment, '@Deku Theater/Deku Theater Skull Mask'                        , 0x2, 0x6)
  updateItemGetInfoCheck(segment, '@Deku Theater/Deku Theater Mask of Truth'                     , 0x2, 0x7)
  updateItemGetInfoCheck(segment, '@LH Lab/LH Lab Dive'                                          , 0x3, 0x0)
  updateItemGetInfoCheck(segment, '@Market Bombchu Bowling/Market Bombchu Bowling First Prize'   , 0x3, 0x1)
  updateItemGetInfoCheck(segment, '@Market Bombchu Bowling/Market Bombchu Bowling Second Prize'  , 0x3, 0x2)
  updateItemGetInfoCheck(segment, '@Kak Man on Roof/Talk to him'                                 , 0x3, 0x5)
  updateItemGetInfoCheck(segment, '@LW Skull Kid/Play Sarias Song'                               , 0x3, 0x6)
  updateItemGetInfoCheck(segment, '@LW Ocarina Memory Game/ResidentSleeper'                      , 0x3, 0x7)
  updateItemGetInfoCheck(segment, '@Kak Anju as Adult/Talk to her'                               , 0x4, 0x4)

  local mask_byte = ReadU8(segment, ADDR_ITEM_GET_INF + 0x6)
  updateChildTradeCacheFromByte(mask_byte)

  if has('setting_kak_closed') then
    updateKakGuardFromEventData(segment, 'kidtrade'                     , 0x0F, 0x6)
  end

  updateInfoTableCheck(segment, '@GC Rolling Goron as Adult/Stop him'   , 0x20, 0x1)
  updateInfoTableCheck(segment, '@GC Rolling Goron as Child/Blow him up', 0x22, 0x6)
  updateInfoTableCheck(segment, '@King Zora/ZD King Zora Thawed'        , 0x26, 0x1)
  updateInfoTableCheck(segment, '@GF HBA/1000 Points'                   , 0x33, 0x0)
  updateInfoTableCheck(segment, '@Market Dog Lady House/Market Lost Dog', 0x33, 0x1)

  -- this is stored here when scrubs are not shuffled
  if has('setting_scrub_shuffle_no') then
    updateInfoTableCheck(segment, '@LW Deku Scrub Near Bridge/Stick Upgrade'    , 0x33, 0x2)
    updateInfoTableCheck(segment, '@LW Scrubs Grotto/LW Deku Scrub Grotto Front', 0x33, 0x3)
  end
end
