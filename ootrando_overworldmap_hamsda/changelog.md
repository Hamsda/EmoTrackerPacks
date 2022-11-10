# Changelog

## 3.7.3.0

- updated `user_presets`
- added back left click behavior to free reward when `ALTAR_QUICK_MARK` user setting is off

## 3.7.2.0

- added ability to load boolean settings for `user_presets`
- updated `user_presets`

## 3.7.1.0

- added `ALTAR_QUICK_MARK` user setting
- added hintable exits to ER

## 3.7.0.0

- changed startup to fix incorrect save loading
- added missing `Market Back Alley` capture in ER
- added customizable setting preset loader
- added settings for shuffled keys
- changed hintable locations based on [PR #1381](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1381)
- renamed locations based on [PR #1280](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1280) and [PR #1282](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1282)
- removed logic trick in MQ Forest based on [PR #1359](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1359)
- added logic trick for KZ skip based on [PR #1317](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1317)
- added setting for mixed pools in ER
- changed style of settings to text instead of icons
- changed bean planting from setting to `user_setting`

## 3.6.0.0

- fixed overlap between LH owl and grotto in ER
- changed `user_settings.lua`
  - added some short explanation for each option
  - renamed `USE_SONG_CHECKMARK_ONLY` to `SONG_BADGE_CHECK_ONLY`
  - added `SONG_BADGE_LAST_ACTIVATED`
  - added `ER_BADGE_EXITS`
  - added `ER_TURN_VISITED_EXIT_RED`
- updated rando settings to match new weeklies

## 3.5.0.0

- added peeks to ER
- added trials clear logic to ER

## 3.4.4.0

- added KZ skip to ER
- improved song icon right click functionality

## 3.4.3.0

- improved same-scene interior connections
- fixed DMT falling rocks GS sequence break
- fixed chu bowling showing sequence breakable in ER

## 3.4.2.0

- fixed big poes in ER
- improved reg Deku basement logic in ER
- added hintable overworld and dungeon locations in ER
- improved hintable overworld and dungeon locations in non ER
- fixed Wasteland GS showing in logic incorrectly

## 3.4.1.0

- fixed missing LACS condition setting in ER
- fixed GS counter after moving some GS around
- fixed short names for LLR GS and Kak Child GS
- added KZ skip as sequence break
- fixed bottles when using minimal for broadcast

## 3.4.0.0

- updated minimal layout (can now use this one as broadcast layout for the regular map tracker)
- fixed missing `ZD King Zora Thawed` in ER
- changed non shuffled ER locations will now be displayed on the non ER map
- changed ER to two maps only, `Locations` and `Exits`
- added graveyard pad as adult spawn
- added LACS condition setting
- changed ER layout tabs

## 3.3.1.0

- fixed Spirit fire locked chests with sticks
- added blue fire logic to ER (buying not supported)

## 3.3.0.0

- fixed child scarecrow showing w/ scarecrow marked
- changed non ER assumption about tunics from shops
- fixed Gohma requires nuts w/o sling
- added all 12 dungeons to ER
- changed logic based on [this PR](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1128)
- added sequence breaks for new logic tricks:
  - BotW MQ jump over the pits
  - DC MQ light the eyes w/ str
  - DC MQ back areas as child w/o explo
  - Deku basement web w/ bow
  - Deku MQ compass GS w/ hammer
  - Deku MQ roll under the spiked log
  - Fire MQ GS above flame maze w/ long
  - Fire MQ upper maze w/ hovers
  - Fire MQ upper maze w/ nothing
  - Fire Trial MQ w/ hook
  - Forest first GS w/ difficult weapons
  - Forest MQ switch w/ js
  - Forest east GS w/ rang
  - IC MQ red ice GS w/o SoT
  - Jabu near boss GS as adult
  - Jabu scrub as adult
  - Kak rooftop GS w/ hovers
  - LW bridge as adult w/ nothing
  - Shadow MQ invisible blades w/o SoT
  - Spirit MQ sun block room as child w/o SoT
  - DMT lower GS w/ hovers
  - visible one-way collisions
  - Water central GS w/ FW
  - Water dragon statue as child
  - Water falling platform GS w/ rang
  - Water MQ central pillar w/ FA
  - Water MQ north basement GS w/o SK
- changed a few sometimes hinted overworld checks to have captures

## 3.2.2.0

- fixed Sheik at Colossus not showing in ER
- adjusted position of many locations
- added regular item captures to ER
- added default captures for non shuffled locations to ER

## 3.2.1.0

- added (limited) random spawns support to non ER
- fixed grottos beyond Mido w/ explosives but w/o child access showing in logic

## 3.2.0.0

- fixed bridge condition counter in ER
- improved ER variant:
  - added overworld checks (dungeons coming soon (tm))
  - fixed some logic errors
  - improved overall performance
- updated settings defaults for season 4
- changed GS counter to only include non shuffled GS
- changed layouts to accomodate new ER map
- adjusted position of many locations

## 3.1.0.0

- fixed Market GS not showing on child map
- fixed missing houses in default ER capture
- changed logic based on [this PR](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1072)
- added sequence breaks for new logic tricks:
  - DC vines GS from below w/ long
  - Spirit lobby jump from hands to ledges
  - DMT climb w/ hovers
  - ZD GS w/ nothing
  - IC block room GS w/ hovers
  - HC storms grotto GS w/ just rang
  - Water central pillar GS w/ irons
  - GC grotto w/ hook while taking damage
  - DC two scrub room w/ str
  - Shadow crusher GS w/ hovers

## 3.0.1.0

- fixed missing connection between GV Stream and LH
- changed spawns and warps to show on both ER maps

## 3.0.0.0

- reworked the Entrance Randomizer variants entirely:
  - added logic
  - added settings for other ER options
  - changed captures to match required in-game regions
- fixed GS reward names
- added bridge amount setting
- added free Zelda setting
- added expensive merchants setting
- removed `Move King Zora`
- added wallets to tunic logic in non ER

## 2.10.0.0

- removed Gossip Stone map
- changed names of most locations based on [this PR](https://github.com/TestRunnerSRL/OoT-Randomizer/pull/1021)
- improved ER map:
  - added settings back in
  - added default captures for non shuffled locations

## 2.9.6.0

- added Kakariko Gate and Complete Mask Quest settings
- fixed chu bowling sequence break showing when it shouldn't

## 2.9.5.1

- fixed error in bombchu function

## 2.9.5.0

- added more logic tricks
- fixed chus not showing as sequence breaks for certain checks

## 2.9.4.0

- changed closed forest behavior to include sequence breaking Gohma
- improved trade sequences:
  - added all adult trade items as captures (getting one sets the trade sequence to that item)
  - fixed child trade to always advance stages properly

## 2.9.3.0

- changed dungeon size on the maps

## 2.9.2.0

- changed spirit boulder gs to be peekable
- changed time travel behavior
- fixed some child logic on Death Mountain

## 2.9.1.0

- added available/in logic skulltula counters
- added more logic tricks

## 2.9.0.0

- replaced ice traps with triforce pieces
- added first batch of logic tricks
- changed ER maps:
  - removed setting
  - unified child and adult (too few differences)
  - split entrances (dungeons, houses, grottos) from connectors
  - repositioned most locations a little
- rearranged/renamed some settings

## 2.8.0.0

- fixed ER deku theater as adult
- fixed GS35 (adult Goron City) not nighttime
- added damage multiplier setting
- added starting age setting
- changed ER default capture to contain every other capture

## 2.7.0.0

- reworked settings:
  - added trials setting
  - added Adult Fountain setting
  - added night GS expect sun setting
  - moved settings into new popup window
- changed bean plant to only show when setting enabled
- changed trade sequences to only show current step
- added indicators for vanilla small key/map/compass chests
- changed MQ dungeons (finally):
  - restructured them internally
  - logic pass
  - re-ordered GS/scrubs/cow
- added sequence break for wasteland and Shadow Temple GS w/ ground jump
- added a few more ways to peek DC GS above stairs

## 2.6.0.3

- fixed Gerudo Fortress guard behavior around card
- fixed visibility after latest EmoTracker update

## 2.6.0.2

- removed visibility restrictions based on items
- fixed broken visibility options for dungeons and shops

## 2.6.0.1

- fixed Gerudo Fortress not working correctly in non-keysanity

## 2.6.0.0

- changed lens setting default to wasteland
- changed keysanity GF hides checks based on setting
- changed Shadow Temple like like GS w/o hookshot
- added sequence breaks for new logic tricks:
  - DC MQ early bomb bag area as child
  - Forest Temple outside backdoor w/o hovers
  - Forest Temple MQ early hallway switch
  - Fire Temple east tower w/o scarecrow
  - Spirit Temple lower adult switch w/ bombs
  - BotW cage GS w/o rang
  - Shadow Trial MQ torch w/o fire
  - DMT rock GS w/o hammer
  - Goron City spinning pot w/ chus
- added Kakariko Potion Shop to ER
- added sequence breaks for last 5.0 batch of logic tricks:
  - Fire Temple MQ climb w/o fire
  - GV crate as adult w/ hovers
- added overworld gold skulltula setting
- changed vanilla dungeons (MQ dungeons soon...):
  - restructured them internally
  - logic pass
  - merged GS/scrubs
- added Triforce piece counter (not used in any layouts)
- added 3rd state to dungeon indicators to represent unknown (will show both versions)
- changed scarecrow checks to no longer be sequence breakable

## 2.5.1.0

- fixed back of GTG sequence break for hookshot w/ hovers
- fixed open GF not hiding carpenter checks
- fixed some logic errors for GTG MQ
- added sequence breaks for new logic tricks:
  - Shadow Temple MQ truth spinner gap w/ longshot
  - Lost Woods adult GS w/o bean
  - DMT soil GS w/o destroying boulder
  - GTG MQ left side w/o hookshot
  - GTG MQ back area w/o song of time
  - Spirit Trial w/o hookshot

## 2.5.0.0

- fixed not being able to undo King Zora Moves
- added a new `Both` option for the maps
- changed captures for ER

## 2.4.1.2

- fixed Water Temple small key logic
- removed gossip stone map from ER variant

## 2.4.1.1

- fixed typo in ER for CG -> CT

## 2.4.1.0

- changed images for overworld ER to be more colorful
- changed ER Darunias spot visible on child map
- added new graves to ER captures
- added sequence breaks for new logic tricks:
  - Forest Temple MQ NE outdoors ledge w/ hovers
  - Fire Temple MQ big lava room bombable chest w/o hookshot
  - Fire Temple MQ flame wall maze skip
  - Water Temple falling platform room GS w/ hookshot
  - Ice Cavern MQ scarecrow GS w/o anything
  - Light Trial MQ w/o hookshot
  - Link the Goron w/ dins
  - DMC upper to lower w/ hammer

## 2.4.0.2

- added MQ Forest Temple basement sequence break with 4 keys
- changed entrance rando option a bit
- added counters for useful indoors to ER
- changed images for many of the ER captures

## 2.4.0.1

- changed entrance variant:
  - fixed Gerudo Fortress Storms Grotto is adult only
  - removed access rules from many overworld and dungeon entrances to make capturing from hints or by getting spit out easier
  - added access rules to Castle Grounds fairies

## 2.4.0.0

- fixed MQ Spirit unintentionally showing up on child map
- added entrance randomizer variant
- added map and compass to capture layout

## 2.3.3.9

- fixed back of MQ DC with chus in logic
- added King Dodongo sequence break with chus
- split generic grotto gossip stones
- fixed Frog Ocarina Game hintable from the start

## 2.3.3.8

- removed Open Kakariko setting
- added Shuffle Magic Beans setting
- changed Open Forest setting to include Closed Deku
- changed the icon for Bean Plant setting

## 2.3.3.7

- changed carpenter rescue to be sequence breakable

## 2.3.3.6

- changed capture layout
  - added an extra line for a bit more space
  - added ice traps and stone of agony
  - changed bottles to automatically fill the first available bottle slot

## 2.3.3.5

- fixed Forest Temple outdoor west GS with hookshot from floormaster chest

## 2.3.3.4

- changed layout to use map on right side again

## 2.3.3.3

- fixed unfreezing Kind Zora only showing as hintable
- added horizontal layout back to the map variants

## 2.3.3.2

- fixed adult ZF entry with open fountain

## 2.3.3.1

- added new settings that capture a few items to their default locations
- added an icon for carpenter rescue and made a composite toggle with gerudo card

## 2.3.3.0

- changed skulltula house to always be visible on adult map
- swapped spirit and shadow medallion for the lacs medallion
- changed various locations to be hidden if respective settings are off (scrubs, shops, cows, skulls, mq)
- changed more locations to be hintable

## 2.3.2.2

- fixed Jabu Jabu access

## 2.3.2.1

- fixed Gerudo Fortress key counter for `Items Only (Keysanity)` variant
- changed more hintable locations to be visible from the start
- fixed Medigoron gossip stone with strength
- fixed Gerudo Valley cow only available as child

## 2.3.2.0

- changed stone of agony icon
- added hints setting and decoupled hintable locations directly from stone of agony
- changed keysanity small key counts maximum to adjust depending on vanilla/mq dungeon
- fixed GTG MQ ice arrows access rules
- fixed Fire Temple access to Volvagia with song of time
- fixed Bottom of the Well access to get past first skulltula
- added more sequence breaks for newly added logic tricks:
  - Lake Hylia GS56 lab wall without boomerang
  - Desert Colossus GS95 hill with only hookshot
  - Kakariko GS26 watchtower with sticks or sword1
  - Spirit Temple MQ lower adult without fire arrows

## 2.3.1.0

- added Water Temple central bow target chest sequence break for longshot/hoverboots
- added Water Temple dragon chest sequence break for ironboots
- fixed bean patch GS incorrectly showing up as sequence break because of King Zora access level
- fixed Spirit Temple silver gauntlets chest intended logic
- changed hot rodder goron no longer hard requires bomb bag
- added cowsanity support
- fixed GS47 icon
- added a bunch of sequence breaks for newly added logic tricks:
  - Bottom of the Well MQ Dead Hand key with boomerang
  - Fire Temple MQ near boss without breaking crate
  - Fire Temple MQ maze side room without box
  - Fire Temple flame wall maze skip with nothing
  - Spirit Temple MQ sun block room GS with boomerang
  - Spirit Temple main room GS with boomerang
  - Spirit Temple shifting wall with nothing
  - Water Temple cracked wall with hoverboots

## 2.3.0.0

- fixed DMC wall HP showing up without sword2
- changed keysanity to accurately reflect small key requirements while keeping minimal key requirements as sequence break
- changed names for many locations in the overworld and dungeons
- changed spiritual stones icon

## 2.2.1.0

- fixed Fire Temple locked door to BK chest is back in keysanity
- changed graveyard box HP to be peakable
- changed a lot of gold skulltulas to be peakable and have capture with ranged weapons but no ability to collect them
- added new rainbow bridge settings
- changed settings defaults to match commonly used settings
- adjusted brightness for disabled items slightly down
- added all copies of generic grotto to gossip stone map

## 2.2.0.7

- added gossip stone map
- fixed image for scrub outside Lake Hylia
- fixed beans so they can be unmarked
- changed scrub locations to not clear as group
- improved scarecrow learning locations a bit
- fixed DMC wall HP with bolero and hookshot/hoverboots
- added Water Temple ironboots sequence break with gold scale and longshot

## 2.2.0.6

- fixed Water Temple cracked wall sequence break with chus in keysanity variant
- fixed Jabu access requires bottle with open fountain
- added reverse wasteland as a sequence break for gerudo area

## 2.2.0.5

- added Fire Temple Volvagia sequence break for hoverboots
- changed/fixed Spirit Temple:
  - fixed cyclic dependencies causing chests not appearing correctly
  - split lower child to reflect fire availability
  - changed bombchu for child left to sequence break
  - added torch puzzle and map chest sequence break with just bow
  - fixed boulder room only works with chu not bomb
  - fixed boss key chest does not require explosives (only sequence breakable blast)
  - fixed topmost sun does not require explosives
  - fixed GS98 does not require fire

## 2.2.0.4

- fixed Deku Tree GS11 requires sling (can be sequence broken)
- fixed accidental rename of a file

## 2.2.0.3

- added Open Fountain setting
- moved Bombchus in Logic setting to right click on chus
- fixed Forest Temple courtyards reachable from checkerboard room with dins
- changed child trade items to be loopable

## 2.2.0.2

- fixed MQ Fire Temple GS68 key requirement and capture
- recent accessible changes:
  - added Shadow Temple falling spikes upper sequence break for strength
  - added Shadow Temple entrance with fire arrows sequence break
  - added royal tomb torches sequence break for fire
  - added GTG sequence break for hookshot
  - removed Gerudo Valley bridge crossing sequence break with hookshot
- added Shadow Temple Bongo sequence break with chus (I only added it to MQ oops)

## 2.2.0.1

- fixed a few capture locations that were missing a `"capture_item": true` oops
- added inspect to lake hylia sun with bow

## 2.2.0.0

- moved logic to lua
- changed images for freestanding keys
- changed GS counter to go up to 100
- added capture for relevant freestanding models
- fixed Fire Temple GS67 and GS68 capture
- improved bottle logic to take Rutos letter and big poes into account
- added Forest Temple scarecrow sequence break ([example](https://i.imgur.com/acQ97kk.gif))
- added big poes sequence break for epona (chance to spawn while on foot)
- added/fixed a bunch of hint locations, mainly MQ related
- fixed Water Temple cracked wall sequence break
- moved a bunch of locations around to make dungeons not overlap
- added adult/child overlay to the first trade items

## 2.1.4.1

- fixed DMC wall HP display error
- changed adult trade items to be loopable
- fixed Forest Temple basement requires bow
- added ice trap counter :)

## 2.1.4.0

- changed horizontal tracker layout to be the same as vertical
- changed items only variants to be fixed size
- fixed Colossus arch HP logic
- added MQ GTG SoT block sequence break
- fixed MQ Forest Temple logic (hopefully)
- fixed end of DC with chus in logic
- added wasteland sequence break for longshot/hoverboots
- added checks for child being able to attack to a lot of locations
- fixed upper DMC can be opened as adult with hammer for child
- added Zoras River upper HP hoverboots sequence break
- fixed DMC bean to access middle and upper DMC
- added Gerudo Fortress option and changed logic accordingly

## 2.1.3.5

- added `Move King Zora`
  - new location on child map to indicate you showed Rutos letter
  - added sequence breakable checks to the Zoras Fountain locations for moving him
- fixed Impas cow is always in logic
- added/fixed a few MQ things:
  - added MQ Deku Tree Gohma sequence break for sling
  - added MQ Shadow Temple stalfos room sequence break with just hookshot
  - fixed MQ Shadow Temple Bongo requires bow (and added chu sequence break for it)
  - fixed MQ Water Temple wrong ironboots and lullaby sequence breaks
  - fixed MQ Spirit Temple sun block room
  - fixed MQ Ganons Castle scrubs lens logic
  - added MQ GTG stalfos room sequence break with just hookshot
- fixed Zoras Fountain child/adult logic

## 2.1.3.4

- fixed SFM Storms grotto visibility
- fixed child Goron City entrance with Dins
- added Goron City left boulder maze sequence break with explosives and hoverboots
- added Water Temple boss key chest sequence breaks with only hoverboots or only longshot
- changed the bottle for minimal layout to only have 2 stages (bottle and letter)
- changed the compact items for boots and tunics when only one half is obtained
- improved chathud commands for dungeon prizes with secondary codes

## 2.1.3.3

- changed Biggoron to be visible with just Stone of Agony (so you can mark him off without access)
- added Jabu Jabu GS51 sequence break with boomerang
- added MQ Forest Temple well chest sequence break with ironboots
- fixed Gerudo Fortress location duplicates
- fixed Gerudo Fortress GS are not in dungeons
- added fewer tunic requirements option and logic
- changed layouts:
  - added a few items to capture layout and rearranged it
  - changed dungeon label font
  - added free label back in and rearranged layouts to fit it
  - changed the dungeon labels to be separate from medallions for minimalist variant (so one can cycle both ways through it)

## 2.1.3.2

- added dungeon only to skulltula settings
- added option for bean behavior:
  - `off` means just having beans will show the spots you can reach on the adult map (old behavior)
  - `plant` means you have to mark them planted on the child map before the locations will show on the adult map (new behavior)
- changed beginning of MQ Water Temple:
  - ironboots sequence break with longshot for map and compass chests
  - ocarina and lullaby sequence break for longshot chest
- fixed MQ Forest Temple:
  - BK chest and onwards should work correctly now
  - moved `Chest Behind Lobby` and `NE Outdoors Lower Chest` back in the list for the tracker to work
- fixed lower DMC access with hammer + hoverboots

## 2.1.3.1

- changed scarecrow checks to be sequence breakable
- added scarecrow locations for child and adult as reminders
- moved Goron City spinning pot to not overlap with shop
- changed small key cap to be the maximum of vanilla and MQ dungeons
- changed small key requirements for MQ dungeons to be minimum instead of logically required amount

## 2.1.3.0

- added MQ dungeons!
- added new variant `Items Only (Keysanity)`
- added scarecrow toggle to ocarina and checks for it
- added relevant bean locations to child patches and checks to adult for those
- changed graveyard box hp to be a sequence break with boomerang
- changed DMC volcano hp to be a sequence break with hovers
- fixed deku scrubs near LW forest stage are child only
- fixed GC BK chest doesn't require BK, derp
- added GS3 twins house sequence break with hoverboots
- added DMT bomb wall sequence break with bomb flower and lift1
- added Deku Tree GS9 sequence break with sword1/sticks
- changed Fire Temple SoT room as sequence break without SoT

## 2.1.2.0

- added new item only variants
- changed boss key chest icons
- added generic small and boss key to capture layout

## 2.1.1.1

- fixed Spirit Temple GS98 to separate hookshot/rang for adult/child
- fixed keysanity layouts

## 2.1.1.0

- changed song icons (thanks Raizuto_Gaming#1769)
- improved chathud codes greatly (thanks Raizuto_Gaming#1769)
- added magic bean vendor
- added rupee item (if you want to add it to the capture)
- added tycoons wallet (999 capacity, shopsanity item)
- added open Kakariko option and logic

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
- improved Gerudo Training Ground:
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
