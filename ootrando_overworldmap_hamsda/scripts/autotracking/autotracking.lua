--[[
========================
===== AUTOTRACKING =====
========================

This file defines most global variables used in the autotracking scripts,
as well as all memory watches assigned to EmoTracker.

]]

DBG_ERROR  = 0
DBG_NORMAL = 1
DBG_DETAIL = 2

-- Configuration --------------------------------------
AUTOTRACKER_DEBUG_LEVEL = DBG_NORMAL
-------------------------------------------------------

print("")
print("Active Auto-Tracker Configuration")
print("---------------------------------------------------------------------")
print("Enable Item Tracking:     ", AUTOTRACKER_ENABLE_ITEM_TRACKING)
print("Enable Location Tracking: ", AUTOTRACKER_ENABLE_LOCATION_TRACKING)
print("Debug level:              ", AUTOTRACKER_DEBUG_LEVEL)
print("---------------------------------------------------------------------")
print("")

function autotracker_started()
    -- Invoked when the auto-tracker is activated/connected
end

function autotracker_debug(str, level)
    if level == nil then level = DBG_NORMAL end
    if AUTOTRACKER_DEBUG_LEVEL >= level then
        print(str)
    end
end

U8_READ_CACHE = 0
U8_READ_CACHE_ADDRESS = 0

U16_READ_CACHE = 0
U16_READ_CACHE_ADDRESS = 0

U32_READ_CACHE = 0
U32_READ_CACHE_ADDRESS = 0

function InvalidateReadCaches()
    U8_READ_CACHE_ADDRESS = 0
    U16_READ_CACHE_ADDRESS = 0
    U32_READ_CACHE_ADDRESS = 0
end

-- The standard read functions should be used whenever possible, to read from the cached
-- memory space supplied during the memory watch callback function
function ReadU8(segment, address)
    if U8_READ_CACHE_ADDRESS ~= address then
        U8_READ_CACHE = segment:ReadUInt8(address)
        U8_READ_CACHE_ADDRESS = address
    end

    return U8_READ_CACHE
end

function ReadU16(segment, address)
    if U16_READ_CACHE_ADDRESS ~= address then
        local cache = segment:ReadUInt16(address) -- returns little endian
        -- put it in big endian
        U16_READ_CACHE = 0
        U16_READ_CACHE = U16_READ_CACHE + ((cache & 0x00FF) << 8);
        U16_READ_CACHE = U16_READ_CACHE + ((cache & 0xFF00) >> 8);
        U16_READ_CACHE_ADDRESS = address
    end

    return U16_READ_CACHE
end

function ReadU32(segment, address)
    if U32_READ_CACHE_ADDRESS ~= address then
        local cache = segment:ReadUInt16(address+0x2) * 0x10000 + segment:ReadUInt16(address) -- returns little endian
        -- put it in big endian
        U32_READ_CACHE = 0
        U32_READ_CACHE = U32_READ_CACHE + ((cache & 0x000000FF) << 24);
        U32_READ_CACHE = U32_READ_CACHE + ((cache & 0xFF000000) >> 24);
        U32_READ_CACHE = U32_READ_CACHE + ((cache & 0x0000FF00) << 8);
        U32_READ_CACHE = U32_READ_CACHE + ((cache & 0x00FF0000) >> 8);
        U32_READ_CACHE_ADDRESS = address
    end

    return U32_READ_CACHE
end

-- The live read functions should be used only when absolutely necessary, when you have
-- to read some memory address outside of what is provided by the memory watch
function LiveReadU8(address)
    return AutoTracker:ReadU8(address)
end

function LiveReadU16(address)
    return AutoTracker:ReadU16(address) -- returns big endian
end

-- WARNING: this operation is not atomic
function LiveReadU32(address)
    return LiveReadU16(address) * 0x10000 + LiveReadU16(address+0x2)
end

-- Should return true if the information currently stored in RAM should be used
-- to update the tracker. Return false on title screen, etc.
function isInGame()
    --[[ 8011B92C is game mode:     8011A5EC is validation string:
            0 is normal gameplay        reads ZELDAZ if a file is loaded
            1 is title screen
            2 is file select
            3 is horseback game     ]]
    local gameMode = AutoTracker:ReadU8(0x8011B92F)
    -- game mode indicates normal play
    if gameMode ~= 0 and gameMode ~= 3 then
        return false
    -- validation string is not present, no file is loaded
    elseif AutoTracker:ReadU8(0x8011A5EC) == 0 then
        return false
    -- we must be in game, so RAM is safe to read
    else
        return true
    end
end

SCENE_SIZE = 0x1C

-- Global context addresses
ADDR_CURRENT_SCENE_INDEX      = 0x801C8544 -- u16
ADDR_CURRENT_SWITCH_FLAGS     = 0x801CA1C8 -- u32
ADDR_CURRENT_CHEST_FLAGS      = 0x801CA1D8 -- u32
ADDR_CURRENT_COLLECTION_FLAGS = 0x801CA1E4 -- u32

-- Save context addresses
ADDR_SAVE_CONTEXT = 0x8011A5D0
ADDR_BIGGORON_SAVED  = ADDR_SAVE_CONTEXT + 0x072 --0x11A642
ADDR_SCENE_FLAGS     = ADDR_SAVE_CONTEXT + 0x0D4 --0x11A6A4
ADDR_SHOP_CONTEXT    = ADDR_SAVE_CONTEXT + 0x5B4 --0x11AB84
ADDR_TRIFORCE_PIECES = ADDR_SCENE_FLAGS  + SCENE_SIZE * 0x48 + 0x10 -- 0x11AE94
ADDR_SKULLTULA_FLAGS = ADDR_SAVE_CONTEXT + 0xE9C --0x11B46C
ADDR_BIGPOE_POINTS   = ADDR_SAVE_CONTEXT + 0xEBC --0x11B48C
ADDR_FISHING_CONTEXT = ADDR_SAVE_CONTEXT + 0xEC0 --0x11B490
ADDR_EVENT_CONTEXT   = ADDR_SAVE_CONTEXT + 0xED4 --0x11B4A4
ADDR_ITEM_GET_INF    = ADDR_SAVE_CONTEXT + 0xEF0 --0x11B4C0
ADDR_INF_TABLE       = ADDR_SAVE_CONTEXT + 0xEF8 --0x11B4C8

-- State variables to help keep track of some things
KING_ZORA_MOVED = false
HAS_RUTO_BOTTLE = false

CHICKEN_SHOWN_TO_TALON = false
LETTER_SHOWN_TO_GUARD  = false
SOLD_MASK_KEATON     = false
SOLD_MASK_SKULL      = false
SOLD_MASK_SPOOKY     = false
SOLD_MASK_BUNNY      = false
EARNED_MASK_OF_TRUTH = false

-- cache for held key and unlocked door counts, used to ensure accurate key count for keysanity
KEY_CACHE = {}
KEY_CACHE['forestsmall'] = {held=0, used=0}
KEY_CACHE['firesmall']   = {held=0, used=0}
KEY_CACHE['watersmall']  = {held=0, used=0}
KEY_CACHE['shadowsmall'] = {held=0, used=0}
KEY_CACHE['spiritsmall'] = {held=0, used=0}
KEY_CACHE['gcsmall']     = {held=0, used=0}
KEY_CACHE['gtgsmall']    = {held=0, used=0}
KEY_CACHE['gfsmall']     = {held=0, used=0}
KEY_CACHE['botwsmall']   = {held=0, used=0}

-- array of beans that were planted, used to ensure accurate bean count in inventory
BEANS_USED = {}

-- Memory watches
ScriptHost:AddMemoryWatch("OOT Magic Meter Data", 0x8011A602, 0x01, updateMagicMeterFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Biggoron Data"   , 0x8011A60E, 0x01, updateBiggoronFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Item Data 1"     , 0x8011A642, 0x1A, updateItems1FromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Item Data 2"     , 0x8011A66A, 0x4 , updateItems2FromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Quest Data"      , 0x8011A671, 0x12 , updateQuestFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Key Data"        , 0x8011A68F, 0x13, updateKeysFromMemorySegment)

ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 1", 0x8011A6A4, 0x054, updateFromSaveContextDungeon1) -- 0x00, 0x01, 0x02
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 2", 0x8011A6F8, 0x054, updateFromSaveContextDungeon2) -- 0x03, 0x04, 0x05
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 3", 0x8011A74C, 0x054, updateFromSaveContextDungeon3) -- 0x06, 0x07, 0x08
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 4", 0x8011A7A0, 0x054, updateFromSaveContextDungeon4) -- 0x09, 0x0A, 0x0B
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 5", 0x8011A7F4, 0x380, updateFromSaveContextDungeon5) -- 0x0C thru 0x2B

ScriptHost:AddMemoryWatch("OOT Save Context Shops", ADDR_SHOP_CONTEXT, 0x4, updateShopsFromSaveContext) -- just the shop bytes in scene 2C

ScriptHost:AddMemoryWatch("OOT Save Context Overworld 1", 0x8011AC54, 0x2BC, updateFromSaveContextOverworld1) -- 0x34 thru 0x4C
ScriptHost:AddMemoryWatch("OOT Save Context Overworld 2", 0x8011AF10, 0x2A0, updateFromSaveContextOverworld2) -- 0x4D thru 0x64

ScriptHost:AddMemoryWatch("OOT Skulltula Data", 0x8011B46C, 0x18, updateSkulltulasFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT INF Tables", 0x8011B48C, 0x78, updateEventsFromMemorySegment)

ScriptHost:AddMemoryWatch("OOT Global Context Switch Data"     , ADDR_CURRENT_SWITCH_FLAGS    , 0x4, updateSwitchesFromGlobalContext)
ScriptHost:AddMemoryWatch("OOT Global Context Chest Data"      , ADDR_CURRENT_CHEST_FLAGS     , 0x4, updateChestsFromGlobalContext)
ScriptHost:AddMemoryWatch("OOT Global Context Collectible Data", ADDR_CURRENT_COLLECTION_FLAGS, 0x4, updateCollectionsFromGlobalContext)

