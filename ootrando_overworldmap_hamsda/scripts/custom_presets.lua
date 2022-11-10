PresetLoader = CustomItem:extend()

function PresetLoader:init()
  self:createItem("Presets")
  self:setProperty("active", true)
  self:setProperty("presetNum", 0)
  self.imageBase = ImageReference:FromPackRelativePath("images/unknown.png")
  self:updateIcon()
end

function PresetLoader:updateIcon()
  local num = self:getProperty("presetNum") or 0
  if type(setting_presets) == "table" and type(setting_presets[num]) == "table" then
    local data = setting_presets[num]
    self.ItemInstance.Icon = ImageReference:FromPackRelativePath(data["icon"])
    self.ItemInstance.BadgeText = data["name"]
    self.ItemInstance.BadgeTextColor = data["color"]
  else
    self.ItemInstance.Icon = self.imageBase
    self.ItemInstance.BadgeText = "Pre"
    self.ItemInstance.BadgeTextColor = "#00FF00"
  end
end

function PresetLoader:onLeftClick()
  if self:getProperty("presetNum") then
    if self:getProperty("presetNum") >= #setting_presets then
      self:setProperty("presetNum", 0)
    else
      self:setProperty("presetNum", self:getProperty("presetNum") + 1)
    end
  end
end

function PresetLoader:onRightClick()
  local num = self:getProperty("presetNum") or 0
  if
    type(setting_presets) == "table" and type(setting_presets[num]) == "table" and
      type(setting_presets[num]["settings"]) == "table"
   then
    for setting, value in pairs(setting_presets[num]["settings"]) do
      local setting_object = get_object(setting)
      if setting_object then
        if type(setting_object.CurrentStage) == "number" then
          setting_object.CurrentStage = value
        elseif type(setting_object.AcquiredCount) == "number" then
          setting_object.AcquiredCount = value
        elseif type(setting_object.Active) == "boolean" then
          setting_object.Active = value
        elseif type(setting_object.ItemState) == "table" then
          setting_object.ItemState:setProperty("active", value)
        end
      end
    end
  end
end

function PresetLoader:canProvideCode(code)
  return code == "presets"
end

function PresetLoader:providesCode(code)
  if self:canProvideCode(code) then
    return 1
  end
  return 0
end

function PresetLoader:advanceToCode(code)
  if code == nil or self:canProvideCode(code) then
    self:setProperty("active", true)
  end
end

function PresetLoader:save()
  local saveData = {}
  saveData["active"] = self:getProperty("active")
  saveData["presetNum"] = self:getProperty("presetNum")
  return saveData
end

function PresetLoader:load(data)
  if data["active"] ~= nil then
    self:setProperty("active", data["active"])
  end
  if data["presetNum"] ~= nil then
    self:setProperty("presetNum", data["presetNum"])
  end
  return true
end

function PresetLoader:propertyChanged(key, value)
  self:updateIcon()
end
