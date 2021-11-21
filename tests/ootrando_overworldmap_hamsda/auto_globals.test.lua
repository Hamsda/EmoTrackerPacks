require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_globals'
require './tests/ootrando_overworldmap_hamsda/Mock'

describe("auto_globals.lua", function()

  before_each(function()
    _G.Tracker     = MockTracker:create()
    _G.AutoTracker = MockAutoTracker:create()
  end)

  it('ReadU8 returns expected data', function()
    local segment = MockSegment:create()
    local address = 0x80110060
    local data    = 0x0802
    segment:SetData(address, data, UINT_16)

    local expected = 0x08
    local actual   = ReadU8(segment, address)
  
    assert.are.equal(expected, actual)
  end)

  it('ReadU16 swaps endianness', function()
    local segment = MockSegment:create()
    local address = 0x80110060
		local data    = 0x08001206
    segment:SetData(address, data, UINT_32)

    local expected = 0x0800
    local actual   = ReadU16(segment, address)
  
    assert.are.equal(expected, actual)
  end)

  it('ReadU32 swaps endianness', function()
    local segment = MockSegment:create()
    local address = 0x80110060
		local data    = 0x08161210
    segment:SetData(address, data, UINT_32)

    local expected = data
    local actual   = ReadU32(segment, address)
  
    assert.are.equal(expected, actual)
  end)

  it('LiveReadU8 works', function()
    local address = 0x80110060
    local data = 0x1A
    AutoTracker:SetData(address, data, UINT_8)

    local expected = data
    local actual = LiveReadU8(address)

    assert.are.equal(expected, actual)
  end)
end)
