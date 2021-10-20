--[[
========================
===== CHECKS TABLE =====
========================

This file contains the address information for all standard checks in all scenes
See auto_checks.lua for more information

]]

scenes = {}

scenes[0x00] = {
  {type = 'chest', code = '@Deku Tree/Slingshot Room Chests', flags = {0x5, 0x1}}
 ,{type = 'chest', code = '@Deku Tree/Compass Room Chests'  , flags = {0x2, 0x6}}
 ,{type = 'chest', code = '@Deku Tree/Map Chest'            , flags = {0x3}}
 ,{type = 'chest', code = '@Deku Tree/Basement Chest'       , flags = {0x4}}
}

scenes[0x01] = {
  {type = 'chest', code = '@Dodongos Cavern/Map Chest'                 , flags = {0x8}}
 ,{type = 'chest', code = '@Dodongos Cavern/Compass Chest'             , flags = {0x5}}
 ,{type = 'chest', code = '@Dodongos Cavern/Bomb Flower Platform Chest', flags = {0x6}}
 ,{type = 'chest', code = '@Dodongos Cavern/Bomb Bag Chest'            , flags = {0x4}}
 ,{type = 'chest', code = '@Dodongos Cavern/End of Bridge Chest'       , flags = {0xA}}

 ,{type = 'scrub', code = '@Dodongos Cavern/Deku Scrub Side Room Near Dodongos', flags = {0x2}}
 ,{type = 'scrub', code = '@Dodongos Cavern/Deku Scrub Lobby'                  , flags = {0x5}}
 ,{type = 'scrub', code = '@Dodongos Cavern/Deku Scrubs Near Bomb Bag'         , flags = {0x1, 0x4}}
}

scenes[0x02] = {
  {type = 'chest', code = '@Jabu Jabus Belly/Boomerang Chest', flags = {0x01}}
 ,{type = 'chest', code = '@Jabu Jabus Belly/Map Chest'      , flags = {0x02}}
 ,{type = 'chest', code = '@Jabu Jabus Belly/Compass Chest'  , flags = {0x04}}

 ,{type = 'scrub', code = '@Jabu Jabus Belly/Deku Scrub', flags = {0x1}}
}

scenes[0x03] = {
  {type = 'chest', code = '@Forest Temple/First Stalfos Chest'          , flags = {0x0}}
 ,{type = 'chest', code = '@Forest Temple/Map Chest'                    , flags = {0x1}}
 ,{type = 'chest', code = '@Forest Temple/Floormaster Chest'            , flags = {0x2}}
 ,{type = 'chest', code = '@Forest Temple/First Room Chest'             , flags = {0x3}}
 ,{type = 'chest', code = '@Forest Temple/Eye Switch Chest'             , flags = {0x4}}
 ,{type = 'chest', code = '@Forest Temple/Raised Island Courtyard Chest', flags = {0x5}}
 ,{type = 'chest', code = '@Forest Temple/Falling Ceiling Room Chest'   , flags = {0x7}}
 ,{type = 'chest', code = '@Forest Temple/Well Chest'                   , flags = {0x9}}
 ,{type = 'chest', code = '@Forest Temple/Basement Chest'               , flags = {0xB}}
 ,{type = 'chest', code = '@Forest Temple/Bow Chest'                    , flags = {0xC}}
 ,{type = 'chest', code = '@Forest Temple/Red Poe Chest'                , flags = {0xD}}
 ,{type = 'chest', code = '@Forest Temple/Boss Key Chest'               , flags = {0xE}}
 ,{type = 'chest', code = '@Forest Temple/Blue Poe Chest'               , flags = {0xF}}

 ,{type = 'keys', code = 'forestsmall', flags = {0x0, 0x1, 0x2, 0x3, 0x4}}
}

scenes[0x04] = {
  {type = 'chest', code = '@Fire Temple/Flare Dancer Chest'                 , flags = {0x00}}
 ,{type = 'chest', code = '@Fire Temple/Near Boss Chest'                    , flags = {0x01}}
 ,{type = 'chest', code = '@Fire Temple/Big Lava Room Blocked Door Chest'   , flags = {0x02}}
 ,{type = 'chest', code = '@Fire Temple/Boulder Maze Lower Chest'           , flags = {0x03}}
 ,{type = 'chest', code = '@Fire Temple/Big Lava Room Lower Open Door Chest', flags = {0x04}}
 ,{type = 'chest', code = '@Fire Temple/Megaton Hammer Chest'               , flags = {0x05}}
 ,{type = 'chest', code = '@Fire Temple/Boulder Maze Upper Chest'           , flags = {0x06}}
 ,{type = 'chest', code = '@Fire Temple/Compass Chest'                      , flags = {0x07}}
 ,{type = 'chest', code = '@Fire Temple/Boulder Maze Side Room Chest'       , flags = {0x08}}
 ,{type = 'chest', code = '@Fire Temple/Highest Goron Chest'                , flags = {0x09}}
 ,{type = 'chest', code = '@Fire Temple/Map Chest'                          , flags = {0x0A}}
 ,{type = 'chest', code = '@Fire Temple/Boulder Maze Shortcut Chest'        , flags = {0x0B}}
 ,{type = 'chest', code = '@Fire Temple/Boss Key Chest'                     , flags = {0x0C}}
 ,{type = 'chest', code = '@Fire Temple/Scarecrow Chest'                    , flags = {0x0D}}

 ,{type = 'keys', code = 'firesmall', flags = {0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1D, 0x1E, 0x1F}}
}

scenes[0x05] = {
  {type = 'chest', code = '@Water Temple/Cracked Wall Chest'      , flags = {0x00}}
 ,{type = 'chest', code = '@Water Temple/Torches Chest'           , flags = {0x01}}
 ,{type = 'chest', code = '@Water Temple/Map Chest'               , flags = {0x02}}
 ,{type = 'chest', code = '@Water Temple/River Chest'             , flags = {0x03}}
 ,{type = 'chest', code = '@Water Temple/Boss Key Chest'          , flags = {0x05}}
 ,{type = 'chest', code = '@Water Temple/Central Pillar Chest'    , flags = {0x06}}
 ,{type = 'chest', code = '@Water Temple/Longshot Chest'          , flags = {0x07}}
 ,{type = 'chest', code = '@Water Temple/Central Bow Target Chest', flags = {0x08}}
 ,{type = 'chest', code = '@Water Temple/Compass Chest'           , flags = {0x09}}
 ,{type = 'chest', code = '@Water Temple/Dragon Chest'            , flags = {0x0A}}

   -- 6 keys, but only 5 locked doors in rando
 ,{type = 'keys', code = 'watersmall', flags = {0x01, 0x02, 0x05, 0x06, 0x09}}
}

scenes[0x06] = {
  {type = 'chest', code = '@Spirit Temple/Child Early Torches Chest'  , flags = {0x00}}
 ,{type = 'chest', code = '@Spirit Temple/Sun Block Room Chest'       , flags = {0x01}}
 ,{type = 'chest', code = '@Spirit Temple/Statue Room Hand Chest'     , flags = {0x02}}
 ,{type = 'chest', code = '@Spirit Temple/Map Chest'                  , flags = {0x03}}
 ,{type = 'chest', code = '@Spirit Temple/Compass Chest'              , flags = {0x04}}
 ,{type = 'chest', code = '@Spirit Temple/Near Four Armos Chest'      , flags = {0x05}}
 ,{type = 'chest', code = '@Spirit Temple/Child Climb Chests'         , flags = {0x06, 0x0C}}
 ,{type = 'chest', code = '@Spirit Temple/Early Adult Right Chest'    , flags = {0x07}}
 ,{type = 'chest', code = '@Spirit Temple/Child Bridge Chest'         , flags = {0x08}}
 ,{type = 'chest', code = '@Spirit Temple/Boss Key Chest'             , flags = {0x0A}}
 ,{type = 'chest', code = '@Spirit Temple/First Mirror Chests'        , flags = {0x0D, 0x0E}}
 ,{type = 'chest', code = '@Spirit Temple/Statue Room Northeast Chest', flags = {0x0F}}
 ,{type = 'chest', code = '@Spirit Temple/Topmost Chest'              , flags = {0x12}}
 ,{type = 'chest', code = '@Spirit Temple/Hallway Invisible Chests'   , flags = {0x14, 0x15}}

 ,{type = 'keys', code = 'spiritsmall', flags = {0x0D, 0x15, 0x1B, 0x1C, 0x1E}}
}

scenes[0x07] = {
  {type = 'chest', code = '@Shadow Temple/Map Chest'                  , flags = {0x01}}
 ,{type = 'chest', code = '@Shadow Temple/Early Silver Rupee Chest'   , flags = {0x02}}
 ,{type = 'chest', code = '@Shadow Temple/Compass Chest'              , flags = {0x03}}
 ,{type = 'chest', code = '@Shadow Temple/Falling Spikes Upper Chests', flags = {0x04, 0x06}}
 ,{type = 'chest', code = '@Shadow Temple/Falling Spikes Lower Chest' , flags = {0x05}}
 ,{type = 'chest', code = '@Shadow Temple/Hover Boots Chest'          , flags = {0x07}}
 ,{type = 'chest', code = '@Shadow Temple/After Wind Chests'          , flags = {0x08, 0x14}}
 ,{type = 'chest', code = '@Shadow Temple/Invisible Spikes Chest'     , flags = {0x09}}
 ,{type = 'chest', code = '@Shadow Temple/Spike Walls Left Chest'     , flags = {0x0A}}
 ,{type = 'chest', code = '@Shadow Temple/Boss Key Chest'             , flags = {0x0B}}
 ,{type = 'chest', code = '@Shadow Temple/Invisible Blades Chests'    , flags = {0x0C, 0x16}}
 ,{type = 'chest', code = '@Shadow Temple/Invisible Floormaster Chest', flags = {0x0D}}
 ,{type = 'chest', code = '@Shadow Temple/Wind Hint Chest'            , flags = {0x15}}

 ,{type = 'ground', code = '@Shadow Temple/Freestanding Key', flags = {0x01}}

 ,{type = 'keys', code = 'shadowsmall', flags = {0x15, 0x16, 0x17, 0x18, 0x19}}
}

scenes[0x08] = {
  {type = 'chest' , code = '@Bottom of the Well/Compass Chest'               , flags = {0x01}}
 ,{type = 'chest' , code = '@Bottom of the Well/Front Center Bombable Chest' , flags = {0x02}}
 ,{type = 'chest' , code = '@Bottom of the Well/Lens of Truth Chest'         , flags = {0x03}}
 ,{type = 'chest' , code = '@Bottom of the Well/Back Left Bombable Chest'    , flags = {0x04}}
 ,{type = 'chest' , code = '@Bottom of the Well/Right Bottom Fake Wall Chest', flags = {0x05}}
 ,{type = 'chest' , code = '@Bottom of the Well/Map Chest'                   , flags = {0x07}}
 ,{type = 'chest' , code = '@Bottom of the Well/Front Left Fake Wall Chest'  , flags = {0x08}}
 ,{type = 'chest' , code = '@Bottom of the Well/Underwater Left Chest'       , flags = {0x09}}
 ,{type = 'chest' , code = '@Bottom of the Well/Fire Keese Chest'            , flags = {0x0A}}
 ,{type = 'chest' , code = '@Bottom of the Well/Center Skulltula Chest'      , flags = {0x0E}}
 ,{type = 'chest' , code = '@Bottom of the Well/Like Like Chest'             , flags = {0x0C}}
 ,{type = 'chest' , code = '@Bottom of the Well/Underwater Front Chest'      , flags = {0x10}}
 ,{type = 'chest' , code = '@Bottom of the Well/Invisible Chest'             , flags = {0x14}}

 ,{type = 'ground', code = '@Bottom of the Well/Freestanding Key'            , flags = {0x01}}

 ,{type = 'keys', code = 'botwsmall', flags = {0x1B, 0x1C, 0x1D}}
}

scenes[0x09] = {
  {type = 'chest', code = '@Ice Cavern/Map Chest'       , flags = {0x00}}
 ,{type = 'chest', code = '@Ice Cavern/Compass Chest'   , flags = {0x01}}
 ,{type = 'chest', code = '@Ice Cavern/Iron Boots Chest', flags = {0x02}}

 ,{type = 'ground', code = '@Ice Cavern/Freestanding PoH', flags = {0x01}}
}

scenes[0x0A] = {
  {type = 'chest', code = '@Ganons Castle/Ganons Tower Boss Key Chest', flags = {0x0B}}
}

scenes[0x0B] = {
  {type = 'chest', code = '@Gerudo Training Ground/Stalfos Chest'                , flags = {0x00}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Beamos Chest'                 , flags = {0x01}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Heavy Block Chests'           , flags = {0x02, 0x0F, 0x0E, 0x14}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Eye Statue Chest'             , flags = {0x03}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Near Scarecrow Chest'         , flags = {0x04}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Maze Right Chests'            , flags = {0x05, 0x08}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Maze Path First Chest'        , flags = {0x06}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Lobby Chests'                 , flags = {0x07, 0x13}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Maze Path Third Chest'        , flags = {0x09}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Hammer Room Switch Chest'     , flags = {0x10}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Before Heavy Block Chest'     , flags = {0x11}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Hammer Room Clear Chest'      , flags = {0x12}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Maze Path Second Chest'       , flags = {0x0A}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Hidden Ceiling Chest'         , flags = {0x0B}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Maze Path Final Chest'        , flags = {0x0C}}
 ,{type = 'chest', code = '@Gerudo Training Ground/Underwater Silver Rupee Chest', flags = {0x0D}}

 ,{type = 'ground', code = '@Gerudo Training Ground/Freestanding Key', flags = {0x1}}

 ,{type = 'keys', code = 'gtgsmall', flags = {0x01, 0x03, 0x04, 0x05, 0x06, 0x07, 0x09, 0x0A, 0x17}}
}

scenes[0x0C] = {
  {type = 'ground', code = '@Carpenter Rescue/Hideout Jail Guard (1 Torch)'  , flags = {0xC}}
 ,{type = 'ground', code = '@Carpenter Rescue/Hideout Jail Guard (2 Torches)', flags = {0xF}}
 ,{type = 'ground', code = '@Carpenter Rescue/Hideout Jail Guard (3 Torches)', flags = {0xA}}
 ,{type = 'ground', code = '@Carpenter Rescue/Hideout Jail Guard (4 Torches)', flags = {0xE}}

 ,{type = 'keys', code = 'thsmall', flags = {0x01, 0x02, 0x03, 0x04}}
}

scenes[0x0D] = {
  {type = 'chest', code = '@Ganons Castle/Shadow Trial Golden Gauntlets Chest', flags = {0x05}}
 ,{type = 'chest', code = '@Ganons Castle/Water Trial Chests'                 , flags = {0x06, 0x07}}
 ,{type = 'chest', code = '@Ganons Castle/Shadow Trial Front Chest'           , flags = {0x08}}
 ,{type = 'chest', code = '@Ganons Castle/Forest Trial Chest'                 , flags = {0x09}}
 ,{type = 'chest', code = '@Ganons Castle/Light Trial Chests'                 , flags = {0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F}}
 ,{type = 'chest', code = '@Ganons Castle/Light Trial Invisible Enemies Chest', flags = {0x10}}
 ,{type = 'chest', code = '@Ganons Castle/Light Trial Lullaby Chest'          , flags = {0x11}}
 ,{type = 'chest', code = '@Ganons Castle/Spirit Trial Crystal Switch Chest'  , flags = {0x12}}
 ,{type = 'chest', code = '@Ganons Castle/Spirit Trial Invisible Chest'       , flags = {0x14}}

 ,{type = 'scrub', code = '@Ganons Castle/Deku Scrubs', flags = {0x04, 0x06, 0x08, 0x09}}

 ,{type = 'keys', code = 'gcsmall', flags = {0x1E, 0x1D}}
}

scenes[0x10] = {
  {type = 'scrub', code = '@HF Inside Fence Grotto/HF Deku Scrub Grotto', flags = {0x03}}
}

scenes[0x11] = {
  {type = 'ground', code = '@Deku Tree/Queen Gohma', flags = {0x1F}}
}

scenes[0x12] = {
  {type = 'chest', code = '@Dodongos Cavern/Boss Room Chest', flags = {0x0}}

 ,{type = 'ground', code = '@Dodongos Cavern/King Dodongo', flags = {0x1F}}
}

scenes[0x13] = {
  {type = 'ground', code = '@Jabu Jabus Belly/Barinade', flags = {0x1F}}
}

scenes[0x14] = {
  {type = 'ground', code = '@Forest Temple/Phantom Ganon', flags = {0x1F}}
}

scenes[0x15] = {
  {type = 'ground', code = '@Fire Temple/Volvagia', flags = {0x1F}}

 ,{type = 'scrub', code = '@ZR Storms Grotto/ZR Deku Scrubs Grotto', flags = {0x8, 0x9}}
}

scenes[0x16] = {
  {type = 'ground', code = '@Water Temple/Morpha', flags = {0x1F}}
}

scenes[0x17] = {
  {type = 'ground', code = '@Spirit Temple/Twinrova', flags = {0x1F}}
}

scenes[0x18] = {
  {type = 'ground', code = '@Shadow Temple/Bongo Bongo', flags = {0x1F}}
 ,{type = 'prize' , code = 'shadow'                    , flags = {0x1F}}

 ,{type = 'scrub', code = '@SFM Storms Grotto/SFM Deku Scrubs Grotto', flags = {0x8, 0x9}}
}

scenes[0x19] = {
  {type = 'scrub', code = '@LH Grotto/LH Deku Scrubs Grotto', flags = {0x1, 0x4, 0x6}}
}

scenes[0x1A] = {
  {type = 'scrub', code = '@GV Storms Grotto/GV Deku Scrubs Grotto', flags = {0x8, 0x9}}
}

scenes[0x1F] = {
  {type = 'scrub', code = '@LW Scrubs Grotto/LW Deku Scrub Grotto Rear' , flags = {0x4}}
 ,{type = 'scrub', code = '@LW Scrubs Grotto/LW Deku Scrub Grotto Front', flags = {0xB}}
}

scenes[0x23] = {
  {type = 'scrub', code = '@DMC Hammer Grotto/DMC Deku Scrubs Grotto' , flags = {0x1,0x4,0x6}}
}

scenes[0x25] = {
  {type = 'scrub', code = '@GC Grotto/GC Deku Scrubs Grotto', flags = {0x1, 0x4, 0x6}}
}

scenes[0x26] = {
  {type = 'scrub', code = '@LLR Grotto/LLR Deku Scrubs Grotto', flags = {0x1, 0x4, 0x6}}
}

scenes[0x27] = {
  {type = 'scrub', code = '@Colossus Grotto/Colossus Deku Scrubs Grotto', flags = {0x8, 0x9}}
}

scenes[0x28] = {
  {type = 'chest', code = '@KF Midos House/KF Midos Chests', flags = {0x0, 0x1, 0x2, 0x3}}
}

scenes[0x34] = {
  {type = 'cow', code = '@KF Links House/KF Links House Cow', flags = {0x18}}
}

scenes[0x36] = {
  {type = 'cow', code = '@LLR Stables/LLR Stables Cows', flags = {0x18, 0x19}}
}

scenes[0x37] = {
  {type = 'ground', code = '@Kak Impas House Back/Kak Impas House Freestanding PoH', flags = {0x01}}

 ,{type = 'cow', code = '@Kak Impas House Back/Kak Impas House Cow', flags = {0x18}}
}

scenes[0x3B] = {
  {type = 'magic', code = '@OGC Great Fairy Fountain/OGC Great Fairy Reward', flags = {0x08}}
 ,{type = 'magic', code = '@DMC Great Fairy Fountain/DMC Great Fairy Reward', flags = {0x10}}
 ,{type = 'magic', code = '@DMT Great Fairy Fountain/DMT Great Fairy Reward', flags = {0x18}}
}

scenes[0x3E] = {
  {type = 'chest' , code = '@HF Near Market Grotto/HF Near Market Grotto Chest'      , flags = {0x00}}
 ,{type = 'chest' , code = '@HF Southeast Grotto/HF Southeast Grotto Chest'          , flags = {0x02}}
 ,{type = 'chest' , code = '@HF Open Grotto/HF Open Grotto Chest'                    , flags = {0x03}}
 ,{type = 'chest' , code = '@Kak Open Grotto/Kak Open Grotto Chest'                  , flags = {0x08}}
 ,{type = 'chest' , code = '@ZR Open Grotto/ZR Open Grotto Chest'                    , flags = {0x09}}
 ,{type = 'chest' , code = '@Kak Redead Grotto/Kak Redead Grotto Chest'              , flags = {0x0A}}
 ,{type = 'chest' , code = '@KF Storms Grotto/KF Storms Grotto Chest'                , flags = {0x0C}}
 ,{type = 'chest' , code = '@SFM Wolfos Grotto/SFM Wolfos Grotto Chest'              , flags = {0x11}}
 ,{type = 'chest' , code = '@LW Near Shortcuts Grotto/LW Near Shortcuts Grotto Chest', flags = {0x14}}
 ,{type = 'chest' , code = '@DMT Storms Grotto/DMT Storms Grotto Chest'              , flags = {0x17}}
 ,{type = 'chest' , code = '@DMC Upper Grotto/DMC Upper Grotto Chest'                , flags = {0x1A}}

 ,{type = 'ground', code = '@HF Tektite Grotto/HF Tektite Grotto Freestanding PoH', flags = {0x01}}

 ,{type = 'cow', code = '@DMT Cow Grotto/DMT Cow Grotto Cow', flags = {0x18}}
 ,{type = 'cow', code = '@HF Cow Grotto/HF Cow Grotto Cow'  , flags = {0x19}}
}

scenes[0x3F] = {
  {type = 'chest', code = '@Graveyard Heart Piece Grave/Graveyard Heart Piece Grave Chest', flags = {0x00}}
}

scenes[0x40] = {
  {type = 'chest', code = '@Graveyard Shield Grave/Graveyard Shield Grave Chest', flags = {0x00}}
}

scenes[0x41] = {
  {type = 'chest', code = '@Royal Familys Tomb/Royal Familys Tomb Chest', flags = {0x00}}
}

scenes[0x48] = {
  {type = 'chest' , code = '@Graveyard Dampes Grave/Graveyard Hookshot Chest', flags = {0x00}}

 ,{type = 'ground', code = '@Kak Windmill/Kak Windmill Freestanding PoH'                  , flags = {0x01}}
 ,{type = 'ground', code = '@Graveyard Dampes Grave/Graveyard Dampe Race Freestanding PoH', flags = {0x07}}
}

scenes[0x4C] = {
  {type = 'ground', code = '@LLR Tower/LLR Freestanding PoH', flags = {0x01}}

 ,{type = 'cow'   , code = '@LLR Tower/LLR Tower Cows', flags = {0x18, 0x19}}
}

scenes[0x53] = {
  {type = 'ground', code = '@Graveyard Ledge/Graveyard Freestanding PoH', flags = {0x4}}
 ,{type = 'ground', code = '@Dampe/Graveyard Dampe Gravedigging Tour'   , flags = {0x8}}

 ,{type = 'plant', code = 'bean_graveyard_no', flags = {0x3}}
}

scenes[0x54] = {
  {type = 'ground', code = '@ZR Near Open Grotto/ZR Near Open Grotto Freestanding PoH', flags = {0x4}}
 ,{type = 'ground', code = '@ZR Near Domain/ZR Near Domain Freestanding PoH'          , flags = {0xB}}

 ,{type = 'bean', code = '@ZR Magic Bean Salesman/Buy Item', flags = {0x1}}

   -- this soil does not correspond to a check, but still track it for counter
 ,{type = 'plant', code = 'bean_river_no', flags = {0x3}}
}

scenes[0x55] = {
  {type = 'chest', code = '@KF Kokiri Sword Chest/Dodge Boulder', flags = {0x0}}

  -- this soil does not correspond to a check, but still track it for counter
 ,{type = 'plant', code = 'bean_kokiri_no', flags = {0x9}}
}

scenes[0x57] = {
  {type = 'chest', code = '@LH Sun/Shoot it', flags = {0x00}}

 ,{type = 'ground', code = '@LH Lab Tower/LH Freestanding PoH', flags = {0x1E}}

 ,{type = 'plant', code = 'bean_lake_no', flags = {0x1}}
   
}

scenes[0x58] = {
  {type = 'chest', code = '@ZD Chest/Torches', flags = {0x0}}
}

scenes[0x59] = {
  {type = 'ground', code = '@ZF Iceberg/ZF Iceberg Freestanding PoH', flags = {0x01}}
 ,{type = 'ground', code = '@ZF Bottom/ZF Bottom Freestanding PoH'  , flags = {0x14}}
}

scenes[0x5A] = {
  {type = 'chest', code = '@GV Chest/Smash \'em', flags = {0x00}}

 ,{type = 'ground', code = '@GV Waterfall/GV Waterfall Freestanding PoH', flags = {0x01}}
 ,{type = 'ground', code = '@GV Crate/GV Crate Freestanding PoH'        , flags = {0x02}}

 ,{type = 'cow', code = '@GV Cow/Cow', flags = {0x18}}

   -- this soil does not correspond to a check, but still track it for counter
 ,{type = 'plant', code = 'bean_valley_no', flags = {0x3}}
}

scenes[0x5B] = {
  {type = 'scrub', code = '@LW Deku Scrubs Near Deku Theater/Deku Nuts and Deku Sticks', flags = {0x01, 0x02}}
 ,{type = 'scrub', code = '@LW Deku Scrub Near Bridge/Stick upgrade'                   , flags = {0x0A}}

 ,{type = 'plant', code = 'bean_stage_no', flags = {0x12}}
   -- this soil does not correspond to a check, but still track it for counter
 ,{type = 'plant', code = 'bean_bridge_no', flags = {0x4}}
}

scenes[0x5C] = {
  {type = 'chest', code = '@Spirit Temple/Silver Gauntlets Chest', flags = {0x0B}}
 ,{type = 'chest', code = '@Spirit Temple/Mirror Shield Chest'   , flags = {0x09}}

 ,{type = 'ground', code = '@Colossus Arch/Colossus Freestanding PoH', flags = {0xD}}
   
 ,{type = 'plant', code = 'bean_colossus_no', flags = {0x18}}
}

scenes[0x5D] = {
  {type = 'chest', code = '@GF Chest/Open it', flags = {0x0}}
}

scenes[0x5E] = {
  {type = 'chest', code = '@Wasteland Structure/Wasteland Chest', flags = {0x00}}
   
 ,{type = 'ground', code = '@Wasteland Bombchu Salesman/Pay 200', flags = {0x01}}
}

scenes[0x60] = {
  {type = 'chest', code = '@DMT Chest/Blast Wall', flags = {0x01}}

 ,{type = 'ground', code = '@Top of DC/DMT Freestanding PoH', flags = {0x1E}}

 ,{type = 'plant', code = 'bean_trail_no', flags = {0x06}}
}

scenes[0x61] = {
  {type = 'ground', code = '@DMC Wall/DMC Wall Freestanding PoH'      , flags = {0x02}}
 ,{type = 'ground', code = '@DMC Volcano/DMC Volcano Freestanding PoH', flags = {0x08}}

 ,{type = 'scrub', code = '@DMC Deku Scrub/Bombs', flags = {0x06}}

 ,{type = 'plant', code = 'bean_crater_no', flags = {0x03}}
}

scenes[0x62] = {
  {type = 'chest', code = '@GC Maze/Right and Center Chests', flags = {0x01, 0x02}}
 ,{type = 'chest', code = '@GC Maze/Left Chest'             , flags = {0x00}}

 ,{type = 'ground', code = '@GC Medigoron/Pay 200'   , flags = {0x01}}
 ,{type = 'ground', code = '@GC Pot/Freestanding PoH', flags = {0x1F}}
}

orderedSceneIndices = {}

for k in pairs(scenes) do
  table.insert(orderedSceneIndices, k)
end

table.sort(orderedSceneIndices)