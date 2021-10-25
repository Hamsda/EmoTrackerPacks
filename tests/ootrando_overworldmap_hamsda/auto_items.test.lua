_G._TEST = true

require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_globals'
require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_items'
require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_events'
require './tests/ootrando_overworldmap_hamsda/Mock'

local ADDR_CHILDTRADESLOT = 0x8011A65B

local VAL_EGG     = 0x21
local VAL_CHICKEN = 0x22
local VAL_LETTER  = 0x23
local VAL_SOLDOUT = 0x2C
local VAL_KEATON  = 0x24
local VAL_SKULL   = 0x25
local VAL_SPOOKY  = 0x26
local VAL_BUNNY   = 0x27
local VAL_TRUTH   = 0x2B

local STAGE_TRUTH       = 13
local STAGE_BUNNY_SOLD  = 12
local STAGE_BUNNY       = 11
local STAGE_SPOOKY_SOLD = 10
local STAGE_SPOOKY      =  9
local STAGE_SKULL_SOLD  =  8
local STAGE_SKULL       =  7
local STAGE_KEATON_SOLD =  6
local STAGE_KEATON      =  5
local STAGE_LETTER_SOLD =  4
local STAGE_LETTER      =  3
local STAGE_CHICKEN     =  2
local STAGE_EGG         =  1
local STAGE_NONE        =  0

-- helper functions
local function setChildItem(segment, byte)
  -- set byte for child trade slot
  local address = ADDR_CHILDTRADESLOT -- item held in the child trade slot
  segment:SetData(address, byte, UINT_8)

  -- set up mock item
  mockitem = {}
  mockitem.CurrentStage = 200
  Tracker:AddObjectForCode(mockitem, 'kidtrade')
end

local function setKakClosed()
  _G.hasCodes['setting_kak_closed'] = true
end

local function setTalonRanAway()
  local talon_offset = ADDR_EVENT_CONTEXT + 0x2 * 0x1;
  local data = 0x0010
  AutoTracker:SetData(talon_offset, data, UINT_16)
end

local function setKakGuardShownLetter()
  local guard_offset = ADDR_INF_TABLE + 0xF;
  local data = 0x40
  AutoTracker:SetData(guard_offset, data, UINT_8)
end

local function setMaskFlags(flags)
  local mask_offset = ADDR_ITEM_GET_INF + 0x6;
  AutoTracker:SetData(mask_offset, flags, UINT_8)
end

local function assert_childItemStage(stage)
  assert.are.equal(stage, Tracker:FindObjectForCode('kidtrade').CurrentStage)
end

describe("auto_items.lua", function()

  describe("child trade", function()
  
    before_each(function()
      _G.Tracker     = MockTracker:create()
      _G.AutoTracker = MockAutoTracker:create()
      segment = MockSegment:create()

      resetGlobalVariables()
      _G.hasCodes = {}
    end)
  
    -- first, some basic tests. show what we have

    it('shows egg if we have it', function()
      setChildItem(segment, VAL_EGG)
      
      _updateChildTradeSequence(segment)
      
      assert_childItemStage(STAGE_EGG)
    end)
  
    it('shows egg if we have chicken and talon is asleep', function()
      setChildItem(segment, VAL_CHICKEN)
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_EGG)
    end)
  
    it('shows chicken if we have chicken and talon ran away', function()
      setChildItem(segment, VAL_CHICKEN)
      setTalonRanAway()
  
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_CHICKEN)
      assert.is_true(_G.CHICKEN_SHOWN_TO_TALON)
    end)

    it('shows letter if we have it', function()
      setChildItem(segment, VAL_LETTER)
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_LETTER)
    end)

    it('shows letter if kak is closed but haven\'t spoken to guard', function()
      setChildItem(segment, VAL_LETTER)
      setKakClosed()
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_LETTER)
    end)

    it('shows sold out if we spoke to guard with kak closed', function()
      setChildItem(segment, VAL_LETTER)
      setKakClosed()
      setKakGuardShownLetter()
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_LETTER_SOLD)
      assert.is_true(_G.LETTER_SHOWN_TO_GUARD)
    end)

    it('shows letter if kak is not closed even if we spoke to guard', function()
      setChildItem(segment, VAL_LETTER)
      setKakGuardShownLetter()

      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_LETTER)
      assert.is_true(_G.LETTER_SHOWN_TO_GUARD)
    end)

    it('shows keaton mask if we have it', function()
      setChildItem(segment, VAL_KEATON)

      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_KEATON)
    end)

    it('shows sold out if we sold keaton', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x01)
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_KEATON_SOLD)
    end)

    it('updates cache if we sold keaton', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x01)
      
      _updateChildTradeSequence(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_false(_G.SOLD_MASK_SKULL)
      assert.is_false(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows skull mask if we have it', function()
      setChildItem(segment, VAL_SKULL)

      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_SKULL)
    end)

    it('shows sold out if we sold skull', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x03)
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_SKULL_SOLD)
    end)

    it('updates cache if we sold skull', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x03)
      
      _updateChildTradeSequence(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_true(_G.SOLD_MASK_SKULL)
      assert.is_false(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows spooky mask if we have it', function()
      setChildItem(segment, VAL_SPOOKY)

      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_SPOOKY)
    end)

    it('shows sold out if we sold spooky', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x07)
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_SPOOKY_SOLD)
    end)

    it('updates cache if we sold spooky', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x07)
      
      _updateChildTradeSequence(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_true(_G.SOLD_MASK_SKULL)
      assert.is_true(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows bunny mask if we have it', function()
      setChildItem(segment, VAL_BUNNY)

      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_BUNNY)
    end)

    it('shows sold out if we sold bunny', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x0F)
      
      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_BUNNY_SOLD)
    end)

    it('updates cache if we sold bunny', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x0F)
      
      _updateChildTradeSequence(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_true(_G.SOLD_MASK_SKULL)
      assert.is_true(_G.SOLD_MASK_SPOOKY)
      assert.is_true(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows mask of truth if we earned it', function()
      setChildItem(segment, VAL_TRUTH)
      setMaskFlags(0x8F)

      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_TRUTH)
    end)

    it('doesn\'t perform unnecessary live reads', function()
      setChildItem(segment, VAL_KEATON)
      setMaskFlags(0x8F)
      
      _updateChildTradeSequence(segment)

      -- these flags shouldn't be updated
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_SKULL)
      assert.is_false(_G.SOLD_MASK_KEATON)
    end)

    --  now test some special cases

    it('shows nothing if we have it, even with mask sequence completed', function()
      setChildItem(segment, 0xFF)
      setKakGuardShownLetter()
      setMaskFlags(0x8F)
      _G.EARNED_MASK_OF_TRUTH = true
      _G.SOLD_MASK_BUNNY  = true
      _G.SOLD_MASK_SPOOKY = true
      _G.SOLD_MASK_SKULL  = true
      _G.SOLD_MASK_KEATON = true

      _updateChildTradeSequence(segment)

      assert_childItemStage(STAGE_NONE)
    end)

    -- show the egg and chicken stages even if the mask trading sequence starts as completed
    it('shows egg if we have it, even with mask sequence completed', function()
      setChildItem(segment, VAL_EGG)
      setKakGuardShownLetter()
      setMaskFlags(0x8F)
      _G.EARNED_MASK_OF_TRUTH = true
      _G.SOLD_MASK_BUNNY  = true
      _G.SOLD_MASK_SPOOKY = true
      _G.SOLD_MASK_SKULL  = true
      _G.SOLD_MASK_KEATON = true
      
      _updateChildTradeSequence(segment)

      assert.are.equal(STAGE_EGG, Tracker:FindObjectForCode('kidtrade').CurrentStage)
    end)

    it('shows egg if we have chicken and talon is asleep, even with mask sequence completed', function()
      setChildItem(segment, VAL_CHICKEN)
      setKakGuardShownLetter()
      setMaskFlags(0x8F)
      _G.EARNED_MASK_OF_TRUTH = true
      _G.SOLD_MASK_BUNNY  = true
      _G.SOLD_MASK_SPOOKY = true
      _G.SOLD_MASK_SKULL  = true
      _G.SOLD_MASK_KEATON = true
      
      _updateChildTradeSequence(segment)

      assert.are.equal(STAGE_EGG, Tracker:FindObjectForCode('kidtrade').CurrentStage)
    end)

    it('shows chicken if we have chicken and talon ran away, even with mask sequence completed', function()
      setChildItem(segment, VAL_CHICKEN)
      setTalonRanAway()
      setKakGuardShownLetter()
      setMaskFlags(0x8F)
      _G.EARNED_MASK_OF_TRUTH = true
      _G.SOLD_MASK_BUNNY  = true
      _G.SOLD_MASK_SPOOKY = true
      _G.SOLD_MASK_SKULL  = true
      _G.SOLD_MASK_KEATON = true
  
      _updateChildTradeSequence(segment)

      assert.are.equal(STAGE_CHICKEN, Tracker:FindObjectForCode('kidtrade').CurrentStage)
    end)

    -- the stage should jump straight from chicken to mask of truth when letter is acquired
    it('overrides letter with mask of truth if the sequence is completed', function()
      setChildItem(segment, VAL_LETTER)
      setTalonRanAway()
      setKakGuardShownLetter()
      setMaskFlags(0x8F)
      _G.CHICKEN_SHOWN_TO_TALON = true
      _G.EARNED_MASK_OF_TRUTH = true
      _G.SOLD_MASK_BUNNY = true
      _G.SOLD_MASK_SPOOKY = true
      _G.SOLD_MASK_SKULL = true
      _G.SOLD_MASK_KEATON = true
      
      _updateChildTradeSequence(segment)
      assert.are.equal(STAGE_TRUTH, Tracker:FindObjectForCode('kidtrade').CurrentStage)
    end)

    -- test the test framework itself

    it('globals are reset between tests', function()
      assert.is_false(_G.CHICKEN_SHOWN_TO_TALON)
      assert.is_false(_G.LETTER_SHOWN_TO_GUARD)
      assert.is_false(_G.SOLD_MASK_KEATON)
      assert.is_false(_G.SOLD_MASK_SKULL)
      assert.is_false(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('segment is erased between tests', function()
      assert.are.equal(0x0, segment:ReadUInt8(ADDR_CHILDTRADESLOT))
    end)

    it('autotracker is erased between tests', function()
      local talon_offset = ADDR_EVENT_CONTEXT + 0x2 * 0x1;
      local guard_offset = ADDR_INF_TABLE + 0xF;
      assert.are.equal(0x0, AutoTracker:ReadU16(talon_offset))
      assert.are.equal(0x0, AutoTracker:ReadU8(guard_offset))
    end)

    it('hasCodes is erased between tests', function()
      assert.is_false(has('setting_kak_closed'))
    end)
  end)
end)