UINT_8  = 1
UINT_16 = 2
UINT_32 = 4

function autotracker_debug(str, level)
  -- do nothing
end

hasCodes = {}

function has(code)
  if hasCodes[code] == true then
    return true
  else
    return false
  end
end

---------------
-- MockTracker
---------------
MockTracker = {}
MockTracker.__index = MockTracker

function MockTracker:create()
  local tracker = {}
  setmetatable(tracker, MockTracker)
  tracker.objects = {}
  return tracker
end

function MockTracker:AddObjectForCode(object, code)
  self.objects[code] = object
end

function MockTracker:FindObjectForCode(code)
  return self.objects[code]
end

---------------
-- MockAutoTracker
---------------
MockAutoTracker = {}
MockAutoTracker.__index = MockAutoTracker

function MockAutoTracker:create()
  local autotracker = {}
  setmetatable(autotracker,MockAutoTracker)
	autotracker.memory = {}
  return autotracker
end

function MockAutoTracker:SetData(address, data, byteCount)
  local addr = address + byteCount - 1
  for i=byteCount,1,-1
  do
    local byte = data & 0xFF -- grab byte
    data = data >> 8 -- drop that byte
    self.memory[addr] = byte
    addr = addr - 1
  end
end

function MockAutoTracker:ReadU8(address)
	return self.memory[address] or 0x00
end

-- returns big endian
function MockAutoTracker:ReadU16(address)
  local sig1 = self.memory[address] or 0x00
  local sig2 = self.memory[address + 1] or 0x00
  return (sig1 * 0x100) + sig2
end

---------------
-- MockSegment
---------------
MockSegment = {}
MockSegment.__index = MockSegment

function MockSegment:create()
  local segment = {}
  setmetatable(segment,MockSegment)
  segment.memory = {}
  return segment
end

function MockSegment:SetData(address, data, byteCount)
  local addr = address + byteCount - 1
  for i=byteCount,1,-1
  do
    local byte = data & 0xFF -- grab byte
    data = data >> 8 -- drop that byte
    self.memory[addr] = byte
    addr = addr - 1
  end
end

function MockSegment:ReadUInt8(address)
	return self.memory[address] or 0x00
end

-- returns little endian
function MockSegment:ReadUInt16(address)
  -- flip it around to little endian
  local sig1 = self.memory[address] or 0x00
  local sig2 = self.memory[address + 1] or 0x00
  return (sig2 * 0x100) + sig1
end

-- no ReadUInt32 function provided by real segments
