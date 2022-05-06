--[[
========================
===== AUTOTRACKING =====
========================

This file defines most global variables used in the autotracking scripts,
as well as all memory watches assigned to EmoTracker.

]]

-- Configuration --------------------------------------
AUTOTRACKER_DEBUG_LEVEL = DBG_NORMAL
-------------------------------------------------------

function autotracker_debug(str, level)
  if level == nil then level = DBG_NORMAL end
  if AUTOTRACKER_DEBUG_LEVEL >= level then
    print(str)
  end
end

print("")
print("Active Auto-Tracker Configuration")
print("---------------------------------------------------------------------")
print("Enable Item Tracking:     ", AUTOTRACKER_ENABLE_ITEM_TRACKING)
print("Enable Location Tracking: ", AUTOTRACKER_ENABLE_LOCATION_TRACKING)
print("Debug level:              ", AUTOTRACKER_DEBUG_LEVEL)
print("---------------------------------------------------------------------")
print("")

-- Memory watches
ScriptHost:AddMemoryWatch("Rando FREE_SCARECROW_ENABLED"  , 0x80400CBC, 0x01, updateScarecrow)
ScriptHost:AddMemoryWatch("OOT Magic Meter Data"          , 0x8011A602, 0x01, updateMagicMeterFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Biggoron Data"             , 0x8011A60E, 0x01, updateBiggoronFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Item Data 1"               , 0x8011A642, 0x1A, updateItems1FromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Item Data 2"               , 0x8011A66A, 0x4 , updateItems2FromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Quest Data"                , 0x8011A671, 0x12, updateQuestFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT Key Data"                  , 0x8011A68F, 0x13, updateKeysFromMemorySegment)

ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 1", 0x8011A6A4, 0x054, updateFromSaveContextDungeon1) -- 0x00, 0x01, 0x02
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 2", 0x8011A6F8, 0x054, updateFromSaveContextDungeon2) -- 0x03, 0x04, 0x05
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 3", 0x8011A74C, 0x054, updateFromSaveContextDungeon3) -- 0x06, 0x07, 0x08
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 4", 0x8011A7A0, 0x054, updateFromSaveContextDungeon4) -- 0x09, 0x0A, 0x0B
ScriptHost:AddMemoryWatch("OOT Save Context Dungeons 5", 0x8011A7F4, 0x380, updateFromSaveContextDungeon5) -- 0x0C thru 0x2B

ScriptHost:AddMemoryWatch("OOT Save Context Shops", ADDR_SHOP_CONTEXT, 0x4, updateShopsFromSaveContext) -- just the shop bytes in scene 2C

ScriptHost:AddMemoryWatch("OOT Save Context Overworld 1", 0x8011AC54, 0x2BC, updateFromSaveContextOverworld1) -- 0x34 thru 0x4C
ScriptHost:AddMemoryWatch("OOT Save Context Overworld 2", 0x8011AF10, 0x2A0, updateFromSaveContextOverworld2) -- 0x4D thru 0x64

ScriptHost:AddMemoryWatch("OOT Skulltula Data", 0x8011B46C, 0x18, updateSkulltulasFromMemorySegment)
ScriptHost:AddMemoryWatch("OOT INF Tables"    , 0x8011B48C, 0x78, updateEventsFromMemorySegment)

ScriptHost:AddMemoryWatch("OOT Global Context Switch Data"     , ADDR_CURRENT_SWITCH_FLAGS    , 0x4, updateSwitchesFromGlobalContext)
ScriptHost:AddMemoryWatch("OOT Global Context Chest Data"      , ADDR_CURRENT_CHEST_FLAGS     , 0x4, updateChestsFromGlobalContext)
ScriptHost:AddMemoryWatch("OOT Global Context Collectible Data", ADDR_CURRENT_COLLECTION_FLAGS, 0x4, updateCollectionsFromGlobalContext)
