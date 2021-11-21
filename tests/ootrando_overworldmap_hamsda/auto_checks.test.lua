_G._TEST = true

require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_globals'
require './ootrando_overworldmap_hamsda/scripts/autotracking/auto_checks'
require './tests/ootrando_overworldmap_hamsda/Mock'

local ADDR_HELD_BEANS = 0x8011A66A

-- helper functions

local function setPlantNo()
  _G.hasCodes['setting_plant_no'] = true
end

-- tests

describe("auto_checks.lua", function()

  describe("bean counter", function()

    before_each(function()
      _G.Tracker     = MockTracker:create()
      _G.AutoTracker = MockAutoTracker:create()
      segment = MockSegment:create()

      resetGlobalVariables()
      _G.hasCodes = {}
    end)

    it('adds held and planted beans together when setting_plant_no is used', function()
      setPlantNo()
      -- counter currently shows 2
      local mockitem = {}
      mockitem.AcquiredCount = 2
      Tracker:AddObjectForCode(mockitem, 'beans')
      -- we are holding two
      AutoTracker:SetData(ADDR_HELD_BEANS, 0x02, UINT_8)
      -- we planted one
      _updatePlantedBeanFromDataAndFlags(0x08, 'bean_graveyard_no', {0x3})

      -- counter should read three
      assert.are.equal(3, Tracker:FindObjectForCode('beans').AcquiredCount)

    end)

    it('doesn\'t add held and planted beans together when setting_plant_no is not used', function()
      -- counter currently shows 2
      local mockitem = {}
      mockitem.AcquiredCount = 2
      Tracker:AddObjectForCode(mockitem, 'beans')
      -- we are holding two
      AutoTracker:SetData(ADDR_HELD_BEANS, 0x02, UINT_8)
      -- we planted one
      _updatePlantedBeanFromDataAndFlags(0x08, 'bean_graveyard_no', {0x3})

      -- counter should read two
      assert.are.equal(2, Tracker:FindObjectForCode('beans').AcquiredCount)

    end)

    it('clears "plant" check when bean is planted', function()
      local data = 0x08
      local code = 'bean_graveyard_no'
      local flags = {0x3}
      local mockitem = {}
      mockitem.CurrentStage = 0
      Tracker:AddObjectForCode(mockitem, code)

      _updatePlantedBeanFromDataAndFlags(data, code, flags)

      assert.are.equal(1, Tracker:FindObjectForCode(code).CurrentStage)
    end)
  end)
end)
