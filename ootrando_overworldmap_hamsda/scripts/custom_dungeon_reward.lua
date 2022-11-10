DungeonReward = CustomItem:extend()

local names = {
  "Free Reward",
  "Deku Tree Reward",
  "Dodongos Cavern Reward",
  "Jabu Jabu Reward",
  "Forest Temple Reward",
  "Fire Temple Reward",
  "Water Temple Reward",
  "Spirit Temple Reward",
  "Shadow Temple Reward"
}

local codes = {
  "free",
  "deku",
  "dodongo",
  "jabu",
  "forest",
  "fire",
  "water",
  "spirit",
  "shadow"
}

local rewards = {
  "unknown",
  "stones",
  "forestmed",
  "noct_meds",
  "lacs_meds",
  "lightmed"
}

local images = {
  "images/unknown.png",
  "images/stones.png",
  "images/forestmedallion.png",
  "images/nocturne_medallions.png",
  "images/lacs_medallions.png",
  "images/lightmedallion.png"
}

local quickModeOrder = {6, 3, 4, 4, 5, 5}
local quickModeActive = nil

function DungeonReward:init(number)
  self:createItem(names[number])
  self.number = number
  self.code = codes[number]
  self:setProperty("active", false)
  if number == 1 then
    self:setProperty("active", true)
  end
  self:setProperty("stage", 1)
  self.imageBase = ImageReference:FromPackRelativePath(images[1])
  self.ItemInstance.PotentialIcon = self.imageBase
  self:updateIcon()
end

function DungeonReward:updateIcon()
  if self:getProperty("stage") then
    local imageBase = ImageReference:FromPackRelativePath(images[self:getProperty("stage")])
    if self:getProperty("active") then
      self.ItemInstance.Icon = imageBase
    else
      self.ItemInstance.Icon = ImageReference:FromImageReference(imageBase, "@disabled")
    end
  else
    self.ItemInstance.Icon = self.imageBase
  end
end

function DungeonReward:onLeftClick()
  if self.number == 1 then
    if ALTAR_QUICK_MARK then
      quickModeActive = 1
    else
      if self:getProperty("stage") <= 1 then
        self:setProperty("stage", #rewards)
      else
        self:setProperty("stage", self:getProperty("stage") - 1)
      end
    end
  else
    self:setProperty("active", not self:getProperty("active"))
  end
end

function DungeonReward:onRightClick()
  if self:getProperty("stage") then
    if quickModeActive then
      self:setProperty("stage", quickModeOrder[quickModeActive])
      if quickModeActive >= #quickModeOrder then
        quickModeActive = nil
      else
        quickModeActive = quickModeActive + 1
      end
    else
      if self:getProperty("stage") >= #rewards then
        self:setProperty("stage", 1)
      else
        self:setProperty("stage", self:getProperty("stage") + 1)
      end
    end
  end
end

function DungeonReward:canProvideCode(code)
  if
    self.code and self.code == code or
      self:getProperty("stage") and
        (rewards[self:getProperty("stage")] == code or (self:getProperty("stage") >= 3 and code == "medallions"))
   then
    return true
  end
  return false
end

function DungeonReward:providesCode(code)
  if self:getProperty("active") and self:canProvideCode(code) then
    return 1
  end
  return 0
end

function DungeonReward:advanceToCode(code)
  if code == nil or self:canProvideCode(code) then
    self:setProperty("active", true)
  end
end

function DungeonReward:save()
  local saveData = {}
  saveData["active"] = self:getProperty("active")
  saveData["stage"] = self:getProperty("stage")
  return saveData
end

function DungeonReward:load(data)
  if data["active"] ~= nil then
    self:setProperty("active", data["active"])
  end
  if data["stage"] ~= nil then
    self:setProperty("stage", data["stage"])
  end
  return true
end

function DungeonReward:propertyChanged(key, value)
  self:updateIcon()
end
