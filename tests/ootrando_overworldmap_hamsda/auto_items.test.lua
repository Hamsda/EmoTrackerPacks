_G._TEST = true

require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_globals'
require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_items'
require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_events'
require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_checks'
require './ootrando_overworldmap_hamsda/scripts/user_settings'
require './tests/ootrando_overworldmap_hamsda/Mock'

local ADDR_CHILDTRADESLOT = 0x8011A65B

local VAL_NONE     =0xFF
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
  if segment then
    segment:SetData(address, byte, UINT_8)
  else
    AutoTracker:SetData(address, byte, UINT_8)
  end

  -- set up mock item
  local mockitem = {}
  mockitem.CurrentStage = 200
  Tracker:AddObjectForCode(mockitem, 'kidtrade')
end

local function setInGame()
  AutoTracker:SetData(0x8011B92F, 0, UINT_8)
  AutoTracker:SetData(0x8011A5EC, 0x5A, UINT_8)
end

local function setKakClosed()
  _G.hasCodes['setting_kak_closed'] = true
end

local function setTalonRanAway(segment)
  local talon_offset = ADDR_EVENT_CONTEXT + 0x2 * 0x1;
  local data = 0x0010
  if segment then
    segment:SetData(talon_offset, data, UINT_16)
  else
    AutoTracker:SetData(talon_offset, data, UINT_16)
  end
end

local function setKakGuardShownLetter(segment)
  local guard_offset = ADDR_INF_TABLE + 0xF;
  local data = 0x40
  if segment then
    segment:SetData(guard_offset, data, UINT_8)
  else
    AutoTracker:SetData(guard_offset, data, UINT_8)
  end
end

local function setMaskFlags(flags)
  local mask_offset = ADDR_ITEM_GET_INF + 0x6;
  AutoTracker:SetData(mask_offset, flags, UINT_8)
end

local function getChildItemStage()
  local o = Tracker:FindObjectForCode('kidtrade')
  if o then
    return o.CurrentStage
  else
    error('kidtrade object not defined')
  end
end

describe("auto_items.lua", function()

  describe("child trade", function()

    before_each(function()
      _G.Tracker     = MockTracker:create()
      _G.AutoTracker = MockAutoTracker:create()
      segment = MockSegment:create()

      resetGlobalVariables()
      _G.hasCodes = {}
      setInGame()
    end)

    -- first, some basic tests. show what we have

    it('shows egg if we have it', function()
      setChildItem(segment, VAL_EGG)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_EGG, getChildItemStage())
    end)

    it('shows egg if we have chicken and talon is asleep', function()
      setChildItem(segment, VAL_CHICKEN)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_EGG, getChildItemStage())
    end)

    it('shows chicken if we have chicken and talon ran away', function()
      setChildItem(segment, VAL_CHICKEN)
      setTalonRanAway()

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_CHICKEN, getChildItemStage())
      assert.is_true(_G.CHICKEN_SHOWN_TO_TALON)
    end)

    it('shows letter if we have it', function()
      setChildItem(segment, VAL_LETTER)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_LETTER, getChildItemStage())
    end)

    it('shows letter if kak is closed but haven\'t spoken to guard', function()
      setChildItem(segment, VAL_LETTER)
      setKakClosed()

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_LETTER, getChildItemStage())
    end)

    it('shows sold out if we spoke to guard with kak closed', function()
      setChildItem(segment, VAL_LETTER)
      setKakClosed()
      setKakGuardShownLetter()

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_LETTER_SOLD, getChildItemStage())
      assert.is_true(_G.LETTER_SHOWN_TO_GUARD)
    end)

    it('shows letter if kak is not closed even if we spoke to guard', function()
      setChildItem(segment, VAL_LETTER)
      setKakGuardShownLetter()

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_LETTER, getChildItemStage())
      assert.is_true(_G.LETTER_SHOWN_TO_GUARD)
    end)

    it('shows keaton mask if we have it', function()
      setChildItem(segment, VAL_KEATON)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_KEATON, getChildItemStage())
    end)

    it('shows sold out if we sold keaton', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x01)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_KEATON_SOLD, getChildItemStage())
    end)

    it('updates cache if we sold keaton', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x01)

      _updateChildTradeSequenceFromSegment(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_false(_G.SOLD_MASK_SKULL)
      assert.is_false(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows skull mask if we have it', function()
      setChildItem(segment, VAL_SKULL)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_SKULL, getChildItemStage())
    end)

    it('shows sold out if we sold skull', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x03)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_SKULL_SOLD, getChildItemStage())
    end)

    it('updates cache if we sold skull', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x03)

      _updateChildTradeSequenceFromSegment(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_true(_G.SOLD_MASK_SKULL)
      assert.is_false(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows spooky mask if we have it', function()
      setChildItem(segment, VAL_SPOOKY)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_SPOOKY, getChildItemStage())
    end)

    it('shows sold out if we sold spooky', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x07)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_SPOOKY_SOLD, getChildItemStage())
    end)

    it('updates cache if we sold spooky', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x07)

      _updateChildTradeSequenceFromSegment(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_true(_G.SOLD_MASK_SKULL)
      assert.is_true(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows bunny mask if we have it', function()
      setChildItem(segment, VAL_BUNNY)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_BUNNY, getChildItemStage())
    end)

    it('shows sold out if we sold bunny', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x0F)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_BUNNY_SOLD, getChildItemStage())
    end)

    it('updates cache if we sold bunny', function()
      setChildItem(segment, VAL_SOLDOUT)
      setMaskFlags(0x0F)

      _updateChildTradeSequenceFromSegment(segment)

      assert.is_true(_G.SOLD_MASK_KEATON)
      assert.is_true(_G.SOLD_MASK_SKULL)
      assert.is_true(_G.SOLD_MASK_SPOOKY)
      assert.is_true(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
    end)

    it('shows mask of truth if we earned it', function()
      setChildItem(segment, VAL_TRUTH)
      setMaskFlags(0x8F)

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_TRUTH, getChildItemStage())
    end)

    it('doesn\'t perform unnecessary live reads', function()
      setChildItem(segment, VAL_KEATON)
      setMaskFlags(0x8F)

      _updateChildTradeSequenceFromSegment(segment)

      -- these flags shouldn't be updated
      assert.is_false(_G.EARNED_MASK_OF_TRUTH)
      assert.is_false(_G.SOLD_MASK_BUNNY)
      assert.is_false(_G.SOLD_MASK_SPOOKY)
      assert.is_false(_G.SOLD_MASK_SKULL)
      assert.is_false(_G.SOLD_MASK_KEATON)
    end)

    -- test stage advancement

    it('advances stage when we show the chicken to talon', function()
      -- we have the chicken, talon is asleep
      setChildItem(nil    , VAL_CHICKEN) -- sets it for live read
      setChildItem(segment, VAL_CHICKEN) -- sets it for segment read

      updateItems1FromMemorySegment(segment)

      assert.is_false(_G.CHICKEN_SHOWN_TO_TALON)
      assert.are.equal(STAGE_EGG, getChildItemStage())

      -- we have now woken talon
      setTalonRanAway(segment)

      updateEventsFromMemorySegment(segment)

      assert.is_true(_G.CHICKEN_SHOWN_TO_TALON)
      assert.are.equal(STAGE_CHICKEN, getChildItemStage())
    end)

    it('advances stage when we show the letter to the guard', function()
      -- we have the letter, kak is closed, guard has not been spoken to
      setChildItem(nil    , VAL_LETTER) -- sets it for live read
      setChildItem(segment, VAL_LETTER) -- sets it for segment read
      setKakClosed()

      updateItems1FromMemorySegment(segment)

      assert.is_false(_G.LETTER_SHOWN_TO_GUARD)
      assert.are.equal(STAGE_LETTER, getChildItemStage())

      -- we have now spoken to the guard
      setKakGuardShownLetter(segment)

      -- we update from event data because the held item didn't change here and dirty the memory watch
      updateEventsFromMemorySegment(segment)

      assert.is_true(_G.LETTER_SHOWN_TO_GUARD)
      assert.are.equal(STAGE_LETTER_SOLD, getChildItemStage())
    end)

    --  now test some special cases

    it('shows nothing if we have it, even with mask sequence completed', function()
      setChildItem(segment, VAL_NONE)
      setKakGuardShownLetter()
      setMaskFlags(0x8F)
      _G.EARNED_MASK_OF_TRUTH = true
      _G.SOLD_MASK_BUNNY  = true
      _G.SOLD_MASK_SPOOKY = true
      _G.SOLD_MASK_SKULL  = true
      _G.SOLD_MASK_KEATON = true

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_NONE, getChildItemStage())
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

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_EGG, getChildItemStage())
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

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_EGG, getChildItemStage())
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

      _updateChildTradeSequenceFromSegment(segment)

      assert.are.equal(STAGE_CHICKEN, getChildItemStage())
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

      _updateChildTradeSequenceFromSegment(segment)
      assert.are.equal(STAGE_TRUTH, getChildItemStage())
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