ProgBadgeItem = CustomItem:extend()

function ProgBadgeItem:init(name, code, imagePath, badges)
  self:createItem(name)
  self.code = code
  self.badges = badges
  self:setProperty("active", false)
  self:setProperty("badgeNum", 0)
  self.imageBase = ImageReference:FromPackRelativePath(imagePath)
  self.ItemInstance.PotentialIcon = self.imageBase
  self:updateIcon()
end

function ProgBadgeItem:updateIcon()
  local img_mod = ""
  if self:getProperty("badgeNum") and self:getProperty("badgeNum") > 0 then
    img_mod = "overlay|" .. self.badges[self:getProperty("badgeNum")]
  end
  if not self:getProperty("active") then
    img_mod = img_mod .. ",@disabled"
  end
  self.ItemInstance.Icon = ImageReference:FromImageReference(self.imageBase, img_mod)
end

function ProgBadgeItem:onLeftClick()
  self:setProperty("active", not self:getProperty("active"))
end

function ProgBadgeItem:onRightClick()
  if self:getProperty("badgeNum") then
    if self:getProperty("badgeNum") >= #self.badges then
      self:setProperty("badgeNum", 0)
    else
      self:setProperty("badgeNum", self:getProperty("badgeNum") + 1)
    end
  end
end

function ProgBadgeItem:canProvideCode(code)
  if self.code and self.code == code then
    return true
  end
  return false
end

function ProgBadgeItem:providesCode(code)
  if self:getProperty("active") and self:canProvideCode(code) then
    return 1
  end
  return 0
end

function ProgBadgeItem:advanceToCode(code)
  if code == nil or self:canProvideCode(code) then
    self:setProperty("active", true)
  end
end

function ProgBadgeItem:save()
  local saveData = {}
  saveData["active"] = self:getProperty("active")
  saveData["badgeNum"] = self:getProperty("badgeNum")
  return saveData
end

function ProgBadgeItem:load(data)
  if data["active"] ~= nil then
    self:setProperty("active", data["active"])
  end
  if data["badgeNum"] ~= nil then
    self:setProperty("badgeNum", data["badgeNum"])
  end
  return true
end

function ProgBadgeItem:propertyChanged(key, value)
  self:updateIcon()
end
