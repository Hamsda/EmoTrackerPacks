--[[
=================
===== ITEMS =====
=================

This file handles the reading of most inventory items, including quest and equipment data

]]

local function testFlag(segment, address, flag)
    local value = ReadU8(segment, address)
    local flagTest = value & flag

    if flagTest ~= 0 then
        return true
    else
        return false
    end    
end

local function updateItemStageIfChanged(item, target)
    if item.CurrentStage ~= target then
        item.CurrentStage = target
        autotracker_debug(string.format('%d %s', target, item.Name))
    end
end

local function updateProgressiveItemFromByte(segment, code, address, offset)
    local item = Tracker:FindObjectForCode(code)
    if item then
        local value = ReadU8(segment, address)
        local target = value + (offset or 0)

        updateItemStageIfChanged(item, target)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

local function updateProgressiveOcarina(segment)
    local item = Tracker:FindObjectForCode("ocarina")
    if item then
        local value = ReadU8(segment, 0x8011A644 + 7)
        local target = 0
        if     value == 0x08 then target = 2
        elseif value == 0x07 then target = 1
        end
        updateItemStageIfChanged(item, target)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'ocarina'), DBG_ERROR)
    end
end

local function updateProgressiveHookshot(segment)
    local item = Tracker:FindObjectForCode("hookshot")
    if item then
        local value = ReadU8(segment, 0x8011A644 + 9)
        local target = 0
        if     value == 0x0B then target = 2
        elseif value == 0x0A then target = 1
        end
        updateItemStageIfChanged(item, target)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'hookshot'), DBG_ERROR)
    end
end

local function updateProgressiveScale(segment)
    local item = Tracker:FindObjectForCode("scale")
    if item then
        local silver = testFlag(segment, 0x8011A672, 0x02)
        local gold   = testFlag(segment, 0x8011A672, 0x04)
        local target = 0
        if     gold   then target = 2
        elseif silver then target = 1
        end
        updateItemStageIfChanged(item, target)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'scale'), DBG_ERROR)
    end
end

local function resolveProgressiveItemSize(item, big, bigger)
    local biggest = big and bigger
    local target = 0
    if     biggest then target = 3
    elseif bigger  then target = 2
    elseif big     then target = 1
    end
    updateItemStageIfChanged(item, target)
end

local function updateProgressiveSticks(segment)
    local item = Tracker:FindObjectForCode("sticks")
    if item then
        local big = testFlag(segment, 0x8011A671, 0x02)
        local bigger = testFlag(segment, 0x8011A671, 0x04)
        resolveProgressiveItemSize(item, big, bigger)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'sticks'), DBG_ERROR)
    end
end

local function updateProgressiveNuts(segment)
    local item = Tracker:FindObjectForCode("nuts")
    if item then
        local big = testFlag(segment, 0x8011A671, 0x10)
        local bigger = testFlag(segment, 0x8011A671, 0x20)
        resolveProgressiveItemSize(item, big, bigger)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'nuts'), DBG_ERROR)
    end
end

local function updateProgressiveWallet(segment)
    local item = Tracker:FindObjectForCode("wallet")
    if item then
        local adult = testFlag(segment, 0x8011A672, 0x10)
        local giant = testFlag(segment, 0x8011A672, 0x20)
        resolveProgressiveItemSize(item, adult, giant)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'wallet'), DBG_ERROR)
    end
end

local function updateProgressiveSlingshot(segment)
    local item = Tracker:FindObjectForCode("slingshot")
    if item then
        local big    = testFlag(segment, 0x8011A672, 0x40)
        local bigger = testFlag(segment, 0x8011A672, 0x80)
        resolveProgressiveItemSize(item, big, bigger)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'slingshot'), DBG_ERROR)
    end
end

local function updateProgressiveBow(segment)
    local item = Tracker:FindObjectForCode("bow")
    if item then
        local big    = testFlag(segment, 0x8011A673, 0x01)
        local bigger = testFlag(segment, 0x8011A673, 0x02)
        resolveProgressiveItemSize(item, big, bigger)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'bow'), DBG_ERROR)
    end
end

local function updateProgressiveBombs(segment)
    local item = Tracker:FindObjectForCode("bombs")
    if item then
        local big    = testFlag(segment, 0x8011A673, 0x08)
        local bigger = testFlag(segment, 0x8011A673, 0x10)
        resolveProgressiveItemSize(item, big, bigger)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'bombs'), DBG_ERROR)
    end
end

local function updateProgressiveStrength(segment)
    local item = Tracker:FindObjectForCode("bracelet")
    if item then
        local goron  = testFlag(segment, 0x8011A673, 0x40)
        local silver = testFlag(segment, 0x8011A673, 0x80)
        resolveProgressiveItemSize(item, goron, silver)
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'bracelet'), DBG_ERROR)
    end
end

local function updateAdultTradeSequence(segment)
    local item = Tracker:FindObjectForCode("adulttrade")
    if item then
        local value = ReadU8(segment, 0x8011A65A)

        local newStage = 0

        if value ~= 0xFF then
            newStage = value - 0x2D + 1
        end

        if item.CurrentStage ~= newStage then
            autotracker_debug(string.format("%s on stage %d", item.Name, newStage))
            item.CurrentStage = newStage
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'adulttrade'), DBG_ERROR)
    end
end

local function updateChildTradeSequence(segment)
    local item = Tracker:FindObjectForCode("kidtrade")
    if item then
        local value = ReadU8(segment, 0x8011A65B)

        local VAL_EGG     = 0x21
        local VAL_CHICKEN = 0x22
        local VAL_LETTER  = 0x23
        local VAL_SOLDOUT = 0x2C
        local VAL_KEATON  = 0x24
        local VAL_SKULL   = 0x25
        local VAL_SPOOKY  = 0x26
        local VAL_BUNNY   = 0x27
        local VAL_TRUTH   = 0x2B
        
        -- do a preliminary live read if necessary

        -- we have chicken, check whether we showed it to talon yet
        if value == VAL_CHICKEN and not CHICKEN_SHOWN_TO_TALON then
            local talon_offset = ADDR_EVENT_CONTEXT + 0x2 * 0x1;
            local data = LiveReadU16(talon_offset)
            CHICKEN_SHOWN_TO_TALON = (data & (0x1 << 0x4)) ~= 0
        -- we have letter, check whether we showed it to guard yet
        elseif value == VAL_LETTER and not LETTER_SHOWN_TO_GUARD then
            local guard_offset = ADDR_INF_TABLE + 0xF;
            local data = LiveReadU8(guard_offset)
            LETTER_SHOWN_TO_GUARD = (data & (0x1 << 0x6)) ~= 0
        -- we have SOLD OUT and haven't yet seen that all masks are sold, we have to update this
        elseif value == VAL_SOLDOUT and not
        (SOLD_MASK_KEATON and SOLD_MASK_SKULL and SOLD_MASK_SPOOKY and SOLD_MASK_BUNNY and EARNED_MASK_OF_TRUTH)  then
            local mask_offset = ADDR_ITEM_GET_INF + 0x6;
            local mask_byte = LiveReadU8(mask_offset)

            updateChildTradeCacheFromByte(mask_byte)
        end

        -- now determine which stage to use

        local newStage = 0

        -- first, show egg or chicken if we haven't met zelda yet

        -- always show egg if we have it
        if     value == VAL_EGG then newStage = 1 -- egg
        -- if we have chicken, show egg instead if talon hasn't woken yet
        elseif value == VAL_CHICKEN then
            if CHICKEN_SHOWN_TO_TALON then
                autotracker_debug('showing chicken because talon isn\'t at the castle', DBG_DETAIL)
                newStage = 2 -- chicken
            else
                autotracker_debug('showing egg instead of chicken because talon is at the castle', DBG_DETAIL)
                newStage = 1 -- show egg so tracker shows talon's check
            end

        -- now, override the actual held item with the one that represents your furthest progress
        -- in the trade sequence

        -- always show truth no matter what you're holding, relevant checks should appear accessible
        elseif EARNED_MASK_OF_TRUTH then newStage = 13
            -- if we have letter, show sold out if kak is closed and guard asked about the shop
        elseif value == VAL_LETTER then
            if has('setting_kak_closed') and LETTER_SHOWN_TO_GUARD then
                newStage = 4 -- sold out
            else 
                newStage = 3 -- letter
            end
        -- if we have soldout, show the corresponding stage
        elseif value == VAL_SOLDOUT and SOLD_MASK_BUNNY  then newStage = 12 -- sold out (after bunny)
        elseif value == VAL_SOLDOUT and SOLD_MASK_SPOOKY then newStage = 10 -- sold out (after spooky)
        elseif value == VAL_SOLDOUT and SOLD_MASK_SKULL  then newStage =  8 -- sold out (after skull)
        elseif value == VAL_SOLDOUT and SOLD_MASK_KEATON then newStage =  6 -- sold out (after keaton)
        -- it's finally safe to just show what we're holding
        elseif value == VAL_KEATON then newStage =  5 -- keaton
        elseif value == VAL_SKULL  then newStage =  7 -- skull
        elseif value == VAL_SPOOKY then newStage =  9 -- spooky
        elseif value == VAL_BUNNY  then newStage = 11 -- bunny
        elseif value == VAL_TRUTH  then newStage = 13 -- truth
        end

        if item.CurrentStage ~= newStage then
            autotracker_debug(string.format("%s on stage %d", 'kidtrade', newStage))
            item.CurrentStage = newStage
        else
            autotracker_debug(string.format("wanted to set %s to stage %d, but it was already there", 'kidtrade', newStage), DBG_DETAIL)
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', 'kidtrade'), DBG_ERROR)
    end
end

local function updateBottleFromByte(segment, code, address)
    local item = Tracker:FindObjectForCode(code)

    if item then
        local value = ReadU8(segment, address)

        local currentStage = 0

        if     value == 0x14 then currentStage = 1  -- empty
        elseif value == 0x15 then currentStage = 3  -- red
        elseif value == 0x16 then currentStage = 4  -- green
        elseif value == 0x17 then currentStage = 5  -- blue
        elseif value == 0x18 then currentStage = 6  -- fairy
        elseif value == 0x19 then currentStage = 7  -- fish
        elseif value == 0x1A then currentStage = 9  -- milk
        elseif value == 0x1B then currentStage = 2  -- ruto
        elseif value == 0x1C then currentStage = 11 -- fire
        elseif value == 0x1D then currentStage = 8  -- bugs
        elseif value == 0x1E then currentStage = 12 -- big poe
        elseif value == 0x1F then currentStage = 10 -- halfmilk
        elseif value == 0x20 then currentStage = 13 -- poe
        else currentStage = 0 -- no bottle here
        end

        -- if the king moved, we need to ensure ruto's letter is still shown in a bottle
        -- because the tracker expects us to keep it marked even after we used it
        if KING_ZORA_MOVED then
            -- big poes affect logic, so try to mark them down
            if currentStage == 12 and (HAS_RUTO_BOTTLE or code ~= 'bottle4') then
                item.CurrentStage = currentStage
            -- whatever's in this slot doesn't affect tracker logic, or we ran out of room because you
            -- are carrying around four big poes. write rutos letter here
            elseif not HAS_RUTO_BOTTLE then
                item.CurrentStage = 2
                HAS_RUTO_BOTTLE = true
                autotracker_debug(string.format('force rutos letter into %s', code), DBG_DETAIL)
            -- we already put the letter into a bottle, so just show bottle contents
            else
                item.CurrentStage = currentStage
            end
        -- haven't moved the king yet, so always show bottle contents
        else
            if item.CurrentStage ~= currentStage then
                autotracker_debug(string.format("%x %s", value, item.Name))
                item.CurrentStage = currentStage
            end
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

local function updateToggleItemFromByte(segment, code, address)
    local item = Tracker:FindObjectForCode(code)
    if item then
        local value = ReadU8(segment, address)

        local newSetting = false

        -- mark as active regardless of what item is actually at this address
        if value > 0 and value < 255 then
            newSetting = true
        end

        if item.Active ~= newSetting then
            if newSetting then autotracker_debug(string.format("Y %s", item.Name))
            else               autotracker_debug(string.format("N %s", item.Name))
            end
            item.Active = newSetting
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

local function updateToggleItemFromByteAndFlag(segment, code, address, flag)
    local item = Tracker:FindObjectForCode(code)
    if item then
        local data = ReadU8(segment, address)
        local newSetting = (data & flag ~= 0)

        if item.Active ~= newSetting then
            if newSetting then autotracker_debug(string.format("Y %s", item.Name))
            else               autotracker_debug(string.format("N %s", item.Name))
            end
            item.Active = newSetting
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

local function updateSongFromByteAndFlag(segment, code, address, flag)
    local songItem = Tracker:FindObjectForCode(code)
    local song = songItem.ItemState
    if song then
        local data = ReadU8(segment, address)
        local newSetting = (data & flag ~= 0)

        if song:getProperty("active") ~= newSetting then
            if newSetting then autotracker_debug(string.format("Y %s", songItem.Name))
            else               autotracker_debug(string.format("N %s", songItem.Name))
            end
            song:setProperty("active", newSetting)
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

local function updateSmallKeysFromByte(segment, code, address)
    local item = Tracker:FindObjectForCode(code)
    if item then
        local value = ReadU8(segment, address)

        -- FF is used to hide the key display in dungeons, and is equivalent to zero
        if value == 0xFF then
            value = 0
        end

        local cache = KEY_CACHE[code] -- i hope this is by reference
        local old_count = cache['held']
        cache['held'] = value

        if old_count ~= value then
            autotracker_debug(string.format('%d %s keys held', value, code))
        end

        -- we gained a key, update the count on the tracker
        if value > old_count then
            -- hamsda expects us to add held and used keys together
            item.AcquiredCount = cache['held'] + cache['used']
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

local function updateBeanCountFromByte(segment, code, address)
    local item = Tracker:FindObjectForCode(code)
    if item then
        local value = ReadU8(segment, address)

        if has('setting_plant_no') then
            -- only update if it increased - see plant check for the accurate count
            if item.AcquiredCount < value then
                autotracker_debug(string.format("%d %s", value, item.Name))
                item.AcquiredCount = value
            end
        -- should always be the true count of held beans, safe to always update it here
        elseif item.AcquiredCount ~= value then
            autotracker_debug(string.format("%d %s", value, item.Name))
            item.AcquiredCount = value
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

local function updateBeanSalesmanFromByte(segment, code, address)
    local location = Tracker:FindObjectForCode(code)
    if location then
        -- Do not auto-track this if the user has manually modified it
        if location.Owner.ModifiedByUser then
            return
        end

        local value = ReadU8(segment, address)

        -- check him off when he's sold ten beans
        if value >= 10 then
            location.AvailableChestCount = 0
        else
            location.AvailableChestCount = location.ChestCount
        end
    else
        autotracker_debug(string.format('Unable to find location by code: %s', code), DBG_ERROR)
    end
end

-- the final adult trade sequence step
local function updateBiggoronCheck(segment, code, flag)
    local data = ReadU8(segment, ADDR_BIGGORON_SAVED)

    updateCheckFromDataAndFlags(data, code, {flag}, false)
end

local function updateConsumableItemFromByte(segment, code, address)
    local item = Tracker:FindObjectForCode(code)
    if item then
        local value = ReadU8(segment, address)

        if value ~= item.AcquiredCount then
            autotracker_debug(string.format("%d %s", value, item.Name))
            item.AcquiredCount = value
        end
    else
        autotracker_debug(string.format('Unable to find item by code: %s', code), DBG_ERROR)
    end
end

-- ==================
-- === CALLBACKS ====
-- ==================

function updateMagicMeterFromMemorySegment(segment)
    if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_ITEM_TRACKING or not isInGame() then
        return true
    end

    autotracker_debug("read magic meter data", DBG_DETAIL)

    InvalidateReadCaches()

    updateProgressiveItemFromByte(segment, "magic", 0x8011A602)
end

function updateBiggoronFromMemorySegment(segment)
    if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_ITEM_TRACKING or not isInGame() then
        return true
    end

    autotracker_debug("read biggoron data", DBG_DETAIL)

    InvalidateReadCaches()

    updateToggleItemFromByte(segment, "biggoronsword",0x8011A60E)
end

function updateItems1FromMemorySegment(segment)
    if has('setting_racemode_on')
    or (not AUTOTRACKER_ENABLE_LOCATION_TRACKING and not AUTOTRACKER_ENABLE_ITEM_TRACKING) then
        return true
    end

    if not isInGame() then
        return false
    end

    autotracker_debug("read item data 1", DBG_DETAIL)

    InvalidateReadCaches()

    if AUTOTRACKER_ENABLE_LOCATION_TRACKING then
        updateBiggoronCheck(segment, '@DMT Biggoron/Help him', 0x0)
    end

    if AUTOTRACKER_ENABLE_ITEM_TRACKING then
        updateToggleItemFromByte(segment, "firearrow" , 0x8011A644 + 4)
        updateToggleItemFromByte(segment, "dins"      , 0x8011A644 + 5)
        updateProgressiveOcarina(segment)  -- 0x8011A644 + 7
        updateToggleItemFromByte(segment, "Bombchus"  , 0x8011A644 + 8)
        updateProgressiveHookshot(segment) -- 0x8011A644 + 9
        updateToggleItemFromByte(segment, "icearrow"  , 0x8011A644 + 10)
        updateToggleItemFromByte(segment, "farores"   , 0x8011A644 + 11)
        updateToggleItemFromByte(segment, "Boomerang" , 0x8011A644 + 12)
        updateToggleItemFromByte(segment, "lens"      , 0x8011A644 + 13)
        updateToggleItemFromByte(segment, "Hammer"    , 0x8011A644 + 15)
        updateToggleItemFromByte(segment, "lightarrow", 0x8011A644 + 16)
        updateToggleItemFromByte(segment, "nayrus"    , 0x8011A644 + 17)

        -- check if the king moved
        if not KING_ZORA_MOVED then
            local major_offset = 0x3
            local bitmask = 0x1 << 0x3
            local event_address = ADDR_EVENT_CONTEXT + 0x2 * major_offset;
            local data = LiveReadU16(event_address)
            KING_ZORA_MOVED = (data & bitmask ~= 0)
        end
        HAS_RUTO_BOTTLE = false -- used to ensure ruto's letter is in a bottle
        updateBottleFromByte(segment, "bottle1", 0x8011A656)
        updateBottleFromByte(segment, "bottle2", 0x8011A657)
        updateBottleFromByte(segment, "bottle3", 0x8011A658)
        updateBottleFromByte(segment, "bottle4", 0x8011A659)

        updateAdultTradeSequence(segment) -- 0x8011A65A
        updateChildTradeSequence(segment) -- 0x8011A65B
    end
end

function updateItems2FromMemorySegment(segment)
    if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_ITEM_TRACKING then
        return true
    end

    if not isInGame() then
        return false
    end

    autotracker_debug("read item data 2", DBG_DETAIL)

    InvalidateReadCaches()

    updateBeanCountFromByte(segment, "beans" , 0x8011A66A)

    -- only update this guy from here when beans are not shuffled
    if has('setting_shuffle_beans_no') then
        updateBeanSalesmanFromByte(segment, '@ZR Magic Bean Salesman/Buy Item', 0x8011A66B)
    end

    updateToggleItemFromByteAndFlag(segment, "redtunic"    , 0x8011A66C, 0x02)
    updateToggleItemFromByteAndFlag(segment, "bluetunic"   , 0x8011A66C, 0x04)
    updateToggleItemFromByteAndFlag(segment, "ironboots"   , 0x8011A66C, 0x20)
    updateToggleItemFromByteAndFlag(segment, "hoverboots"  , 0x8011A66C, 0x40)

    updateToggleItemFromByteAndFlag(segment, "kokirisword" , 0x8011A66D, 0x01)
    updateToggleItemFromByteAndFlag(segment, "mastersword" , 0x8011A66D, 0x02)
    updateToggleItemFromByteAndFlag(segment, "dekushield"  , 0x8011A66D, 0x10)
    updateToggleItemFromByteAndFlag(segment, "hylianshield", 0x8011A66D, 0x20)
    updateToggleItemFromByteAndFlag(segment, "mirrorshield", 0x8011A66D, 0x40)
end

function updateQuestFromMemorySegment(segment)
    if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_ITEM_TRACKING then
        return true
    end

    if not isInGame() then
        return false
    end

    autotracker_debug("read quest data", DBG_DETAIL)

    InvalidateReadCaches()

    updateProgressiveSticks(segment)    -- 0x8011A671
    updateProgressiveNuts(segment)      -- 0x8011A671
    updateProgressiveSlingshot(segment) -- 0x8011A672
    updateProgressiveScale(segment)     -- 0x8011A672
    updateProgressiveWallet(segment)    -- 0x8011A672
    updateProgressiveStrength(segment)  -- 0x8011A673
    updateProgressiveBombs(segment)     -- 0x8011A673
    updateProgressiveBow(segment)       -- 0x8011A673

    updateSongFromByteAndFlag(segment      , "time"      , 0x8011A675, 0x01)
    updateSongFromByteAndFlag(segment      , "storm"     , 0x8011A675, 0x02)
    updateToggleItemFromByteAndFlag(segment, "agony"     , 0x8011A675, 0x20)
    updateToggleItemFromByteAndFlag(segment, "gerudocard", 0x8011A675, 0x40)

    updateSongFromByteAndFlag(segment      , "serenade"  , 0x8011A676, 0x01)
    updateSongFromByteAndFlag(segment      , "requiem"   , 0x8011A676, 0x02)
    updateSongFromByteAndFlag(segment      , "nocturne"  , 0x8011A676, 0x04)
    updateSongFromByteAndFlag(segment      , "prelude"   , 0x8011A676, 0x08)
    updateSongFromByteAndFlag(segment      , "lullaby"   , 0x8011A676, 0x10)
    updateSongFromByteAndFlag(segment      , "epona"     , 0x8011A676, 0x20)
    updateSongFromByteAndFlag(segment      , "saria"     , 0x8011A676, 0x40)
    updateSongFromByteAndFlag(segment      , "sun"       , 0x8011A676, 0x80)

    --updateToggleItemFromByteAndFlag(segment, "forestmed" , 0x8011A677, 0x01)
    --updateToggleItemFromByteAndFlag(segment, "firemed"   , 0x8011A677, 0x02)
    --updateToggleItemFromByteAndFlag(segment, "watermed"  , 0x8011A677, 0x04)
    --updateToggleItemFromByteAndFlag(segment, "spiritmed" , 0x8011A677, 0x08)
    --updateToggleItemFromByteAndFlag(segment, "shadowmed" , 0x8011A677, 0x10)
    --updateToggleItemFromByteAndFlag(segment, "lightmed"  , 0x8011A677, 0x20)
    updateSongFromByteAndFlag(segment, "minuet"    , 0x8011A677, 0x40)
    updateSongFromByteAndFlag(segment, "bolero"    , 0x8011A677, 0x80)

    -- only for keysanity variant
    if HAS_KEYS then
        updateToggleItemFromByteAndFlag(segment, "forestboss", 0x8011A67B, 0x01)
        updateToggleItemFromByteAndFlag(segment, "fireboss"  , 0x8011A67C, 0x01)
        updateToggleItemFromByteAndFlag(segment, "waterboss" , 0x8011A67D, 0x01)
        updateToggleItemFromByteAndFlag(segment, "spiritboss", 0x8011A67E, 0x01)
        updateToggleItemFromByteAndFlag(segment, "shadowboss", 0x8011A67F, 0x01)
        updateToggleItemFromByteAndFlag(segment, "gcboss"    , 0x8011A682, 0x01)
    end
end

function updateKeysFromMemorySegment(segment)
    if has('setting_racemode_on') or not AUTOTRACKER_ENABLE_ITEM_TRACKING or not isInGame() then
        return true
    end

    autotracker_debug("read key data", DBG_DETAIL)

    InvalidateReadCaches()

    -- only for keysanity variant
    if HAS_KEYS then
        updateSmallKeysFromByte(segment, "forestsmall"       , 0x8011A68F)
        updateSmallKeysFromByte(segment, "firesmall"         , 0x8011A690)
        updateSmallKeysFromByte(segment, "watersmall"        , 0x8011A691)
        updateSmallKeysFromByte(segment, "spiritsmall"       , 0x8011A692)
        updateSmallKeysFromByte(segment, "shadowsmall"       , 0x8011A693)
        updateSmallKeysFromByte(segment, "botwsmall"         , 0x8011A694)
        updateSmallKeysFromByte(segment, "gtgsmall"          , 0x8011A697)
        updateSmallKeysFromByte(segment, "gfsmall"           , 0x8011A698)
        updateSmallKeysFromByte(segment, "gcsmall"           , 0x8011A699)
    end

    updateConsumableItemFromByte(segment, "skulltula"    , 0x8011A6A1)
end
