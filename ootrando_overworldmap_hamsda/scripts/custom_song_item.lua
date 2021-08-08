SongItem = ProgBadgeItem:extend()

local names = {
  "Zelda's Lullaby",
  "Epona's Song",
  "Saria's Song",
  "Sun's Song",
  "Song of Time",
  "Song of Storms",
  "Minuet of Forest",
  "Bolero of Fire",
  "Serenade of Water",
  "Requiem of Spirit",
  "Nocturne of Shadow",
  "Prelude of Light"
}

local codes = {
  "lullaby",
  "epona",
  "saria",
  "sun",
  "time",
  "storm",
  "minuet",
  "bolero",
  "serenade",
  "requiem",
  "nocturne",
  "prelude"
}

local full_images = {
  "images/song_zelda.png",
  "images/song_epona.png",
  "images/song_saria.png",
  "images/song_sun.png",
  "images/song_time.png",
  "images/song_storms.png",
  "images/song_minuet.png",
  "images/song_bolero.png",
  "images/song_serenade.png",
  "images/song_requiem.png",
  "images/song_nocturne.png",
  "images/song_prelude.png"
}

local badge_images =
  SONG_BADGE_CHECK_ONLY and {"images/check.png"} or
  {
    "images/overlay_song_zelda.png",
    "images/overlay_song_epona.png",
    "images/overlay_song_saria.png",
    "images/overlay_song_sun.png",
    "images/overlay_song_time.png",
    "images/overlay_song_storms.png",
    "images/overlay_song_minuet.png",
    "images/overlay_song_bolero.png",
    "images/overlay_song_serenade.png",
    "images/overlay_song_requiem.png",
    "images/overlay_song_nocturne.png",
    "images/overlay_song_prelude.png"
  }

last_activated_song = nil

function SongItem:init(number)
  self:createItem(names[number])
  self.number = number
  self.code = codes[number]
  self:setProperty("active", false)
  self:setProperty("badgeNum", 0)
  self.imageBase = ImageReference:FromPackRelativePath(full_images[number])
  self.ItemInstance.PotentialIcon = self.imageBase
  self:updateIcon()
end

function SongItem:updateIcon()
  local img_mod = ""
  if self:getProperty("badgeNum") and self:getProperty("badgeNum") > 0 then
    img_mod = "overlay|" .. badge_images[self:getProperty("badgeNum")]
  end
  if not self:getProperty("active") then
    img_mod = img_mod .. ",@disabled"
  end
  self.ItemInstance.Icon = ImageReference:FromImageReference(self.imageBase, img_mod)
end

function SongItem:onLeftClick()
  local new_active = not self:getProperty("active")
  self:setProperty("active", new_active)
  if new_active then
    last_activated_song = self.number
  end
end

function SongItem:onRightClick()
  if not SONG_BADGE_CHECK_ONLY and SONG_BADGE_LAST_ACTIVATED and last_activated_song then
    self:setProperty("badgeNum", last_activated_song)
    last_activated_song = nil
  else
    if self:getProperty("badgeNum") >= #badge_images then
      self:setProperty("badgeNum", 0)
    else
      self:setProperty("badgeNum", self:getProperty("badgeNum") + 1)
    end
  end
end
