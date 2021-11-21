require './tests/ootrando_overworldmap_hamsda/Mock'

describe("MockSegment.lua", function()

  it('sets UINT_8 correctly', function()
    local segment = MockSegment:create()
    local address = 0x12008000
    local data = 0x04
    segment:SetData(address, data, UINT_8)

    local expected = data
    local actual   = segment.memory[address]

    assert.are.equal(expected, actual)
  end)

  it('sets UINT_16 correctly', function()
    local segment = MockSegment:create()
    local address = 0x12008000
    local data = 0x0412
    segment:SetData(address, data, UINT_16)

    assert.are.equal(0x04, segment.memory[address])
    assert.are.equal(0x12, segment.memory[address+1])
  end)

  it('sets UINT_32 correctly', function()
    local segment = MockSegment:create()
    local address = 0x12008000
    local data = 0x04123270
    segment:SetData(address, data, UINT_32)

    assert.are.equal(0x04, segment.memory[address])
    assert.are.equal(0x12, segment.memory[address+1])
    assert.are.equal(0x32, segment.memory[address+2])
    assert.are.equal(0x70, segment.memory[address+3])
  end)

  it('handles empty bytes', function()
    local segment = MockSegment:create()
    local address = 0x12008000
    local data = 0x04000070
    segment:SetData(address, data, UINT_32)

    assert.are.equal(0x04, segment.memory[address])
    assert.are.equal(0x00, segment.memory[address+1])
    assert.are.equal(0x00, segment.memory[address+2])
    assert.are.equal(0x70, segment.memory[address+3])
  end)
end)
