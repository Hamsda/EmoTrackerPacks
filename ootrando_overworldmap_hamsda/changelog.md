# Changelog

## 2.1.0.1

- changed song icons (thanks Raizuto_Gaming#1769)
- improved chathud codes greatly (thanks Raizuto_Gaming#1769)
- added magic bean vendor
- added rupee item (if you want to add it to the capture)

## 2.1.0.0

- switched to EmoTracker 2.1 variants
- added Deku Scrub shuffle support
- added Shopsanity support

## 2.0.3.3

- fixed open forest (forgot the `item_count` again... oops)

## 2.0.3.2

- fixed tektite grotto only on child map with gold scale
- fixed Gerudo archery range GS90 needs carpenters rescued
- changed Water Temple GS76 to be sequence breakable by hookshot extension
- changed adult SFM/LW behind Mido marked sequence breakable (will show up as completeable without sequence break if you have explosives due to limitations of the tracker)
- changed Shadow Temple GS81 to be sequence breakable w/o hookshot (can jumpslash from the chests)
- changed GS short names for (mini) dungeons to be recognizable when pinned
- fixed Fire Temple access
- fixed Spirit Temple GS99 to require strength2
- fixed Bottom of the Well basement reachable with dins and strength1

## 2.0.3.1

- fixed Shadow Temple falling spikes room upper chests strength can't be sequence broken
- fixed Haunted Wasteland GS
- fixed Jabu Jabus Belly GS52-54
- changed how Gerudo Fortress settings are handled:
  - added Gerudo symbol to indicate the carpenters being rescued
  - changed logic for everything that referenced card to use the carpenters instead
  - added the card to GTG access logic (its only use)
- Ocarina of Time no longer hosts the item so it works with ocarina shuffle
- fixed Spirit Temple southern hand adult accessibility

## 2.0.3.0

- removed sequence breakable lullaby from Water Temple
- added lens+magic (sequence breakable) to clockwise GTG
- added ocarina to locations that require playing songs
- added lens options
- fixed Zora Tunic from shop always requires both wallet upgrades
- added a settings section to the layout and changed some icons
- changed/added a lot of logic from TRs fork
- changed skulltulas to be separate icons for tokensanity
- changed icons:
  - default chests use a brown OoT style chest
  - freestanding HPs are HPs
  - boss HCs are HCs
  - song locations are grey notes
  - grey note songs are grey notes with text
- fixed logic for some trials chests, GS6, and GS17

## 2.0.2.1

- fixed orientation for pinned locations on vertical tracker layout
- fixed logic for DC without explosives

## 2.0.2.0

- added checkmarks (back) to songs
- improved GTG:
  - split hammer pillars chests (one can be gotten without hammer)
  - remove sequence breakable hammer from clockwise path (not needed to open door)
  - mark the ledge as sequence breakable with nothing (can just use keys)
- changed visibility based on age specific requirements for various locations
- changed layouts:
  - broadcast layout cosmetic fixes
  - vertical tracker layout moved pinned locations below map to use space better

## 2.0.1.5

- fixed DMC wall HP reachable without explosives
- fixed Zoras Domain shop as adult
- changed Spirit Temple mirror room to not require the crystal switch (could have a key from child side)
- changed Forest Temple courtyard logic
- improved Fire Temple:
  - lift1 sequence breakable
  - bow sequence breakable for map chest (depending on key layout)
  - better restrictions for Volvagia (as far as possible without key logic)
- changed GTG maze chests into separate locations

## 2.0.1.4

- changed dungeon labels to use the same images as keysanity pack (thanks JRJ)
- changed a few item label names (mainly botw, gtg, gc)
- removed "options" from broadcast layout
- removed small key counts from dungeons

## 2.0.1.3

- fixed bow not required to go clockwise in GTG
- changed DMC volcano HP to include hoverboots strats (not in logic but easy to do)
- changed graveyard box HP to include boomerang strats (not in logic but not very hard)
- changed Zoras River lower HP hoverboots as sequence breakable (not in logic, just two precise jumps)
- changed a few things in Water Temple to be sequence breakable (mostly lullaby related)

## 2.0.1.2

- changed image for default wallet (thanks JRJ)
- changed cow cage HP for child bombs are sequence breakable
- changed BotW basement chest lift1 as sequence breakable (not in logic but pretty easy to do)
- fixed Haunted Wasteland Skulltulas map location
- fixed some Stone of Agony related bugs in Spirit

## 2.0.1.1

- fixed bottles to work again for locations, oops

## 2.0.1.0

- fixed DC end of bridge wall with hammer
- renamed the grotto outside of hyrule town to hopefully be clearer
- changed wallet2 to be sequence breakable for King Zora in case you get a bottle with blue fire
- changed stones/medallions:
  - combined all 3 stones
  - combined fire and water medallions
  - combined shadow and spirit medallions
  - adjusted the requirements for locations accordingly
- added Golden Skulltulas (thanks Coffie##9610)
- added a toggle to enable/disable the skulltulas
- changed bottle to have 4 slots with all contents (only letter has an effect for now)
- changed tracker layouts to fit bottles and skulltula toggle

## 2.0.0.2

- changed tracker to not be grayscale (works better for songs/meds)
- changed songs to no longer have checkmarks, they are tracked on the map
- changed ruto and bottles to be one item and adjusted tracker for it
- fixed tektite grotto can be done as child (with gold scale)
- fixed some Goron City and Death Mountain logic (still not 100% sure this is correct, hard to model this)
- changed 99 rupee text for no wallet upgrade no longer looks disabled
- added a new tall item layout:
  - 6 wide instead of 9
  - used for the vertical and broadcast layout by default
  - you can use overrides to go back to the old one if you like

## 2.0.0.1

- fixed Gerudo Valley HPs are in child Gerudo Area
- fixed Windmill HP can be reached as adult by clever jumping
- fixed treasure counts for items to match the counts for dungeons
- fixed Ice Cavern HP also random resulting in one more item there
- fixed DMC Volcano HP requires bolero for child to plant bean and mark hoverboots as sequence break
- fixed Bongo Bongo access after renaming
- changed Shadow medallion and Spirit medallion switched for all prizes so they match the order of the altar in ToT

## 2.0.0.0

- added a few more capture locations
- fixed Twinrova requires hookshot
- added OoTR 2.0 locations
- added freestanding keys in BotW, GTG, Shadow
- updated item counts to include boss HCs
- split up BotW to better reflect location requirements

## 1.0.0.8

- preparation for 2.0 grottos and hps
- added more hps for 2.0 prep
- changed hookshot/longshot images to be better distinguishable
- changed the dungeon icons to Hylian Serif font with outline
- changed actions for the medallions/stones, left click toggles (except for free) and right click progresses forward through the cycle
- more 2.0 prep
- fixed DC back requires explosives not blast (hammer won't work, bombchus can be used to sequence break)
- fixed letter behaviour for LLR and Saria in SFM

## 1.0.0.7

- added labels below the medallions/stones
- fixed two Forest Temple locations
- added Link the Goron can be stopped with bow
- added child trade sequence
- added adult trade sequence
- changed goron tunic as sequence breakable for fire trial
- changed shops with tunics only show on adult map
- fixed Spirit Temple map chest and torch puzzle can be opened with fire (duh)
- changed item counters to be able to include map/compass replacements if those are not enabled
- fixed pixel position of open door/forest to align

## 1.0.0.6

- fixed Shadow Temple having 1 free item too much
- changed free item counters to go upwards so the dungeon gets cleared if you have them all
- fixed Statue Ledge in Spirit Temple reachable w/ hoverboots and w/o hookshot
- fixed rooftop chest in gerudo fortress reachable with hookshot (and scarecrow)
- fixed a few Forest Temple locations

## 1.0.0.5

- fixed Adult Shooting Gallery showing without bow
- added Dampe back in, he got lost in the reorganization, oops
- fixed Bombchu Bowling has 2 prizes
- fixed item capture on Darunias Joy
- fixed colossus area logic
- improved Forest Temple:
  - split up the chests
  - tried to model the reqs
- improved Fire Temple:
  - split up the chests
  - tried to model the reqs
- improved Water Temple:
  - split up the chests
  - tried to model the reqs
- added the "free items" in as a counter for each dungeon

## 1.0.0.4

- added small key counters
- started adding open/closed forest/door logic
- added rainbow bridge requirements and a toggle for it
- changed the default layout of the tracker to incorporate new icons
- fixed frog ocarina minigame requires to play storm to them before
- added bombchus as a sequence break for bombs (in most places)
- added all kinds of logic sequence breaks (thanks SauceRelic!)
- fixed tracker capture layout
- added separate maps for child and adult to prep for reorganization
- reorganized the internal structure of the data heavily, so I can add new stuff more easily

## 1.0.0.3

- fixed Zoras Domain/Fountain logic interaction between child and adult
- fixed Zoras Fountain Fairy can't be opened with hammer
- fixed Haunted Wasteland Central Structure capture for Stone of Agony not showing
- fixed Mountain Crater with hoverboots but no bombs
- improved Spirit Temple:
  - split up the items
  - tried to model the reqs (there might be inaccuracies because of the back and forth between ages)
- improved Shadow Temple:
  - split up the items
  - tried to model the reqs
  - marked lens as optional (pretty easy to do the entire dungeon without)
  - added option to reach Bongo Bongo with longshot (there is a scarecrow you can reach)
- improved Gerudo Training Grounds:
  - split up the items
  - added reqs to each of the outer chests
  - marked hammer as optional for the pillar room (can be easily skipped with a damage boost)

## 1.0.0.2

- added capture feature to Sheik at Colossus and Sheik in Ice Cavern
- changed Man on Rooftop so Hookshot is skipable (with a pretty simple sidehop)
- fixed Redead Grave not showing if Sun Song location has a checkmark
- improved Deku:
  - split up the items
  - 2 chests in Slingshot room require Deku Shield

## 1.0.0.1

- added colors to all locations
- added capture support to locations that gossip stones hint at when you have the Stone of Agony
- updated image pack from JRJathome
- fixed typo for child fishing access, it's spelled sword not sowrd
- fixed wolfos grotto at the beginning of Meadow requires adult to have access to the area (if you only have hammer to open the grotto)
- fixed Zoras Domain access based on age
- fixed Gerudos Fortress requires crossing the bridge in Gerudos Valley
- fixed Child Shooting Gallery doesn't require Slingshot
- fixed checking a song location no longer acts like you don't have that song
- fixed Fire Temple no longer cleared as group
- fixed Water Temple no longer cleared as group
- fixed Shadow Temple no longer cleared as group
- improved DC item logic
- improved BotW item logic